-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for default forms, species 601-649.
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
  -- Klinklang - Vise Grip - Level 1
  (601, 60100, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klinklang - Bind - Level 1
  (601, 60100, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klinklang - Thunder Shock - Level 1
  (601, 60100, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klinklang - Charge - Level 1
  (601, 60100, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klinklang - Magnetic Flux - Level 1
  (601, 60100, 602, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Klinklang - Gear Up - Level 1
  (601, 60100, 674, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Klinklang - Charge Beam - Level 12
  (601, 60100, 451, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Klinklang - Metal Sound - Level 16
  (601, 60100, 319, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Klinklang - Autotomize - Level 20
  (601, 60100, 475, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Klinklang - Discharge - Level 24
  (601, 60100, 435, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Klinklang - Screech - Level 28
  (601, 60100, 103, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Klinklang - Gear Grind - Level 32
  (601, 60100, 544, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Klinklang - Lock-On - Level 36
  (601, 60100, 199, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Klinklang - Shift Gear - Level 42
  (601, 60100, 508, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Klinklang - Zap Cannon - Level 48
  (601, 60100, 192, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Klinklang - Hyper Beam - Level 56
  (601, 60100, 63, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Klinklang - Electric Terrain - Level 64
  (601, 60100, 604, 18, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Klinklang - Hyper Beam - TM08
  (601, 60100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Klinklang - Giga Impact - TM09
  (601, 60100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Klinklang - Thunder Wave - TM14
  (601, 60100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Klinklang - Screech - TM16
  (601, 60100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Klinklang - Rest - TM21
  (601, 60100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Klinklang - Snore - TM24
  (601, 60100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Klinklang - Protect - TM25
  (601, 60100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Klinklang - Sandstorm - TM32
  (601, 60100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Klinklang - Facade - TM39
  (601, 60100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Klinklang - Assurance - TM58
  (601, 60100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Klinklang - Trick Room - TM70
  (601, 60100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 28),
  -- Klinklang - Round - TM76
  (601, 60100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Klinklang - Volt Switch - TM80
  (601, 60100, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 30),
  -- Klinklang - Electric Terrain - TM90
  (601, 60100, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Klinklang - Thunderbolt - TR08
  (601, 60100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 32),
  -- Klinklang - Thunder - TR09
  (601, 60100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 33),
  -- Klinklang - Substitute - TR20
  (601, 60100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Klinklang - Endure - TR26
  (601, 60100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Klinklang - Sleep Talk - TR27
  (601, 60100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Klinklang - Uproar - TR35
  (601, 60100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 37),
  -- Klinklang - Iron Defense - TR46
  (601, 60100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 38),
  -- Klinklang - Power Gem - TR63
  (601, 60100, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 39),
  -- Klinklang - Flash Cannon - TR70
  (601, 60100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 40),
  -- Klinklang - Ally Switch - TR83
  (601, 60100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 41),
  -- Klinklang - Wild Charge - TR86
  (601, 60100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 42),
  -- Klinklang - Steel Beam - Tutor
  (601, 60100, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 43),
  -- Elgyem - Growl - Level 1
  (605, 60500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elgyem - Confusion - Level 1
  (605, 60500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elgyem - Imprison - Level 6
  (605, 60500, 286, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Elgyem - Teleport - Level 12
  (605, 60500, 100, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Elgyem - Psybeam - Level 18
  (605, 60500, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Elgyem - Guard Split - Level 24
  (605, 60500, 470, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Elgyem - Power Split - Level 24
  (605, 60500, 471, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Elgyem - Headbutt - Level 30
  (605, 60500, 29, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Elgyem - Zen Headbutt - Level 36
  (605, 60500, 428, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Elgyem - Recover - Level 43
  (605, 60500, 105, 18, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Elgyem - Calm Mind - Level 48
  (605, 60500, 347, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Elgyem - Wonder Room - Level 54
  (605, 60500, 472, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Elgyem - Psychic - Level 60
  (605, 60500, 94, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Elgyem - Thunder Wave - TM14
  (605, 60500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Elgyem - Screech - TM16
  (605, 60500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Elgyem - Light Screen - TM17
  (605, 60500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Elgyem - Reflect - TM18
  (605, 60500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Elgyem - Safeguard - TM19
  (605, 60500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Elgyem - Rest - TM21
  (605, 60500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Elgyem - Rock Slide - TM22
  (605, 60500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Elgyem - Thief - TM23
  (605, 60500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Elgyem - Snore - TM24
  (605, 60500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Elgyem - Protect - TM25
  (605, 60500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Elgyem - Steel Wing - TM30
  (605, 60500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Elgyem - Attract - TM31
  (605, 60500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Elgyem - Rain Dance - TM33
  (605, 60500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Elgyem - Facade - TM39
  (605, 60500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Elgyem - Imprison - TM44
  (605, 60500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Elgyem - Rock Tomb - TM48
  (605, 60500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Elgyem - Power Swap - TM60
  (605, 60500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 30),
  -- Elgyem - Guard Swap - TM61
  (605, 60500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 31),
  -- Elgyem - Trick Room - TM70
  (605, 60500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Elgyem - Wonder Room - TM71
  (605, 60500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 33),
  -- Elgyem - Round - TM76
  (605, 60500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Elgyem - Thunderbolt - TR08
  (605, 60500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Elgyem - Psychic - TR11
  (605, 60500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Elgyem - Agility - TR12
  (605, 60500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Elgyem - Substitute - TR20
  (605, 60500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Elgyem - Psyshock - TR25
  (605, 60500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 39),
  -- Elgyem - Endure - TR26
  (605, 60500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Elgyem - Sleep Talk - TR27
  (605, 60500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Elgyem - Shadow Ball - TR33
  (605, 60500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Elgyem - Uproar - TR35
  (605, 60500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Elgyem - Trick - TR38
  (605, 60500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 44),
  -- Elgyem - Skill Swap - TR40
  (605, 60500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 45),
  -- Elgyem - Cosmic Power - TR44
  (605, 60500, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 46),
  -- Elgyem - Calm Mind - TR49
  (605, 60500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 47),
  -- Elgyem - Dark Pulse - TR58
  (605, 60500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Elgyem - Energy Ball - TR65
  (605, 60500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 49),
  -- Elgyem - Nasty Plot - TR68
  (605, 60500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 50),
  -- Elgyem - Zen Headbutt - TR69
  (605, 60500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Elgyem - Stored Power - TR82
  (605, 60500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 52),
  -- Elgyem - Ally Switch - TR83
  (605, 60500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Elgyem - Disable - Egg
  (605, 60500, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Elgyem - Destiny Bond - Egg
  (605, 60500, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Elgyem - Psych Up - Egg
  (605, 60500, 244, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Elgyem - Astonish - Egg
  (605, 60500, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Beheeyem - Growl - Level 1
  (606, 60600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beheeyem - Confusion - Level 1
  (606, 60600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beheeyem - Teleport - Level 1
  (606, 60600, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beheeyem - Imprison - Level 1
  (606, 60600, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beheeyem - Psychic Terrain - Level 1
  (606, 60600, 678, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beheeyem - Psybeam - Level 18
  (606, 60600, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Beheeyem - Guard Split - Level 24
  (606, 60600, 470, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Beheeyem - Power Split - Level 24
  (606, 60600, 471, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Beheeyem - Headbutt - Level 30
  (606, 60600, 29, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Beheeyem - Zen Headbutt - Level 36
  (606, 60600, 428, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Beheeyem - Recover - Level 45
  (606, 60600, 105, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Beheeyem - Calm Mind - Level 52
  (606, 60600, 347, 18, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Beheeyem - Wonder Room - Level 60
  (606, 60600, 472, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Beheeyem - Psychic - Level 68
  (606, 60600, 94, 18, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Beheeyem - Hyper Beam - TM08
  (606, 60600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Beheeyem - Giga Impact - TM09
  (606, 60600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Beheeyem - Thunder Wave - TM14
  (606, 60600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Beheeyem - Screech - TM16
  (606, 60600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Beheeyem - Light Screen - TM17
  (606, 60600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Beheeyem - Reflect - TM18
  (606, 60600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Beheeyem - Safeguard - TM19
  (606, 60600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Beheeyem - Rest - TM21
  (606, 60600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Beheeyem - Rock Slide - TM22
  (606, 60600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Beheeyem - Thief - TM23
  (606, 60600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Beheeyem - Snore - TM24
  (606, 60600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Beheeyem - Protect - TM25
  (606, 60600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Beheeyem - Steel Wing - TM30
  (606, 60600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Beheeyem - Attract - TM31
  (606, 60600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Beheeyem - Rain Dance - TM33
  (606, 60600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Beheeyem - Facade - TM39
  (606, 60600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Beheeyem - Imprison - TM44
  (606, 60600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Beheeyem - Rock Tomb - TM48
  (606, 60600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Beheeyem - Power Swap - TM60
  (606, 60600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 33),
  -- Beheeyem - Guard Swap - TM61
  (606, 60600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 34),
  -- Beheeyem - Trick Room - TM70
  (606, 60600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Beheeyem - Wonder Room - TM71
  (606, 60600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Beheeyem - Round - TM76
  (606, 60600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Beheeyem - Psychic Terrain - TM91
  (606, 60600, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 38),
  -- Beheeyem - Thunderbolt - TR08
  (606, 60600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 39),
  -- Beheeyem - Psychic - TR11
  (606, 60600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Beheeyem - Agility - TR12
  (606, 60600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Beheeyem - Tri Attack - TR19
  (606, 60600, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 42),
  -- Beheeyem - Substitute - TR20
  (606, 60600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Beheeyem - Psyshock - TR25
  (606, 60600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Beheeyem - Endure - TR26
  (606, 60600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Beheeyem - Sleep Talk - TR27
  (606, 60600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Beheeyem - Shadow Ball - TR33
  (606, 60600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 47),
  -- Beheeyem - Future Sight - TR34
  (606, 60600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 48),
  -- Beheeyem - Uproar - TR35
  (606, 60600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Beheeyem - Trick - TR38
  (606, 60600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 50),
  -- Beheeyem - Skill Swap - TR40
  (606, 60600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 51),
  -- Beheeyem - Cosmic Power - TR44
  (606, 60600, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 52),
  -- Beheeyem - Calm Mind - TR49
  (606, 60600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 53),
  -- Beheeyem - Dark Pulse - TR58
  (606, 60600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Beheeyem - Energy Ball - TR65
  (606, 60600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Beheeyem - Nasty Plot - TR68
  (606, 60600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Beheeyem - Zen Headbutt - TR69
  (606, 60600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Beheeyem - Flash Cannon - TR70
  (606, 60600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 58),
  -- Beheeyem - Stored Power - TR82
  (606, 60600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 59),
  -- Beheeyem - Ally Switch - TR83
  (606, 60600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 60),
  -- Litwick - Smog - Level 1
  (607, 60700, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litwick - Astonish - Level 1
  (607, 60700, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litwick - Ember - Level 4
  (607, 60700, 52, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Litwick - Minimize - Level 8
  (607, 60700, 107, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Litwick - Confuse Ray - Level 12
  (607, 60700, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Litwick - Hex - Level 16
  (607, 60700, 506, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Litwick - Will-O-Wisp - Level 20
  (607, 60700, 261, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Litwick - Fire Spin - Level 24
  (607, 60700, 83, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Litwick - Night Shade - Level 28
  (607, 60700, 101, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Litwick - Curse - Level 32
  (607, 60700, 174, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Litwick - Shadow Ball - Level 36
  (607, 60700, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Litwick - Inferno - Level 40
  (607, 60700, 517, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Litwick - Imprison - Level 44
  (607, 60700, 286, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Litwick - Pain Split - Level 48
  (607, 60700, 220, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Litwick - Overheat - Level 52
  (607, 60700, 315, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Litwick - Memento - Level 56
  (607, 60700, 262, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Litwick - Solar Beam - TM11
  (607, 60700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Litwick - Fire Spin - TM13
  (607, 60700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 18),
  -- Litwick - Safeguard - TM19
  (607, 60700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Litwick - Rest - TM21
  (607, 60700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Litwick - Thief - TM23
  (607, 60700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Litwick - Snore - TM24
  (607, 60700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Litwick - Protect - TM25
  (607, 60700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Litwick - Attract - TM31
  (607, 60700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Litwick - Sunny Day - TM34
  (607, 60700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Litwick - Will-O-Wisp - TM38
  (607, 60700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Litwick - Facade - TM39
  (607, 60700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Litwick - Imprison - TM44
  (607, 60700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Litwick - Payback - TM57
  (607, 60700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Litwick - Trick Room - TM70
  (607, 60700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 30),
  -- Litwick - Round - TM76
  (607, 60700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Litwick - Hex - TM77
  (607, 60700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Litwick - Mystical Fire - TM92
  (607, 60700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 33),
  -- Litwick - Flamethrower - TR02
  (607, 60700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 34),
  -- Litwick - Psychic - TR11
  (607, 60700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 35),
  -- Litwick - Fire Blast - TR15
  (607, 60700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 36),
  -- Litwick - Substitute - TR20
  (607, 60700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Litwick - Endure - TR26
  (607, 60700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Litwick - Sleep Talk - TR27
  (607, 60700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Litwick - Shadow Ball - TR33
  (607, 60700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Litwick - Heat Wave - TR36
  (607, 60700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 41),
  -- Litwick - Taunt - TR37
  (607, 60700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Litwick - Trick - TR38
  (607, 60700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Litwick - Overheat - TR43
  (607, 60700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 44),
  -- Litwick - Calm Mind - TR49
  (607, 60700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Litwick - Dark Pulse - TR58
  (607, 60700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Litwick - Energy Ball - TR65
  (607, 60700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Litwick - Ally Switch - TR83
  (607, 60700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 48),
  -- Litwick - Haze - Egg
  (607, 60700, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Litwick - Acid Armor - Egg
  (607, 60700, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Litwick - Power Split - Egg
  (607, 60700, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Litwick - Clear Smog - Egg
  (607, 60700, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lampent - Ember - Level 1
  (608, 60800, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lampent - Minimize - Level 1
  (608, 60800, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lampent - Smog - Level 1
  (608, 60800, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lampent - Astonish - Level 1
  (608, 60800, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lampent - Confuse Ray - Level 12
  (608, 60800, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lampent - Hex - Level 16
  (608, 60800, 506, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lampent - Will-O-Wisp - Level 20
  (608, 60800, 261, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lampent - Fire Spin - Level 24
  (608, 60800, 83, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lampent - Night Shade - Level 28
  (608, 60800, 101, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lampent - Curse - Level 32
  (608, 60800, 174, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lampent - Shadow Ball - Level 36
  (608, 60800, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lampent - Inferno - Level 40
  (608, 60800, 517, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Lampent - Imprison - Level 46
  (608, 60800, 286, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Lampent - Pain Split - Level 52
  (608, 60800, 220, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Lampent - Overheat - Level 58
  (608, 60800, 315, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Lampent - Memento - Level 64
  (608, 60800, 262, 18, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Lampent - Solar Beam - TM11
  (608, 60800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Lampent - Fire Spin - TM13
  (608, 60800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 18),
  -- Lampent - Safeguard - TM19
  (608, 60800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Lampent - Rest - TM21
  (608, 60800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Lampent - Thief - TM23
  (608, 60800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Lampent - Snore - TM24
  (608, 60800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Lampent - Protect - TM25
  (608, 60800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Lampent - Attract - TM31
  (608, 60800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Lampent - Sunny Day - TM34
  (608, 60800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Lampent - Will-O-Wisp - TM38
  (608, 60800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Lampent - Facade - TM39
  (608, 60800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Lampent - Imprison - TM44
  (608, 60800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Lampent - Payback - TM57
  (608, 60800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Lampent - Trick Room - TM70
  (608, 60800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 30),
  -- Lampent - Round - TM76
  (608, 60800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Lampent - Hex - TM77
  (608, 60800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Lampent - Mystical Fire - TM92
  (608, 60800, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 33),
  -- Lampent - Flamethrower - TR02
  (608, 60800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 34),
  -- Lampent - Psychic - TR11
  (608, 60800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 35),
  -- Lampent - Fire Blast - TR15
  (608, 60800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 36),
  -- Lampent - Substitute - TR20
  (608, 60800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Lampent - Endure - TR26
  (608, 60800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Lampent - Sleep Talk - TR27
  (608, 60800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Lampent - Shadow Ball - TR33
  (608, 60800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Lampent - Heat Wave - TR36
  (608, 60800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 41),
  -- Lampent - Taunt - TR37
  (608, 60800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Lampent - Trick - TR38
  (608, 60800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Lampent - Overheat - TR43
  (608, 60800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 44),
  -- Lampent - Calm Mind - TR49
  (608, 60800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Lampent - Dark Pulse - TR58
  (608, 60800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Lampent - Energy Ball - TR65
  (608, 60800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Lampent - Ally Switch - TR83
  (608, 60800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 48),
  -- Chandelure - Ember - Level 1
  (609, 60900, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chandelure - Fire Spin - Level 1
  (609, 60900, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chandelure - Night Shade - Level 1
  (609, 60900, 101, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chandelure - Minimize - Level 1
  (609, 60900, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chandelure - Confuse Ray - Level 1
  (609, 60900, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chandelure - Smog - Level 1
  (609, 60900, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chandelure - Curse - Level 1
  (609, 60900, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Chandelure - Pain Split - Level 1
  (609, 60900, 220, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Chandelure - Shadow Ball - Level 1
  (609, 60900, 247, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Chandelure - Will-O-Wisp - Level 1
  (609, 60900, 261, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Chandelure - Memento - Level 1
  (609, 60900, 262, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Chandelure - Imprison - Level 1
  (609, 60900, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Chandelure - Astonish - Level 1
  (609, 60900, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Chandelure - Overheat - Level 1
  (609, 60900, 315, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Chandelure - Hex - Level 1
  (609, 60900, 506, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Chandelure - Inferno - Level 1
  (609, 60900, 517, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Chandelure - Hyper Beam - TM08
  (609, 60900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Chandelure - Giga Impact - TM09
  (609, 60900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Chandelure - Solar Beam - TM11
  (609, 60900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Chandelure - Fire Spin - TM13
  (609, 60900, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Chandelure - Safeguard - TM19
  (609, 60900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Chandelure - Rest - TM21
  (609, 60900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Chandelure - Thief - TM23
  (609, 60900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Chandelure - Snore - TM24
  (609, 60900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Chandelure - Protect - TM25
  (609, 60900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Chandelure - Attract - TM31
  (609, 60900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Chandelure - Sunny Day - TM34
  (609, 60900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Chandelure - Will-O-Wisp - TM38
  (609, 60900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Chandelure - Facade - TM39
  (609, 60900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Chandelure - Imprison - TM44
  (609, 60900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Chandelure - Payback - TM57
  (609, 60900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Chandelure - Trick Room - TM70
  (609, 60900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Chandelure - Round - TM76
  (609, 60900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Chandelure - Hex - TM77
  (609, 60900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 34),
  -- Chandelure - Mystical Fire - TM92
  (609, 60900, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 35),
  -- Chandelure - Flamethrower - TR02
  (609, 60900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Chandelure - Psychic - TR11
  (609, 60900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 37),
  -- Chandelure - Fire Blast - TR15
  (609, 60900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Chandelure - Substitute - TR20
  (609, 60900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Chandelure - Endure - TR26
  (609, 60900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Chandelure - Sleep Talk - TR27
  (609, 60900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Chandelure - Shadow Ball - TR33
  (609, 60900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Chandelure - Heat Wave - TR36
  (609, 60900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 43),
  -- Chandelure - Taunt - TR37
  (609, 60900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 44),
  -- Chandelure - Trick - TR38
  (609, 60900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Chandelure - Overheat - TR43
  (609, 60900, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 46),
  -- Chandelure - Calm Mind - TR49
  (609, 60900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 47),
  -- Chandelure - Dark Pulse - TR58
  (609, 60900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Chandelure - Energy Ball - TR65
  (609, 60900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 49),
  -- Chandelure - Ally Switch - TR83
  (609, 60900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 50),
  -- Axew - Scratch - Level 1
  (610, 61000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Axew - Leer - Level 1
  (610, 61000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Axew - Bite - Level 3
  (610, 61000, 44, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Axew - False Swipe - Level 6
  (610, 61000, 206, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Axew - Assurance - Level 9
  (610, 61000, 372, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Axew - Taunt - Level 12
  (610, 61000, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Axew - Slash - Level 15
  (610, 61000, 163, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Axew - Dragon Claw - Level 18
  (610, 61000, 337, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Axew - Scary Face - Level 21
  (610, 61000, 184, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Axew - Crunch - Level 24
  (610, 61000, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Axew - Dragon Dance - Level 27
  (610, 61000, 349, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Axew - Dual Chop - Level 30
  (610, 61000, 530, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Axew - Laser Focus - Level 33
  (610, 61000, 673, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Axew - Dragon Pulse - Level 36
  (610, 61000, 406, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Axew - Swords Dance - Level 39
  (610, 61000, 14, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Axew - Outrage - Level 42
  (610, 61000, 200, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Axew - Guillotine - Level 45
  (610, 61000, 12, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Axew - Giga Impact - Level 48
  (610, 61000, 416, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Axew - Giga Impact - TM09
  (610, 61000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Axew - Dig - TM15
  (610, 61000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Axew - Rest - TM21
  (610, 61000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Axew - Snore - TM24
  (610, 61000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Axew - Protect - TM25
  (610, 61000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Axew - Scary Face - TM26
  (610, 61000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Axew - Attract - TM31
  (610, 61000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Axew - Rain Dance - TM33
  (610, 61000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Axew - Sunny Day - TM34
  (610, 61000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Axew - Facade - TM39
  (610, 61000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Axew - Swift - TM40
  (610, 61000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Axew - Rock Tomb - TM48
  (610, 61000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Axew - Payback - TM57
  (610, 61000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Axew - Assurance - TM58
  (610, 61000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Axew - Fling - TM59
  (610, 61000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Axew - Round - TM76
  (610, 61000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Axew - False Swipe - TM94
  (610, 61000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Axew - Breaking Swipe - TM99
  (610, 61000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 36),
  -- Axew - Swords Dance - TR00
  (610, 61000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 37),
  -- Axew - Focus Energy - TR13
  (610, 61000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 38),
  -- Axew - Substitute - TR20
  (610, 61000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Axew - Reversal - TR21
  (610, 61000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 40),
  -- Axew - Outrage - TR24
  (610, 61000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 41),
  -- Axew - Endure - TR26
  (610, 61000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Axew - Sleep Talk - TR27
  (610, 61000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Axew - Iron Tail - TR31
  (610, 61000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Axew - Crunch - TR32
  (610, 61000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 45),
  -- Axew - Taunt - TR37
  (610, 61000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Axew - Superpower - TR39
  (610, 61000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Axew - Dragon Claw - TR47
  (610, 61000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 48),
  -- Axew - Dragon Dance - TR51
  (610, 61000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 49),
  -- Axew - Poison Jab - TR57
  (610, 61000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Axew - X-Scissor - TR60
  (610, 61000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Axew - Dragon Pulse - TR62
  (610, 61000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 52),
  -- Axew - Counter - Egg
  (610, 61000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Axew - Harden - Egg
  (610, 61000, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Axew - Endeavor - Egg
  (610, 61000, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Axew - Night Slash - Egg
  (610, 61000, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Axew - First Impression - Egg
  (610, 61000, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Axew - Draco Meteor - Tutor
  (610, 61000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Fraxure - Scratch - Level 1
  (611, 61100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fraxure - Leer - Level 1
  (611, 61100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fraxure - Bite - Level 1
  (611, 61100, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fraxure - False Swipe - Level 1
  (611, 61100, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fraxure - Assurance - Level 9
  (611, 61100, 372, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Fraxure - Taunt - Level 12
  (611, 61100, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Fraxure - Slash - Level 15
  (611, 61100, 163, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Fraxure - Dragon Claw - Level 18
  (611, 61100, 337, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Fraxure - Scary Face - Level 21
  (611, 61100, 184, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Fraxure - Crunch - Level 24
  (611, 61100, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Fraxure - Dragon Dance - Level 27
  (611, 61100, 349, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Fraxure - Dual Chop - Level 30
  (611, 61100, 530, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Fraxure - Laser Focus - Level 33
  (611, 61100, 673, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Fraxure - Dragon Pulse - Level 36
  (611, 61100, 406, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Fraxure - Swords Dance - Level 41
  (611, 61100, 14, 18, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Fraxure - Outrage - Level 46
  (611, 61100, 200, 18, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Fraxure - Guillotine - Level 51
  (611, 61100, 12, 18, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Fraxure - Giga Impact - Level 56
  (611, 61100, 416, 18, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Fraxure - Giga Impact - TM09
  (611, 61100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Fraxure - Dig - TM15
  (611, 61100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Fraxure - Rest - TM21
  (611, 61100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Fraxure - Snore - TM24
  (611, 61100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Fraxure - Protect - TM25
  (611, 61100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Fraxure - Scary Face - TM26
  (611, 61100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Fraxure - Attract - TM31
  (611, 61100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Fraxure - Rain Dance - TM33
  (611, 61100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Fraxure - Sunny Day - TM34
  (611, 61100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Fraxure - Facade - TM39
  (611, 61100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Fraxure - Swift - TM40
  (611, 61100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Fraxure - Rock Tomb - TM48
  (611, 61100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Fraxure - Payback - TM57
  (611, 61100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Fraxure - Assurance - TM58
  (611, 61100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Fraxure - Fling - TM59
  (611, 61100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Fraxure - Shadow Claw - TM65
  (611, 61100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 34),
  -- Fraxure - Round - TM76
  (611, 61100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Fraxure - False Swipe - TM94
  (611, 61100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Fraxure - Stomping Tantrum - TM98
  (611, 61100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Fraxure - Breaking Swipe - TM99
  (611, 61100, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 38),
  -- Fraxure - Swords Dance - TR00
  (611, 61100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Fraxure - Low Kick - TR07
  (611, 61100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 40),
  -- Fraxure - Focus Energy - TR13
  (611, 61100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 41),
  -- Fraxure - Substitute - TR20
  (611, 61100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Fraxure - Reversal - TR21
  (611, 61100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 43),
  -- Fraxure - Outrage - TR24
  (611, 61100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 44),
  -- Fraxure - Endure - TR26
  (611, 61100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Fraxure - Sleep Talk - TR27
  (611, 61100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Fraxure - Iron Tail - TR31
  (611, 61100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Fraxure - Crunch - TR32
  (611, 61100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Fraxure - Taunt - TR37
  (611, 61100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Fraxure - Superpower - TR39
  (611, 61100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Fraxure - Dragon Claw - TR47
  (611, 61100, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 51),
  -- Fraxure - Dragon Dance - TR51
  (611, 61100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 52),
  -- Fraxure - Poison Jab - TR57
  (611, 61100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Fraxure - X-Scissor - TR60
  (611, 61100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 54),
  -- Fraxure - Dragon Pulse - TR62
  (611, 61100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Fraxure - Draco Meteor - Tutor
  (611, 61100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 56),
  -- Haxorus - Scratch - Level 1
  (612, 61200, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haxorus - Leer - Level 1
  (612, 61200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haxorus - Bite - Level 1
  (612, 61200, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haxorus - False Swipe - Level 1
  (612, 61200, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haxorus - Assurance - Level 9
  (612, 61200, 372, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Haxorus - Taunt - Level 12
  (612, 61200, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haxorus - Slash - Level 15
  (612, 61200, 163, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Haxorus - Dragon Claw - Level 18
  (612, 61200, 337, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Haxorus - Scary Face - Level 21
  (612, 61200, 184, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Haxorus - Crunch - Level 24
  (612, 61200, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Haxorus - Dragon Dance - Level 27
  (612, 61200, 349, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Haxorus - Dual Chop - Level 30
  (612, 61200, 530, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Haxorus - Laser Focus - Level 33
  (612, 61200, 673, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Haxorus - Dragon Pulse - Level 36
  (612, 61200, 406, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Haxorus - Swords Dance - Level 41
  (612, 61200, 14, 18, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Haxorus - Outrage - Level 46
  (612, 61200, 200, 18, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Haxorus - Guillotine - Level 53
  (612, 61200, 12, 18, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Haxorus - Giga Impact - Level 60
  (612, 61200, 416, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Haxorus - Hyper Beam - TM08
  (612, 61200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Haxorus - Giga Impact - TM09
  (612, 61200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Haxorus - Dig - TM15
  (612, 61200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Haxorus - Rest - TM21
  (612, 61200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Haxorus - Rock Slide - TM22
  (612, 61200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Haxorus - Snore - TM24
  (612, 61200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Haxorus - Protect - TM25
  (612, 61200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Haxorus - Scary Face - TM26
  (612, 61200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Haxorus - Attract - TM31
  (612, 61200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Haxorus - Rain Dance - TM33
  (612, 61200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Haxorus - Sunny Day - TM34
  (612, 61200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Haxorus - Facade - TM39
  (612, 61200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Haxorus - Swift - TM40
  (612, 61200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Haxorus - Brick Break - TM43
  (612, 61200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Haxorus - Rock Tomb - TM48
  (612, 61200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Haxorus - Payback - TM57
  (612, 61200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Haxorus - Assurance - TM58
  (612, 61200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Haxorus - Fling - TM59
  (612, 61200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Haxorus - Shadow Claw - TM65
  (612, 61200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Haxorus - Psycho Cut - TM69
  (612, 61200, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 38),
  -- Haxorus - Round - TM76
  (612, 61200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Haxorus - Bulldoze - TM81
  (612, 61200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Haxorus - Snarl - TM85
  (612, 61200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 41),
  -- Haxorus - False Swipe - TM94
  (612, 61200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 42),
  -- Haxorus - Brutal Swing - TM97
  (612, 61200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Haxorus - Stomping Tantrum - TM98
  (612, 61200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Haxorus - Breaking Swipe - TM99
  (612, 61200, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 45),
  -- Haxorus - Swords Dance - TR00
  (612, 61200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 46),
  -- Haxorus - Surf - TR04
  (612, 61200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Haxorus - Low Kick - TR07
  (612, 61200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Haxorus - Earthquake - TR10
  (612, 61200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Haxorus - Focus Energy - TR13
  (612, 61200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Haxorus - Substitute - TR20
  (612, 61200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Haxorus - Reversal - TR21
  (612, 61200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Haxorus - Outrage - TR24
  (612, 61200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 53),
  -- Haxorus - Endure - TR26
  (612, 61200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Haxorus - Sleep Talk - TR27
  (612, 61200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Haxorus - Iron Tail - TR31
  (612, 61200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Haxorus - Crunch - TR32
  (612, 61200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 57),
  -- Haxorus - Taunt - TR37
  (612, 61200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Haxorus - Superpower - TR39
  (612, 61200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Haxorus - Dragon Claw - TR47
  (612, 61200, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 60),
  -- Haxorus - Dragon Dance - TR51
  (612, 61200, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 61),
  -- Haxorus - Close Combat - TR53
  (612, 61200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 62),
  -- Haxorus - Poison Jab - TR57
  (612, 61200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 63),
  -- Haxorus - X-Scissor - TR60
  (612, 61200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 64),
  -- Haxorus - Dragon Pulse - TR62
  (612, 61200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 65),
  -- Haxorus - Focus Blast - TR64
  (612, 61200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Haxorus - Grass Knot - TR77
  (612, 61200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Haxorus - Draco Meteor - Tutor
  (612, 61200, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 68),
  -- Cubchoo - Growl - Level 1
  (613, 61300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubchoo - Powder Snow - Level 1
  (613, 61300, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cubchoo - Endure - Level 3
  (613, 61300, 203, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Cubchoo - Fury Swipes - Level 6
  (613, 61300, 154, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Cubchoo - Icy Wind - Level 9
  (613, 61300, 196, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Cubchoo - Play Nice - Level 12
  (613, 61300, 589, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cubchoo - Brine - Level 15
  (613, 61300, 362, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Cubchoo - Frost Breath - Level 18
  (613, 61300, 524, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Cubchoo - Slash - Level 21
  (613, 61300, 163, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Cubchoo - Flail - Level 24
  (613, 61300, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Cubchoo - Charm - Level 27
  (613, 61300, 204, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Cubchoo - Hail - Level 30
  (613, 61300, 258, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Cubchoo - Thrash - Level 33
  (613, 61300, 37, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Cubchoo - Rest - Level 36
  (613, 61300, 156, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Cubchoo - Blizzard - Level 39
  (613, 61300, 59, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Cubchoo - Sheer Cold - Level 42
  (613, 61300, 329, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Cubchoo - Mega Punch - TM00
  (613, 61300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Cubchoo - Mega Kick - TM01
  (613, 61300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Cubchoo - Ice Punch - TM04
  (613, 61300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Cubchoo - Dig - TM15
  (613, 61300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Cubchoo - Rest - TM21
  (613, 61300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Cubchoo - Snore - TM24
  (613, 61300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Cubchoo - Protect - TM25
  (613, 61300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Cubchoo - Icy Wind - TM27
  (613, 61300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Cubchoo - Charm - TM29
  (613, 61300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Cubchoo - Attract - TM31
  (613, 61300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Cubchoo - Rain Dance - TM33
  (613, 61300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Cubchoo - Hail - TM35
  (613, 61300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Cubchoo - Facade - TM39
  (613, 61300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Cubchoo - Rock Tomb - TM48
  (613, 61300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Cubchoo - Brine - TM55
  (613, 61300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Cubchoo - Assurance - TM58
  (613, 61300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Cubchoo - Fling - TM59
  (613, 61300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Cubchoo - Avalanche - TM64
  (613, 61300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 34),
  -- Cubchoo - Shadow Claw - TM65
  (613, 61300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Cubchoo - Ice Fang - TM67
  (613, 61300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Cubchoo - Round - TM76
  (613, 61300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Cubchoo - Surf - TR04
  (613, 61300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Cubchoo - Ice Beam - TR05
  (613, 61300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Cubchoo - Blizzard - TR06
  (613, 61300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Cubchoo - Low Kick - TR07
  (613, 61300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Cubchoo - Substitute - TR20
  (613, 61300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Cubchoo - Endure - TR26
  (613, 61300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Cubchoo - Sleep Talk - TR27
  (613, 61300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Cubchoo - Encore - TR30
  (613, 61300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 45),
  -- Cubchoo - Superpower - TR39
  (613, 61300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Cubchoo - Grass Knot - TR77
  (613, 61300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 47),
  -- Cubchoo - Play Rough - TR90
  (613, 61300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 48),
  -- Cubchoo - Focus Punch - Egg
  (613, 61300, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cubchoo - Yawn - Egg
  (613, 61300, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cubchoo - Night Slash - Egg
  (613, 61300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Beartic - Growl - Level 1
  (614, 61400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beartic - Fury Swipes - Level 1
  (614, 61400, 154, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beartic - Powder Snow - Level 1
  (614, 61400, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beartic - Endure - Level 1
  (614, 61400, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beartic - Charm - Level 1
  (614, 61400, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beartic - Aqua Jet - Level 1
  (614, 61400, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Beartic - Icicle Crash - Level 1
  (614, 61400, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Beartic - Icy Wind - Level 9
  (614, 61400, 196, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Beartic - Play Nice - Level 12
  (614, 61400, 589, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Beartic - Brine - Level 15
  (614, 61400, 362, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Beartic - Frost Breath - Level 18
  (614, 61400, 524, 18, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Beartic - Slash - Level 21
  (614, 61400, 163, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Beartic - Flail - Level 24
  (614, 61400, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Beartic - Swagger - Level 27
  (614, 61400, 207, 18, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Beartic - Hail - Level 30
  (614, 61400, 258, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Beartic - Thrash - Level 33
  (614, 61400, 37, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Beartic - Rest - Level 36
  (614, 61400, 156, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Beartic - Blizzard - Level 41
  (614, 61400, 59, 18, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Beartic - Sheer Cold - Level 46
  (614, 61400, 329, 18, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Beartic - Superpower - Level 51
  (614, 61400, 276, 18, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Beartic - Icicle Crash - Evolution
  (614, 61400, 556, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Beartic - Mega Punch - TM00
  (614, 61400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Beartic - Mega Kick - TM01
  (614, 61400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Beartic - Ice Punch - TM04
  (614, 61400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Beartic - Hyper Beam - TM08
  (614, 61400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Beartic - Giga Impact - TM09
  (614, 61400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Beartic - Dig - TM15
  (614, 61400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Beartic - Rest - TM21
  (614, 61400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Beartic - Rock Slide - TM22
  (614, 61400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Beartic - Snore - TM24
  (614, 61400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Beartic - Protect - TM25
  (614, 61400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Beartic - Scary Face - TM26
  (614, 61400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 32),
  -- Beartic - Icy Wind - TM27
  (614, 61400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Beartic - Charm - TM29
  (614, 61400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 34),
  -- Beartic - Attract - TM31
  (614, 61400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Beartic - Rain Dance - TM33
  (614, 61400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Beartic - Hail - TM35
  (614, 61400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Beartic - Facade - TM39
  (614, 61400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Beartic - Brick Break - TM43
  (614, 61400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Beartic - Dive - TM45
  (614, 61400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 40),
  -- Beartic - Rock Tomb - TM48
  (614, 61400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Beartic - Icicle Spear - TM51
  (614, 61400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 42),
  -- Beartic - Brine - TM55
  (614, 61400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 43),
  -- Beartic - Assurance - TM58
  (614, 61400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 44),
  -- Beartic - Fling - TM59
  (614, 61400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Beartic - Avalanche - TM64
  (614, 61400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Beartic - Shadow Claw - TM65
  (614, 61400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Beartic - Ice Fang - TM67
  (614, 61400, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 48),
  -- Beartic - Round - TM76
  (614, 61400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 49),
  -- Beartic - Bulldoze - TM81
  (614, 61400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Beartic - Swords Dance - TR00
  (614, 61400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 51),
  -- Beartic - Surf - TR04
  (614, 61400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Beartic - Ice Beam - TR05
  (614, 61400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Beartic - Blizzard - TR06
  (614, 61400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 54),
  -- Beartic - Low Kick - TR07
  (614, 61400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 55),
  -- Beartic - Substitute - TR20
  (614, 61400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Beartic - Endure - TR26
  (614, 61400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Beartic - Sleep Talk - TR27
  (614, 61400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Beartic - Encore - TR30
  (614, 61400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 59),
  -- Beartic - Taunt - TR37
  (614, 61400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Beartic - Superpower - TR39
  (614, 61400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 61),
  -- Beartic - Bulk Up - TR48
  (614, 61400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 62),
  -- Beartic - Focus Blast - TR64
  (614, 61400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Beartic - Stone Edge - TR75
  (614, 61400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 64),
  -- Beartic - Grass Knot - TR77
  (614, 61400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Beartic - Heavy Slam - TR79
  (614, 61400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 66),
  -- Beartic - Play Rough - TR90
  (614, 61400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 67),
  -- Beartic - Throat Chop - TR95
  (614, 61400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 68),
  -- Beartic - Liquidation - TR98
  (614, 61400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 69),
  -- Beartic - Body Press - TR99
  (614, 61400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 70),
  -- Cryogonal - Bind - Level 1
  (615, 61500, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cryogonal - Ice Shard - Level 1
  (615, 61500, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cryogonal - Confuse Ray - Level 4
  (615, 61500, 109, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cryogonal - Rapid Spin - Level 8
  (615, 61500, 229, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cryogonal - Laser Focus - Level 12
  (615, 61500, 673, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cryogonal - Icy Wind - Level 16
  (615, 61500, 196, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cryogonal - Mist - Level 20
  (615, 61500, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Cryogonal - Haze - Level 20
  (615, 61500, 114, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cryogonal - Ancient Power - Level 24
  (615, 61500, 246, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cryogonal - Aurora Beam - Level 28
  (615, 61500, 62, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Cryogonal - Slash - Level 32
  (615, 61500, 163, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Cryogonal - Night Slash - Level 32
  (615, 61500, 400, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Cryogonal - Freeze-Dry - Level 36
  (615, 61500, 573, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Cryogonal - Light Screen - Level 40
  (615, 61500, 113, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Cryogonal - Reflect - Level 40
  (615, 61500, 115, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Cryogonal - Recover - Level 44
  (615, 61500, 105, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Cryogonal - Ice Beam - Level 48
  (615, 61500, 58, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Cryogonal - Acid Armor - Level 52
  (615, 61500, 151, 18, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Cryogonal - Solar Beam - Level 56
  (615, 61500, 76, 18, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Cryogonal - Sheer Cold - Level 60
  (615, 61500, 329, 18, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Cryogonal - Hyper Beam - TM08
  (615, 61500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Cryogonal - Solar Beam - TM11
  (615, 61500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Cryogonal - Light Screen - TM17
  (615, 61500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Cryogonal - Reflect - TM18
  (615, 61500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Cryogonal - Self-Destruct - TM20
  (615, 61500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 25),
  -- Cryogonal - Rest - TM21
  (615, 61500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Cryogonal - Snore - TM24
  (615, 61500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Cryogonal - Protect - TM25
  (615, 61500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Cryogonal - Icy Wind - TM27
  (615, 61500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Cryogonal - Rain Dance - TM33
  (615, 61500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Cryogonal - Hail - TM35
  (615, 61500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Cryogonal - Facade - TM39
  (615, 61500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Cryogonal - Icicle Spear - TM51
  (615, 61500, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 33),
  -- Cryogonal - Avalanche - TM64
  (615, 61500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 34),
  -- Cryogonal - Round - TM76
  (615, 61500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Cryogonal - Acrobatics - TM78
  (615, 61500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 36),
  -- Cryogonal - Ice Beam - TR05
  (615, 61500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 37),
  -- Cryogonal - Blizzard - TR06
  (615, 61500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 38),
  -- Cryogonal - Substitute - TR20
  (615, 61500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Cryogonal - Endure - TR26
  (615, 61500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Cryogonal - Sleep Talk - TR27
  (615, 61500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Cryogonal - Iron Defense - TR46
  (615, 61500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Cryogonal - Poison Jab - TR57
  (615, 61500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 43),
  -- Cryogonal - Flash Cannon - TR70
  (615, 61500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 44),
  -- Shelmet - Absorb - Level 1
  (616, 61600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelmet - Protect - Level 1
  (616, 61600, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelmet - Acid - Level 4
  (616, 61600, 51, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shelmet - Curse - Level 8
  (616, 61600, 174, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shelmet - Mega Drain - Level 12
  (616, 61600, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shelmet - Struggle Bug - Level 16
  (616, 61600, 522, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shelmet - Yawn - Level 20
  (616, 61600, 281, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shelmet - Acid Armor - Level 24
  (616, 61600, 151, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shelmet - Giga Drain - Level 28
  (616, 61600, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shelmet - Guard Swap - Level 32
  (616, 61600, 385, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shelmet - Body Slam - Level 36
  (616, 61600, 34, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shelmet - Recover - Level 40
  (616, 61600, 105, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shelmet - Bug Buzz - Level 44
  (616, 61600, 405, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shelmet - Final Gambit - Level 48
  (616, 61600, 515, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shelmet - Rest - TM21
  (616, 61600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Shelmet - Snore - TM24
  (616, 61600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Shelmet - Protect - TM25
  (616, 61600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Shelmet - Giga Drain - TM28
  (616, 61600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 18),
  -- Shelmet - Attract - TM31
  (616, 61600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Shelmet - Rain Dance - TM33
  (616, 61600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Shelmet - Facade - TM39
  (616, 61600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Shelmet - Mud Shot - TM53
  (616, 61600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 22),
  -- Shelmet - Guard Swap - TM61
  (616, 61600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 23),
  -- Shelmet - Venoshock - TM74
  (616, 61600, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 24),
  -- Shelmet - Round - TM76
  (616, 61600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Shelmet - Body Slam - TR01
  (616, 61600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 26),
  -- Shelmet - Leech Life - TR18
  (616, 61600, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 27),
  -- Shelmet - Substitute - TR20
  (616, 61600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 28),
  -- Shelmet - Sludge Bomb - TR22
  (616, 61600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 29),
  -- Shelmet - Spikes - TR23
  (616, 61600, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 30),
  -- Shelmet - Endure - TR26
  (616, 61600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Shelmet - Sleep Talk - TR27
  (616, 61600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Shelmet - Baton Pass - TR29
  (616, 61600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 33),
  -- Shelmet - Encore - TR30
  (616, 61600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 34),
  -- Shelmet - Toxic Spikes - TR54
  (616, 61600, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 35),
  -- Shelmet - Bug Buzz - TR61
  (616, 61600, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 36),
  -- Shelmet - Energy Ball - TR65
  (616, 61600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 37),
  -- Shelmet - Double-Edge - Egg
  (616, 61600, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shelmet - Mind Reader - Egg
  (616, 61600, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shelmet - Feint - Egg
  (616, 61600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shelmet - Guard Split - Egg
  (616, 61600, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Accelgor - Body Slam - Level 1
  (617, 61700, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Accelgor - Acid - Level 1
  (617, 61700, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Accelgor - Absorb - Level 1
  (617, 61700, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Accelgor - Quick Attack - Level 1
  (617, 61700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Accelgor - Double Team - Level 1
  (617, 61700, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Accelgor - Acid Armor - Level 1
  (617, 61700, 151, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Accelgor - Curse - Level 1
  (617, 61700, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Accelgor - Yawn - Level 1
  (617, 61700, 281, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Accelgor - Guard Swap - Level 1
  (617, 61700, 385, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Accelgor - Acid Spray - Level 1
  (617, 61700, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Accelgor - Water Shuriken - Level 1
  (617, 61700, 594, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Accelgor - Mega Drain - Level 12
  (617, 61700, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Accelgor - Struggle Bug - Level 16
  (617, 61700, 522, 18, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Accelgor - Swift - Level 20
  (617, 61700, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Accelgor - Agility - Level 24
  (617, 61700, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Accelgor - Giga Drain - Level 28
  (617, 61700, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Accelgor - Power Swap - Level 32
  (617, 61700, 384, 18, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Accelgor - U-turn - Level 36
  (617, 61700, 369, 18, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Accelgor - Recover - Level 40
  (617, 61700, 105, 18, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Accelgor - Bug Buzz - Level 44
  (617, 61700, 405, 18, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Accelgor - Final Gambit - Level 48
  (617, 61700, 515, 18, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Accelgor - Toxic - Level 52
  (617, 61700, 92, 18, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Accelgor - Hyper Beam - TM08
  (617, 61700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Accelgor - Giga Impact - TM09
  (617, 61700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Accelgor - Rest - TM21
  (617, 61700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Accelgor - Snore - TM24
  (617, 61700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Accelgor - Protect - TM25
  (617, 61700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Accelgor - Giga Drain - TM28
  (617, 61700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Accelgor - Attract - TM31
  (617, 61700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Accelgor - Sandstorm - TM32
  (617, 61700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Accelgor - Rain Dance - TM33
  (617, 61700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Accelgor - Facade - TM39
  (617, 61700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Accelgor - Swift - TM40
  (617, 61700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Accelgor - Mud Shot - TM53
  (617, 61700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Accelgor - U-turn - TM56
  (617, 61700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Accelgor - Power Swap - TM60
  (617, 61700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Accelgor - Guard Swap - TM61
  (617, 61700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 37),
  -- Accelgor - Drain Punch - TM63
  (617, 61700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Accelgor - Venoshock - TM74
  (617, 61700, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 39),
  -- Accelgor - Round - TM76
  (617, 61700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Accelgor - Body Slam - TR01
  (617, 61700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Accelgor - Agility - TR12
  (617, 61700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Accelgor - Leech Life - TR18
  (617, 61700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 43),
  -- Accelgor - Substitute - TR20
  (617, 61700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Accelgor - Reversal - TR21
  (617, 61700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 45),
  -- Accelgor - Sludge Bomb - TR22
  (617, 61700, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 46),
  -- Accelgor - Spikes - TR23
  (617, 61700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 47),
  -- Accelgor - Endure - TR26
  (617, 61700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Accelgor - Sleep Talk - TR27
  (617, 61700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Accelgor - Baton Pass - TR29
  (617, 61700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 50),
  -- Accelgor - Encore - TR30
  (617, 61700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 51),
  -- Accelgor - Toxic Spikes - TR54
  (617, 61700, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 52),
  -- Accelgor - Bug Buzz - TR61
  (617, 61700, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 53),
  -- Accelgor - Focus Blast - TR64
  (617, 61700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 54),
  -- Accelgor - Energy Ball - TR65
  (617, 61700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Accelgor - Venom Drench - TR91
  (617, 61700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 56),
  -- Stunfisk - Tackle - Level 1
  (618, 61800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunfisk - Water Gun - Level 1
  (618, 61800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunfisk - Thunder Shock - Level 1
  (618, 61800, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stunfisk - Mud-Slap - Level 1
  (618, 61800, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stunfisk - Endure - Level 5
  (618, 61800, 203, 18, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Stunfisk - Mud Shot - Level 10
  (618, 61800, 341, 18, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Stunfisk - Revenge - Level 15
  (618, 61800, 279, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunfisk - Charge - Level 20
  (618, 61800, 268, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Stunfisk - Sucker Punch - Level 25
  (618, 61800, 389, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Stunfisk - Electric Terrain - Level 30
  (618, 61800, 604, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Stunfisk - Bounce - Level 35
  (618, 61800, 340, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Stunfisk - Muddy Water - Level 40
  (618, 61800, 330, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Stunfisk - Discharge - Level 45
  (618, 61800, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Stunfisk - Flail - Level 50
  (618, 61800, 175, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Stunfisk - Fissure - Level 55
  (618, 61800, 90, 18, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Stunfisk - Thunder Wave - TM14
  (618, 61800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Stunfisk - Dig - TM15
  (618, 61800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Stunfisk - Rest - TM21
  (618, 61800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Stunfisk - Rock Slide - TM22
  (618, 61800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Stunfisk - Snore - TM24
  (618, 61800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Stunfisk - Protect - TM25
  (618, 61800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Stunfisk - Attract - TM31
  (618, 61800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Stunfisk - Sandstorm - TM32
  (618, 61800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Stunfisk - Rain Dance - TM33
  (618, 61800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Stunfisk - Facade - TM39
  (618, 61800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Stunfisk - Revenge - TM42
  (618, 61800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 26),
  -- Stunfisk - Rock Tomb - TM48
  (618, 61800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Stunfisk - Bounce - TM52
  (618, 61800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 28),
  -- Stunfisk - Mud Shot - TM53
  (618, 61800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Stunfisk - Payback - TM57
  (618, 61800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Stunfisk - Round - TM76
  (618, 61800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Stunfisk - Bulldoze - TM81
  (618, 61800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Stunfisk - Electroweb - TM82
  (618, 61800, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 33),
  -- Stunfisk - Electric Terrain - TM90
  (618, 61800, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 34),
  -- Stunfisk - Eerie Impulse - TM93
  (618, 61800, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 35),
  -- Stunfisk - Stomping Tantrum - TM98
  (618, 61800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Stunfisk - Surf - TR04
  (618, 61800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Stunfisk - Thunderbolt - TR08
  (618, 61800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Stunfisk - Thunder - TR09
  (618, 61800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Stunfisk - Earthquake - TR10
  (618, 61800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Stunfisk - Substitute - TR20
  (618, 61800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Stunfisk - Sludge Bomb - TR22
  (618, 61800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 42),
  -- Stunfisk - Endure - TR26
  (618, 61800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Stunfisk - Sleep Talk - TR27
  (618, 61800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Stunfisk - Uproar - TR35
  (618, 61800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Stunfisk - Muddy Water - TR45
  (618, 61800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 46),
  -- Stunfisk - Earth Power - TR67
  (618, 61800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 47),
  -- Stunfisk - Stone Edge - TR75
  (618, 61800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 48),
  -- Stunfisk - Stealth Rock - TR76
  (618, 61800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 49),
  -- Stunfisk - Sludge Wave - TR78
  (618, 61800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 50),
  -- Stunfisk - Foul Play - TR81
  (618, 61800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Stunfisk - Scald - TR84
  (618, 61800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 52),
  -- Stunfisk - Curse - Egg
  (618, 61800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunfisk - Spite - Egg
  (618, 61800, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunfisk - Spark - Egg
  (618, 61800, 209, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunfisk - Pain Split - Egg
  (618, 61800, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunfisk - Yawn - Egg
  (618, 61800, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunfisk - Astonish - Egg
  (618, 61800, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunfisk - Reflect Type - Egg
  (618, 61800, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mienfoo - Pound - Level 1
  (619, 61900, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienfoo - Detect - Level 1
  (619, 61900, 197, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienfoo - Fake Out - Level 5
  (619, 61900, 252, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mienfoo - Reversal - Level 10
  (619, 61900, 179, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mienfoo - Fury Swipes - Level 15
  (619, 61900, 154, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mienfoo - Quick Guard - Level 20
  (619, 61900, 501, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Mienfoo - Force Palm - Level 25
  (619, 61900, 395, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mienfoo - U-turn - Level 30
  (619, 61900, 369, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Mienfoo - Drain Punch - Level 35
  (619, 61900, 409, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mienfoo - Hone Claws - Level 40
  (619, 61900, 468, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mienfoo - Aura Sphere - Level 45
  (619, 61900, 396, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Mienfoo - Bounce - Level 51
  (619, 61900, 340, 18, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Mienfoo - Calm Mind - Level 55
  (619, 61900, 347, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Mienfoo - High Jump Kick - Level 60
  (619, 61900, 136, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Mienfoo - Mega Punch - TM00
  (619, 61900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Mienfoo - Mega Kick - TM01
  (619, 61900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Mienfoo - Dig - TM15
  (619, 61900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Mienfoo - Reflect - TM18
  (619, 61900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Mienfoo - Rest - TM21
  (619, 61900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Mienfoo - Rock Slide - TM22
  (619, 61900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Mienfoo - Snore - TM24
  (619, 61900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Mienfoo - Protect - TM25
  (619, 61900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Mienfoo - Attract - TM31
  (619, 61900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Mienfoo - Rain Dance - TM33
  (619, 61900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Mienfoo - Sunny Day - TM34
  (619, 61900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Mienfoo - Facade - TM39
  (619, 61900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Mienfoo - Swift - TM40
  (619, 61900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Mienfoo - Helping Hand - TM41
  (619, 61900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Mienfoo - Revenge - TM42
  (619, 61900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Mienfoo - Brick Break - TM43
  (619, 61900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Mienfoo - Rock Tomb - TM48
  (619, 61900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Mienfoo - Bounce - TM52
  (619, 61900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 32),
  -- Mienfoo - U-turn - TM56
  (619, 61900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Mienfoo - Payback - TM57
  (619, 61900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Mienfoo - Fling - TM59
  (619, 61900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Mienfoo - Drain Punch - TM63
  (619, 61900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Mienfoo - Low Sweep - TM75
  (619, 61900, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Mienfoo - Round - TM76
  (619, 61900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Mienfoo - Acrobatics - TM78
  (619, 61900, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Mienfoo - Retaliate - TM79
  (619, 61900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Mienfoo - Swords Dance - TR00
  (619, 61900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 41),
  -- Mienfoo - Low Kick - TR07
  (619, 61900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 42),
  -- Mienfoo - Agility - TR12
  (619, 61900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Mienfoo - Focus Energy - TR13
  (619, 61900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 44),
  -- Mienfoo - Substitute - TR20
  (619, 61900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Mienfoo - Reversal - TR21
  (619, 61900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 46),
  -- Mienfoo - Endure - TR26
  (619, 61900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Mienfoo - Sleep Talk - TR27
  (619, 61900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Mienfoo - Baton Pass - TR29
  (619, 61900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 49),
  -- Mienfoo - Taunt - TR37
  (619, 61900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Mienfoo - Bulk Up - TR48
  (619, 61900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 51),
  -- Mienfoo - Calm Mind - TR49
  (619, 61900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Mienfoo - Close Combat - TR53
  (619, 61900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 53),
  -- Mienfoo - Aura Sphere - TR56
  (619, 61900, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 54),
  -- Mienfoo - Poison Jab - TR57
  (619, 61900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 55),
  -- Mienfoo - Focus Blast - TR64
  (619, 61900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Mienfoo - Stone Edge - TR75
  (619, 61900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 57),
  -- Mienfoo - Grass Knot - TR77
  (619, 61900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 58),
  -- Mienfoo - Ally Switch - TR83
  (619, 61900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Mienfoo - Work Up - TR85
  (619, 61900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 60),
  -- Mienfoo - Vital Throw - Egg
  (619, 61900, 233, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mienfoo - Focus Punch - Egg
  (619, 61900, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mienfoo - Knock Off - Egg
  (619, 61900, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mienfoo - Feint - Egg
  (619, 61900, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mienshao - Pound - Level 1
  (620, 62000, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienshao - Reversal - Level 1
  (620, 62000, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienshao - Detect - Level 1
  (620, 62000, 197, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mienshao - Fake Out - Level 1
  (620, 62000, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mienshao - Quick Guard - Level 1
  (620, 62000, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mienshao - Fury Swipes - Level 15
  (620, 62000, 154, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mienshao - Wide Guard - Level 20
  (620, 62000, 469, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mienshao - Force Palm - Level 25
  (620, 62000, 395, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Mienshao - U-turn - Level 30
  (620, 62000, 369, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Mienshao - Drain Punch - Level 35
  (620, 62000, 409, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Mienshao - Hone Claws - Level 40
  (620, 62000, 468, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Mienshao - Aura Sphere - Level 45
  (620, 62000, 396, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Mienshao - Bounce - Level 53
  (620, 62000, 340, 18, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Mienshao - Calm Mind - Level 59
  (620, 62000, 347, 18, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Mienshao - High Jump Kick - Level 66
  (620, 62000, 136, 18, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Mienshao - Mega Punch - TM00
  (620, 62000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Mienshao - Mega Kick - TM01
  (620, 62000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Mienshao - Hyper Beam - TM08
  (620, 62000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Mienshao - Giga Impact - TM09
  (620, 62000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Mienshao - Dig - TM15
  (620, 62000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Mienshao - Reflect - TM18
  (620, 62000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Mienshao - Rest - TM21
  (620, 62000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Mienshao - Rock Slide - TM22
  (620, 62000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Mienshao - Snore - TM24
  (620, 62000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Mienshao - Protect - TM25
  (620, 62000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Mienshao - Attract - TM31
  (620, 62000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Mienshao - Rain Dance - TM33
  (620, 62000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Mienshao - Sunny Day - TM34
  (620, 62000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Mienshao - Facade - TM39
  (620, 62000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Mienshao - Swift - TM40
  (620, 62000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Mienshao - Helping Hand - TM41
  (620, 62000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Mienshao - Revenge - TM42
  (620, 62000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Mienshao - Brick Break - TM43
  (620, 62000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Mienshao - Rock Tomb - TM48
  (620, 62000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Mienshao - Bounce - TM52
  (620, 62000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 35),
  -- Mienshao - U-turn - TM56
  (620, 62000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 36),
  -- Mienshao - Payback - TM57
  (620, 62000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Mienshao - Assurance - TM58
  (620, 62000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 38),
  -- Mienshao - Fling - TM59
  (620, 62000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Mienshao - Drain Punch - TM63
  (620, 62000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 40),
  -- Mienshao - Low Sweep - TM75
  (620, 62000, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 41),
  -- Mienshao - Round - TM76
  (620, 62000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Mienshao - Acrobatics - TM78
  (620, 62000, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 43),
  -- Mienshao - Retaliate - TM79
  (620, 62000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 44),
  -- Mienshao - Brutal Swing - TM97
  (620, 62000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 45),
  -- Mienshao - Swords Dance - TR00
  (620, 62000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 46),
  -- Mienshao - Low Kick - TR07
  (620, 62000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 47),
  -- Mienshao - Agility - TR12
  (620, 62000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 48),
  -- Mienshao - Focus Energy - TR13
  (620, 62000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 49),
  -- Mienshao - Substitute - TR20
  (620, 62000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Mienshao - Reversal - TR21
  (620, 62000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 51),
  -- Mienshao - Endure - TR26
  (620, 62000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Mienshao - Sleep Talk - TR27
  (620, 62000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Mienshao - Baton Pass - TR29
  (620, 62000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 54),
  -- Mienshao - Taunt - TR37
  (620, 62000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 55),
  -- Mienshao - Blaze Kick - TR41
  (620, 62000, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 56),
  -- Mienshao - Bulk Up - TR48
  (620, 62000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 57),
  -- Mienshao - Calm Mind - TR49
  (620, 62000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Mienshao - Close Combat - TR53
  (620, 62000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 59),
  -- Mienshao - Aura Sphere - TR56
  (620, 62000, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 60),
  -- Mienshao - Poison Jab - TR57
  (620, 62000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 61),
  -- Mienshao - Focus Blast - TR64
  (620, 62000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 62),
  -- Mienshao - Stone Edge - TR75
  (620, 62000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 63),
  -- Mienshao - Grass Knot - TR77
  (620, 62000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 64),
  -- Mienshao - Ally Switch - TR83
  (620, 62000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Mienshao - Work Up - TR85
  (620, 62000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Druddigon - Scratch - Level 1
  (621, 62100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Druddigon - Leer - Level 1
  (621, 62100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Druddigon - Bite - Level 5
  (621, 62100, 44, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Druddigon - Dragon Tail - Level 10
  (621, 62100, 525, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Druddigon - Metal Claw - Level 15
  (621, 62100, 232, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Druddigon - Scary Face - Level 20
  (621, 62100, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Druddigon - Slash - Level 25
  (621, 62100, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Druddigon - Dragon Claw - Level 30
  (621, 62100, 337, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Druddigon - Hone Claws - Level 35
  (621, 62100, 468, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Druddigon - Crunch - Level 40
  (621, 62100, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Druddigon - Iron Head - Level 45
  (621, 62100, 442, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Druddigon - Outrage - Level 50
  (621, 62100, 200, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Druddigon - Superpower - Level 55
  (621, 62100, 276, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Druddigon - Mega Punch - TM00
  (621, 62100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Druddigon - Fire Punch - TM03
  (621, 62100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Druddigon - Thunder Punch - TM05
  (621, 62100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Druddigon - Hyper Beam - TM08
  (621, 62100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Druddigon - Giga Impact - TM09
  (621, 62100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Druddigon - Dig - TM15
  (621, 62100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Druddigon - Rest - TM21
  (621, 62100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Druddigon - Rock Slide - TM22
  (621, 62100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Druddigon - Snore - TM24
  (621, 62100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Druddigon - Protect - TM25
  (621, 62100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Druddigon - Scary Face - TM26
  (621, 62100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Druddigon - Attract - TM31
  (621, 62100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Druddigon - Rain Dance - TM33
  (621, 62100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Druddigon - Sunny Day - TM34
  (621, 62100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Druddigon - Facade - TM39
  (621, 62100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Druddigon - Revenge - TM42
  (621, 62100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Druddigon - Rock Tomb - TM48
  (621, 62100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Druddigon - Payback - TM57
  (621, 62100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Druddigon - Fling - TM59
  (621, 62100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Druddigon - Shadow Claw - TM65
  (621, 62100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Druddigon - Thunder Fang - TM66
  (621, 62100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 34),
  -- Druddigon - Fire Fang - TM68
  (621, 62100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 35),
  -- Druddigon - Round - TM76
  (621, 62100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Druddigon - Retaliate - TM79
  (621, 62100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Druddigon - Bulldoze - TM81
  (621, 62100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Druddigon - Snarl - TM85
  (621, 62100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 39),
  -- Druddigon - Stomping Tantrum - TM98
  (621, 62100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Druddigon - Body Slam - TR01
  (621, 62100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Druddigon - Flamethrower - TR02
  (621, 62100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 42),
  -- Druddigon - Surf - TR04
  (621, 62100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 43),
  -- Druddigon - Earthquake - TR10
  (621, 62100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Druddigon - Substitute - TR20
  (621, 62100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Druddigon - Sludge Bomb - TR22
  (621, 62100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 46),
  -- Druddigon - Outrage - TR24
  (621, 62100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Druddigon - Endure - TR26
  (621, 62100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Druddigon - Sleep Talk - TR27
  (621, 62100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Druddigon - Iron Tail - TR31
  (621, 62100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Druddigon - Crunch - TR32
  (621, 62100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 51),
  -- Druddigon - Heat Wave - TR36
  (621, 62100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Druddigon - Taunt - TR37
  (621, 62100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Druddigon - Superpower - TR39
  (621, 62100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 54),
  -- Druddigon - Dragon Claw - TR47
  (621, 62100, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 55),
  -- Druddigon - Dark Pulse - TR58
  (621, 62100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Druddigon - Dragon Pulse - TR62
  (621, 62100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 57),
  -- Druddigon - Focus Blast - TR64
  (621, 62100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Druddigon - Flash Cannon - TR70
  (621, 62100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 59),
  -- Druddigon - Gunk Shot - TR73
  (621, 62100, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 60),
  -- Druddigon - Iron Head - TR74
  (621, 62100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Druddigon - Stealth Rock - TR76
  (621, 62100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Druddigon - Glare - Egg
  (621, 62100, 137, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Druddigon - Poison Tail - Egg
  (621, 62100, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Druddigon - Sucker Punch - Egg
  (621, 62100, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Druddigon - Night Slash - Egg
  (621, 62100, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Druddigon - Draco Meteor - Tutor
  (621, 62100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 67),
  -- Golett - Mud-Slap - Level 1
  (622, 62200, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golett - Astonish - Level 1
  (622, 62200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golett - Defense Curl - Level 4
  (622, 62200, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Golett - Pound - Level 8
  (622, 62200, 1, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Golett - Shadow Punch - Level 12
  (622, 62200, 325, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Golett - Curse - Level 16
  (622, 62200, 174, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Golett - Night Shade - Level 20
  (622, 62200, 101, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Golett - Stomping Tantrum - Level 24
  (622, 62200, 707, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Golett - Iron Defense - Level 28
  (622, 62200, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Golett - Mega Punch - Level 32
  (622, 62200, 5, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Golett - Shadow Ball - Level 36
  (622, 62200, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Golett - Heavy Slam - Level 40
  (622, 62200, 484, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Golett - Phantom Force - Level 44
  (622, 62200, 566, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Golett - Hammer Arm - Level 48
  (622, 62200, 359, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Golett - Earthquake - Level 52
  (622, 62200, 89, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Golett - Dynamic Punch - Level 56
  (622, 62200, 223, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Golett - Mega Punch - TM00
  (622, 62200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Golett - Mega Kick - TM01
  (622, 62200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Golett - Fire Punch - TM03
  (622, 62200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Golett - Ice Punch - TM04
  (622, 62200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Golett - Thunder Punch - TM05
  (622, 62200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Golett - Dig - TM15
  (622, 62200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Golett - Safeguard - TM19
  (622, 62200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Golett - Self-Destruct - TM20
  (622, 62200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Golett - Rest - TM21
  (622, 62200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Golett - Rock Slide - TM22
  (622, 62200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Golett - Thief - TM23
  (622, 62200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Golett - Snore - TM24
  (622, 62200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Golett - Protect - TM25
  (622, 62200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Golett - Icy Wind - TM27
  (622, 62200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Golett - Rain Dance - TM33
  (622, 62200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Golett - Facade - TM39
  (622, 62200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Golett - Helping Hand - TM41
  (622, 62200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Golett - Brick Break - TM43
  (622, 62200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Golett - Imprison - TM44
  (622, 62200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Golett - Rock Tomb - TM48
  (622, 62200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Golett - Fling - TM59
  (622, 62200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Golett - Drain Punch - TM63
  (622, 62200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Golett - Low Sweep - TM75
  (622, 62200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Golett - Round - TM76
  (622, 62200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Golett - Bulldoze - TM81
  (622, 62200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Golett - Phantom Force - TM86
  (622, 62200, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 42),
  -- Golett - Stomping Tantrum - TM98
  (622, 62200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Golett - Ice Beam - TR05
  (622, 62200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Golett - Low Kick - TR07
  (622, 62200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Golett - Earthquake - TR10
  (622, 62200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Golett - Psychic - TR11
  (622, 62200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Golett - Substitute - TR20
  (622, 62200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Golett - Endure - TR26
  (622, 62200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Golett - Sleep Talk - TR27
  (622, 62200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Golett - Shadow Ball - TR33
  (622, 62200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Golett - Superpower - TR39
  (622, 62200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 52),
  -- Golett - Iron Defense - TR46
  (622, 62200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Golett - Gyro Ball - TR52
  (622, 62200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Golett - Focus Blast - TR64
  (622, 62200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Golett - Earth Power - TR67
  (622, 62200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 56),
  -- Golett - Stealth Rock - TR76
  (622, 62200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 57),
  -- Golett - Grass Knot - TR77
  (622, 62200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 58),
  -- Golett - Heavy Slam - TR79
  (622, 62200, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 59),
  -- Golett - Ally Switch - TR83
  (622, 62200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 60),
  -- Golurk - Pound - Level 1
  (623, 62300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golurk - Defense Curl - Level 1
  (623, 62300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golurk - Mud-Slap - Level 1
  (623, 62300, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golurk - Focus Punch - Level 1
  (623, 62300, 264, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golurk - Astonish - Level 1
  (623, 62300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golurk - High Horsepower - Level 1
  (623, 62300, 667, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Golurk - Shadow Punch - Level 12
  (623, 62300, 325, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Golurk - Curse - Level 16
  (623, 62300, 174, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Golurk - Night Shade - Level 20
  (623, 62300, 101, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Golurk - Stomping Tantrum - Level 24
  (623, 62300, 707, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Golurk - Iron Defense - Level 28
  (623, 62300, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Golurk - Mega Punch - Level 32
  (623, 62300, 5, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Golurk - Shadow Ball - Level 36
  (623, 62300, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Golurk - Heavy Slam - Level 40
  (623, 62300, 484, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Golurk - Phantom Force - Level 46
  (623, 62300, 566, 18, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Golurk - Hammer Arm - Level 52
  (623, 62300, 359, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Golurk - Earthquake - Level 58
  (623, 62300, 89, 18, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Golurk - Dynamic Punch - Level 64
  (623, 62300, 223, 18, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Golurk - Mega Punch - TM00
  (623, 62300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Golurk - Mega Kick - TM01
  (623, 62300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Golurk - Fire Punch - TM03
  (623, 62300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Golurk - Ice Punch - TM04
  (623, 62300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Golurk - Thunder Punch - TM05
  (623, 62300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Golurk - Fly - TM06
  (623, 62300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 24),
  -- Golurk - Hyper Beam - TM08
  (623, 62300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Golurk - Giga Impact - TM09
  (623, 62300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Golurk - Solar Beam - TM11
  (623, 62300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 27),
  -- Golurk - Dig - TM15
  (623, 62300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Golurk - Safeguard - TM19
  (623, 62300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 29),
  -- Golurk - Self-Destruct - TM20
  (623, 62300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 30),
  -- Golurk - Rest - TM21
  (623, 62300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Golurk - Rock Slide - TM22
  (623, 62300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 32),
  -- Golurk - Thief - TM23
  (623, 62300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 33),
  -- Golurk - Snore - TM24
  (623, 62300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Golurk - Protect - TM25
  (623, 62300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Golurk - Icy Wind - TM27
  (623, 62300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 36),
  -- Golurk - Rain Dance - TM33
  (623, 62300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 37),
  -- Golurk - Facade - TM39
  (623, 62300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Golurk - Helping Hand - TM41
  (623, 62300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Golurk - Brick Break - TM43
  (623, 62300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Golurk - Imprison - TM44
  (623, 62300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 41),
  -- Golurk - Rock Tomb - TM48
  (623, 62300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Golurk - Fling - TM59
  (623, 62300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Golurk - Drain Punch - TM63
  (623, 62300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 44),
  -- Golurk - Low Sweep - TM75
  (623, 62300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 45),
  -- Golurk - Round - TM76
  (623, 62300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Golurk - Bulldoze - TM81
  (623, 62300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 47),
  -- Golurk - Phantom Force - TM86
  (623, 62300, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 48),
  -- Golurk - Stomping Tantrum - TM98
  (623, 62300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Golurk - Body Slam - TR01
  (623, 62300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Golurk - Ice Beam - TR05
  (623, 62300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Golurk - Low Kick - TR07
  (623, 62300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 52),
  -- Golurk - Thunderbolt - TR08
  (623, 62300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 53),
  -- Golurk - Earthquake - TR10
  (623, 62300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Golurk - Psychic - TR11
  (623, 62300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 55),
  -- Golurk - Substitute - TR20
  (623, 62300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Golurk - Endure - TR26
  (623, 62300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Golurk - Sleep Talk - TR27
  (623, 62300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Golurk - Shadow Ball - TR33
  (623, 62300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Golurk - Trick - TR38
  (623, 62300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Golurk - Superpower - TR39
  (623, 62300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 61),
  -- Golurk - Iron Defense - TR46
  (623, 62300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 62),
  -- Golurk - Gyro Ball - TR52
  (623, 62300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 63),
  -- Golurk - Close Combat - TR53
  (623, 62300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 64),
  -- Golurk - Focus Blast - TR64
  (623, 62300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Golurk - Earth Power - TR67
  (623, 62300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 66),
  -- Golurk - Zen Headbutt - TR69
  (623, 62300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 67),
  -- Golurk - Flash Cannon - TR70
  (623, 62300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 68),
  -- Golurk - Stone Edge - TR75
  (623, 62300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 69),
  -- Golurk - Stealth Rock - TR76
  (623, 62300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 70),
  -- Golurk - Grass Knot - TR77
  (623, 62300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Golurk - Heavy Slam - TR79
  (623, 62300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 72),
  -- Golurk - Ally Switch - TR83
  (623, 62300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 73),
  -- Golurk - Heat Crash - TR88
  (623, 62300, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 74),
  -- Golurk - Darkest Lariat - TR93
  (623, 62300, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 75),
  -- Golurk - High Horsepower - TR94
  (623, 62300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 76),
  -- Golurk - Body Press - TR99
  (623, 62300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 77),
  -- Pawniard - Scratch - Level 1
  (624, 62400, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawniard - Leer - Level 1
  (624, 62400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pawniard - Fury Cutter - Level 5
  (624, 62400, 210, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pawniard - Metal Claw - Level 10
  (624, 62400, 232, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pawniard - Torment - Level 15
  (624, 62400, 259, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pawniard - Scary Face - Level 20
  (624, 62400, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pawniard - Assurance - Level 25
  (624, 62400, 372, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pawniard - Metal Sound - Level 30
  (624, 62400, 319, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pawniard - Slash - Level 35
  (624, 62400, 163, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pawniard - Night Slash - Level 40
  (624, 62400, 400, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pawniard - Iron Defense - Level 45
  (624, 62400, 334, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pawniard - Laser Focus - Level 50
  (624, 62400, 673, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pawniard - Iron Head - Level 55
  (624, 62400, 442, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pawniard - Swords Dance - Level 60
  (624, 62400, 14, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pawniard - Guillotine - Level 65
  (624, 62400, 12, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Pawniard - Thunder Wave - TM14
  (624, 62400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Pawniard - Dig - TM15
  (624, 62400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Pawniard - Screech - TM16
  (624, 62400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Pawniard - Rest - TM21
  (624, 62400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Pawniard - Thief - TM23
  (624, 62400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Pawniard - Snore - TM24
  (624, 62400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Pawniard - Protect - TM25
  (624, 62400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Pawniard - Scary Face - TM26
  (624, 62400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Pawniard - Attract - TM31
  (624, 62400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Pawniard - Sandstorm - TM32
  (624, 62400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Pawniard - Rain Dance - TM33
  (624, 62400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Pawniard - Beat Up - TM37
  (624, 62400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 27),
  -- Pawniard - Facade - TM39
  (624, 62400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Pawniard - Revenge - TM42
  (624, 62400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Pawniard - Brick Break - TM43
  (624, 62400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Pawniard - Rock Tomb - TM48
  (624, 62400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Pawniard - Payback - TM57
  (624, 62400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Pawniard - Assurance - TM58
  (624, 62400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Pawniard - Fling - TM59
  (624, 62400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Pawniard - Shadow Claw - TM65
  (624, 62400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Pawniard - Psycho Cut - TM69
  (624, 62400, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Pawniard - Low Sweep - TM75
  (624, 62400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Pawniard - Round - TM76
  (624, 62400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Pawniard - Retaliate - TM79
  (624, 62400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Pawniard - Snarl - TM85
  (624, 62400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Pawniard - False Swipe - TM94
  (624, 62400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Pawniard - Swords Dance - TR00
  (624, 62400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Pawniard - Low Kick - TR07
  (624, 62400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 43),
  -- Pawniard - Substitute - TR20
  (624, 62400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Pawniard - Endure - TR26
  (624, 62400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Pawniard - Sleep Talk - TR27
  (624, 62400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Pawniard - Taunt - TR37
  (624, 62400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Pawniard - Iron Defense - TR46
  (624, 62400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Pawniard - Poison Jab - TR57
  (624, 62400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 49),
  -- Pawniard - Dark Pulse - TR58
  (624, 62400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Pawniard - X-Scissor - TR60
  (624, 62400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Pawniard - Iron Head - TR74
  (624, 62400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Pawniard - Stealth Rock - TR76
  (624, 62400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 53),
  -- Pawniard - Grass Knot - TR77
  (624, 62400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Pawniard - Foul Play - TR81
  (624, 62400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 55),
  -- Pawniard - Headbutt - Egg
  (624, 62400, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pawniard - Mean Look - Egg
  (624, 62400, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pawniard - Sucker Punch - Egg
  (624, 62400, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pawniard - Quick Guard - Egg
  (624, 62400, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pawniard - Steel Beam - Tutor
  (624, 62400, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Bisharp - Scratch - Level 1
  (625, 62500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bisharp - Leer - Level 1
  (625, 62500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bisharp - Fury Cutter - Level 1
  (625, 62500, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bisharp - Metal Claw - Level 1
  (625, 62500, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bisharp - Metal Burst - Level 1
  (625, 62500, 368, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bisharp - Torment - Level 15
  (625, 62500, 259, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bisharp - Scary Face - Level 20
  (625, 62500, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bisharp - Assurance - Level 25
  (625, 62500, 372, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bisharp - Metal Sound - Level 30
  (625, 62500, 319, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Bisharp - Slash - Level 35
  (625, 62500, 163, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bisharp - Night Slash - Level 40
  (625, 62500, 400, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Bisharp - Iron Defense - Level 45
  (625, 62500, 334, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Bisharp - Laser Focus - Level 50
  (625, 62500, 673, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Bisharp - Iron Head - Level 57
  (625, 62500, 442, 18, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Bisharp - Swords Dance - Level 64
  (625, 62500, 14, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Bisharp - Guillotine - Level 71
  (625, 62500, 12, 18, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Bisharp - Hyper Beam - TM08
  (625, 62500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Bisharp - Giga Impact - TM09
  (625, 62500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Bisharp - Thunder Wave - TM14
  (625, 62500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Bisharp - Dig - TM15
  (625, 62500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Bisharp - Screech - TM16
  (625, 62500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Bisharp - Rest - TM21
  (625, 62500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Bisharp - Thief - TM23
  (625, 62500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Bisharp - Snore - TM24
  (625, 62500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Bisharp - Protect - TM25
  (625, 62500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Bisharp - Scary Face - TM26
  (625, 62500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Bisharp - Attract - TM31
  (625, 62500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Bisharp - Sandstorm - TM32
  (625, 62500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Bisharp - Rain Dance - TM33
  (625, 62500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Bisharp - Beat Up - TM37
  (625, 62500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 30),
  -- Bisharp - Facade - TM39
  (625, 62500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Bisharp - Revenge - TM42
  (625, 62500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Bisharp - Brick Break - TM43
  (625, 62500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Bisharp - Rock Tomb - TM48
  (625, 62500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Bisharp - Payback - TM57
  (625, 62500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Bisharp - Assurance - TM58
  (625, 62500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Bisharp - Fling - TM59
  (625, 62500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Bisharp - Shadow Claw - TM65
  (625, 62500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Bisharp - Psycho Cut - TM69
  (625, 62500, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 39),
  -- Bisharp - Low Sweep - TM75
  (625, 62500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Bisharp - Round - TM76
  (625, 62500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Bisharp - Retaliate - TM79
  (625, 62500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Bisharp - Snarl - TM85
  (625, 62500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Bisharp - False Swipe - TM94
  (625, 62500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 44),
  -- Bisharp - Air Slash - TM95
  (625, 62500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 45),
  -- Bisharp - Swords Dance - TR00
  (625, 62500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 46),
  -- Bisharp - Low Kick - TR07
  (625, 62500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 47),
  -- Bisharp - Substitute - TR20
  (625, 62500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Bisharp - Endure - TR26
  (625, 62500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Bisharp - Sleep Talk - TR27
  (625, 62500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Bisharp - Taunt - TR37
  (625, 62500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Bisharp - Iron Defense - TR46
  (625, 62500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Bisharp - Poison Jab - TR57
  (625, 62500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Bisharp - Dark Pulse - TR58
  (625, 62500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Bisharp - X-Scissor - TR60
  (625, 62500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 55),
  -- Bisharp - Focus Blast - TR64
  (625, 62500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Bisharp - Iron Head - TR74
  (625, 62500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Bisharp - Stone Edge - TR75
  (625, 62500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Bisharp - Stealth Rock - TR76
  (625, 62500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Bisharp - Grass Knot - TR77
  (625, 62500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Bisharp - Foul Play - TR81
  (625, 62500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 61),
  -- Bisharp - Throat Chop - TR95
  (625, 62500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 62),
  -- Bisharp - Steel Beam - Tutor
  (625, 62500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Bouffalant - Tackle - Level 1
  (626, 62600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bouffalant - Leer - Level 1
  (626, 62600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bouffalant - Focus Energy - Level 5
  (626, 62600, 116, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bouffalant - Fury Attack - Level 10
  (626, 62600, 31, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bouffalant - Revenge - Level 15
  (626, 62600, 279, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bouffalant - Scary Face - Level 20
  (626, 62600, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bouffalant - Horn Attack - Level 25
  (626, 62600, 30, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bouffalant - Reversal - Level 30
  (626, 62600, 179, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bouffalant - Throat Chop - Level 35
  (626, 62600, 675, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Bouffalant - Head Charge - Level 40
  (626, 62600, 543, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Bouffalant - Swords Dance - Level 45
  (626, 62600, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Bouffalant - Megahorn - Level 50
  (626, 62600, 224, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bouffalant - Giga Impact - Level 55
  (626, 62600, 416, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Bouffalant - Giga Impact - TM09
  (626, 62600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 14),
  -- Bouffalant - Rest - TM21
  (626, 62600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Bouffalant - Rock Slide - TM22
  (626, 62600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Bouffalant - Snore - TM24
  (626, 62600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Bouffalant - Protect - TM25
  (626, 62600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Bouffalant - Scary Face - TM26
  (626, 62600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 19),
  -- Bouffalant - Attract - TM31
  (626, 62600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Bouffalant - Rain Dance - TM33
  (626, 62600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Bouffalant - Sunny Day - TM34
  (626, 62600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Bouffalant - Facade - TM39
  (626, 62600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Bouffalant - Revenge - TM42
  (626, 62600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 24),
  -- Bouffalant - Rock Tomb - TM48
  (626, 62600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Bouffalant - Mud Shot - TM53
  (626, 62600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Bouffalant - Payback - TM57
  (626, 62600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 27),
  -- Bouffalant - Assurance - TM58
  (626, 62600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 28),
  -- Bouffalant - Round - TM76
  (626, 62600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Bouffalant - Retaliate - TM79
  (626, 62600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 30),
  -- Bouffalant - Bulldoze - TM81
  (626, 62600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Bouffalant - Smart Strike - TM96
  (626, 62600, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 32),
  -- Bouffalant - Stomping Tantrum - TM98
  (626, 62600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Bouffalant - Swords Dance - TR00
  (626, 62600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Bouffalant - Body Slam - TR01
  (626, 62600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Bouffalant - Surf - TR04
  (626, 62600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 36),
  -- Bouffalant - Earthquake - TR10
  (626, 62600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Bouffalant - Focus Energy - TR13
  (626, 62600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 38),
  -- Bouffalant - Amnesia - TR17
  (626, 62600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 39),
  -- Bouffalant - Substitute - TR20
  (626, 62600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Bouffalant - Reversal - TR21
  (626, 62600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 41),
  -- Bouffalant - Outrage - TR24
  (626, 62600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 42),
  -- Bouffalant - Endure - TR26
  (626, 62600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Bouffalant - Sleep Talk - TR27
  (626, 62600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Bouffalant - Megahorn - TR28
  (626, 62600, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 45),
  -- Bouffalant - Uproar - TR35
  (626, 62600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 46),
  -- Bouffalant - Taunt - TR37
  (626, 62600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Bouffalant - Superpower - TR39
  (626, 62600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Bouffalant - Close Combat - TR53
  (626, 62600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 49),
  -- Bouffalant - Poison Jab - TR57
  (626, 62600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Bouffalant - Zen Headbutt - TR69
  (626, 62600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Bouffalant - Iron Head - TR74
  (626, 62600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Bouffalant - Stone Edge - TR75
  (626, 62600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Bouffalant - Work Up - TR85
  (626, 62600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Bouffalant - Wild Charge - TR86
  (626, 62600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 55),
  -- Bouffalant - High Horsepower - TR94
  (626, 62600, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 56),
  -- Bouffalant - Throat Chop - TR95
  (626, 62600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 57),
  -- Bouffalant - Stomp - Egg
  (626, 62600, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Bouffalant - Headbutt - Egg
  (626, 62600, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bouffalant - Skull Bash - Egg
  (626, 62600, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bouffalant - Mud-Slap - Egg
  (626, 62600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bouffalant - Endeavor - Egg
  (626, 62600, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Bouffalant - Cotton Guard - Egg
  (626, 62600, 538, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bouffalant - Belch - Egg
  (626, 62600, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rufflet - Leer - Level 1
  (627, 62700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rufflet - Peck - Level 1
  (627, 62700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rufflet - Hone Claws - Level 6
  (627, 62700, 468, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rufflet - Wing Attack - Level 12
  (627, 62700, 17, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Rufflet - Tailwind - Level 18
  (627, 62700, 366, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Rufflet - Scary Face - Level 24
  (627, 62700, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Rufflet - Aerial Ace - Level 30
  (627, 62700, 332, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Rufflet - Slash - Level 36
  (627, 62700, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Rufflet - Whirlwind - Level 42
  (627, 62700, 18, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Rufflet - Crush Claw - Level 48
  (627, 62700, 306, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Rufflet - Air Slash - Level 55
  (627, 62700, 403, 18, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Rufflet - Defog - Level 60
  (627, 62700, 432, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Rufflet - Thrash - Level 66
  (627, 62700, 37, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Rufflet - Brave Bird - Level 72
  (627, 62700, 413, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Rufflet - Fly - TM06
  (627, 62700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Rufflet - Rest - TM21
  (627, 62700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Rufflet - Rock Slide - TM22
  (627, 62700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Rufflet - Snore - TM24
  (627, 62700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Rufflet - Protect - TM25
  (627, 62700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Rufflet - Scary Face - TM26
  (627, 62700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Rufflet - Steel Wing - TM30
  (627, 62700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 21),
  -- Rufflet - Attract - TM31
  (627, 62700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Rufflet - Rain Dance - TM33
  (627, 62700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Rufflet - Sunny Day - TM34
  (627, 62700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Rufflet - Facade - TM39
  (627, 62700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Rufflet - Swift - TM40
  (627, 62700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Rufflet - Rock Tomb - TM48
  (627, 62700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Rufflet - U-turn - TM56
  (627, 62700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Rufflet - Assurance - TM58
  (627, 62700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Rufflet - Shadow Claw - TM65
  (627, 62700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Rufflet - Round - TM76
  (627, 62700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Rufflet - Retaliate - TM79
  (627, 62700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 32),
  -- Rufflet - Air Slash - TM95
  (627, 62700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 33),
  -- Rufflet - Agility - TR12
  (627, 62700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 34),
  -- Rufflet - Substitute - TR20
  (627, 62700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rufflet - Endure - TR26
  (627, 62700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rufflet - Sleep Talk - TR27
  (627, 62700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rufflet - Heat Wave - TR36
  (627, 62700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Rufflet - Superpower - TR39
  (627, 62700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 39),
  -- Rufflet - Bulk Up - TR48
  (627, 62700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 40),
  -- Rufflet - Close Combat - TR53
  (627, 62700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 41),
  -- Rufflet - Brave Bird - TR66
  (627, 62700, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 42),
  -- Rufflet - Zen Headbutt - TR69
  (627, 62700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 43),
  -- Rufflet - Work Up - TR85
  (627, 62700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 44),
  -- Rufflet - Hurricane - TR89
  (627, 62700, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 45),
  -- Braviary - Wing Attack - Level 1
  (628, 62800, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary - Leer - Level 1
  (628, 62800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braviary - Peck - Level 1
  (628, 62800, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braviary - Sky Attack - Level 1
  (628, 62800, 143, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Braviary - Superpower - Level 1
  (628, 62800, 276, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Braviary - Hone Claws - Level 1
  (628, 62800, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Braviary - Tailwind - Level 18
  (628, 62800, 366, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Braviary - Scary Face - Level 24
  (628, 62800, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Braviary - Aerial Ace - Level 30
  (628, 62800, 332, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Braviary - Slash - Level 36
  (628, 62800, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Braviary - Whirlwind - Level 42
  (628, 62800, 18, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Braviary - Crush Claw - Level 48
  (628, 62800, 306, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Braviary - Air Slash - Level 57
  (628, 62800, 403, 18, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Braviary - Defog - Level 64
  (628, 62800, 432, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Braviary - Thrash - Level 72
  (628, 62800, 37, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Braviary - Brave Bird - Level 80
  (628, 62800, 413, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Braviary - Superpower - Evolution
  (628, 62800, 276, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Braviary - Fly - TM06
  (628, 62800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Braviary - Hyper Beam - TM08
  (628, 62800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Braviary - Giga Impact - TM09
  (628, 62800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Braviary - Rest - TM21
  (628, 62800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Braviary - Rock Slide - TM22
  (628, 62800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Braviary - Snore - TM24
  (628, 62800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Braviary - Protect - TM25
  (628, 62800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Braviary - Scary Face - TM26
  (628, 62800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Braviary - Steel Wing - TM30
  (628, 62800, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Braviary - Attract - TM31
  (628, 62800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Braviary - Rain Dance - TM33
  (628, 62800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Braviary - Sunny Day - TM34
  (628, 62800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Braviary - Facade - TM39
  (628, 62800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Braviary - Swift - TM40
  (628, 62800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Braviary - Rock Tomb - TM48
  (628, 62800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Braviary - U-turn - TM56
  (628, 62800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Braviary - Assurance - TM58
  (628, 62800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Braviary - Shadow Claw - TM65
  (628, 62800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Braviary - Round - TM76
  (628, 62800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Braviary - Retaliate - TM79
  (628, 62800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Braviary - Air Slash - TM95
  (628, 62800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 38),
  -- Braviary - Agility - TR12
  (628, 62800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Braviary - Substitute - TR20
  (628, 62800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Braviary - Endure - TR26
  (628, 62800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Braviary - Sleep Talk - TR27
  (628, 62800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Braviary - Heat Wave - TR36
  (628, 62800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 43),
  -- Braviary - Superpower - TR39
  (628, 62800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Braviary - Bulk Up - TR48
  (628, 62800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 45),
  -- Braviary - Close Combat - TR53
  (628, 62800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 46),
  -- Braviary - Brave Bird - TR66
  (628, 62800, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 47),
  -- Braviary - Zen Headbutt - TR69
  (628, 62800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 48),
  -- Braviary - Iron Head - TR74
  (628, 62800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 49),
  -- Braviary - Work Up - TR85
  (628, 62800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 50),
  -- Braviary - Hurricane - TR89
  (628, 62800, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Vullaby - Gust - Level 1
  (629, 62900, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vullaby - Leer - Level 1
  (629, 62900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vullaby - Flatter - Level 6
  (629, 62900, 260, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Vullaby - Pluck - Level 12
  (629, 62900, 365, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Vullaby - Tailwind - Level 18
  (629, 62900, 366, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Vullaby - Knock Off - Level 24
  (629, 62900, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Vullaby - Iron Defense - Level 30
  (629, 62900, 334, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Vullaby - Whirlwind - Level 36
  (629, 62900, 18, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Vullaby - Air Slash - Level 42
  (629, 62900, 403, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Vullaby - Dark Pulse - Level 48
  (629, 62900, 399, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Vullaby - Nasty Plot - Level 54
  (629, 62900, 417, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Vullaby - Defog - Level 60
  (629, 62900, 432, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Vullaby - Attract - Level 66
  (629, 62900, 213, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Vullaby - Brave Bird - Level 72
  (629, 62900, 413, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Vullaby - Fly - TM06
  (629, 62900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Vullaby - Rest - TM21
  (629, 62900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Vullaby - Thief - TM23
  (629, 62900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Vullaby - Snore - TM24
  (629, 62900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Vullaby - Protect - TM25
  (629, 62900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Vullaby - Scary Face - TM26
  (629, 62900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Vullaby - Steel Wing - TM30
  (629, 62900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 21),
  -- Vullaby - Attract - TM31
  (629, 62900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Vullaby - Rain Dance - TM33
  (629, 62900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Vullaby - Sunny Day - TM34
  (629, 62900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Vullaby - Facade - TM39
  (629, 62900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Vullaby - Swift - TM40
  (629, 62900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Vullaby - Fake Tears - TM47
  (629, 62900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Vullaby - Rock Tomb - TM48
  (629, 62900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Vullaby - U-turn - TM56
  (629, 62900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Vullaby - Payback - TM57
  (629, 62900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Vullaby - Assurance - TM58
  (629, 62900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Vullaby - Round - TM76
  (629, 62900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Vullaby - Retaliate - TM79
  (629, 62900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Vullaby - Snarl - TM85
  (629, 62900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Vullaby - Air Slash - TM95
  (629, 62900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Vullaby - Substitute - TR20
  (629, 62900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Vullaby - Endure - TR26
  (629, 62900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Vullaby - Sleep Talk - TR27
  (629, 62900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Vullaby - Shadow Ball - TR33
  (629, 62900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 39),
  -- Vullaby - Heat Wave - TR36
  (629, 62900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 40),
  -- Vullaby - Taunt - TR37
  (629, 62900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 41),
  -- Vullaby - Iron Defense - TR46
  (629, 62900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Vullaby - Dark Pulse - TR58
  (629, 62900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 43),
  -- Vullaby - Brave Bird - TR66
  (629, 62900, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 44),
  -- Vullaby - Nasty Plot - TR68
  (629, 62900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Vullaby - Foul Play - TR81
  (629, 62900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 46),
  -- Vullaby - Toxic - Egg
  (629, 62900, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vullaby - Mean Look - Egg
  (629, 62900, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vullaby - Roost - Egg
  (629, 62900, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mandibuzz - Gust - Level 1
  (630, 63000, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mandibuzz - Leer - Level 1
  (630, 63000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mandibuzz - Toxic - Level 1
  (630, 63000, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mandibuzz - Sky Attack - Level 1
  (630, 63000, 143, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mandibuzz - Bone Rush - Level 1
  (630, 63000, 198, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mandibuzz - Flatter - Level 1
  (630, 63000, 260, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mandibuzz - Pluck - Level 1
  (630, 63000, 365, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mandibuzz - Tailwind - Level 18
  (630, 63000, 366, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mandibuzz - Knock Off - Level 24
  (630, 63000, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Mandibuzz - Iron Defense - Level 30
  (630, 63000, 334, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Mandibuzz - Whirlwind - Level 36
  (630, 63000, 18, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mandibuzz - Air Slash - Level 42
  (630, 63000, 403, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Mandibuzz - Dark Pulse - Level 48
  (630, 63000, 399, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Mandibuzz - Nasty Plot - Level 57
  (630, 63000, 417, 18, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Mandibuzz - Defog - Level 64
  (630, 63000, 432, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Mandibuzz - Attract - Level 72
  (630, 63000, 213, 18, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Mandibuzz - Brave Bird - Level 80
  (630, 63000, 413, 18, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Mandibuzz - Bone Rush - Evolution
  (630, 63000, 198, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Mandibuzz - Fly - TM06
  (630, 63000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Mandibuzz - Hyper Beam - TM08
  (630, 63000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Mandibuzz - Giga Impact - TM09
  (630, 63000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Mandibuzz - Rest - TM21
  (630, 63000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Mandibuzz - Thief - TM23
  (630, 63000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Mandibuzz - Snore - TM24
  (630, 63000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Mandibuzz - Protect - TM25
  (630, 63000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Mandibuzz - Scary Face - TM26
  (630, 63000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Mandibuzz - Steel Wing - TM30
  (630, 63000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Mandibuzz - Attract - TM31
  (630, 63000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Mandibuzz - Rain Dance - TM33
  (630, 63000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Mandibuzz - Sunny Day - TM34
  (630, 63000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Mandibuzz - Facade - TM39
  (630, 63000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Mandibuzz - Swift - TM40
  (630, 63000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Mandibuzz - Fake Tears - TM47
  (630, 63000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 33),
  -- Mandibuzz - Rock Tomb - TM48
  (630, 63000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Mandibuzz - U-turn - TM56
  (630, 63000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Mandibuzz - Payback - TM57
  (630, 63000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Mandibuzz - Assurance - TM58
  (630, 63000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Mandibuzz - Round - TM76
  (630, 63000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Mandibuzz - Retaliate - TM79
  (630, 63000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Mandibuzz - Snarl - TM85
  (630, 63000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Mandibuzz - Air Slash - TM95
  (630, 63000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Mandibuzz - Substitute - TR20
  (630, 63000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Mandibuzz - Endure - TR26
  (630, 63000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Mandibuzz - Sleep Talk - TR27
  (630, 63000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Mandibuzz - Shadow Ball - TR33
  (630, 63000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 45),
  -- Mandibuzz - Heat Wave - TR36
  (630, 63000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Mandibuzz - Taunt - TR37
  (630, 63000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Mandibuzz - Iron Defense - TR46
  (630, 63000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Mandibuzz - Dark Pulse - TR58
  (630, 63000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Mandibuzz - Brave Bird - TR66
  (630, 63000, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 50),
  -- Mandibuzz - Nasty Plot - TR68
  (630, 63000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 51),
  -- Mandibuzz - Foul Play - TR81
  (630, 63000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Heatmor - Tackle - Level 1
  (631, 63100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatmor - Lick - Level 1
  (631, 63100, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatmor - Fury Swipes - Level 5
  (631, 63100, 154, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Heatmor - Incinerate - Level 10
  (631, 63100, 510, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Heatmor - Bug Bite - Level 15
  (631, 63100, 450, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Heatmor - Stockpile - Level 20
  (631, 63100, 254, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Heatmor - Spit Up - Level 20
  (631, 63100, 255, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Heatmor - Swallow - Level 20
  (631, 63100, 256, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Heatmor - Slash - Level 25
  (631, 63100, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Heatmor - Bind - Level 30
  (631, 63100, 20, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Heatmor - Fire Lash - Level 35
  (631, 63100, 680, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Heatmor - Hone Claws - Level 40
  (631, 63100, 468, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Heatmor - Amnesia - Level 45
  (631, 63100, 133, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Heatmor - Fire Spin - Level 50
  (631, 63100, 83, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Heatmor - Inferno - Level 55
  (631, 63100, 517, 18, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Heatmor - Flare Blitz - Level 60
  (631, 63100, 394, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Heatmor - Fire Punch - TM03
  (631, 63100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Heatmor - Thunder Punch - TM05
  (631, 63100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Heatmor - Giga Impact - TM09
  (631, 63100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Heatmor - Solar Beam - TM11
  (631, 63100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Heatmor - Fire Spin - TM13
  (631, 63100, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Heatmor - Dig - TM15
  (631, 63100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Heatmor - Rest - TM21
  (631, 63100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Heatmor - Thief - TM23
  (631, 63100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Heatmor - Snore - TM24
  (631, 63100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Heatmor - Protect - TM25
  (631, 63100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Heatmor - Giga Drain - TM28
  (631, 63100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Heatmor - Attract - TM31
  (631, 63100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Heatmor - Rain Dance - TM33
  (631, 63100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Heatmor - Sunny Day - TM34
  (631, 63100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Heatmor - Will-O-Wisp - TM38
  (631, 63100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Heatmor - Facade - TM39
  (631, 63100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Heatmor - Rock Tomb - TM48
  (631, 63100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Heatmor - Fling - TM59
  (631, 63100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Heatmor - Drain Punch - TM63
  (631, 63100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 35),
  -- Heatmor - Shadow Claw - TM65
  (631, 63100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Heatmor - Round - TM76
  (631, 63100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Heatmor - Brutal Swing - TM97
  (631, 63100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Heatmor - Stomping Tantrum - TM98
  (631, 63100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Heatmor - Body Slam - TR01
  (631, 63100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Heatmor - Flamethrower - TR02
  (631, 63100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 41),
  -- Heatmor - Low Kick - TR07
  (631, 63100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 42),
  -- Heatmor - Fire Blast - TR15
  (631, 63100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Heatmor - Amnesia - TR17
  (631, 63100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 44),
  -- Heatmor - Substitute - TR20
  (631, 63100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Heatmor - Endure - TR26
  (631, 63100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Heatmor - Sleep Talk - TR27
  (631, 63100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Heatmor - Heat Wave - TR36
  (631, 63100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 48),
  -- Heatmor - Taunt - TR37
  (631, 63100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Heatmor - Superpower - TR39
  (631, 63100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Heatmor - Overheat - TR43
  (631, 63100, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Heatmor - Flare Blitz - TR55
  (631, 63100, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 52),
  -- Heatmor - Focus Blast - TR64
  (631, 63100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Heatmor - Throat Chop - TR95
  (631, 63100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 54),
  -- Heatmor - Curse - Egg
  (631, 63100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heatmor - Tickle - Egg
  (631, 63100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heatmor - Sucker Punch - Egg
  (631, 63100, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heatmor - Night Slash - Egg
  (631, 63100, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heatmor - Belch - Egg
  (631, 63100, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Durant - Sand Attack - Level 1
  (632, 63200, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Durant - Fury Cutter - Level 1
  (632, 63200, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Durant - Vise Grip - Level 4
  (632, 63200, 11, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Durant - Metal Claw - Level 8
  (632, 63200, 232, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Durant - Beat Up - Level 12
  (632, 63200, 251, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Durant - Bug Bite - Level 16
  (632, 63200, 450, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Durant - Bite - Level 20
  (632, 63200, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Durant - Agility - Level 24
  (632, 63200, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Durant - Dig - Level 28
  (632, 63200, 91, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Durant - X-Scissor - Level 32
  (632, 63200, 404, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Durant - Crunch - Level 36
  (632, 63200, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Durant - Metal Sound - Level 40
  (632, 63200, 319, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Durant - Iron Head - Level 44
  (632, 63200, 442, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Durant - Entrainment - Level 48
  (632, 63200, 494, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Durant - Iron Defense - Level 52
  (632, 63200, 334, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Durant - Guillotine - Level 56
  (632, 63200, 12, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Durant - Giga Impact - TM09
  (632, 63200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Durant - Thunder Wave - TM14
  (632, 63200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Durant - Dig - TM15
  (632, 63200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Durant - Screech - TM16
  (632, 63200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Durant - Rest - TM21
  (632, 63200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Durant - Rock Slide - TM22
  (632, 63200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Durant - Snore - TM24
  (632, 63200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Durant - Protect - TM25
  (632, 63200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Durant - Attract - TM31
  (632, 63200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Durant - Sandstorm - TM32
  (632, 63200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Durant - Beat Up - TM37
  (632, 63200, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 27),
  -- Durant - Facade - TM39
  (632, 63200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Durant - Helping Hand - TM41
  (632, 63200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Durant - Rock Tomb - TM48
  (632, 63200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Durant - Shadow Claw - TM65
  (632, 63200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Durant - Thunder Fang - TM66
  (632, 63200, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 32),
  -- Durant - Round - TM76
  (632, 63200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Durant - Retaliate - TM79
  (632, 63200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Durant - Stomping Tantrum - TM98
  (632, 63200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Durant - Agility - TR12
  (632, 63200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Durant - Substitute - TR20
  (632, 63200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Durant - Endure - TR26
  (632, 63200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Durant - Sleep Talk - TR27
  (632, 63200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Durant - Baton Pass - TR29
  (632, 63200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 40),
  -- Durant - Crunch - TR32
  (632, 63200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 41),
  -- Durant - Superpower - TR39
  (632, 63200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 42),
  -- Durant - Iron Defense - TR46
  (632, 63200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Durant - X-Scissor - TR60
  (632, 63200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 44),
  -- Durant - Energy Ball - TR65
  (632, 63200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 45),
  -- Durant - Flash Cannon - TR70
  (632, 63200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 46),
  -- Durant - Iron Head - TR74
  (632, 63200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 47),
  -- Durant - Stone Edge - TR75
  (632, 63200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 48),
  -- Durant - Flail - Egg
  (632, 63200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Durant - Metal Burst - Egg
  (632, 63200, 368, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Durant - Struggle Bug - Egg
  (632, 63200, 522, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Durant - Infestation - Egg
  (632, 63200, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Durant - First Impression - Egg
  (632, 63200, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Durant - Steel Beam - Tutor
  (632, 63200, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Deino - Tackle - Level 1
  (633, 63300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deino - Focus Energy - Level 1
  (633, 63300, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deino - Dragon Breath - Level 4
  (633, 63300, 225, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deino - Bite - Level 8
  (633, 63300, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Deino - Roar - Level 12
  (633, 63300, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Deino - Assurance - Level 16
  (633, 63300, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Deino - Headbutt - Level 20
  (633, 63300, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Deino - Work Up - Level 24
  (633, 63300, 526, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Deino - Slam - Level 28
  (633, 63300, 21, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Deino - Crunch - Level 32
  (633, 63300, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Deino - Scary Face - Level 36
  (633, 63300, 184, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Deino - Dragon Pulse - Level 40
  (633, 63300, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Deino - Body Slam - Level 44
  (633, 63300, 34, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Deino - Hyper Voice - Level 48
  (633, 63300, 304, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Deino - Dragon Rush - Level 52
  (633, 63300, 407, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Deino - Nasty Plot - Level 56
  (633, 63300, 417, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Deino - Outrage - Level 60
  (633, 63300, 200, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Deino - Thunder Wave - TM14
  (633, 63300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Deino - Screech - TM16
  (633, 63300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Deino - Rest - TM21
  (633, 63300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Deino - Thief - TM23
  (633, 63300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Deino - Snore - TM24
  (633, 63300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Deino - Protect - TM25
  (633, 63300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Deino - Scary Face - TM26
  (633, 63300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Deino - Attract - TM31
  (633, 63300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Deino - Rain Dance - TM33
  (633, 63300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Deino - Sunny Day - TM34
  (633, 63300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Deino - Facade - TM39
  (633, 63300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Deino - Assurance - TM58
  (633, 63300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Deino - Thunder Fang - TM66
  (633, 63300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 30),
  -- Deino - Ice Fang - TM67
  (633, 63300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 31),
  -- Deino - Fire Fang - TM68
  (633, 63300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Deino - Round - TM76
  (633, 63300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Deino - Body Slam - TR01
  (633, 63300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Deino - Focus Energy - TR13
  (633, 63300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 35),
  -- Deino - Substitute - TR20
  (633, 63300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Deino - Outrage - TR24
  (633, 63300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 37),
  -- Deino - Endure - TR26
  (633, 63300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Deino - Sleep Talk - TR27
  (633, 63300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Deino - Crunch - TR32
  (633, 63300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Deino - Uproar - TR35
  (633, 63300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Deino - Taunt - TR37
  (633, 63300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Deino - Superpower - TR39
  (633, 63300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 43),
  -- Deino - Hyper Voice - TR42
  (633, 63300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 44),
  -- Deino - Dark Pulse - TR58
  (633, 63300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 45),
  -- Deino - Dragon Pulse - TR62
  (633, 63300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 46),
  -- Deino - Earth Power - TR67
  (633, 63300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 47),
  -- Deino - Nasty Plot - TR68
  (633, 63300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 48),
  -- Deino - Zen Headbutt - TR69
  (633, 63300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 49),
  -- Deino - Work Up - TR85
  (633, 63300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 50),
  -- Deino - Astonish - Egg
  (633, 63300, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deino - Head Smash - Egg
  (633, 63300, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deino - Double Hit - Egg
  (633, 63300, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Deino - Belch - Egg
  (633, 63300, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Deino - Draco Meteor - Tutor
  (633, 63300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 55),
  -- Zweilous - Tackle - Level 1
  (634, 63400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zweilous - Bite - Level 1
  (634, 63400, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zweilous - Focus Energy - Level 1
  (634, 63400, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zweilous - Dragon Breath - Level 1
  (634, 63400, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zweilous - Double Hit - Level 1
  (634, 63400, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zweilous - Roar - Level 12
  (634, 63400, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zweilous - Assurance - Level 16
  (634, 63400, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Zweilous - Headbutt - Level 20
  (634, 63400, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Zweilous - Work Up - Level 24
  (634, 63400, 526, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Zweilous - Slam - Level 28
  (634, 63400, 21, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Zweilous - Crunch - Level 32
  (634, 63400, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Zweilous - Scary Face - Level 36
  (634, 63400, 184, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zweilous - Dragon Pulse - Level 40
  (634, 63400, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zweilous - Body Slam - Level 44
  (634, 63400, 34, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Zweilous - Hyper Voice - Level 48
  (634, 63400, 304, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Zweilous - Dragon Rush - Level 54
  (634, 63400, 407, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Zweilous - Nasty Plot - Level 60
  (634, 63400, 417, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Zweilous - Outrage - Level 66
  (634, 63400, 200, 18, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Zweilous - Thunder Wave - TM14
  (634, 63400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Zweilous - Screech - TM16
  (634, 63400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Zweilous - Rest - TM21
  (634, 63400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Zweilous - Thief - TM23
  (634, 63400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Zweilous - Snore - TM24
  (634, 63400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Zweilous - Protect - TM25
  (634, 63400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Zweilous - Scary Face - TM26
  (634, 63400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Zweilous - Attract - TM31
  (634, 63400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Zweilous - Rain Dance - TM33
  (634, 63400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Zweilous - Sunny Day - TM34
  (634, 63400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Zweilous - Beat Up - TM37
  (634, 63400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 29),
  -- Zweilous - Facade - TM39
  (634, 63400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Zweilous - Helping Hand - TM41
  (634, 63400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Zweilous - Assurance - TM58
  (634, 63400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Zweilous - Thunder Fang - TM66
  (634, 63400, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 33),
  -- Zweilous - Ice Fang - TM67
  (634, 63400, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 34),
  -- Zweilous - Fire Fang - TM68
  (634, 63400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 35),
  -- Zweilous - Round - TM76
  (634, 63400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Zweilous - Body Slam - TR01
  (634, 63400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Zweilous - Focus Energy - TR13
  (634, 63400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 38),
  -- Zweilous - Substitute - TR20
  (634, 63400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Zweilous - Outrage - TR24
  (634, 63400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 40),
  -- Zweilous - Endure - TR26
  (634, 63400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Zweilous - Sleep Talk - TR27
  (634, 63400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Zweilous - Crunch - TR32
  (634, 63400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 43),
  -- Zweilous - Uproar - TR35
  (634, 63400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Zweilous - Taunt - TR37
  (634, 63400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Zweilous - Superpower - TR39
  (634, 63400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Zweilous - Hyper Voice - TR42
  (634, 63400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 47),
  -- Zweilous - Dark Pulse - TR58
  (634, 63400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Zweilous - Dragon Pulse - TR62
  (634, 63400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 49),
  -- Zweilous - Earth Power - TR67
  (634, 63400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 50),
  -- Zweilous - Nasty Plot - TR68
  (634, 63400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 51),
  -- Zweilous - Zen Headbutt - TR69
  (634, 63400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Zweilous - Work Up - TR85
  (634, 63400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Zweilous - Draco Meteor - Tutor
  (634, 63400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Hydreigon - Tackle - Level 1
  (635, 63500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hydreigon - Bite - Level 1
  (635, 63500, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hydreigon - Focus Energy - Level 1
  (635, 63500, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hydreigon - Tri Attack - Level 1
  (635, 63500, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hydreigon - Dragon Breath - Level 1
  (635, 63500, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hydreigon - Double Hit - Level 1
  (635, 63500, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hydreigon - Roar - Level 12
  (635, 63500, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hydreigon - Assurance - Level 16
  (635, 63500, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hydreigon - Headbutt - Level 20
  (635, 63500, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Hydreigon - Work Up - Level 24
  (635, 63500, 526, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Hydreigon - Slam - Level 28
  (635, 63500, 21, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Hydreigon - Crunch - Level 32
  (635, 63500, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Hydreigon - Scary Face - Level 36
  (635, 63500, 184, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Hydreigon - Dragon Pulse - Level 40
  (635, 63500, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Hydreigon - Body Slam - Level 44
  (635, 63500, 34, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Hydreigon - Hyper Voice - Level 48
  (635, 63500, 304, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Hydreigon - Dragon Rush - Level 54
  (635, 63500, 407, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Hydreigon - Nasty Plot - Level 60
  (635, 63500, 417, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Hydreigon - Outrage - Level 68
  (635, 63500, 200, 18, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Hydreigon - Hyper Beam - Level 76
  (635, 63500, 63, 18, NULL, 1, 76, NULL, NULL, NULL, 20),
  -- Hydreigon - Fly - TM06
  (635, 63500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 21),
  -- Hydreigon - Hyper Beam - TM08
  (635, 63500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Hydreigon - Giga Impact - TM09
  (635, 63500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Hydreigon - Fire Spin - TM13
  (635, 63500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 24),
  -- Hydreigon - Thunder Wave - TM14
  (635, 63500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Hydreigon - Screech - TM16
  (635, 63500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 26),
  -- Hydreigon - Reflect - TM18
  (635, 63500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 27),
  -- Hydreigon - Rest - TM21
  (635, 63500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Hydreigon - Rock Slide - TM22
  (635, 63500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Hydreigon - Thief - TM23
  (635, 63500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Hydreigon - Snore - TM24
  (635, 63500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Hydreigon - Protect - TM25
  (635, 63500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Hydreigon - Scary Face - TM26
  (635, 63500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 33),
  -- Hydreigon - Steel Wing - TM30
  (635, 63500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 34),
  -- Hydreigon - Attract - TM31
  (635, 63500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Hydreigon - Rain Dance - TM33
  (635, 63500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Hydreigon - Sunny Day - TM34
  (635, 63500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Hydreigon - Beat Up - TM37
  (635, 63500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 38),
  -- Hydreigon - Facade - TM39
  (635, 63500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Hydreigon - Helping Hand - TM41
  (635, 63500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 40),
  -- Hydreigon - Rock Tomb - TM48
  (635, 63500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Hydreigon - U-turn - TM56
  (635, 63500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 42),
  -- Hydreigon - Payback - TM57
  (635, 63500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 43),
  -- Hydreigon - Assurance - TM58
  (635, 63500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 44),
  -- Hydreigon - Thunder Fang - TM66
  (635, 63500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 45),
  -- Hydreigon - Ice Fang - TM67
  (635, 63500, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 46),
  -- Hydreigon - Fire Fang - TM68
  (635, 63500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 47),
  -- Hydreigon - Round - TM76
  (635, 63500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Hydreigon - Acrobatics - TM78
  (635, 63500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 49),
  -- Hydreigon - Bulldoze - TM81
  (635, 63500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Hydreigon - Snarl - TM85
  (635, 63500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 51),
  -- Hydreigon - Brutal Swing - TM97
  (635, 63500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 52),
  -- Hydreigon - Breaking Swipe - TM99
  (635, 63500, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 53),
  -- Hydreigon - Body Slam - TR01
  (635, 63500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 54),
  -- Hydreigon - Flamethrower - TR02
  (635, 63500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 55),
  -- Hydreigon - Hydro Pump - TR03
  (635, 63500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 56),
  -- Hydreigon - Surf - TR04
  (635, 63500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 57),
  -- Hydreigon - Earthquake - TR10
  (635, 63500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 58),
  -- Hydreigon - Focus Energy - TR13
  (635, 63500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 59),
  -- Hydreigon - Fire Blast - TR15
  (635, 63500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 60),
  -- Hydreigon - Tri Attack - TR19
  (635, 63500, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 61),
  -- Hydreigon - Substitute - TR20
  (635, 63500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 62),
  -- Hydreigon - Outrage - TR24
  (635, 63500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 63),
  -- Hydreigon - Endure - TR26
  (635, 63500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 64),
  -- Hydreigon - Sleep Talk - TR27
  (635, 63500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 65),
  -- Hydreigon - Iron Tail - TR31
  (635, 63500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 66),
  -- Hydreigon - Crunch - TR32
  (635, 63500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 67),
  -- Hydreigon - Uproar - TR35
  (635, 63500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 68),
  -- Hydreigon - Heat Wave - TR36
  (635, 63500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 69),
  -- Hydreigon - Taunt - TR37
  (635, 63500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 70),
  -- Hydreigon - Superpower - TR39
  (635, 63500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 71),
  -- Hydreigon - Hyper Voice - TR42
  (635, 63500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 72),
  -- Hydreigon - Dragon Dance - TR51
  (635, 63500, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 73),
  -- Hydreigon - Dark Pulse - TR58
  (635, 63500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 74),
  -- Hydreigon - Dragon Pulse - TR62
  (635, 63500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 75),
  -- Hydreigon - Focus Blast - TR64
  (635, 63500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 76),
  -- Hydreigon - Earth Power - TR67
  (635, 63500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 77),
  -- Hydreigon - Nasty Plot - TR68
  (635, 63500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 78),
  -- Hydreigon - Zen Headbutt - TR69
  (635, 63500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 79),
  -- Hydreigon - Flash Cannon - TR70
  (635, 63500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 80),
  -- Hydreigon - Stone Edge - TR75
  (635, 63500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 81),
  -- Hydreigon - Work Up - TR85
  (635, 63500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 82),
  -- Hydreigon - Throat Chop - TR95
  (635, 63500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 83),
  -- Hydreigon - Draco Meteor - Tutor
  (635, 63500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 84),
  -- Larvesta - Ember - Level 1
  (636, 63600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvesta - String Shot - Level 1
  (636, 63600, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvesta - Flame Charge - Level 6
  (636, 63600, 488, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Larvesta - Struggle Bug - Level 12
  (636, 63600, 522, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Larvesta - Flame Wheel - Level 18
  (636, 63600, 172, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Larvesta - Bug Bite - Level 24
  (636, 63600, 450, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Larvesta - Screech - Level 30
  (636, 63600, 103, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Larvesta - Leech Life - Level 36
  (636, 63600, 141, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Larvesta - Bug Buzz - Level 42
  (636, 63600, 405, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Larvesta - Take Down - Level 48
  (636, 63600, 36, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Larvesta - Amnesia - Level 54
  (636, 63600, 133, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Larvesta - Double-Edge - Level 60
  (636, 63600, 38, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Larvesta - Flare Blitz - Level 66
  (636, 63600, 394, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Larvesta - Solar Beam - TM11
  (636, 63600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Larvesta - Screech - TM16
  (636, 63600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Larvesta - Light Screen - TM17
  (636, 63600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Larvesta - Safeguard - TM19
  (636, 63600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Larvesta - Rest - TM21
  (636, 63600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Larvesta - Snore - TM24
  (636, 63600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Larvesta - Protect - TM25
  (636, 63600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Larvesta - Giga Drain - TM28
  (636, 63600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Larvesta - Attract - TM31
  (636, 63600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Larvesta - Sunny Day - TM34
  (636, 63600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Larvesta - Will-O-Wisp - TM38
  (636, 63600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 24),
  -- Larvesta - Facade - TM39
  (636, 63600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Larvesta - U-turn - TM56
  (636, 63600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Larvesta - Round - TM76
  (636, 63600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Larvesta - Acrobatics - TM78
  (636, 63600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 28),
  -- Larvesta - Flamethrower - TR02
  (636, 63600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 29),
  -- Larvesta - Psychic - TR11
  (636, 63600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 30),
  -- Larvesta - Fire Blast - TR15
  (636, 63600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 31),
  -- Larvesta - Amnesia - TR17
  (636, 63600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 32),
  -- Larvesta - Leech Life - TR18
  (636, 63600, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 33),
  -- Larvesta - Substitute - TR20
  (636, 63600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Larvesta - Endure - TR26
  (636, 63600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Larvesta - Sleep Talk - TR27
  (636, 63600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Larvesta - Heat Wave - TR36
  (636, 63600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 37),
  -- Larvesta - Overheat - TR43
  (636, 63600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 38),
  -- Larvesta - Calm Mind - TR49
  (636, 63600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 39),
  -- Larvesta - Flare Blitz - TR55
  (636, 63600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 40),
  -- Larvesta - Bug Buzz - TR61
  (636, 63600, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 41),
  -- Larvesta - Zen Headbutt - TR69
  (636, 63600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 42),
  -- Larvesta - Wild Charge - TR86
  (636, 63600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 43),
  -- Larvesta - Thrash - Egg
  (636, 63600, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Larvesta - Absorb - Egg
  (636, 63600, 71, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Larvesta - Harden - Egg
  (636, 63600, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Volcarona - Gust - Level 1
  (637, 63700, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcarona - Whirlwind - Level 1
  (637, 63700, 18, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcarona - Take Down - Level 1
  (637, 63700, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcarona - Double-Edge - Level 1
  (637, 63700, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Volcarona - Ember - Level 1
  (637, 63700, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Volcarona - String Shot - Level 1
  (637, 63700, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Volcarona - Fire Spin - Level 1
  (637, 63700, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Volcarona - Flare Blitz - Level 1
  (637, 63700, 394, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Volcarona - Quiver Dance - Level 1
  (637, 63700, 483, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Volcarona - Flame Charge - Level 1
  (637, 63700, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Volcarona - Struggle Bug - Level 1
  (637, 63700, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Volcarona - Fiery Dance - Level 1
  (637, 63700, 552, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Volcarona - Flame Wheel - Level 18
  (637, 63700, 172, 18, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Volcarona - Bug Bite - Level 24
  (637, 63700, 450, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Volcarona - Screech - Level 30
  (637, 63700, 103, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Volcarona - Leech Life - Level 36
  (637, 63700, 141, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Volcarona - Bug Buzz - Level 42
  (637, 63700, 405, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Volcarona - Heat Wave - Level 48
  (637, 63700, 257, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Volcarona - Amnesia - Level 54
  (637, 63700, 133, 18, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Volcarona - Hurricane - Level 62
  (637, 63700, 542, 18, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Volcarona - Fire Blast - Level 70
  (637, 63700, 126, 18, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Volcarona - Rage Powder - Level 78
  (637, 63700, 476, 18, NULL, 1, 78, NULL, NULL, NULL, 22),
  -- Volcarona - Quiver Dance - Evolution
  (637, 63700, 483, 18, NULL, 7, NULL, NULL, NULL, NULL, 23),
  -- Volcarona - Fly - TM06
  (637, 63700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 24),
  -- Volcarona - Hyper Beam - TM08
  (637, 63700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Volcarona - Giga Impact - TM09
  (637, 63700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Volcarona - Solar Beam - TM11
  (637, 63700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 27),
  -- Volcarona - Fire Spin - TM13
  (637, 63700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 28),
  -- Volcarona - Screech - TM16
  (637, 63700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 29),
  -- Volcarona - Light Screen - TM17
  (637, 63700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 30),
  -- Volcarona - Safeguard - TM19
  (637, 63700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 31),
  -- Volcarona - Rest - TM21
  (637, 63700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 32),
  -- Volcarona - Snore - TM24
  (637, 63700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 33),
  -- Volcarona - Protect - TM25
  (637, 63700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 34),
  -- Volcarona - Giga Drain - TM28
  (637, 63700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 35),
  -- Volcarona - Attract - TM31
  (637, 63700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 36),
  -- Volcarona - Sunny Day - TM34
  (637, 63700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Volcarona - Will-O-Wisp - TM38
  (637, 63700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 38),
  -- Volcarona - Facade - TM39
  (637, 63700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Volcarona - U-turn - TM56
  (637, 63700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 40),
  -- Volcarona - Round - TM76
  (637, 63700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Volcarona - Acrobatics - TM78
  (637, 63700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 42),
  -- Volcarona - Mystical Fire - TM92
  (637, 63700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 43),
  -- Volcarona - Flamethrower - TR02
  (637, 63700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Volcarona - Psychic - TR11
  (637, 63700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Volcarona - Fire Blast - TR15
  (637, 63700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Volcarona - Amnesia - TR17
  (637, 63700, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Volcarona - Leech Life - TR18
  (637, 63700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 48),
  -- Volcarona - Substitute - TR20
  (637, 63700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Volcarona - Endure - TR26
  (637, 63700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Volcarona - Sleep Talk - TR27
  (637, 63700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Volcarona - Heat Wave - TR36
  (637, 63700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Volcarona - Overheat - TR43
  (637, 63700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 53),
  -- Volcarona - Calm Mind - TR49
  (637, 63700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Volcarona - Flare Blitz - TR55
  (637, 63700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 55),
  -- Volcarona - Poison Jab - TR57
  (637, 63700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 56),
  -- Volcarona - Bug Buzz - TR61
  (637, 63700, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 57),
  -- Volcarona - Zen Headbutt - TR69
  (637, 63700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Volcarona - Wild Charge - TR86
  (637, 63700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 59),
  -- Volcarona - Hurricane - TR89
  (637, 63700, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 60),
  -- Cobalion - Leer - Level 1
  (638, 63800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cobalion - Quick Attack - Level 1
  (638, 63800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cobalion - Helping Hand - Level 1
  (638, 63800, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cobalion - Work Up - Level 1
  (638, 63800, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cobalion - Metal Claw - Level 7
  (638, 63800, 232, 18, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Cobalion - Quick Guard - Level 14
  (638, 63800, 501, 18, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Cobalion - Double Kick - Level 21
  (638, 63800, 24, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cobalion - Retaliate - Level 28
  (638, 63800, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cobalion - Metal Burst - Level 35
  (638, 63800, 368, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cobalion - Take Down - Level 42
  (638, 63800, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Cobalion - Sacred Sword - Level 49
  (638, 63800, 533, 18, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Cobalion - Swords Dance - Level 56
  (638, 63800, 14, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Cobalion - Iron Head - Level 63
  (638, 63800, 442, 18, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Cobalion - Close Combat - Level 70
  (638, 63800, 370, 18, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Cobalion - Hyper Beam - TM08
  (638, 63800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Cobalion - Giga Impact - TM09
  (638, 63800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Cobalion - Thunder Wave - TM14
  (638, 63800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Cobalion - Reflect - TM18
  (638, 63800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Cobalion - Safeguard - TM19
  (638, 63800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Cobalion - Rest - TM21
  (638, 63800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Cobalion - Snore - TM24
  (638, 63800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Cobalion - Protect - TM25
  (638, 63800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Cobalion - Scary Face - TM26
  (638, 63800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Cobalion - Sandstorm - TM32
  (638, 63800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Cobalion - Facade - TM39
  (638, 63800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Cobalion - Swift - TM40
  (638, 63800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Cobalion - Helping Hand - TM41
  (638, 63800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Cobalion - Revenge - TM42
  (638, 63800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Cobalion - Brick Break - TM43
  (638, 63800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Cobalion - Bounce - TM52
  (638, 63800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Cobalion - Round - TM76
  (638, 63800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Cobalion - Retaliate - TM79
  (638, 63800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 32),
  -- Cobalion - Volt Switch - TM80
  (638, 63800, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 33),
  -- Cobalion - False Swipe - TM94
  (638, 63800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Cobalion - Air Slash - TM95
  (638, 63800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Cobalion - Smart Strike - TM96
  (638, 63800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 36),
  -- Cobalion - Swords Dance - TR00
  (638, 63800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 37),
  -- Cobalion - Substitute - TR20
  (638, 63800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Cobalion - Reversal - TR21
  (638, 63800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 39),
  -- Cobalion - Endure - TR26
  (638, 63800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Cobalion - Sleep Talk - TR27
  (638, 63800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Cobalion - Megahorn - TR28
  (638, 63800, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 42),
  -- Cobalion - Taunt - TR37
  (638, 63800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Cobalion - Superpower - TR39
  (638, 63800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Cobalion - Iron Defense - TR46
  (638, 63800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Cobalion - Calm Mind - TR49
  (638, 63800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 46),
  -- Cobalion - Close Combat - TR53
  (638, 63800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 47),
  -- Cobalion - Poison Jab - TR57
  (638, 63800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 48),
  -- Cobalion - X-Scissor - TR60
  (638, 63800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 49),
  -- Cobalion - Focus Blast - TR64
  (638, 63800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 50),
  -- Cobalion - Zen Headbutt - TR69
  (638, 63800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Cobalion - Flash Cannon - TR70
  (638, 63800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 52),
  -- Cobalion - Iron Head - TR74
  (638, 63800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 53),
  -- Cobalion - Stone Edge - TR75
  (638, 63800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Cobalion - Stealth Rock - TR76
  (638, 63800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 55),
  -- Cobalion - Work Up - TR85
  (638, 63800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Cobalion - Steel Beam - Tutor
  (638, 63800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Terrakion - Leer - Level 1
  (639, 63900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terrakion - Quick Attack - Level 1
  (639, 63900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terrakion - Helping Hand - Level 1
  (639, 63900, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Terrakion - Work Up - Level 1
  (639, 63900, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Terrakion - Smack Down - Level 7
  (639, 63900, 479, 18, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Terrakion - Quick Guard - Level 14
  (639, 63900, 501, 18, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Terrakion - Double Kick - Level 21
  (639, 63900, 24, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Terrakion - Retaliate - Level 28
  (639, 63900, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Terrakion - Rock Slide - Level 35
  (639, 63900, 157, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Terrakion - Take Down - Level 42
  (639, 63900, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Terrakion - Sacred Sword - Level 49
  (639, 63900, 533, 18, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Terrakion - Swords Dance - Level 56
  (639, 63900, 14, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Terrakion - Stone Edge - Level 63
  (639, 63900, 444, 18, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Terrakion - Close Combat - Level 70
  (639, 63900, 370, 18, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Terrakion - Hyper Beam - TM08
  (639, 63900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Terrakion - Giga Impact - TM09
  (639, 63900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Terrakion - Reflect - TM18
  (639, 63900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Terrakion - Safeguard - TM19
  (639, 63900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Terrakion - Rest - TM21
  (639, 63900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Terrakion - Rock Slide - TM22
  (639, 63900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Terrakion - Snore - TM24
  (639, 63900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Terrakion - Protect - TM25
  (639, 63900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Terrakion - Scary Face - TM26
  (639, 63900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Terrakion - Sandstorm - TM32
  (639, 63900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Terrakion - Facade - TM39
  (639, 63900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Terrakion - Swift - TM40
  (639, 63900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Terrakion - Helping Hand - TM41
  (639, 63900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Terrakion - Revenge - TM42
  (639, 63900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Terrakion - Brick Break - TM43
  (639, 63900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Terrakion - Rock Tomb - TM48
  (639, 63900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Terrakion - Rock Blast - TM54
  (639, 63900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 31),
  -- Terrakion - Round - TM76
  (639, 63900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Terrakion - Retaliate - TM79
  (639, 63900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Terrakion - Bulldoze - TM81
  (639, 63900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Terrakion - False Swipe - TM94
  (639, 63900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Terrakion - Air Slash - TM95
  (639, 63900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 36),
  -- Terrakion - Smart Strike - TM96
  (639, 63900, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 37),
  -- Terrakion - Stomping Tantrum - TM98
  (639, 63900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Terrakion - Swords Dance - TR00
  (639, 63900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Terrakion - Earthquake - TR10
  (639, 63900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Terrakion - Substitute - TR20
  (639, 63900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Terrakion - Reversal - TR21
  (639, 63900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Terrakion - Endure - TR26
  (639, 63900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Terrakion - Sleep Talk - TR27
  (639, 63900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Terrakion - Megahorn - TR28
  (639, 63900, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 45),
  -- Terrakion - Taunt - TR37
  (639, 63900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Terrakion - Superpower - TR39
  (639, 63900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Terrakion - Calm Mind - TR49
  (639, 63900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Terrakion - Close Combat - TR53
  (639, 63900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 49),
  -- Terrakion - Poison Jab - TR57
  (639, 63900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Terrakion - X-Scissor - TR60
  (639, 63900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Terrakion - Focus Blast - TR64
  (639, 63900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Terrakion - Earth Power - TR67
  (639, 63900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Terrakion - Zen Headbutt - TR69
  (639, 63900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Terrakion - Iron Head - TR74
  (639, 63900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Terrakion - Stone Edge - TR75
  (639, 63900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Terrakion - Stealth Rock - TR76
  (639, 63900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 57),
  -- Terrakion - Work Up - TR85
  (639, 63900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Virizion - Leer - Level 1
  (640, 64000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Virizion - Quick Attack - Level 1
  (640, 64000, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Virizion - Helping Hand - Level 1
  (640, 64000, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Virizion - Work Up - Level 1
  (640, 64000, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Virizion - Magical Leaf - Level 7
  (640, 64000, 345, 18, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Virizion - Quick Guard - Level 14
  (640, 64000, 501, 18, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Virizion - Double Kick - Level 21
  (640, 64000, 24, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Virizion - Retaliate - Level 28
  (640, 64000, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Virizion - Giga Drain - Level 35
  (640, 64000, 202, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Virizion - Take Down - Level 42
  (640, 64000, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Virizion - Sacred Sword - Level 49
  (640, 64000, 533, 18, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Virizion - Swords Dance - Level 56
  (640, 64000, 14, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Virizion - Leaf Blade - Level 63
  (640, 64000, 348, 18, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Virizion - Close Combat - Level 70
  (640, 64000, 370, 18, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Virizion - Hyper Beam - TM08
  (640, 64000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Virizion - Giga Impact - TM09
  (640, 64000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Virizion - Magical Leaf - TM10
  (640, 64000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 17),
  -- Virizion - Solar Beam - TM11
  (640, 64000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Virizion - Solar Blade - TM12
  (640, 64000, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 19),
  -- Virizion - Light Screen - TM17
  (640, 64000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Virizion - Reflect - TM18
  (640, 64000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Virizion - Safeguard - TM19
  (640, 64000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Virizion - Rest - TM21
  (640, 64000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Virizion - Snore - TM24
  (640, 64000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Virizion - Protect - TM25
  (640, 64000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Virizion - Giga Drain - TM28
  (640, 64000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Virizion - Sunny Day - TM34
  (640, 64000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Virizion - Facade - TM39
  (640, 64000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Virizion - Swift - TM40
  (640, 64000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Virizion - Helping Hand - TM41
  (640, 64000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Virizion - Revenge - TM42
  (640, 64000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Virizion - Brick Break - TM43
  (640, 64000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Virizion - Bounce - TM52
  (640, 64000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 33),
  -- Virizion - Round - TM76
  (640, 64000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Virizion - Retaliate - TM79
  (640, 64000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 35),
  -- Virizion - False Swipe - TM94
  (640, 64000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Virizion - Air Slash - TM95
  (640, 64000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 37),
  -- Virizion - Smart Strike - TM96
  (640, 64000, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 38),
  -- Virizion - Swords Dance - TR00
  (640, 64000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Virizion - Substitute - TR20
  (640, 64000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Virizion - Reversal - TR21
  (640, 64000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 41),
  -- Virizion - Endure - TR26
  (640, 64000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Virizion - Sleep Talk - TR27
  (640, 64000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Virizion - Megahorn - TR28
  (640, 64000, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 44),
  -- Virizion - Taunt - TR37
  (640, 64000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Virizion - Superpower - TR39
  (640, 64000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Virizion - Calm Mind - TR49
  (640, 64000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 47),
  -- Virizion - Leaf Blade - TR50
  (640, 64000, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 48),
  -- Virizion - Close Combat - TR53
  (640, 64000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 49),
  -- Virizion - Seed Bomb - TR59
  (640, 64000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 50),
  -- Virizion - X-Scissor - TR60
  (640, 64000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Virizion - Focus Blast - TR64
  (640, 64000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Virizion - Energy Ball - TR65
  (640, 64000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 53),
  -- Virizion - Zen Headbutt - TR69
  (640, 64000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Virizion - Leaf Storm - TR71
  (640, 64000, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 55),
  -- Virizion - Stone Edge - TR75
  (640, 64000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Virizion - Grass Knot - TR77
  (640, 64000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Virizion - Work Up - TR85
  (640, 64000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Tornadus - Gust - Level 1
  (641, 64100, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus - Astonish - Level 1
  (641, 64100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus - Leer - Level 5
  (641, 64100, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tornadus - Swagger - Level 10
  (641, 64100, 207, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tornadus - Bite - Level 15
  (641, 64100, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tornadus - Air Cutter - Level 20
  (641, 64100, 314, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tornadus - Agility - Level 25
  (641, 64100, 97, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus - Tailwind - Level 30
  (641, 64100, 366, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tornadus - Air Slash - Level 35
  (641, 64100, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tornadus - Crunch - Level 40
  (641, 64100, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tornadus - Extrasensory - Level 45
  (641, 64100, 326, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tornadus - Uproar - Level 50
  (641, 64100, 253, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tornadus - Hammer Arm - Level 55
  (641, 64100, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tornadus - Rain Dance - Level 60
  (641, 64100, 240, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tornadus - Hurricane - Level 65
  (641, 64100, 542, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tornadus - Thrash - Level 70
  (641, 64100, 37, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tornadus - Fly - TM06
  (641, 64100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Tornadus - Hyper Beam - TM08
  (641, 64100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Tornadus - Giga Impact - TM09
  (641, 64100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Tornadus - Rest - TM21
  (641, 64100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Tornadus - Thief - TM23
  (641, 64100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Tornadus - Snore - TM24
  (641, 64100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Tornadus - Protect - TM25
  (641, 64100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Tornadus - Scary Face - TM26
  (641, 64100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Tornadus - Icy Wind - TM27
  (641, 64100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Tornadus - Attract - TM31
  (641, 64100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Tornadus - Rain Dance - TM33
  (641, 64100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Tornadus - Facade - TM39
  (641, 64100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Tornadus - Revenge - TM42
  (641, 64100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Tornadus - Brick Break - TM43
  (641, 64100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Tornadus - Weather Ball - TM46
  (641, 64100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Tornadus - U-turn - TM56
  (641, 64100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Tornadus - Payback - TM57
  (641, 64100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Tornadus - Assurance - TM58
  (641, 64100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Tornadus - Fling - TM59
  (641, 64100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Tornadus - Round - TM76
  (641, 64100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Tornadus - Acrobatics - TM78
  (641, 64100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Tornadus - Air Slash - TM95
  (641, 64100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 38),
  -- Tornadus - Brutal Swing - TM97
  (641, 64100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 39),
  -- Tornadus - Body Slam - TR01
  (641, 64100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Tornadus - Psychic - TR11
  (641, 64100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Tornadus - Agility - TR12
  (641, 64100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Tornadus - Substitute - TR20
  (641, 64100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Tornadus - Sludge Bomb - TR22
  (641, 64100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Tornadus - Endure - TR26
  (641, 64100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Tornadus - Sleep Talk - TR27
  (641, 64100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Tornadus - Iron Tail - TR31
  (641, 64100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Tornadus - Crunch - TR32
  (641, 64100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Tornadus - Uproar - TR35
  (641, 64100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Tornadus - Heat Wave - TR36
  (641, 64100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Tornadus - Taunt - TR37
  (641, 64100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Tornadus - Superpower - TR39
  (641, 64100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 52),
  -- Tornadus - Bulk Up - TR48
  (641, 64100, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Tornadus - Dark Pulse - TR58
  (641, 64100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Tornadus - Focus Blast - TR64
  (641, 64100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Tornadus - Nasty Plot - TR68
  (641, 64100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Tornadus - Grass Knot - TR77
  (641, 64100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Tornadus - Sludge Wave - TR78
  (641, 64100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 58),
  -- Tornadus - Foul Play - TR81
  (641, 64100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 59),
  -- Tornadus - Hurricane - TR89
  (641, 64100, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 60),
  -- Thundurus - Thunder Shock - Level 1
  (642, 64200, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus - Astonish - Level 1
  (642, 64200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus - Leer - Level 5
  (642, 64200, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Thundurus - Swagger - Level 10
  (642, 64200, 207, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Thundurus - Bite - Level 15
  (642, 64200, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Thundurus - Shock Wave - Level 20
  (642, 64200, 351, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Thundurus - Agility - Level 25
  (642, 64200, 97, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus - Charge - Level 30
  (642, 64200, 268, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Thundurus - Volt Switch - Level 35
  (642, 64200, 521, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Thundurus - Crunch - Level 40
  (642, 64200, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Thundurus - Discharge - Level 45
  (642, 64200, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Thundurus - Uproar - Level 50
  (642, 64200, 253, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Thundurus - Hammer Arm - Level 55
  (642, 64200, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Thundurus - Rain Dance - Level 60
  (642, 64200, 240, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Thundurus - Thunder - Level 65
  (642, 64200, 87, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Thundurus - Thrash - Level 70
  (642, 64200, 37, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Thundurus - Thunder Punch - TM05
  (642, 64200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Thundurus - Fly - TM06
  (642, 64200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Thundurus - Hyper Beam - TM08
  (642, 64200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Thundurus - Giga Impact - TM09
  (642, 64200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Thundurus - Thunder Wave - TM14
  (642, 64200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Thundurus - Rest - TM21
  (642, 64200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Thundurus - Thief - TM23
  (642, 64200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Thundurus - Snore - TM24
  (642, 64200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Thundurus - Protect - TM25
  (642, 64200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Thundurus - Scary Face - TM26
  (642, 64200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Thundurus - Attract - TM31
  (642, 64200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Thundurus - Rain Dance - TM33
  (642, 64200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Thundurus - Facade - TM39
  (642, 64200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Thundurus - Revenge - TM42
  (642, 64200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Thundurus - Brick Break - TM43
  (642, 64200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Thundurus - Weather Ball - TM46
  (642, 64200, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Thundurus - U-turn - TM56
  (642, 64200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Thundurus - Payback - TM57
  (642, 64200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Thundurus - Assurance - TM58
  (642, 64200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Thundurus - Fling - TM59
  (642, 64200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Thundurus - Round - TM76
  (642, 64200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Thundurus - Volt Switch - TM80
  (642, 64200, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 38),
  -- Thundurus - Electroweb - TM82
  (642, 64200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 39),
  -- Thundurus - Eerie Impulse - TM93
  (642, 64200, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 40),
  -- Thundurus - Smart Strike - TM96
  (642, 64200, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Thundurus - Brutal Swing - TM97
  (642, 64200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Thundurus - Body Slam - TR01
  (642, 64200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Thundurus - Thunderbolt - TR08
  (642, 64200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Thundurus - Thunder - TR09
  (642, 64200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Thundurus - Psychic - TR11
  (642, 64200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Thundurus - Agility - TR12
  (642, 64200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 47),
  -- Thundurus - Substitute - TR20
  (642, 64200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Thundurus - Sludge Bomb - TR22
  (642, 64200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 49),
  -- Thundurus - Endure - TR26
  (642, 64200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Thundurus - Sleep Talk - TR27
  (642, 64200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Thundurus - Iron Tail - TR31
  (642, 64200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Thundurus - Crunch - TR32
  (642, 64200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Thundurus - Uproar - TR35
  (642, 64200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Thundurus - Taunt - TR37
  (642, 64200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 55),
  -- Thundurus - Superpower - TR39
  (642, 64200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 56),
  -- Thundurus - Bulk Up - TR48
  (642, 64200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 57),
  -- Thundurus - Dark Pulse - TR58
  (642, 64200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 58),
  -- Thundurus - Focus Blast - TR64
  (642, 64200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Thundurus - Nasty Plot - TR68
  (642, 64200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 60),
  -- Thundurus - Flash Cannon - TR70
  (642, 64200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 61),
  -- Thundurus - Grass Knot - TR77
  (642, 64200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 62),
  -- Thundurus - Sludge Wave - TR78
  (642, 64200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 63),
  -- Thundurus - Electro Ball - TR80
  (642, 64200, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 64),
  -- Thundurus - Foul Play - TR81
  (642, 64200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 65),
  -- Thundurus - Wild Charge - TR86
  (642, 64200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 66),
  -- Reshiram - Dragon Breath - Level 1
  (643, 64300, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reshiram - Ancient Power - Level 1
  (643, 64300, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reshiram - Fire Fang - Level 1
  (643, 64300, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reshiram - Noble Roar - Level 1
  (643, 64300, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reshiram - Slash - Level 8
  (643, 64300, 163, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Reshiram - Crunch - Level 16
  (643, 64300, 242, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Reshiram - Extrasensory - Level 24
  (643, 64300, 326, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Reshiram - Dragon Pulse - Level 32
  (643, 64300, 406, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Reshiram - Flamethrower - Level 40
  (643, 64300, 53, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Reshiram - Fusion Flare - Level 48
  (643, 64300, 558, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Reshiram - Hyper Voice - Level 56
  (643, 64300, 304, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Reshiram - Fire Blast - Level 64
  (643, 64300, 126, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Reshiram - Imprison - Level 72
  (643, 64300, 286, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Reshiram - Outrage - Level 80
  (643, 64300, 200, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Reshiram - Blue Flare - Level 88
  (643, 64300, 551, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Reshiram - Fly - TM06
  (643, 64300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Reshiram - Hyper Beam - TM08
  (643, 64300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Reshiram - Giga Impact - TM09
  (643, 64300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Reshiram - Solar Beam - TM11
  (643, 64300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Reshiram - Light Screen - TM17
  (643, 64300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Reshiram - Reflect - TM18
  (643, 64300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Reshiram - Safeguard - TM19
  (643, 64300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Reshiram - Rest - TM21
  (643, 64300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Reshiram - Rock Slide - TM22
  (643, 64300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Reshiram - Snore - TM24
  (643, 64300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Reshiram - Protect - TM25
  (643, 64300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Reshiram - Steel Wing - TM30
  (643, 64300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Reshiram - Rain Dance - TM33
  (643, 64300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Reshiram - Sunny Day - TM34
  (643, 64300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Reshiram - Will-O-Wisp - TM38
  (643, 64300, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Reshiram - Facade - TM39
  (643, 64300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Reshiram - Swift - TM40
  (643, 64300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Reshiram - Helping Hand - TM41
  (643, 64300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Reshiram - Imprison - TM44
  (643, 64300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Reshiram - Weather Ball - TM46
  (643, 64300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 35),
  -- Reshiram - Rock Tomb - TM48
  (643, 64300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Reshiram - Payback - TM57
  (643, 64300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Reshiram - Fling - TM59
  (643, 64300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Reshiram - Shadow Claw - TM65
  (643, 64300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Reshiram - Fire Fang - TM68
  (643, 64300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 40),
  -- Reshiram - Round - TM76
  (643, 64300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Reshiram - Mystical Fire - TM92
  (643, 64300, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 42),
  -- Reshiram - Brutal Swing - TM97
  (643, 64300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Reshiram - Breaking Swipe - TM99
  (643, 64300, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 44),
  -- Reshiram - Flamethrower - TR02
  (643, 64300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Reshiram - Psychic - TR11
  (643, 64300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Reshiram - Fire Blast - TR15
  (643, 64300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 47),
  -- Reshiram - Substitute - TR20
  (643, 64300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Reshiram - Outrage - TR24
  (643, 64300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Reshiram - Endure - TR26
  (643, 64300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Reshiram - Sleep Talk - TR27
  (643, 64300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Reshiram - Crunch - TR32
  (643, 64300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 52),
  -- Reshiram - Shadow Ball - TR33
  (643, 64300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Reshiram - Heat Wave - TR36
  (643, 64300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 54),
  -- Reshiram - Hyper Voice - TR42
  (643, 64300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 55),
  -- Reshiram - Overheat - TR43
  (643, 64300, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 56),
  -- Reshiram - Dragon Claw - TR47
  (643, 64300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 57),
  -- Reshiram - Dragon Dance - TR51
  (643, 64300, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 58),
  -- Reshiram - Flare Blitz - TR55
  (643, 64300, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 59),
  -- Reshiram - Dragon Pulse - TR62
  (643, 64300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 60),
  -- Reshiram - Focus Blast - TR64
  (643, 64300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 61),
  -- Reshiram - Earth Power - TR67
  (643, 64300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 62),
  -- Reshiram - Zen Headbutt - TR69
  (643, 64300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 63),
  -- Reshiram - Stone Edge - TR75
  (643, 64300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 64),
  -- Reshiram - Heat Crash - TR88
  (643, 64300, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 65),
  -- Reshiram - Body Press - TR99
  (643, 64300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 66),
  -- Reshiram - Draco Meteor - Tutor
  (643, 64300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 67),
  -- Zekrom - Dragon Breath - Level 1
  (644, 64400, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zekrom - Ancient Power - Level 1
  (644, 64400, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zekrom - Thunder Fang - Level 1
  (644, 64400, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zekrom - Noble Roar - Level 1
  (644, 64400, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zekrom - Slash - Level 8
  (644, 64400, 163, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Zekrom - Crunch - Level 16
  (644, 64400, 242, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Zekrom - Zen Headbutt - Level 24
  (644, 64400, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Zekrom - Dragon Claw - Level 32
  (644, 64400, 337, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Zekrom - Thunderbolt - Level 40
  (644, 64400, 85, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Zekrom - Fusion Bolt - Level 48
  (644, 64400, 559, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Zekrom - Hyper Voice - Level 56
  (644, 64400, 304, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Zekrom - Thunder - Level 64
  (644, 64400, 87, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Zekrom - Imprison - Level 72
  (644, 64400, 286, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Zekrom - Outrage - Level 80
  (644, 64400, 200, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Zekrom - Bolt Strike - Level 88
  (644, 64400, 550, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Zekrom - Thunder Punch - TM05
  (644, 64400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Zekrom - Fly - TM06
  (644, 64400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Zekrom - Hyper Beam - TM08
  (644, 64400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Zekrom - Giga Impact - TM09
  (644, 64400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Zekrom - Thunder Wave - TM14
  (644, 64400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Zekrom - Light Screen - TM17
  (644, 64400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Zekrom - Reflect - TM18
  (644, 64400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Zekrom - Safeguard - TM19
  (644, 64400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Zekrom - Rest - TM21
  (644, 64400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Zekrom - Rock Slide - TM22
  (644, 64400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Zekrom - Snore - TM24
  (644, 64400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Zekrom - Protect - TM25
  (644, 64400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Zekrom - Steel Wing - TM30
  (644, 64400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Zekrom - Rain Dance - TM33
  (644, 64400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Zekrom - Facade - TM39
  (644, 64400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Zekrom - Swift - TM40
  (644, 64400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Zekrom - Helping Hand - TM41
  (644, 64400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Zekrom - Imprison - TM44
  (644, 64400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Zekrom - Weather Ball - TM46
  (644, 64400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Zekrom - Rock Tomb - TM48
  (644, 64400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Zekrom - Payback - TM57
  (644, 64400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Zekrom - Fling - TM59
  (644, 64400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Zekrom - Shadow Claw - TM65
  (644, 64400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Zekrom - Thunder Fang - TM66
  (644, 64400, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 39),
  -- Zekrom - Round - TM76
  (644, 64400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Zekrom - Volt Switch - TM80
  (644, 64400, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 41),
  -- Zekrom - Brutal Swing - TM97
  (644, 64400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Zekrom - Breaking Swipe - TM99
  (644, 64400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Zekrom - Thunderbolt - TR08
  (644, 64400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Zekrom - Thunder - TR09
  (644, 64400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Zekrom - Psychic - TR11
  (644, 64400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Zekrom - Substitute - TR20
  (644, 64400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Zekrom - Outrage - TR24
  (644, 64400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Zekrom - Endure - TR26
  (644, 64400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Zekrom - Sleep Talk - TR27
  (644, 64400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Zekrom - Crunch - TR32
  (644, 64400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 51),
  -- Zekrom - Shadow Ball - TR33
  (644, 64400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Zekrom - Hyper Voice - TR42
  (644, 64400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Zekrom - Dragon Claw - TR47
  (644, 64400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Zekrom - Dragon Dance - TR51
  (644, 64400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Zekrom - Dragon Pulse - TR62
  (644, 64400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 56),
  -- Zekrom - Focus Blast - TR64
  (644, 64400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Zekrom - Earth Power - TR67
  (644, 64400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Zekrom - Zen Headbutt - TR69
  (644, 64400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Zekrom - Flash Cannon - TR70
  (644, 64400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Zekrom - Stone Edge - TR75
  (644, 64400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Zekrom - Electro Ball - TR80
  (644, 64400, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 62),
  -- Zekrom - Wild Charge - TR86
  (644, 64400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 63),
  -- Zekrom - Body Press - TR99
  (644, 64400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 64),
  -- Zekrom - Draco Meteor - Tutor
  (644, 64400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Landorus - Rock Throw - Level 1
  (645, 64500, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus - Sand Tomb - Level 1
  (645, 64500, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus - Leer - Level 5
  (645, 64500, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Landorus - Block - Level 10
  (645, 64500, 335, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Landorus - Bulldoze - Level 15
  (645, 64500, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Landorus - Rock Tomb - Level 20
  (645, 64500, 317, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Landorus - Swords Dance - Level 25
  (645, 64500, 14, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Landorus - Imprison - Level 30
  (645, 64500, 286, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Landorus - Rock Slide - Level 35
  (645, 64500, 157, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Landorus - Earth Power - Level 40
  (645, 64500, 414, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Landorus - Extrasensory - Level 45
  (645, 64500, 326, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Landorus - Stone Edge - Level 50
  (645, 64500, 444, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Landorus - Hammer Arm - Level 55
  (645, 64500, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Landorus - Sandstorm - Level 60
  (645, 64500, 201, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Landorus - Earthquake - Level 65
  (645, 64500, 89, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Landorus - Outrage - Level 70
  (645, 64500, 200, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Landorus - Fissure - Level 75
  (645, 64500, 90, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Landorus - Fly - TM06
  (645, 64500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Landorus - Hyper Beam - TM08
  (645, 64500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Landorus - Giga Impact - TM09
  (645, 64500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Landorus - Dig - TM15
  (645, 64500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Landorus - Self-Destruct - TM20
  (645, 64500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Landorus - Rest - TM21
  (645, 64500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Landorus - Rock Slide - TM22
  (645, 64500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Landorus - Snore - TM24
  (645, 64500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Landorus - Protect - TM25
  (645, 64500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Landorus - Scary Face - TM26
  (645, 64500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Landorus - Attract - TM31
  (645, 64500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Landorus - Sandstorm - TM32
  (645, 64500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Landorus - Facade - TM39
  (645, 64500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Landorus - Brick Break - TM43
  (645, 64500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Landorus - Imprison - TM44
  (645, 64500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Landorus - Weather Ball - TM46
  (645, 64500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Landorus - Rock Tomb - TM48
  (645, 64500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Landorus - Sand Tomb - TM49
  (645, 64500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 35),
  -- Landorus - Mud Shot - TM53
  (645, 64500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Landorus - U-turn - TM56
  (645, 64500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Landorus - Payback - TM57
  (645, 64500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Landorus - Fling - TM59
  (645, 64500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Landorus - Round - TM76
  (645, 64500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Landorus - Bulldoze - TM81
  (645, 64500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Landorus - Brutal Swing - TM97
  (645, 64500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Landorus - Swords Dance - TR00
  (645, 64500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Landorus - Body Slam - TR01
  (645, 64500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Landorus - Earthquake - TR10
  (645, 64500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Landorus - Psychic - TR11
  (645, 64500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Landorus - Substitute - TR20
  (645, 64500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Landorus - Sludge Bomb - TR22
  (645, 64500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Landorus - Outrage - TR24
  (645, 64500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Landorus - Endure - TR26
  (645, 64500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Landorus - Sleep Talk - TR27
  (645, 64500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Landorus - Iron Tail - TR31
  (645, 64500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Landorus - Superpower - TR39
  (645, 64500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Landorus - Bulk Up - TR48
  (645, 64500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 54),
  -- Landorus - Calm Mind - TR49
  (645, 64500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Landorus - Focus Blast - TR64
  (645, 64500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Landorus - Earth Power - TR67
  (645, 64500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Landorus - Stone Edge - TR75
  (645, 64500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Landorus - Stealth Rock - TR76
  (645, 64500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Landorus - Grass Knot - TR77
  (645, 64500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Landorus - Sludge Wave - TR78
  (645, 64500, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 61),
  -- Kyurem - Dragon Breath - Level 1
  (646, 64600, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem - Ancient Power - Level 1
  (646, 64600, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem - Noble Roar - Level 1
  (646, 64600, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem - Freeze-Dry - Level 1
  (646, 64600, 573, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem - Slash - Level 8
  (646, 64600, 163, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem - Endeavor - Level 16
  (646, 64600, 283, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem - Dragon Pulse - Level 24
  (646, 64600, 406, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem - Ice Beam - Level 32
  (646, 64600, 58, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem - Hyper Voice - Level 40
  (646, 64600, 304, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem - Scary Face - Level 48
  (646, 64600, 184, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem - Blizzard - Level 56
  (646, 64600, 59, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem - Imprison - Level 64
  (646, 64600, 286, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem - Outrage - Level 72
  (646, 64600, 200, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem - Glaciate - Level 80
  (646, 64600, 549, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem - Sheer Cold - Level 88
  (646, 64600, 329, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem - Fly - TM06
  (646, 64600, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Kyurem - Hyper Beam - TM08
  (646, 64600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Kyurem - Giga Impact - TM09
  (646, 64600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Kyurem - Light Screen - TM17
  (646, 64600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Kyurem - Reflect - TM18
  (646, 64600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Kyurem - Safeguard - TM19
  (646, 64600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Kyurem - Rest - TM21
  (646, 64600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Kyurem - Rock Slide - TM22
  (646, 64600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Kyurem - Snore - TM24
  (646, 64600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Kyurem - Protect - TM25
  (646, 64600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Kyurem - Scary Face - TM26
  (646, 64600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Kyurem - Icy Wind - TM27
  (646, 64600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Kyurem - Steel Wing - TM30
  (646, 64600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Kyurem - Rain Dance - TM33
  (646, 64600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Kyurem - Sunny Day - TM34
  (646, 64600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Kyurem - Hail - TM35
  (646, 64600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Kyurem - Facade - TM39
  (646, 64600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Kyurem - Swift - TM40
  (646, 64600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Kyurem - Helping Hand - TM41
  (646, 64600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Kyurem - Imprison - TM44
  (646, 64600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Kyurem - Weather Ball - TM46
  (646, 64600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Kyurem - Rock Tomb - TM48
  (646, 64600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Kyurem - Icicle Spear - TM51
  (646, 64600, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 38),
  -- Kyurem - Payback - TM57
  (646, 64600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Kyurem - Fling - TM59
  (646, 64600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Kyurem - Shadow Claw - TM65
  (646, 64600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 41),
  -- Kyurem - Round - TM76
  (646, 64600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Kyurem - Brutal Swing - TM97
  (646, 64600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Kyurem - Breaking Swipe - TM99
  (646, 64600, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 44),
  -- Kyurem - Ice Beam - TR05
  (646, 64600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Kyurem - Blizzard - TR06
  (646, 64600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Kyurem - Psychic - TR11
  (646, 64600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Kyurem - Substitute - TR20
  (646, 64600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Kyurem - Outrage - TR24
  (646, 64600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Kyurem - Endure - TR26
  (646, 64600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Kyurem - Sleep Talk - TR27
  (646, 64600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Kyurem - Shadow Ball - TR33
  (646, 64600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Kyurem - Hyper Voice - TR42
  (646, 64600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Kyurem - Dragon Claw - TR47
  (646, 64600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Kyurem - Dragon Dance - TR51
  (646, 64600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Kyurem - Dragon Pulse - TR62
  (646, 64600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 56),
  -- Kyurem - Focus Blast - TR64
  (646, 64600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Kyurem - Earth Power - TR67
  (646, 64600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Kyurem - Zen Headbutt - TR69
  (646, 64600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Kyurem - Flash Cannon - TR70
  (646, 64600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Kyurem - Iron Head - TR74
  (646, 64600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Kyurem - Stone Edge - TR75
  (646, 64600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Kyurem - Body Press - TR99
  (646, 64600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 63),
  -- Kyurem - Draco Meteor - Tutor
  (646, 64600, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Keldeo - Leer - Level 1
  (647, 64700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Keldeo - Helping Hand - Level 1
  (647, 64700, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Keldeo - Aqua Jet - Level 1
  (647, 64700, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Keldeo - Work Up - Level 1
  (647, 64700, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Keldeo - Secret Sword - Level 1
  (647, 64700, 548, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Keldeo - Bubble Beam - Level 7
  (647, 64700, 61, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Keldeo - Quick Guard - Level 14
  (647, 64700, 501, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Keldeo - Double Kick - Level 21
  (647, 64700, 24, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Keldeo - Retaliate - Level 28
  (647, 64700, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Keldeo - Aqua Tail - Level 35
  (647, 64700, 401, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Keldeo - Take Down - Level 42
  (647, 64700, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Keldeo - Sacred Sword - Level 49
  (647, 64700, 533, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Keldeo - Swords Dance - Level 56
  (647, 64700, 14, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Keldeo - Hydro Pump - Level 63
  (647, 64700, 56, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Keldeo - Close Combat - Level 70
  (647, 64700, 370, 18, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Keldeo - Hyper Beam - TM08
  (647, 64700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Keldeo - Giga Impact - TM09
  (647, 64700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Keldeo - Reflect - TM18
  (647, 64700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Keldeo - Safeguard - TM19
  (647, 64700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Keldeo - Rest - TM21
  (647, 64700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Keldeo - Snore - TM24
  (647, 64700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Keldeo - Protect - TM25
  (647, 64700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Keldeo - Icy Wind - TM27
  (647, 64700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Keldeo - Rain Dance - TM33
  (647, 64700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Keldeo - Sunny Day - TM34
  (647, 64700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Keldeo - Hail - TM35
  (647, 64700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Keldeo - Facade - TM39
  (647, 64700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Keldeo - Swift - TM40
  (647, 64700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Keldeo - Helping Hand - TM41
  (647, 64700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Keldeo - Revenge - TM42
  (647, 64700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Keldeo - Brick Break - TM43
  (647, 64700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Keldeo - Bounce - TM52
  (647, 64700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 32),
  -- Keldeo - Round - TM76
  (647, 64700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Keldeo - Retaliate - TM79
  (647, 64700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Keldeo - False Swipe - TM94
  (647, 64700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Keldeo - Air Slash - TM95
  (647, 64700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 36),
  -- Keldeo - Smart Strike - TM96
  (647, 64700, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 37),
  -- Keldeo - Swords Dance - TR00
  (647, 64700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Keldeo - Hydro Pump - TR03
  (647, 64700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 39),
  -- Keldeo - Surf - TR04
  (647, 64700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 40),
  -- Keldeo - Low Kick - TR07
  (647, 64700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Keldeo - Substitute - TR20
  (647, 64700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Keldeo - Reversal - TR21
  (647, 64700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 43),
  -- Keldeo - Endure - TR26
  (647, 64700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Keldeo - Sleep Talk - TR27
  (647, 64700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Keldeo - Megahorn - TR28
  (647, 64700, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 46),
  -- Keldeo - Taunt - TR37
  (647, 64700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Keldeo - Superpower - TR39
  (647, 64700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Keldeo - Muddy Water - TR45
  (647, 64700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Keldeo - Calm Mind - TR49
  (647, 64700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Keldeo - Close Combat - TR53
  (647, 64700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Keldeo - Aura Sphere - TR56
  (647, 64700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 52),
  -- Keldeo - Poison Jab - TR57
  (647, 64700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Keldeo - X-Scissor - TR60
  (647, 64700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 54),
  -- Keldeo - Focus Blast - TR64
  (647, 64700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Keldeo - Stone Edge - TR75
  (647, 64700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Keldeo - Scald - TR84
  (647, 64700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 57),
  -- Keldeo - Work Up - TR85
  (647, 64700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Keldeo - Liquidation - TR98
  (647, 64700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Genesect - Quick Attack - Level 1
  (649, 64900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect - Fury Cutter - Level 1
  (649, 64900, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect - Screech - Level 7
  (649, 64900, 103, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect - Metal Claw - Level 14
  (649, 64900, 232, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect - Fell Stinger - Level 21
  (649, 64900, 565, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect - Flame Charge - Level 28
  (649, 64900, 488, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect - Metal Sound - Level 35
  (649, 64900, 319, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect - X-Scissor - Level 42
  (649, 64900, 404, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect - Magnet Rise - Level 49
  (649, 64900, 393, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Genesect - Bug Buzz - Level 56
  (649, 64900, 405, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Genesect - Simple Beam - Level 63
  (649, 64900, 493, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Genesect - Zap Cannon - Level 70
  (649, 64900, 192, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Genesect - Lock-On - Level 77
  (649, 64900, 199, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Genesect - Techno Blast - Level 84
  (649, 64900, 546, 18, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Genesect - Self-Destruct - Level 91
  (649, 64900, 120, 18, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Genesect - Fly - TM06
  (649, 64900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Genesect - Hyper Beam - TM08
  (649, 64900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Genesect - Giga Impact - TM09
  (649, 64900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Genesect - Solar Beam - TM11
  (649, 64900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Genesect - Thunder Wave - TM14
  (649, 64900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Genesect - Screech - TM16
  (649, 64900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Genesect - Light Screen - TM17
  (649, 64900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Genesect - Reflect - TM18
  (649, 64900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Genesect - Self-Destruct - TM20
  (649, 64900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Genesect - Rest - TM21
  (649, 64900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Genesect - Snore - TM24
  (649, 64900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Genesect - Protect - TM25
  (649, 64900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Genesect - Giga Drain - TM28
  (649, 64900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Genesect - Facade - TM39
  (649, 64900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Genesect - Swift - TM40
  (649, 64900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Genesect - U-turn - TM56
  (649, 64900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 31),
  -- Genesect - Assurance - TM58
  (649, 64900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Genesect - Shadow Claw - TM65
  (649, 64900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Genesect - Round - TM76
  (649, 64900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Genesect - Electroweb - TM82
  (649, 64900, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 35),
  -- Genesect - Flamethrower - TR02
  (649, 64900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Genesect - Ice Beam - TR05
  (649, 64900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 37),
  -- Genesect - Blizzard - TR06
  (649, 64900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 38),
  -- Genesect - Thunderbolt - TR08
  (649, 64900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 39),
  -- Genesect - Thunder - TR09
  (649, 64900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 40),
  -- Genesect - Psychic - TR11
  (649, 64900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Genesect - Leech Life - TR18
  (649, 64900, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 42),
  -- Genesect - Tri Attack - TR19
  (649, 64900, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 43),
  -- Genesect - Substitute - TR20
  (649, 64900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Genesect - Endure - TR26
  (649, 64900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Genesect - Sleep Talk - TR27
  (649, 64900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Genesect - Blaze Kick - TR41
  (649, 64900, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 47),
  -- Genesect - Iron Defense - TR46
  (649, 64900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Genesect - Dark Pulse - TR58
  (649, 64900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Genesect - X-Scissor - TR60
  (649, 64900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 50),
  -- Genesect - Bug Buzz - TR61
  (649, 64900, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 51),
  -- Genesect - Energy Ball - TR65
  (649, 64900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 52),
  -- Genesect - Zen Headbutt - TR69
  (649, 64900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Genesect - Flash Cannon - TR70
  (649, 64900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Genesect - Gunk Shot - TR73
  (649, 64900, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 55),
  -- Genesect - Iron Head - TR74
  (649, 64900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 56),
  -- Genesect - Ally Switch - TR83
  (649, 64900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 57),
  -- Genesect - Steel Beam - Tutor
  (649, 64900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
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
  -- Beheeyem - Disable - Egg
  (606, 60600, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Beheeyem - Destiny Bond - Egg
  (606, 60600, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Beheeyem - Psych Up - Egg
  (606, 60600, 244, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Beheeyem - Astonish - Egg
  (606, 60600, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lampent - Haze - Egg
  (608, 60800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lampent - Acid Armor - Egg
  (608, 60800, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lampent - Power Split - Egg
  (608, 60800, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lampent - Clear Smog - Egg
  (608, 60800, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chandelure - Haze - Egg
  (609, 60900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chandelure - Acid Armor - Egg
  (609, 60900, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chandelure - Power Split - Egg
  (609, 60900, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chandelure - Clear Smog - Egg
  (609, 60900, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Fraxure - Counter - Egg
  (611, 61100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Fraxure - Harden - Egg
  (611, 61100, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Fraxure - Endeavor - Egg
  (611, 61100, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Fraxure - Night Slash - Egg
  (611, 61100, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Fraxure - First Impression - Egg
  (611, 61100, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Haxorus - Counter - Egg
  (612, 61200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Haxorus - Harden - Egg
  (612, 61200, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Haxorus - Endeavor - Egg
  (612, 61200, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Haxorus - Night Slash - Egg
  (612, 61200, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Haxorus - First Impression - Egg
  (612, 61200, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Beartic - Focus Punch - Egg
  (614, 61400, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Beartic - Yawn - Egg
  (614, 61400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Beartic - Night Slash - Egg
  (614, 61400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Accelgor - Double-Edge - Egg
  (617, 61700, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Accelgor - Mind Reader - Egg
  (617, 61700, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Accelgor - Feint - Egg
  (617, 61700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Accelgor - Guard Split - Egg
  (617, 61700, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mienshao - Vital Throw - Egg
  (620, 62000, 233, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mienshao - Focus Punch - Egg
  (620, 62000, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mienshao - Knock Off - Egg
  (620, 62000, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mienshao - Feint - Egg
  (620, 62000, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Bisharp - Headbutt - Egg
  (625, 62500, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bisharp - Mean Look - Egg
  (625, 62500, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Bisharp - Sucker Punch - Egg
  (625, 62500, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Bisharp - Quick Guard - Egg
  (625, 62500, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mandibuzz - Toxic - Egg
  (630, 63000, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mandibuzz - Mean Look - Egg
  (630, 63000, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mandibuzz - Roost - Egg
  (630, 63000, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zweilous - Astonish - Egg
  (634, 63400, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zweilous - Head Smash - Egg
  (634, 63400, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zweilous - Double Hit - Egg
  (634, 63400, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zweilous - Belch - Egg
  (634, 63400, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hydreigon - Astonish - Egg
  (635, 63500, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Hydreigon - Head Smash - Egg
  (635, 63500, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Hydreigon - Double Hit - Egg
  (635, 63500, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Hydreigon - Belch - Egg
  (635, 63500, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Volcarona - Thrash - Egg
  (637, 63700, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Volcarona - Absorb - Egg
  (637, 63700, 71, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Volcarona - Harden - Egg
  (637, 63700, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 63);
