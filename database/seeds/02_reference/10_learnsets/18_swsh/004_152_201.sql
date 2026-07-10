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
-- Sword / Shield learnsets for default forms, species 152-201.
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
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Peck - Level 1
  (163, 16300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Tackle - Level 3
  (163, 16300, 33, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Hoothoot - Echoed Voice - Level 6
  (163, 16300, 497, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoothoot - Confusion - Level 9
  (163, 16300, 93, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Hoothoot - Reflect - Level 12
  (163, 16300, 115, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hoothoot - Psycho Shift - Level 15
  (163, 16300, 375, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hoothoot - Air Slash - Level 18
  (163, 16300, 403, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Hoothoot - Extrasensory - Level 21
  (163, 16300, 326, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Hoothoot - Take Down - Level 24
  (163, 16300, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Hoothoot - Uproar - Level 27
  (163, 16300, 253, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Hoothoot - Roost - Level 30
  (163, 16300, 355, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Hoothoot - Moonblast - Level 33
  (163, 16300, 585, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Hoothoot - Hypnosis - Level 36
  (163, 16300, 95, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Hoothoot - Dream Eater - Level 39
  (163, 16300, 138, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Hoothoot - Fly - TM06
  (163, 16300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Hoothoot - Screech - TM16
  (163, 16300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Hoothoot - Reflect - TM18
  (163, 16300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Hoothoot - Rest - TM21
  (163, 16300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Hoothoot - Thief - TM23
  (163, 16300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Hoothoot - Snore - TM24
  (163, 16300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Hoothoot - Protect - TM25
  (163, 16300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Hoothoot - Steel Wing - TM30
  (163, 16300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 23),
  -- Hoothoot - Attract - TM31
  (163, 16300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Hoothoot - Rain Dance - TM33
  (163, 16300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Hoothoot - Sunny Day - TM34
  (163, 16300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Hoothoot - Facade - TM39
  (163, 16300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Hoothoot - Swift - TM40
  (163, 16300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Hoothoot - Imprison - TM44
  (163, 16300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Hoothoot - Round - TM76
  (163, 16300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Hoothoot - Air Slash - TM95
  (163, 16300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 31),
  -- Hoothoot - Psychic - TR11
  (163, 16300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 32),
  -- Hoothoot - Agility - TR12
  (163, 16300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 33),
  -- Hoothoot - Amnesia - TR17
  (163, 16300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 34),
  -- Hoothoot - Substitute - TR20
  (163, 16300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Hoothoot - Endure - TR26
  (163, 16300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Hoothoot - Sleep Talk - TR27
  (163, 16300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Hoothoot - Shadow Ball - TR33
  (163, 16300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Hoothoot - Uproar - TR35
  (163, 16300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Hoothoot - Heat Wave - TR36
  (163, 16300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 40),
  -- Hoothoot - Hyper Voice - TR42
  (163, 16300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Hoothoot - Calm Mind - TR49
  (163, 16300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 42),
  -- Hoothoot - Nasty Plot - TR68
  (163, 16300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Hoothoot - Zen Headbutt - TR69
  (163, 16300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 44),
  -- Hoothoot - Stored Power - TR82
  (163, 16300, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 45),
  -- Hoothoot - Work Up - TR85
  (163, 16300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 46),
  -- Hoothoot - Hurricane - TR89
  (163, 16300, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 47),
  -- Hoothoot - Wing Attack - Egg
  (163, 16300, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoothoot - Whirlwind - Egg
  (163, 16300, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoothoot - Supersonic - Egg
  (163, 16300, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoothoot - Night Shade - Egg
  (163, 16300, 101, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoothoot - Feather Dance - Egg
  (163, 16300, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoothoot - Defog - Egg
  (163, 16300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Peck - Level 1
  (164, 16400, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Sky Attack - Level 1
  (164, 16400, 143, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Echoed Voice - Level 1
  (164, 16400, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noctowl - Confusion - Level 9
  (164, 16400, 93, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Noctowl - Reflect - Level 12
  (164, 16400, 115, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Noctowl - Psycho Shift - Level 15
  (164, 16400, 375, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Noctowl - Air Slash - Level 18
  (164, 16400, 403, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Noctowl - Extrasensory - Level 23
  (164, 16400, 326, 18, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Noctowl - Take Down - Level 28
  (164, 16400, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Noctowl - Uproar - Level 33
  (164, 16400, 253, 18, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Noctowl - Roost - Level 38
  (164, 16400, 355, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Noctowl - Moonblast - Level 43
  (164, 16400, 585, 18, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Noctowl - Hypnosis - Level 48
  (164, 16400, 95, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Noctowl - Dream Eater - Level 53
  (164, 16400, 138, 18, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Noctowl - Fly - TM06
  (164, 16400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Noctowl - Hyper Beam - TM08
  (164, 16400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Noctowl - Giga Impact - TM09
  (164, 16400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Noctowl - Screech - TM16
  (164, 16400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Noctowl - Reflect - TM18
  (164, 16400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Noctowl - Rest - TM21
  (164, 16400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Noctowl - Thief - TM23
  (164, 16400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Noctowl - Snore - TM24
  (164, 16400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Noctowl - Protect - TM25
  (164, 16400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Noctowl - Steel Wing - TM30
  (164, 16400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Noctowl - Attract - TM31
  (164, 16400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Noctowl - Rain Dance - TM33
  (164, 16400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Noctowl - Sunny Day - TM34
  (164, 16400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Noctowl - Facade - TM39
  (164, 16400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Noctowl - Swift - TM40
  (164, 16400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Noctowl - Imprison - TM44
  (164, 16400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Noctowl - Round - TM76
  (164, 16400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Noctowl - Air Slash - TM95
  (164, 16400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 34),
  -- Noctowl - Psychic - TR11
  (164, 16400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 35),
  -- Noctowl - Agility - TR12
  (164, 16400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Noctowl - Amnesia - TR17
  (164, 16400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Noctowl - Substitute - TR20
  (164, 16400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Noctowl - Endure - TR26
  (164, 16400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Noctowl - Sleep Talk - TR27
  (164, 16400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Noctowl - Shadow Ball - TR33
  (164, 16400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Noctowl - Future Sight - TR34
  (164, 16400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 42),
  -- Noctowl - Uproar - TR35
  (164, 16400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Noctowl - Heat Wave - TR36
  (164, 16400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Noctowl - Hyper Voice - TR42
  (164, 16400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Noctowl - Calm Mind - TR49
  (164, 16400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 46),
  -- Noctowl - Nasty Plot - TR68
  (164, 16400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 47),
  -- Noctowl - Zen Headbutt - TR69
  (164, 16400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 48),
  -- Noctowl - Stored Power - TR82
  (164, 16400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 49),
  -- Noctowl - Work Up - TR85
  (164, 16400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 50),
  -- Noctowl - Hurricane - TR89
  (164, 16400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Absorb - Level 1
  (169, 16900, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Toxic - Level 1
  (169, 16900, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crobat - Mean Look - Level 1
  (169, 16900, 212, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crobat - Astonish - Level 1
  (169, 16900, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Crobat - Tailwind - Level 1
  (169, 16900, 366, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Crobat - Cross Poison - Level 1
  (169, 16900, 440, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Crobat - Poison Fang - Level 15
  (169, 16900, 305, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Crobat - Quick Guard - Level 20
  (169, 16900, 501, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Crobat - Air Cutter - Level 27
  (169, 16900, 314, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Crobat - Bite - Level 34
  (169, 16900, 44, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Crobat - Haze - Level 41
  (169, 16900, 114, 18, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Crobat - Venoshock - Level 48
  (169, 16900, 474, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Crobat - Confuse Ray - Level 55
  (169, 16900, 109, 18, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Crobat - Air Slash - Level 62
  (169, 16900, 403, 18, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Crobat - Leech Life - Level 69
  (169, 16900, 141, 18, NULL, 1, 69, NULL, NULL, NULL, 17),
  -- Crobat - Cross Poison - Evolution
  (169, 16900, 440, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Crobat - Fly - TM06
  (169, 16900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Crobat - Hyper Beam - TM08
  (169, 16900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Crobat - Giga Impact - TM09
  (169, 16900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Crobat - Screech - TM16
  (169, 16900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Crobat - Rest - TM21
  (169, 16900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Crobat - Thief - TM23
  (169, 16900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Crobat - Snore - TM24
  (169, 16900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Crobat - Protect - TM25
  (169, 16900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Crobat - Giga Drain - TM28
  (169, 16900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Crobat - Steel Wing - TM30
  (169, 16900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Crobat - Attract - TM31
  (169, 16900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Crobat - Rain Dance - TM33
  (169, 16900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Crobat - Sunny Day - TM34
  (169, 16900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Crobat - Facade - TM39
  (169, 16900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Crobat - Swift - TM40
  (169, 16900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Crobat - U-turn - TM56
  (169, 16900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Crobat - Payback - TM57
  (169, 16900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Crobat - Assurance - TM58
  (169, 16900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Crobat - Cross Poison - TM73
  (169, 16900, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 37),
  -- Crobat - Venoshock - TM74
  (169, 16900, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 38),
  -- Crobat - Round - TM76
  (169, 16900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Crobat - Hex - TM77
  (169, 16900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Crobat - Acrobatics - TM78
  (169, 16900, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 41),
  -- Crobat - Air Slash - TM95
  (169, 16900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Crobat - Agility - TR12
  (169, 16900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Crobat - Leech Life - TR18
  (169, 16900, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 44),
  -- Crobat - Substitute - TR20
  (169, 16900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Crobat - Sludge Bomb - TR22
  (169, 16900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 46),
  -- Crobat - Endure - TR26
  (169, 16900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Crobat - Sleep Talk - TR27
  (169, 16900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Crobat - Crunch - TR32
  (169, 16900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Crobat - Shadow Ball - TR33
  (169, 16900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Crobat - Uproar - TR35
  (169, 16900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Crobat - Heat Wave - TR36
  (169, 16900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Crobat - Taunt - TR37
  (169, 16900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Crobat - Dark Pulse - TR58
  (169, 16900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Crobat - X-Scissor - TR60
  (169, 16900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 55),
  -- Crobat - Brave Bird - TR66
  (169, 16900, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 56),
  -- Crobat - Nasty Plot - TR68
  (169, 16900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 57),
  -- Crobat - Zen Headbutt - TR69
  (169, 16900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Crobat - Hurricane - TR89
  (169, 16900, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 59),
  -- Crobat - Venom Drench - TR91
  (169, 16900, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 60),
  -- Chinchou - Supersonic - Level 1
  (170, 17000, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Water Gun - Level 1
  (170, 17000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Electro Ball - Level 4
  (170, 17000, 486, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Chinchou - Thunder Wave - Level 8
  (170, 17000, 86, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chinchou - Bubble Beam - Level 12
  (170, 17000, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Confuse Ray - Level 16
  (170, 17000, 109, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chinchou - Spark - Level 20
  (170, 17000, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Charge - Level 24
  (170, 17000, 268, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Chinchou - Discharge - Level 28
  (170, 17000, 435, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Aqua Ring - Level 32
  (170, 17000, 392, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Chinchou - Flail - Level 36
  (170, 17000, 175, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Chinchou - Take Down - Level 40
  (170, 17000, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Chinchou - Hydro Pump - Level 44
  (170, 17000, 56, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Chinchou - Thunder Wave - TM14
  (170, 17000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Chinchou - Screech - TM16
  (170, 17000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Chinchou - Rest - TM21
  (170, 17000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Chinchou - Snore - TM24
  (170, 17000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Chinchou - Protect - TM25
  (170, 17000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Chinchou - Icy Wind - TM27
  (170, 17000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Chinchou - Attract - TM31
  (170, 17000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Chinchou - Rain Dance - TM33
  (170, 17000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Chinchou - Hail - TM35
  (170, 17000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Chinchou - Whirlpool - TM36
  (170, 17000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Chinchou - Facade - TM39
  (170, 17000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Chinchou - Dive - TM45
  (170, 17000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 25),
  -- Chinchou - Bounce - TM52
  (170, 17000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 26),
  -- Chinchou - Brine - TM55
  (170, 17000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Chinchou - Round - TM76
  (170, 17000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Chinchou - Volt Switch - TM80
  (170, 17000, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Chinchou - Hydro Pump - TR03
  (170, 17000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 30),
  -- Chinchou - Surf - TR04
  (170, 17000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 31),
  -- Chinchou - Ice Beam - TR05
  (170, 17000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Chinchou - Blizzard - TR06
  (170, 17000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Chinchou - Thunderbolt - TR08
  (170, 17000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 34),
  -- Chinchou - Thunder - TR09
  (170, 17000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 35),
  -- Chinchou - Agility - TR12
  (170, 17000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Chinchou - Waterfall - TR16
  (170, 17000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 37),
  -- Chinchou - Amnesia - TR17
  (170, 17000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 38),
  -- Chinchou - Substitute - TR20
  (170, 17000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Chinchou - Endure - TR26
  (170, 17000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Chinchou - Sleep Talk - TR27
  (170, 17000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Chinchou - Electro Ball - TR80
  (170, 17000, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 42),
  -- Chinchou - Scald - TR84
  (170, 17000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 43),
  -- Chinchou - Wild Charge - TR86
  (170, 17000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 44),
  -- Chinchou - Dazzling Gleam - TR92
  (170, 17000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 45),
  -- Chinchou - Mist - Egg
  (170, 17000, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Psybeam - Egg
  (170, 17000, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chinchou - Water Pulse - Egg
  (170, 17000, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chinchou - Soak - Egg
  (170, 17000, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Water Gun - Level 1
  (171, 17100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Stockpile - Level 1
  (171, 17100, 254, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lanturn - Spit Up - Level 1
  (171, 17100, 255, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lanturn - Swallow - Level 1
  (171, 17100, 256, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lanturn - Electro Ball - Level 1
  (171, 17100, 486, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lanturn - Eerie Impulse - Level 1
  (171, 17100, 598, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lanturn - Bubble Beam - Level 12
  (171, 17100, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Lanturn - Confuse Ray - Level 16
  (171, 17100, 109, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Lanturn - Spark - Level 20
  (171, 17100, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Lanturn - Charge - Level 24
  (171, 17100, 268, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lanturn - Discharge - Level 30
  (171, 17100, 435, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lanturn - Aqua Ring - Level 36
  (171, 17100, 392, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lanturn - Flail - Level 42
  (171, 17100, 175, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Lanturn - Take Down - Level 48
  (171, 17100, 36, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Lanturn - Hydro Pump - Level 54
  (171, 17100, 56, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Lanturn - Stockpile - Evolution
  (171, 17100, 254, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Lanturn - Spit Up - Evolution
  (171, 17100, 255, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Lanturn - Swallow - Evolution
  (171, 17100, 256, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Lanturn - Hyper Beam - TM08
  (171, 17100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Lanturn - Giga Impact - TM09
  (171, 17100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Lanturn - Thunder Wave - TM14
  (171, 17100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Lanturn - Screech - TM16
  (171, 17100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Lanturn - Rest - TM21
  (171, 17100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Lanturn - Snore - TM24
  (171, 17100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Lanturn - Protect - TM25
  (171, 17100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Lanturn - Icy Wind - TM27
  (171, 17100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Lanturn - Attract - TM31
  (171, 17100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Lanturn - Rain Dance - TM33
  (171, 17100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Lanturn - Hail - TM35
  (171, 17100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Lanturn - Whirlpool - TM36
  (171, 17100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Lanturn - Facade - TM39
  (171, 17100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Lanturn - Dive - TM45
  (171, 17100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 34),
  -- Lanturn - Bounce - TM52
  (171, 17100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 35),
  -- Lanturn - Brine - TM55
  (171, 17100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 36),
  -- Lanturn - Round - TM76
  (171, 17100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Lanturn - Volt Switch - TM80
  (171, 17100, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 38),
  -- Lanturn - Eerie Impulse - TM93
  (171, 17100, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 39),
  -- Lanturn - Hydro Pump - TR03
  (171, 17100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Lanturn - Surf - TR04
  (171, 17100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Lanturn - Ice Beam - TR05
  (171, 17100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Lanturn - Blizzard - TR06
  (171, 17100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Lanturn - Thunderbolt - TR08
  (171, 17100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Lanturn - Thunder - TR09
  (171, 17100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Lanturn - Agility - TR12
  (171, 17100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Lanturn - Waterfall - TR16
  (171, 17100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 47),
  -- Lanturn - Amnesia - TR17
  (171, 17100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 48),
  -- Lanturn - Substitute - TR20
  (171, 17100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Lanturn - Endure - TR26
  (171, 17100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Lanturn - Sleep Talk - TR27
  (171, 17100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Lanturn - Electro Ball - TR80
  (171, 17100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 52),
  -- Lanturn - Scald - TR84
  (171, 17100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Lanturn - Wild Charge - TR86
  (171, 17100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 54),
  -- Lanturn - Dazzling Gleam - TR92
  (171, 17100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 55),
  -- Pichu - Tail Whip - Level 1
  (172, 17200, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Play Nice - Level 4
  (172, 17200, 589, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pichu - Sweet Kiss - Level 8
  (172, 17200, 186, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pichu - Nuzzle - Level 12
  (172, 17200, 609, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pichu - Nasty Plot - Level 16
  (172, 17200, 417, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pichu - Charm - Level 20
  (172, 17200, 204, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pichu - Mega Punch - TM00
  (172, 17200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 8),
  -- Pichu - Mega Kick - TM01
  (172, 17200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 9),
  -- Pichu - Thunder Punch - TM05
  (172, 17200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 10),
  -- Pichu - Thunder Wave - TM14
  (172, 17200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 11),
  -- Pichu - Light Screen - TM17
  (172, 17200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 12),
  -- Pichu - Reflect - TM18
  (172, 17200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 13),
  -- Pichu - Rest - TM21
  (172, 17200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Pichu - Snore - TM24
  (172, 17200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Pichu - Protect - TM25
  (172, 17200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Pichu - Charm - TM29
  (172, 17200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 17),
  -- Pichu - Attract - TM31
  (172, 17200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Pichu - Rain Dance - TM33
  (172, 17200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Pichu - Facade - TM39
  (172, 17200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Pichu - Swift - TM40
  (172, 17200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 21),
  -- Pichu - Helping Hand - TM41
  (172, 17200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 22),
  -- Pichu - Fling - TM59
  (172, 17200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 23),
  -- Pichu - Round - TM76
  (172, 17200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Pichu - Volt Switch - TM80
  (172, 17200, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 25),
  -- Pichu - Electroweb - TM82
  (172, 17200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 26),
  -- Pichu - Electric Terrain - TM90
  (172, 17200, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 27),
  -- Pichu - Body Slam - TR01
  (172, 17200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 28),
  -- Pichu - Surf - TR04
  (172, 17200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Pichu - Thunderbolt - TR08
  (172, 17200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 30),
  -- Pichu - Thunder - TR09
  (172, 17200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 31),
  -- Pichu - Substitute - TR20
  (172, 17200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Pichu - Reversal - TR21
  (172, 17200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 33),
  -- Pichu - Endure - TR26
  (172, 17200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Pichu - Sleep Talk - TR27
  (172, 17200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Pichu - Encore - TR30
  (172, 17200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 36),
  -- Pichu - Iron Tail - TR31
  (172, 17200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 37),
  -- Pichu - Uproar - TR35
  (172, 17200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 38),
  -- Pichu - Nasty Plot - TR68
  (172, 17200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 39),
  -- Pichu - Grass Knot - TR77
  (172, 17200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Pichu - Wild Charge - TR86
  (172, 17200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 41),
  -- Pichu - Play Rough - TR90
  (172, 17200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 42),
  -- Pichu - Volt Tackle - Egg
  (172, 17200, 344, 18, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 43),
  -- Pichu - Flail - Egg
  (172, 17200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pichu - Present - Egg
  (172, 17200, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pichu - Fake Out - Egg
  (172, 17200, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pichu - Charge - Egg
  (172, 17200, 268, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pichu - Wish - Egg
  (172, 17200, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pichu - Tickle - Egg
  (172, 17200, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pichu - Disarming Voice - Egg
  (172, 17200, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Splash - Level 1
  (173, 17300, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Copycat - Level 1
  (173, 17300, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 4
  (173, 17300, 47, 18, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 8
  (173, 17300, 186, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cleffa - Disarming Voice - Level 12
  (173, 17300, 574, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cleffa - Encore - Level 16
  (173, 17300, 227, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Charm - Level 20
  (173, 17300, 204, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cleffa - Mega Punch - TM00
  (173, 17300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 9),
  -- Cleffa - Mega Kick - TM01
  (173, 17300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 10),
  -- Cleffa - Magical Leaf - TM10
  (173, 17300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 11),
  -- Cleffa - Solar Beam - TM11
  (173, 17300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 12),
  -- Cleffa - Thunder Wave - TM14
  (173, 17300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 13),
  -- Cleffa - Dig - TM15
  (173, 17300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Cleffa - Light Screen - TM17
  (173, 17300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Cleffa - Reflect - TM18
  (173, 17300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Cleffa - Safeguard - TM19
  (173, 17300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Cleffa - Rest - TM21
  (173, 17300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Cleffa - Snore - TM24
  (173, 17300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Cleffa - Protect - TM25
  (173, 17300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Cleffa - Icy Wind - TM27
  (173, 17300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Cleffa - Charm - TM29
  (173, 17300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Cleffa - Attract - TM31
  (173, 17300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Cleffa - Rain Dance - TM33
  (173, 17300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Cleffa - Sunny Day - TM34
  (173, 17300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Cleffa - Facade - TM39
  (173, 17300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Cleffa - Helping Hand - TM41
  (173, 17300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Cleffa - Fake Tears - TM47
  (173, 17300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Cleffa - Fling - TM59
  (173, 17300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Cleffa - Wonder Room - TM71
  (173, 17300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Cleffa - Round - TM76
  (173, 17300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Cleffa - Draining Kiss - TM87
  (173, 17300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 32),
  -- Cleffa - Misty Terrain - TM89
  (173, 17300, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 33),
  -- Cleffa - Body Slam - TR01
  (173, 17300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Cleffa - Flamethrower - TR02
  (173, 17300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Cleffa - Psychic - TR11
  (173, 17300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Cleffa - Metronome - TR14
  (173, 17300, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 37),
  -- Cleffa - Fire Blast - TR15
  (173, 17300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Cleffa - Amnesia - TR17
  (173, 17300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 39),
  -- Cleffa - Substitute - TR20
  (173, 17300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Cleffa - Psyshock - TR25
  (173, 17300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 41),
  -- Cleffa - Endure - TR26
  (173, 17300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Cleffa - Sleep Talk - TR27
  (173, 17300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Cleffa - Encore - TR30
  (173, 17300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 44),
  -- Cleffa - Iron Tail - TR31
  (173, 17300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Cleffa - Shadow Ball - TR33
  (173, 17300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Cleffa - Uproar - TR35
  (173, 17300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Cleffa - Trick - TR38
  (173, 17300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 48),
  -- Cleffa - Hyper Voice - TR42
  (173, 17300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Cleffa - Zen Headbutt - TR69
  (173, 17300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Cleffa - Grass Knot - TR77
  (173, 17300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Cleffa - Stored Power - TR82
  (173, 17300, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 52),
  -- Cleffa - Work Up - TR85
  (173, 17300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Cleffa - Play Rough - TR90
  (173, 17300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 54),
  -- Cleffa - Present - Egg
  (173, 17300, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cleffa - Wish - Egg
  (173, 17300, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cleffa - Aromatherapy - Egg
  (173, 17300, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cleffa - Tickle - Egg
  (173, 17300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cleffa - Heal Pulse - Egg
  (173, 17300, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Igglybuff - Pound - Level 1
  (174, 17400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Copycat - Level 1
  (174, 17400, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Igglybuff - Defense Curl - Level 4
  (174, 17400, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 8
  (174, 17400, 186, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Igglybuff - Disarming Voice - Level 12
  (174, 17400, 574, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Igglybuff - Disable - Level 16
  (174, 17400, 50, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Igglybuff - Charm - Level 20
  (174, 17400, 204, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Igglybuff - Mega Punch - TM00
  (174, 17400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 9),
  -- Igglybuff - Mega Kick - TM01
  (174, 17400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 10),
  -- Igglybuff - Solar Beam - TM11
  (174, 17400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 11),
  -- Igglybuff - Thunder Wave - TM14
  (174, 17400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 12),
  -- Igglybuff - Dig - TM15
  (174, 17400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 13),
  -- Igglybuff - Screech - TM16
  (174, 17400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 14),
  -- Igglybuff - Light Screen - TM17
  (174, 17400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Igglybuff - Reflect - TM18
  (174, 17400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Igglybuff - Safeguard - TM19
  (174, 17400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Igglybuff - Rest - TM21
  (174, 17400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Igglybuff - Snore - TM24
  (174, 17400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Igglybuff - Protect - TM25
  (174, 17400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Igglybuff - Icy Wind - TM27
  (174, 17400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Igglybuff - Charm - TM29
  (174, 17400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Igglybuff - Attract - TM31
  (174, 17400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Igglybuff - Rain Dance - TM33
  (174, 17400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Igglybuff - Sunny Day - TM34
  (174, 17400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Igglybuff - Facade - TM39
  (174, 17400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Igglybuff - Helping Hand - TM41
  (174, 17400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Igglybuff - Fake Tears - TM47
  (174, 17400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Igglybuff - Bounce - TM52
  (174, 17400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Igglybuff - Fling - TM59
  (174, 17400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 30),
  -- Igglybuff - Round - TM76
  (174, 17400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Igglybuff - Draining Kiss - TM87
  (174, 17400, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 32),
  -- Igglybuff - Misty Terrain - TM89
  (174, 17400, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 33),
  -- Igglybuff - Body Slam - TR01
  (174, 17400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Igglybuff - Flamethrower - TR02
  (174, 17400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Igglybuff - Psychic - TR11
  (174, 17400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Igglybuff - Fire Blast - TR15
  (174, 17400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 37),
  -- Igglybuff - Substitute - TR20
  (174, 17400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Igglybuff - Endure - TR26
  (174, 17400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Igglybuff - Sleep Talk - TR27
  (174, 17400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Igglybuff - Shadow Ball - TR33
  (174, 17400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Igglybuff - Uproar - TR35
  (174, 17400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 42),
  -- Igglybuff - Hyper Voice - TR42
  (174, 17400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 43),
  -- Igglybuff - Grass Knot - TR77
  (174, 17400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 44),
  -- Igglybuff - Work Up - TR85
  (174, 17400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 45),
  -- Igglybuff - Wild Charge - TR86
  (174, 17400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 46),
  -- Igglybuff - Play Rough - TR90
  (174, 17400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Igglybuff - Perish Song - Egg
  (174, 17400, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Igglybuff - Rollout - Egg
  (174, 17400, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Igglybuff - Present - Egg
  (174, 17400, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Igglybuff - Wish - Egg
  (174, 17400, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Igglybuff - Covet - Egg
  (174, 17400, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Igglybuff - Gravity - Egg
  (174, 17400, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Igglybuff - Last Resort - Egg
  (174, 17400, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Igglybuff - Heal Pulse - Egg
  (174, 17400, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Togepi - Pound - Level 1
  (175, 17500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Growl - Level 1
  (175, 17500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Sweet Kiss - Level 4
  (175, 17500, 186, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Togepi - Life Dew - Level 8
  (175, 17500, 791, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Togepi - Charm - Level 12
  (175, 17500, 204, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Togepi - Ancient Power - Level 16
  (175, 17500, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Togepi - Yawn - Level 20
  (175, 17500, 281, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Togepi - Metronome - Level 24
  (175, 17500, 118, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Togepi - After You - Level 28
  (175, 17500, 495, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Togepi - Double-Edge - Level 32
  (175, 17500, 38, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Togepi - Safeguard - Level 36
  (175, 17500, 219, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Togepi - Follow Me - Level 40
  (175, 17500, 266, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Togepi - Baton Pass - Level 44
  (175, 17500, 226, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Togepi - Last Resort - Level 48
  (175, 17500, 387, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Togepi - Wish - Level 52
  (175, 17500, 273, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Togepi - Mega Punch - TM00
  (175, 17500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Togepi - Mega Kick - TM01
  (175, 17500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Togepi - Solar Beam - TM11
  (175, 17500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Togepi - Thunder Wave - TM14
  (175, 17500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Togepi - Light Screen - TM17
  (175, 17500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Togepi - Reflect - TM18
  (175, 17500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Togepi - Safeguard - TM19
  (175, 17500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Togepi - Rest - TM21
  (175, 17500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Togepi - Snore - TM24
  (175, 17500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Togepi - Protect - TM25
  (175, 17500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Togepi - Charm - TM29
  (175, 17500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Togepi - Attract - TM31
  (175, 17500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Togepi - Rain Dance - TM33
  (175, 17500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Togepi - Sunny Day - TM34
  (175, 17500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Togepi - Facade - TM39
  (175, 17500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Togepi - Swift - TM40
  (175, 17500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Togepi - Helping Hand - TM41
  (175, 17500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Togepi - Fling - TM59
  (175, 17500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Togepi - Round - TM76
  (175, 17500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Togepi - Draining Kiss - TM87
  (175, 17500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 35),
  -- Togepi - Mystical Fire - TM92
  (175, 17500, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Togepi - Body Slam - TR01
  (175, 17500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Togepi - Flamethrower - TR02
  (175, 17500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Togepi - Psychic - TR11
  (175, 17500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 39),
  -- Togepi - Metronome - TR14
  (175, 17500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 40),
  -- Togepi - Fire Blast - TR15
  (175, 17500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 41),
  -- Togepi - Tri Attack - TR19
  (175, 17500, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 42),
  -- Togepi - Substitute - TR20
  (175, 17500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Togepi - Psyshock - TR25
  (175, 17500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Togepi - Endure - TR26
  (175, 17500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Togepi - Sleep Talk - TR27
  (175, 17500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Togepi - Baton Pass - TR29
  (175, 17500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 47),
  -- Togepi - Encore - TR30
  (175, 17500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 48),
  -- Togepi - Shadow Ball - TR33
  (175, 17500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Togepi - Future Sight - TR34
  (175, 17500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 50),
  -- Togepi - Uproar - TR35
  (175, 17500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Togepi - Trick - TR38
  (175, 17500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Togepi - Hyper Voice - TR42
  (175, 17500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Togepi - Nasty Plot - TR68
  (175, 17500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 54),
  -- Togepi - Zen Headbutt - TR69
  (175, 17500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 55),
  -- Togepi - Grass Knot - TR77
  (175, 17500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Togepi - Stored Power - TR82
  (175, 17500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 57),
  -- Togepi - Work Up - TR85
  (175, 17500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Togepi - Play Rough - TR90
  (175, 17500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 59),
  -- Togepi - Dazzling Gleam - TR92
  (175, 17500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 60),
  -- Togepi - Peck - Egg
  (175, 17500, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Togepi - Present - Egg
  (175, 17500, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Togepi - Morning Sun - Egg
  (175, 17500, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Togepi - Extrasensory - Egg
  (175, 17500, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Togepi - Aerial Ace - Egg
  (175, 17500, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Togepi - Psycho Shift - Egg
  (175, 17500, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Togetic - Pound - Level 1
  (176, 17600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Growl - Level 1
  (176, 17600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Sweet Kiss - Level 1
  (176, 17600, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togetic - Fairy Wind - Level 1
  (176, 17600, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togetic - Life Dew - Level 1
  (176, 17600, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togetic - Charm - Level 12
  (176, 17600, 204, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Togetic - Ancient Power - Level 16
  (176, 17600, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Togetic - Yawn - Level 20
  (176, 17600, 281, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Togetic - Metronome - Level 24
  (176, 17600, 118, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Togetic - After You - Level 28
  (176, 17600, 495, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Togetic - Double-Edge - Level 32
  (176, 17600, 38, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Togetic - Safeguard - Level 36
  (176, 17600, 219, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Togetic - Follow Me - Level 40
  (176, 17600, 266, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Togetic - Baton Pass - Level 44
  (176, 17600, 226, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Togetic - Last Resort - Level 48
  (176, 17600, 387, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Togetic - Wish - Level 52
  (176, 17600, 273, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Togetic - Fairy Wind - Evolution
  (176, 17600, 584, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Togetic - Mega Punch - TM00
  (176, 17600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Togetic - Mega Kick - TM01
  (176, 17600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Togetic - Fly - TM06
  (176, 17600, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 20),
  -- Togetic - Hyper Beam - TM08
  (176, 17600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Togetic - Giga Impact - TM09
  (176, 17600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Togetic - Magical Leaf - TM10
  (176, 17600, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 23),
  -- Togetic - Solar Beam - TM11
  (176, 17600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Togetic - Thunder Wave - TM14
  (176, 17600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Togetic - Light Screen - TM17
  (176, 17600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 26),
  -- Togetic - Reflect - TM18
  (176, 17600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 27),
  -- Togetic - Safeguard - TM19
  (176, 17600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 28),
  -- Togetic - Rest - TM21
  (176, 17600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Togetic - Snore - TM24
  (176, 17600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Togetic - Protect - TM25
  (176, 17600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Togetic - Charm - TM29
  (176, 17600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 32),
  -- Togetic - Steel Wing - TM30
  (176, 17600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Togetic - Attract - TM31
  (176, 17600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Togetic - Rain Dance - TM33
  (176, 17600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Togetic - Sunny Day - TM34
  (176, 17600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Togetic - Facade - TM39
  (176, 17600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Togetic - Swift - TM40
  (176, 17600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Togetic - Helping Hand - TM41
  (176, 17600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Togetic - Brick Break - TM43
  (176, 17600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Togetic - Imprison - TM44
  (176, 17600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 41),
  -- Togetic - Fling - TM59
  (176, 17600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Togetic - Drain Punch - TM63
  (176, 17600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Togetic - Round - TM76
  (176, 17600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Togetic - Retaliate - TM79
  (176, 17600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 45),
  -- Togetic - Draining Kiss - TM87
  (176, 17600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 46),
  -- Togetic - Mystical Fire - TM92
  (176, 17600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 47),
  -- Togetic - Smart Strike - TM96
  (176, 17600, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 48),
  -- Togetic - Body Slam - TR01
  (176, 17600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Togetic - Flamethrower - TR02
  (176, 17600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 50),
  -- Togetic - Psychic - TR11
  (176, 17600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Togetic - Metronome - TR14
  (176, 17600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 52),
  -- Togetic - Fire Blast - TR15
  (176, 17600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 53),
  -- Togetic - Tri Attack - TR19
  (176, 17600, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 54),
  -- Togetic - Substitute - TR20
  (176, 17600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Togetic - Psyshock - TR25
  (176, 17600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 56),
  -- Togetic - Endure - TR26
  (176, 17600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Togetic - Sleep Talk - TR27
  (176, 17600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Togetic - Baton Pass - TR29
  (176, 17600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 59),
  -- Togetic - Encore - TR30
  (176, 17600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 60),
  -- Togetic - Shadow Ball - TR33
  (176, 17600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Togetic - Future Sight - TR34
  (176, 17600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 62),
  -- Togetic - Uproar - TR35
  (176, 17600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 63),
  -- Togetic - Heat Wave - TR36
  (176, 17600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 64),
  -- Togetic - Trick - TR38
  (176, 17600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 65),
  -- Togetic - Hyper Voice - TR42
  (176, 17600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 66),
  -- Togetic - Nasty Plot - TR68
  (176, 17600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 67),
  -- Togetic - Zen Headbutt - TR69
  (176, 17600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Togetic - Grass Knot - TR77
  (176, 17600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 69),
  -- Togetic - Stored Power - TR82
  (176, 17600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 70),
  -- Togetic - Work Up - TR85
  (176, 17600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Togetic - Play Rough - TR90
  (176, 17600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 72),
  -- Togetic - Dazzling Gleam - TR92
  (176, 17600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 73),
  -- Natu - Leer - Level 1
  (177, 17700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Stored Power - Level 5
  (177, 17700, 500, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 10
  (177, 17700, 100, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Natu - Confuse Ray - Level 15
  (177, 17700, 109, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Natu - Night Shade - Level 20
  (177, 17700, 101, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Natu - Psycho Shift - Level 26
  (177, 17700, 375, 18, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Natu - Power Swap - Level 30
  (177, 17700, 384, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Natu - Psychic - Level 35
  (177, 17700, 94, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Natu - Guard Swap - Level 35
  (177, 17700, 385, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Natu - Wish - Level 40
  (177, 17700, 273, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Natu - Future Sight - Level 45
  (177, 17700, 248, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Natu - Solar Beam - TM11
  (177, 17700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 13),
  -- Natu - Thunder Wave - TM14
  (177, 17700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Natu - Light Screen - TM17
  (177, 17700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Natu - Reflect - TM18
  (177, 17700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Natu - Rest - TM21
  (177, 17700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Natu - Thief - TM23
  (177, 17700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Natu - Snore - TM24
  (177, 17700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Natu - Protect - TM25
  (177, 17700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Natu - Giga Drain - TM28
  (177, 17700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Natu - Steel Wing - TM30
  (177, 17700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Natu - Attract - TM31
  (177, 17700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Natu - Rain Dance - TM33
  (177, 17700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Natu - Sunny Day - TM34
  (177, 17700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Natu - Facade - TM39
  (177, 17700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Natu - Swift - TM40
  (177, 17700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Natu - Imprison - TM44
  (177, 17700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Natu - U-turn - TM56
  (177, 17700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Natu - Power Swap - TM60
  (177, 17700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 30),
  -- Natu - Guard Swap - TM61
  (177, 17700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 31),
  -- Natu - Trick Room - TM70
  (177, 17700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Natu - Magic Room - TM72
  (177, 17700, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 33),
  -- Natu - Round - TM76
  (177, 17700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Natu - Air Slash - TM95
  (177, 17700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Natu - Psychic - TR11
  (177, 17700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Natu - Substitute - TR20
  (177, 17700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Natu - Psyshock - TR25
  (177, 17700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 38),
  -- Natu - Endure - TR26
  (177, 17700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Natu - Sleep Talk - TR27
  (177, 17700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Natu - Baton Pass - TR29
  (177, 17700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 41),
  -- Natu - Shadow Ball - TR33
  (177, 17700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Natu - Future Sight - TR34
  (177, 17700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 43),
  -- Natu - Heat Wave - TR36
  (177, 17700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Natu - Trick - TR38
  (177, 17700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Natu - Skill Swap - TR40
  (177, 17700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Natu - Cosmic Power - TR44
  (177, 17700, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 47),
  -- Natu - Calm Mind - TR49
  (177, 17700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Natu - Zen Headbutt - TR69
  (177, 17700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 49),
  -- Natu - Grass Knot - TR77
  (177, 17700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 50),
  -- Natu - Stored Power - TR82
  (177, 17700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 51),
  -- Natu - Ally Switch - TR83
  (177, 17700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 52),
  -- Natu - Dazzling Gleam - TR92
  (177, 17700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 53),
  -- Natu - Drill Peck - Egg
  (177, 17700, 65, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Natu - Quick Attack - Egg
  (177, 17700, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Natu - Feather Dance - Egg
  (177, 17700, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Natu - Roost - Egg
  (177, 17700, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Natu - Sucker Punch - Egg
  (177, 17700, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Natu - Simple Beam - Egg
  (177, 17700, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Xatu - Leer - Level 1
  (178, 17800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Teleport - Level 1
  (178, 17800, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Xatu - Tailwind - Level 1
  (178, 17800, 366, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Xatu - Air Slash - Level 1
  (178, 17800, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Xatu - Stored Power - Level 1
  (178, 17800, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Xatu - Confuse Ray - Level 15
  (178, 17800, 109, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Xatu - Night Shade - Level 20
  (178, 17800, 101, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Xatu - Psycho Shift - Level 28
  (178, 17800, 375, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Xatu - Power Swap - Level 34
  (178, 17800, 384, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Xatu - Guard Swap - Level 34
  (178, 17800, 385, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Xatu - Psychic - Level 41
  (178, 17800, 94, 18, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Xatu - Wish - Level 48
  (178, 17800, 273, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Xatu - Future Sight - Level 55
  (178, 17800, 248, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Xatu - Air Slash - Evolution
  (178, 17800, 403, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Xatu - Fly - TM06
  (178, 17800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Xatu - Hyper Beam - TM08
  (178, 17800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Xatu - Giga Impact - TM09
  (178, 17800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Xatu - Solar Beam - TM11
  (178, 17800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Xatu - Thunder Wave - TM14
  (178, 17800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Xatu - Light Screen - TM17
  (178, 17800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Xatu - Reflect - TM18
  (178, 17800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Xatu - Rest - TM21
  (178, 17800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Xatu - Thief - TM23
  (178, 17800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Xatu - Snore - TM24
  (178, 17800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Xatu - Protect - TM25
  (178, 17800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Xatu - Giga Drain - TM28
  (178, 17800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Xatu - Steel Wing - TM30
  (178, 17800, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Xatu - Attract - TM31
  (178, 17800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Xatu - Rain Dance - TM33
  (178, 17800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Xatu - Sunny Day - TM34
  (178, 17800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Xatu - Facade - TM39
  (178, 17800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Xatu - Swift - TM40
  (178, 17800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Xatu - Imprison - TM44
  (178, 17800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Xatu - U-turn - TM56
  (178, 17800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Xatu - Power Swap - TM60
  (178, 17800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Xatu - Guard Swap - TM61
  (178, 17800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 37),
  -- Xatu - Trick Room - TM70
  (178, 17800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Xatu - Magic Room - TM72
  (178, 17800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 39),
  -- Xatu - Round - TM76
  (178, 17800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Xatu - Air Slash - TM95
  (178, 17800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Xatu - Psychic - TR11
  (178, 17800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Xatu - Substitute - TR20
  (178, 17800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Xatu - Psyshock - TR25
  (178, 17800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Xatu - Endure - TR26
  (178, 17800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Xatu - Sleep Talk - TR27
  (178, 17800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Xatu - Baton Pass - TR29
  (178, 17800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 47),
  -- Xatu - Shadow Ball - TR33
  (178, 17800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Xatu - Future Sight - TR34
  (178, 17800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Xatu - Heat Wave - TR36
  (178, 17800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Xatu - Trick - TR38
  (178, 17800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 51),
  -- Xatu - Skill Swap - TR40
  (178, 17800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 52),
  -- Xatu - Cosmic Power - TR44
  (178, 17800, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 53),
  -- Xatu - Calm Mind - TR49
  (178, 17800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Xatu - Zen Headbutt - TR69
  (178, 17800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 55),
  -- Xatu - Grass Knot - TR77
  (178, 17800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Xatu - Foul Play - TR81
  (178, 17800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 57),
  -- Xatu - Stored Power - TR82
  (178, 17800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 58),
  -- Xatu - Ally Switch - TR83
  (178, 17800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Xatu - Dazzling Gleam - TR92
  (178, 17800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 60),
  -- Bellossom - Acid - Level 1
  (182, 18200, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Absorb - Level 1
  (182, 18200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Mega Drain - Level 1
  (182, 18200, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Growth - Level 1
  (182, 18200, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Poison Powder - Level 1
  (182, 18200, 77, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bellossom - Sleep Powder - Level 1
  (182, 18200, 79, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bellossom - Petal Dance - Level 1
  (182, 18200, 80, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Bellossom - Toxic - Level 1
  (182, 18200, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Bellossom - Giga Drain - Level 1
  (182, 18200, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Bellossom - Moonlight - Level 1
  (182, 18200, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Bellossom - Quiver Dance - Level 1
  (182, 18200, 483, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Bellossom - Petal Blizzard - Level 1
  (182, 18200, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Bellossom - Grassy Terrain - Level 1
  (182, 18200, 580, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Bellossom - Moonblast - Level 1
  (182, 18200, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Bellossom - Petal Blizzard - Evolution
  (182, 18200, 572, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Bellossom - Hyper Beam - TM08
  (182, 18200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Bellossom - Giga Impact - TM09
  (182, 18200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Bellossom - Magical Leaf - TM10
  (182, 18200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 20),
  -- Bellossom - Solar Beam - TM11
  (182, 18200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Bellossom - Safeguard - TM19
  (182, 18200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Bellossom - Rest - TM21
  (182, 18200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Bellossom - Snore - TM24
  (182, 18200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Bellossom - Protect - TM25
  (182, 18200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Bellossom - Giga Drain - TM28
  (182, 18200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Bellossom - Charm - TM29
  (182, 18200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Bellossom - Attract - TM31
  (182, 18200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Bellossom - Sunny Day - TM34
  (182, 18200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Bellossom - Facade - TM39
  (182, 18200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Bellossom - Helping Hand - TM41
  (182, 18200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Bellossom - Bullet Seed - TM50
  (182, 18200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Bellossom - Fling - TM59
  (182, 18200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Bellossom - Drain Punch - TM63
  (182, 18200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 34),
  -- Bellossom - Venoshock - TM74
  (182, 18200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 35),
  -- Bellossom - Round - TM76
  (182, 18200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Bellossom - Grassy Terrain - TM88
  (182, 18200, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 37),
  -- Bellossom - Swords Dance - TR00
  (182, 18200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Bellossom - Substitute - TR20
  (182, 18200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Bellossom - Sludge Bomb - TR22
  (182, 18200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Bellossom - Endure - TR26
  (182, 18200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Bellossom - Sleep Talk - TR27
  (182, 18200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Bellossom - Baton Pass - TR29
  (182, 18200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 43),
  -- Bellossom - Uproar - TR35
  (182, 18200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Bellossom - Leaf Blade - TR50
  (182, 18200, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 45),
  -- Bellossom - Seed Bomb - TR59
  (182, 18200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Bellossom - Energy Ball - TR65
  (182, 18200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Bellossom - Leaf Storm - TR71
  (182, 18200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 48),
  -- Bellossom - Grass Knot - TR77
  (182, 18200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 49),
  -- Bellossom - Play Rough - TR90
  (182, 18200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 50),
  -- Bellossom - Dazzling Gleam - TR92
  (182, 18200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 51),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Tail Whip - Level 1
  (183, 18300, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marill - Water Gun - Level 1
  (183, 18300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marill - Defense Curl - Level 1
  (183, 18300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 1
  (183, 18300, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marill - Helping Hand - Level 1
  (183, 18300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marill - Bubble Beam - Level 6
  (183, 18300, 61, 18, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Marill - Charm - Level 9
  (183, 18300, 204, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Marill - Slam - Level 12
  (183, 18300, 21, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Marill - Bounce - Level 15
  (183, 18300, 340, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Marill - Aqua Tail - Level 19
  (183, 18300, 401, 18, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Marill - Play Rough - Level 21
  (183, 18300, 583, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Marill - Aqua Ring - Level 24
  (183, 18300, 392, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Marill - Rain Dance - Level 27
  (183, 18300, 240, 18, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Marill - Hydro Pump - Level 30
  (183, 18300, 56, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Marill - Double-Edge - Level 33
  (183, 18300, 38, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Marill - Superpower - Level 36
  (183, 18300, 276, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Marill - Mega Punch - TM00
  (183, 18300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Marill - Mega Kick - TM01
  (183, 18300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Marill - Ice Punch - TM04
  (183, 18300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Marill - Dig - TM15
  (183, 18300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Marill - Light Screen - TM17
  (183, 18300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Marill - Rest - TM21
  (183, 18300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Marill - Snore - TM24
  (183, 18300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Marill - Protect - TM25
  (183, 18300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Marill - Icy Wind - TM27
  (183, 18300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Marill - Charm - TM29
  (183, 18300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Marill - Attract - TM31
  (183, 18300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Marill - Rain Dance - TM33
  (183, 18300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Marill - Hail - TM35
  (183, 18300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Marill - Whirlpool - TM36
  (183, 18300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Marill - Facade - TM39
  (183, 18300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Marill - Swift - TM40
  (183, 18300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Marill - Helping Hand - TM41
  (183, 18300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Marill - Brick Break - TM43
  (183, 18300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Marill - Dive - TM45
  (183, 18300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Marill - Fake Tears - TM47
  (183, 18300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 37),
  -- Marill - Bounce - TM52
  (183, 18300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 38),
  -- Marill - Mud Shot - TM53
  (183, 18300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Marill - Fling - TM59
  (183, 18300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Marill - Round - TM76
  (183, 18300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Marill - Draining Kiss - TM87
  (183, 18300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 42),
  -- Marill - Misty Terrain - TM89
  (183, 18300, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 43),
  -- Marill - Brutal Swing - TM97
  (183, 18300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Marill - Body Slam - TR01
  (183, 18300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Marill - Hydro Pump - TR03
  (183, 18300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Marill - Surf - TR04
  (183, 18300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Marill - Ice Beam - TR05
  (183, 18300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Marill - Blizzard - TR06
  (183, 18300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Marill - Waterfall - TR16
  (183, 18300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 50),
  -- Marill - Amnesia - TR17
  (183, 18300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 51),
  -- Marill - Substitute - TR20
  (183, 18300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Marill - Endure - TR26
  (183, 18300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Marill - Sleep Talk - TR27
  (183, 18300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Marill - Encore - TR30
  (183, 18300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Marill - Iron Tail - TR31
  (183, 18300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Marill - Future Sight - TR34
  (183, 18300, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 57),
  -- Marill - Uproar - TR35
  (183, 18300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Marill - Superpower - TR39
  (183, 18300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Marill - Hyper Voice - TR42
  (183, 18300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Marill - Muddy Water - TR45
  (183, 18300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 61),
  -- Marill - Grass Knot - TR77
  (183, 18300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 62),
  -- Marill - Scald - TR84
  (183, 18300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 63),
  -- Marill - Work Up - TR85
  (183, 18300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Marill - Play Rough - TR90
  (183, 18300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 65),
  -- Marill - Sing - Egg
  (183, 18300, 47, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Marill - Supersonic - Egg
  (183, 18300, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Marill - Belly Drum - Egg
  (183, 18300, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Marill - Perish Song - Egg
  (183, 18300, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Marill - Present - Egg
  (183, 18300, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Marill - Tickle - Egg
  (183, 18300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Marill - Copycat - Egg
  (183, 18300, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Marill - Aqua Jet - Egg
  (183, 18300, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Marill - Soak - Egg
  (183, 18300, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Rollout - Level 1
  (184, 18400, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Azumarill - Helping Hand - Level 1
  (184, 18400, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Azumarill - Bubble Beam - Level 6
  (184, 18400, 61, 18, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Azumarill - Charm - Level 9
  (184, 18400, 204, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Azumarill - Slam - Level 12
  (184, 18400, 21, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Azumarill - Bounce - Level 15
  (184, 18400, 340, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Azumarill - Aqua Tail - Level 21
  (184, 18400, 401, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Azumarill - Play Rough - Level 25
  (184, 18400, 583, 18, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Azumarill - Aqua Ring - Level 30
  (184, 18400, 392, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Azumarill - Rain Dance - Level 35
  (184, 18400, 240, 18, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Azumarill - Hydro Pump - Level 40
  (184, 18400, 56, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Azumarill - Double-Edge - Level 45
  (184, 18400, 38, 18, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Azumarill - Superpower - Level 50
  (184, 18400, 276, 18, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Azumarill - Mega Punch - TM00
  (184, 18400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Azumarill - Mega Kick - TM01
  (184, 18400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Azumarill - Ice Punch - TM04
  (184, 18400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Azumarill - Hyper Beam - TM08
  (184, 18400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Azumarill - Giga Impact - TM09
  (184, 18400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Azumarill - Dig - TM15
  (184, 18400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Azumarill - Light Screen - TM17
  (184, 18400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Azumarill - Rest - TM21
  (184, 18400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Azumarill - Snore - TM24
  (184, 18400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Azumarill - Protect - TM25
  (184, 18400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Azumarill - Icy Wind - TM27
  (184, 18400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Azumarill - Charm - TM29
  (184, 18400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 29),
  -- Azumarill - Attract - TM31
  (184, 18400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Azumarill - Rain Dance - TM33
  (184, 18400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Azumarill - Hail - TM35
  (184, 18400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Azumarill - Whirlpool - TM36
  (184, 18400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Azumarill - Facade - TM39
  (184, 18400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Azumarill - Swift - TM40
  (184, 18400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Azumarill - Helping Hand - TM41
  (184, 18400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Azumarill - Brick Break - TM43
  (184, 18400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Azumarill - Dive - TM45
  (184, 18400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 38),
  -- Azumarill - Fake Tears - TM47
  (184, 18400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Azumarill - Bounce - TM52
  (184, 18400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 40),
  -- Azumarill - Mud Shot - TM53
  (184, 18400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 41),
  -- Azumarill - Fling - TM59
  (184, 18400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Azumarill - Round - TM76
  (184, 18400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Azumarill - Bulldoze - TM81
  (184, 18400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Azumarill - Draining Kiss - TM87
  (184, 18400, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Azumarill - Misty Terrain - TM89
  (184, 18400, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Azumarill - Brutal Swing - TM97
  (184, 18400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 47),
  -- Azumarill - Body Slam - TR01
  (184, 18400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Azumarill - Hydro Pump - TR03
  (184, 18400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 49),
  -- Azumarill - Surf - TR04
  (184, 18400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Azumarill - Ice Beam - TR05
  (184, 18400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Azumarill - Blizzard - TR06
  (184, 18400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Azumarill - Waterfall - TR16
  (184, 18400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 53),
  -- Azumarill - Amnesia - TR17
  (184, 18400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 54),
  -- Azumarill - Substitute - TR20
  (184, 18400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Azumarill - Endure - TR26
  (184, 18400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Azumarill - Sleep Talk - TR27
  (184, 18400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Azumarill - Encore - TR30
  (184, 18400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 58),
  -- Azumarill - Iron Tail - TR31
  (184, 18400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Azumarill - Future Sight - TR34
  (184, 18400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 60),
  -- Azumarill - Uproar - TR35
  (184, 18400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 61),
  -- Azumarill - Superpower - TR39
  (184, 18400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Azumarill - Hyper Voice - TR42
  (184, 18400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 63),
  -- Azumarill - Muddy Water - TR45
  (184, 18400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 64),
  -- Azumarill - Focus Blast - TR64
  (184, 18400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Azumarill - Grass Knot - TR77
  (184, 18400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 66),
  -- Azumarill - Scald - TR84
  (184, 18400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 67),
  -- Azumarill - Work Up - TR85
  (184, 18400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 68),
  -- Azumarill - Play Rough - TR90
  (184, 18400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 69),
  -- Azumarill - Liquidation - TR98
  (184, 18400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 70),
  -- Sudowoodo - Slam - Level 1
  (185, 18500, 21, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Flail - Level 1
  (185, 18500, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sudowoodo - Fake Tears - Level 1
  (185, 18500, 313, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sudowoodo - Hammer Arm - Level 1
  (185, 18500, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sudowoodo - Copycat - Level 1
  (185, 18500, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sudowoodo - Stone Edge - Level 1
  (185, 18500, 444, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sudowoodo - Wood Hammer - Level 1
  (185, 18500, 452, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Sudowoodo - Block - Level 12
  (185, 18500, 335, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Sudowoodo - Mimic - Level 16
  (185, 18500, 102, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Sudowoodo - Rock Tomb - Level 20
  (185, 18500, 317, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Sudowoodo - Tearful Look - Level 24
  (185, 18500, 715, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Sudowoodo - Sucker Punch - Level 28
  (185, 18500, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sudowoodo - Rock Slide - Level 32
  (185, 18500, 157, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Sudowoodo - Low Kick - Level 36
  (185, 18500, 67, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Sudowoodo - Counter - Level 40
  (185, 18500, 68, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Sudowoodo - Double-Edge - Level 44
  (185, 18500, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Sudowoodo - Head Smash - Level 48
  (185, 18500, 457, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Sudowoodo - Slam - Evolution
  (185, 18500, 21, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Sudowoodo - Mega Punch - TM00
  (185, 18500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Sudowoodo - Mega Kick - TM01
  (185, 18500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Sudowoodo - Fire Punch - TM03
  (185, 18500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Sudowoodo - Ice Punch - TM04
  (185, 18500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 23),
  -- Sudowoodo - Thunder Punch - TM05
  (185, 18500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Sudowoodo - Dig - TM15
  (185, 18500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Sudowoodo - Self-Destruct - TM20
  (185, 18500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Sudowoodo - Rest - TM21
  (185, 18500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Sudowoodo - Rock Slide - TM22
  (185, 18500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Sudowoodo - Thief - TM23
  (185, 18500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Sudowoodo - Snore - TM24
  (185, 18500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Sudowoodo - Protect - TM25
  (185, 18500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Sudowoodo - Attract - TM31
  (185, 18500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Sudowoodo - Sandstorm - TM32
  (185, 18500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Sudowoodo - Sunny Day - TM34
  (185, 18500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Sudowoodo - Facade - TM39
  (185, 18500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Sudowoodo - Helping Hand - TM41
  (185, 18500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Sudowoodo - Brick Break - TM43
  (185, 18500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Sudowoodo - Fake Tears - TM47
  (185, 18500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 38),
  -- Sudowoodo - Rock Tomb - TM48
  (185, 18500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Sudowoodo - Sand Tomb - TM49
  (185, 18500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 40),
  -- Sudowoodo - Rock Blast - TM54
  (185, 18500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 41),
  -- Sudowoodo - Fling - TM59
  (185, 18500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Sudowoodo - Round - TM76
  (185, 18500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Sudowoodo - Bulldoze - TM81
  (185, 18500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Sudowoodo - Stomping Tantrum - TM98
  (185, 18500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 45),
  -- Sudowoodo - Body Slam - TR01
  (185, 18500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Sudowoodo - Low Kick - TR07
  (185, 18500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 47),
  -- Sudowoodo - Earthquake - TR10
  (185, 18500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Sudowoodo - Substitute - TR20
  (185, 18500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Sudowoodo - Endure - TR26
  (185, 18500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Sudowoodo - Sleep Talk - TR27
  (185, 18500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Sudowoodo - Uproar - TR35
  (185, 18500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Sudowoodo - Taunt - TR37
  (185, 18500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Sudowoodo - Iron Defense - TR46
  (185, 18500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Sudowoodo - Calm Mind - TR49
  (185, 18500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Sudowoodo - Earth Power - TR67
  (185, 18500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 56),
  -- Sudowoodo - Stone Edge - TR75
  (185, 18500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 57),
  -- Sudowoodo - Stealth Rock - TR76
  (185, 18500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 58),
  -- Sudowoodo - Foul Play - TR81
  (185, 18500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 59),
  -- Sudowoodo - Body Press - TR99
  (185, 18500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 60),
  -- Sudowoodo - Headbutt - Egg
  (185, 18500, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sudowoodo - Harden - Egg
  (185, 18500, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sudowoodo - Defense Curl - Egg
  (185, 18500, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sudowoodo - Curse - Egg
  (185, 18500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sudowoodo - Rollout - Egg
  (185, 18500, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sudowoodo - Rock Polish - Egg
  (185, 18500, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Politoed - Pound - Level 1
  (186, 18600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Body Slam - Level 1
  (186, 18600, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Double-Edge - Level 1
  (186, 18600, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Water Gun - Level 1
  (186, 18600, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Hydro Pump - Level 1
  (186, 18600, 56, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Politoed - Bubble Beam - Level 1
  (186, 18600, 61, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Politoed - Belly Drum - Level 1
  (186, 18600, 187, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Politoed - Swagger - Level 1
  (186, 18600, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Politoed - Rain Dance - Level 1
  (186, 18600, 240, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Politoed - Hyper Voice - Level 1
  (186, 18600, 304, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Politoed - Bounce - Level 1
  (186, 18600, 340, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Politoed - Mud Shot - Level 1
  (186, 18600, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Politoed - Earth Power - Level 1
  (186, 18600, 414, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Politoed - Bounce - Evolution
  (186, 18600, 340, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Politoed - Mega Punch - TM00
  (186, 18600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Politoed - Mega Kick - TM01
  (186, 18600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Politoed - Ice Punch - TM04
  (186, 18600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Politoed - Hyper Beam - TM08
  (186, 18600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Politoed - Giga Impact - TM09
  (186, 18600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Politoed - Dig - TM15
  (186, 18600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Politoed - Screech - TM16
  (186, 18600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Politoed - Rest - TM21
  (186, 18600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Politoed - Thief - TM23
  (186, 18600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Politoed - Snore - TM24
  (186, 18600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Politoed - Protect - TM25
  (186, 18600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Politoed - Icy Wind - TM27
  (186, 18600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Politoed - Attract - TM31
  (186, 18600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Politoed - Rain Dance - TM33
  (186, 18600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Politoed - Hail - TM35
  (186, 18600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Politoed - Whirlpool - TM36
  (186, 18600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Politoed - Facade - TM39
  (186, 18600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Politoed - Helping Hand - TM41
  (186, 18600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Politoed - Brick Break - TM43
  (186, 18600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Politoed - Dive - TM45
  (186, 18600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Politoed - Weather Ball - TM46
  (186, 18600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 37),
  -- Politoed - Bounce - TM52
  (186, 18600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 38),
  -- Politoed - Mud Shot - TM53
  (186, 18600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Politoed - Payback - TM57
  (186, 18600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Politoed - Fling - TM59
  (186, 18600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Politoed - Round - TM76
  (186, 18600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Politoed - Bulldoze - TM81
  (186, 18600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Politoed - Body Slam - TR01
  (186, 18600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Politoed - Hydro Pump - TR03
  (186, 18600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Politoed - Surf - TR04
  (186, 18600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Politoed - Ice Beam - TR05
  (186, 18600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Politoed - Blizzard - TR06
  (186, 18600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Politoed - Earthquake - TR10
  (186, 18600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Politoed - Psychic - TR11
  (186, 18600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 50),
  -- Politoed - Metronome - TR14
  (186, 18600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 51),
  -- Politoed - Waterfall - TR16
  (186, 18600, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 52),
  -- Politoed - Substitute - TR20
  (186, 18600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Politoed - Endure - TR26
  (186, 18600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Politoed - Sleep Talk - TR27
  (186, 18600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Politoed - Encore - TR30
  (186, 18600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Politoed - Uproar - TR35
  (186, 18600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Politoed - Hyper Voice - TR42
  (186, 18600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 58),
  -- Politoed - Muddy Water - TR45
  (186, 18600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 59),
  -- Politoed - Focus Blast - TR64
  (186, 18600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 60),
  -- Politoed - Earth Power - TR67
  (186, 18600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 61),
  -- Politoed - Scald - TR84
  (186, 18600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Politoed - Liquidation - TR98
  (186, 18600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 63),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Rain Dance - Level 4
  (194, 19400, 240, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 8
  (194, 19400, 341, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wooper - Mist - Level 12
  (194, 19400, 54, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wooper - Haze - Level 12
  (194, 19400, 114, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wooper - Slam - Level 16
  (194, 19400, 21, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 21
  (194, 19400, 281, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Wooper - Aqua Tail - Level 24
  (194, 19400, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Wooper - Muddy Water - Level 28
  (194, 19400, 330, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Wooper - Amnesia - Level 32
  (194, 19400, 133, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Wooper - Toxic - Level 36
  (194, 19400, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wooper - Earthquake - Level 40
  (194, 19400, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Wooper - Ice Punch - TM04
  (194, 19400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 14),
  -- Wooper - Dig - TM15
  (194, 19400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Wooper - Safeguard - TM19
  (194, 19400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Wooper - Rest - TM21
  (194, 19400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Wooper - Snore - TM24
  (194, 19400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Wooper - Protect - TM25
  (194, 19400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Wooper - Icy Wind - TM27
  (194, 19400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Wooper - Attract - TM31
  (194, 19400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Wooper - Sandstorm - TM32
  (194, 19400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Wooper - Rain Dance - TM33
  (194, 19400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Wooper - Hail - TM35
  (194, 19400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Wooper - Whirlpool - TM36
  (194, 19400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Wooper - Facade - TM39
  (194, 19400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Wooper - Dive - TM45
  (194, 19400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Wooper - Mud Shot - TM53
  (194, 19400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Wooper - Guard Swap - TM61
  (194, 19400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 29),
  -- Wooper - Round - TM76
  (194, 19400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Wooper - Bulldoze - TM81
  (194, 19400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Wooper - Eerie Impulse - TM93
  (194, 19400, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Wooper - Stomping Tantrum - TM98
  (194, 19400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Wooper - Body Slam - TR01
  (194, 19400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Wooper - Hydro Pump - TR03
  (194, 19400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 35),
  -- Wooper - Surf - TR04
  (194, 19400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 36),
  -- Wooper - Ice Beam - TR05
  (194, 19400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 37),
  -- Wooper - Blizzard - TR06
  (194, 19400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 38),
  -- Wooper - Earthquake - TR10
  (194, 19400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Wooper - Waterfall - TR16
  (194, 19400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 40),
  -- Wooper - Amnesia - TR17
  (194, 19400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 41),
  -- Wooper - Substitute - TR20
  (194, 19400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Wooper - Sludge Bomb - TR22
  (194, 19400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Wooper - Endure - TR26
  (194, 19400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Wooper - Sleep Talk - TR27
  (194, 19400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Wooper - Encore - TR30
  (194, 19400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 46),
  -- Wooper - Iron Tail - TR31
  (194, 19400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Wooper - Muddy Water - TR45
  (194, 19400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 48),
  -- Wooper - Earth Power - TR67
  (194, 19400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 49),
  -- Wooper - Sludge Wave - TR78
  (194, 19400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 50),
  -- Wooper - Scald - TR84
  (194, 19400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Wooper - Double Kick - Egg
  (194, 19400, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wooper - Counter - Egg
  (194, 19400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wooper - Recover - Egg
  (194, 19400, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Curse - Egg
  (194, 19400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper - Ancient Power - Egg
  (194, 19400, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wooper - Stockpile - Egg
  (194, 19400, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wooper - Spit Up - Egg
  (194, 19400, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wooper - Swallow - Egg
  (194, 19400, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wooper - Acid Spray - Egg
  (194, 19400, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wooper - After You - Egg
  (194, 19400, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wooper - Power-Up Punch - Egg
  (194, 19400, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Rain Dance - Level 1
  (195, 19500, 240, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Shot - Level 1
  (195, 19500, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Quagsire - Mist - Level 12
  (195, 19500, 54, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Quagsire - Haze - Level 12
  (195, 19500, 114, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Quagsire - Slam - Level 16
  (195, 19500, 21, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Quagsire - Yawn - Level 23
  (195, 19500, 281, 18, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Quagsire - Aqua Tail - Level 28
  (195, 19500, 401, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Quagsire - Muddy Water - Level 34
  (195, 19500, 330, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Quagsire - Amnesia - Level 40
  (195, 19500, 133, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Quagsire - Toxic - Level 46
  (195, 19500, 92, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quagsire - Earthquake - Level 52
  (195, 19500, 89, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Quagsire - Mega Punch - TM00
  (195, 19500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Quagsire - Mega Kick - TM01
  (195, 19500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Quagsire - Ice Punch - TM04
  (195, 19500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 16),
  -- Quagsire - Hyper Beam - TM08
  (195, 19500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Quagsire - Giga Impact - TM09
  (195, 19500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Quagsire - Dig - TM15
  (195, 19500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Quagsire - Safeguard - TM19
  (195, 19500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Quagsire - Rest - TM21
  (195, 19500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Quagsire - Rock Slide - TM22
  (195, 19500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Quagsire - Thief - TM23
  (195, 19500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Quagsire - Snore - TM24
  (195, 19500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Quagsire - Protect - TM25
  (195, 19500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Quagsire - Icy Wind - TM27
  (195, 19500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Quagsire - Attract - TM31
  (195, 19500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Quagsire - Sandstorm - TM32
  (195, 19500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Quagsire - Rain Dance - TM33
  (195, 19500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Quagsire - Hail - TM35
  (195, 19500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Quagsire - Whirlpool - TM36
  (195, 19500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Quagsire - Facade - TM39
  (195, 19500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Quagsire - Brick Break - TM43
  (195, 19500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Quagsire - Dive - TM45
  (195, 19500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 34),
  -- Quagsire - Rock Tomb - TM48
  (195, 19500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Quagsire - Mud Shot - TM53
  (195, 19500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Quagsire - Fling - TM59
  (195, 19500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Quagsire - Guard Swap - TM61
  (195, 19500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 38),
  -- Quagsire - Round - TM76
  (195, 19500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Quagsire - Bulldoze - TM81
  (195, 19500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Quagsire - Eerie Impulse - TM93
  (195, 19500, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 41),
  -- Quagsire - Stomping Tantrum - TM98
  (195, 19500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Quagsire - Body Slam - TR01
  (195, 19500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Quagsire - Hydro Pump - TR03
  (195, 19500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Quagsire - Surf - TR04
  (195, 19500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Quagsire - Ice Beam - TR05
  (195, 19500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Quagsire - Blizzard - TR06
  (195, 19500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Quagsire - Earthquake - TR10
  (195, 19500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Quagsire - Waterfall - TR16
  (195, 19500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 49),
  -- Quagsire - Amnesia - TR17
  (195, 19500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 50),
  -- Quagsire - Substitute - TR20
  (195, 19500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Quagsire - Sludge Bomb - TR22
  (195, 19500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Quagsire - Endure - TR26
  (195, 19500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Quagsire - Sleep Talk - TR27
  (195, 19500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Quagsire - Encore - TR30
  (195, 19500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Quagsire - Iron Tail - TR31
  (195, 19500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Quagsire - Muddy Water - TR45
  (195, 19500, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 57),
  -- Quagsire - Focus Blast - TR64
  (195, 19500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Quagsire - Earth Power - TR67
  (195, 19500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 59),
  -- Quagsire - Stone Edge - TR75
  (195, 19500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Quagsire - Sludge Wave - TR78
  (195, 19500, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 61),
  -- Quagsire - Scald - TR84
  (195, 19500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Quagsire - High Horsepower - TR94
  (195, 19500, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 63),
  -- Quagsire - Liquidation - TR98
  (195, 19500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 64),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Take Down - Level 1
  (196, 19600, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Double-Edge - Level 1
  (196, 19600, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Espeon - Bite - Level 1
  (196, 19600, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Espeon - Growl - Level 1
  (196, 19600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Espeon - Confusion - Level 1
  (196, 19600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Espeon - Charm - Level 1
  (196, 19600, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Espeon - Baton Pass - Level 1
  (196, 19600, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Espeon - Covet - Level 1
  (196, 19600, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Espeon - Copycat - Level 1
  (196, 19600, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Espeon - Sand Attack - Level 5
  (196, 19600, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Espeon - Quick Attack - Level 10
  (196, 19600, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Espeon - Baby-Doll Eyes - Level 15
  (196, 19600, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Espeon - Swift - Level 20
  (196, 19600, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Espeon - Psybeam - Level 25
  (196, 19600, 60, 18, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Espeon - Morning Sun - Level 30
  (196, 19600, 234, 18, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Espeon - Power Swap - Level 35
  (196, 19600, 384, 18, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Espeon - Psychic - Level 40
  (196, 19600, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Espeon - Psych Up - Level 45
  (196, 19600, 244, 18, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Espeon - Future Sight - Level 50
  (196, 19600, 248, 18, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Espeon - Last Resort - Level 55
  (196, 19600, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Espeon - Pay Day - TM02
  (196, 19600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Espeon - Hyper Beam - TM08
  (196, 19600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Espeon - Giga Impact - TM09
  (196, 19600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Espeon - Dig - TM15
  (196, 19600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Espeon - Light Screen - TM17
  (196, 19600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 29),
  -- Espeon - Reflect - TM18
  (196, 19600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 30),
  -- Espeon - Rest - TM21
  (196, 19600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Espeon - Snore - TM24
  (196, 19600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Espeon - Protect - TM25
  (196, 19600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Espeon - Charm - TM29
  (196, 19600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 34),
  -- Espeon - Attract - TM31
  (196, 19600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Espeon - Rain Dance - TM33
  (196, 19600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Espeon - Sunny Day - TM34
  (196, 19600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Espeon - Facade - TM39
  (196, 19600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Espeon - Swift - TM40
  (196, 19600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Espeon - Helping Hand - TM41
  (196, 19600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 40),
  -- Espeon - Weather Ball - TM46
  (196, 19600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 41),
  -- Espeon - Fake Tears - TM47
  (196, 19600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 42),
  -- Espeon - Power Swap - TM60
  (196, 19600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 43),
  -- Espeon - Trick Room - TM70
  (196, 19600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 44),
  -- Espeon - Magic Room - TM72
  (196, 19600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 45),
  -- Espeon - Round - TM76
  (196, 19600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Espeon - Retaliate - TM79
  (196, 19600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Espeon - Body Slam - TR01
  (196, 19600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Espeon - Psychic - TR11
  (196, 19600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Espeon - Focus Energy - TR13
  (196, 19600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Espeon - Substitute - TR20
  (196, 19600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Espeon - Psyshock - TR25
  (196, 19600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Espeon - Endure - TR26
  (196, 19600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Espeon - Sleep Talk - TR27
  (196, 19600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Espeon - Baton Pass - TR29
  (196, 19600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Espeon - Iron Tail - TR31
  (196, 19600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Espeon - Shadow Ball - TR33
  (196, 19600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Espeon - Future Sight - TR34
  (196, 19600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 58),
  -- Espeon - Trick - TR38
  (196, 19600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 59),
  -- Espeon - Skill Swap - TR40
  (196, 19600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 60),
  -- Espeon - Hyper Voice - TR42
  (196, 19600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 61),
  -- Espeon - Calm Mind - TR49
  (196, 19600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Espeon - Zen Headbutt - TR69
  (196, 19600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 63),
  -- Espeon - Grass Knot - TR77
  (196, 19600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 64),
  -- Espeon - Stored Power - TR82
  (196, 19600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 65),
  -- Espeon - Ally Switch - TR83
  (196, 19600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 66),
  -- Espeon - Work Up - TR85
  (196, 19600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 67),
  -- Espeon - Dazzling Gleam - TR92
  (196, 19600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 68),
  -- Espeon - Psychic Fangs - TR97
  (196, 19600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 69),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Take Down - Level 1
  (197, 19700, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Double-Edge - Level 1
  (197, 19700, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Umbreon - Bite - Level 1
  (197, 19700, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Umbreon - Growl - Level 1
  (197, 19700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Umbreon - Swift - Level 1
  (197, 19700, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Umbreon - Charm - Level 1
  (197, 19700, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Umbreon - Baton Pass - Level 1
  (197, 19700, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Umbreon - Covet - Level 1
  (197, 19700, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Umbreon - Copycat - Level 1
  (197, 19700, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Umbreon - Snarl - Level 1
  (197, 19700, 555, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Umbreon - Sand Attack - Level 5
  (197, 19700, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Umbreon - Quick Attack - Level 10
  (197, 19700, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Umbreon - Baby-Doll Eyes - Level 15
  (197, 19700, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Umbreon - Confuse Ray - Level 20
  (197, 19700, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Umbreon - Assurance - Level 25
  (197, 19700, 372, 18, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Umbreon - Moonlight - Level 30
  (197, 19700, 236, 18, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Umbreon - Guard Swap - Level 35
  (197, 19700, 385, 18, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Umbreon - Dark Pulse - Level 40
  (197, 19700, 399, 18, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Umbreon - Screech - Level 45
  (197, 19700, 103, 18, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Umbreon - Mean Look - Level 50
  (197, 19700, 212, 18, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Umbreon - Last Resort - Level 55
  (197, 19700, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Umbreon - Snarl - Evolution
  (197, 19700, 555, 18, NULL, 7, NULL, NULL, NULL, NULL, 25),
  -- Umbreon - Pay Day - TM02
  (197, 19700, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 26),
  -- Umbreon - Hyper Beam - TM08
  (197, 19700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Umbreon - Giga Impact - TM09
  (197, 19700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Umbreon - Dig - TM15
  (197, 19700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Umbreon - Screech - TM16
  (197, 19700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 30),
  -- Umbreon - Rest - TM21
  (197, 19700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Umbreon - Thief - TM23
  (197, 19700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 32),
  -- Umbreon - Snore - TM24
  (197, 19700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 33),
  -- Umbreon - Protect - TM25
  (197, 19700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 34),
  -- Umbreon - Charm - TM29
  (197, 19700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 35),
  -- Umbreon - Attract - TM31
  (197, 19700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 36),
  -- Umbreon - Rain Dance - TM33
  (197, 19700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 37),
  -- Umbreon - Sunny Day - TM34
  (197, 19700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 38),
  -- Umbreon - Facade - TM39
  (197, 19700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Umbreon - Swift - TM40
  (197, 19700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 40),
  -- Umbreon - Helping Hand - TM41
  (197, 19700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 41),
  -- Umbreon - Weather Ball - TM46
  (197, 19700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 42),
  -- Umbreon - Fake Tears - TM47
  (197, 19700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 43),
  -- Umbreon - Payback - TM57
  (197, 19700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Umbreon - Assurance - TM58
  (197, 19700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 45),
  -- Umbreon - Guard Swap - TM61
  (197, 19700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 46),
  -- Umbreon - Wonder Room - TM71
  (197, 19700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 47),
  -- Umbreon - Round - TM76
  (197, 19700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Umbreon - Retaliate - TM79
  (197, 19700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Umbreon - Snarl - TM85
  (197, 19700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 50),
  -- Umbreon - Body Slam - TR01
  (197, 19700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Umbreon - Psychic - TR11
  (197, 19700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 52),
  -- Umbreon - Focus Energy - TR13
  (197, 19700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 53),
  -- Umbreon - Substitute - TR20
  (197, 19700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Umbreon - Endure - TR26
  (197, 19700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Umbreon - Sleep Talk - TR27
  (197, 19700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Umbreon - Baton Pass - TR29
  (197, 19700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 57),
  -- Umbreon - Iron Tail - TR31
  (197, 19700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Umbreon - Crunch - TR32
  (197, 19700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 59),
  -- Umbreon - Shadow Ball - TR33
  (197, 19700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Umbreon - Taunt - TR37
  (197, 19700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 61),
  -- Umbreon - Hyper Voice - TR42
  (197, 19700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 62),
  -- Umbreon - Dark Pulse - TR58
  (197, 19700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 63),
  -- Umbreon - Foul Play - TR81
  (197, 19700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 64),
  -- Umbreon - Stored Power - TR82
  (197, 19700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 65),
  -- Umbreon - Work Up - TR85
  (197, 19700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Umbreon - Throat Chop - TR95
  (197, 19700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Growl - Level 1
  (199, 19900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Water Gun - Level 1
  (199, 19900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Swagger - Level 1
  (199, 19900, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowking - Nasty Plot - Level 1
  (199, 19900, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slowking - Yawn - Level 9
  (199, 19900, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowking - Confusion - Level 12
  (199, 19900, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Slowking - Disable - Level 15
  (199, 19900, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Slowking - Water Pulse - Level 18
  (199, 19900, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Slowking - Headbutt - Level 21
  (199, 19900, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Slowking - Zen Headbutt - Level 24
  (199, 19900, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Slowking - Amnesia - Level 27
  (199, 19900, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Slowking - Surf - Level 30
  (199, 19900, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Slowking - Slack Off - Level 33
  (199, 19900, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Slowking - Psychic - Level 36
  (199, 19900, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Slowking - Psych Up - Level 39
  (199, 19900, 244, 18, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Slowking - Rain Dance - Level 42
  (199, 19900, 240, 18, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Slowking - Heal Pulse - Level 45
  (199, 19900, 505, 18, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Slowking - Mega Punch - TM00
  (199, 19900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Slowking - Mega Kick - TM01
  (199, 19900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Slowking - Pay Day - TM02
  (199, 19900, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 23),
  -- Slowking - Ice Punch - TM04
  (199, 19900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Slowking - Hyper Beam - TM08
  (199, 19900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Slowking - Giga Impact - TM09
  (199, 19900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Slowking - Thunder Wave - TM14
  (199, 19900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Slowking - Dig - TM15
  (199, 19900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Slowking - Light Screen - TM17
  (199, 19900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 29),
  -- Slowking - Safeguard - TM19
  (199, 19900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 30),
  -- Slowking - Rest - TM21
  (199, 19900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Slowking - Snore - TM24
  (199, 19900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Slowking - Protect - TM25
  (199, 19900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Slowking - Icy Wind - TM27
  (199, 19900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 34),
  -- Slowking - Attract - TM31
  (199, 19900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Slowking - Rain Dance - TM33
  (199, 19900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Slowking - Sunny Day - TM34
  (199, 19900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Slowking - Hail - TM35
  (199, 19900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 38),
  -- Slowking - Whirlpool - TM36
  (199, 19900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 39),
  -- Slowking - Facade - TM39
  (199, 19900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Slowking - Swift - TM40
  (199, 19900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Slowking - Brick Break - TM43
  (199, 19900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 42),
  -- Slowking - Imprison - TM44
  (199, 19900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 43),
  -- Slowking - Dive - TM45
  (199, 19900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 44),
  -- Slowking - Weather Ball - TM46
  (199, 19900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 45),
  -- Slowking - Mud Shot - TM53
  (199, 19900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 46),
  -- Slowking - Brine - TM55
  (199, 19900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 47),
  -- Slowking - Fling - TM59
  (199, 19900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Slowking - Drain Punch - TM63
  (199, 19900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 49),
  -- Slowking - Avalanche - TM64
  (199, 19900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 50),
  -- Slowking - Trick Room - TM70
  (199, 19900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 51),
  -- Slowking - Wonder Room - TM71
  (199, 19900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 52),
  -- Slowking - Round - TM76
  (199, 19900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 53),
  -- Slowking - Bulldoze - TM81
  (199, 19900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 54),
  -- Slowking - Razor Shell - TM83
  (199, 19900, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 55),
  -- Slowking - Psychic Terrain - TM91
  (199, 19900, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 56),
  -- Slowking - Body Slam - TR01
  (199, 19900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 57),
  -- Slowking - Flamethrower - TR02
  (199, 19900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 58),
  -- Slowking - Hydro Pump - TR03
  (199, 19900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 59),
  -- Slowking - Surf - TR04
  (199, 19900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 60),
  -- Slowking - Ice Beam - TR05
  (199, 19900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 61),
  -- Slowking - Blizzard - TR06
  (199, 19900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 62),
  -- Slowking - Earthquake - TR10
  (199, 19900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 63),
  -- Slowking - Psychic - TR11
  (199, 19900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 64),
  -- Slowking - Fire Blast - TR15
  (199, 19900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 65),
  -- Slowking - Amnesia - TR17
  (199, 19900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 66),
  -- Slowking - Tri Attack - TR19
  (199, 19900, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 67),
  -- Slowking - Substitute - TR20
  (199, 19900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 68),
  -- Slowking - Psyshock - TR25
  (199, 19900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 69),
  -- Slowking - Endure - TR26
  (199, 19900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 70),
  -- Slowking - Sleep Talk - TR27
  (199, 19900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 71),
  -- Slowking - Iron Tail - TR31
  (199, 19900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 72),
  -- Slowking - Shadow Ball - TR33
  (199, 19900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 73),
  -- Slowking - Future Sight - TR34
  (199, 19900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 74),
  -- Slowking - Trick - TR38
  (199, 19900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 75),
  -- Slowking - Skill Swap - TR40
  (199, 19900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 76),
  -- Slowking - Muddy Water - TR45
  (199, 19900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 77),
  -- Slowking - Iron Defense - TR46
  (199, 19900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 78),
  -- Slowking - Calm Mind - TR49
  (199, 19900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 79),
  -- Slowking - Power Gem - TR63
  (199, 19900, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 80),
  -- Slowking - Focus Blast - TR64
  (199, 19900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 81),
  -- Slowking - Nasty Plot - TR68
  (199, 19900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 82),
  -- Slowking - Zen Headbutt - TR69
  (199, 19900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 83),
  -- Slowking - Grass Knot - TR77
  (199, 19900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 84),
  -- Slowking - Foul Play - TR81
  (199, 19900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 85),
  -- Slowking - Stored Power - TR82
  (199, 19900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 86),
  -- Slowking - Scald - TR84
  (199, 19900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 87),
  -- Slowking - Liquidation - TR98
  (199, 19900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 88);

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
  -- Noctowl - Wing Attack - Egg
  (164, 16400, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noctowl - Whirlwind - Egg
  (164, 16400, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noctowl - Supersonic - Egg
  (164, 16400, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Noctowl - Night Shade - Egg
  (164, 16400, 101, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Noctowl - Feather Dance - Egg
  (164, 16400, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Noctowl - Defog - Egg
  (164, 16400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Crobat - Gust - Egg
  (169, 16900, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Crobat - Wing Attack - Egg
  (169, 16900, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Crobat - Whirlwind - Egg
  (169, 16900, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Crobat - Hypnosis - Egg
  (169, 16900, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Crobat - Quick Attack - Egg
  (169, 16900, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Crobat - Curse - Egg
  (169, 16900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Crobat - Defog - Egg
  (169, 16900, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lanturn - Mist - Egg
  (171, 17100, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lanturn - Psybeam - Egg
  (171, 17100, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lanturn - Water Pulse - Egg
  (171, 17100, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lanturn - Soak - Egg
  (171, 17100, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Togetic - Peck - Egg
  (176, 17600, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Togetic - Present - Egg
  (176, 17600, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Togetic - Morning Sun - Egg
  (176, 17600, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Togetic - Extrasensory - Egg
  (176, 17600, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Togetic - Aerial Ace - Egg
  (176, 17600, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Togetic - Psycho Shift - Egg
  (176, 17600, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Xatu - Drill Peck - Egg
  (178, 17800, 65, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Xatu - Quick Attack - Egg
  (178, 17800, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Xatu - Feather Dance - Egg
  (178, 17800, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Xatu - Roost - Egg
  (178, 17800, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Xatu - Sucker Punch - Egg
  (178, 17800, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Xatu - Simple Beam - Egg
  (178, 17800, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Bellossom - Leech Seed - Egg
  (182, 18200, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bellossom - Razor Leaf - Egg
  (182, 18200, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bellossom - Flail - Egg
  (182, 18200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bellossom - Synthesis - Egg
  (182, 18200, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bellossom - Nature Power - Egg
  (182, 18200, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bellossom - Ingrain - Egg
  (182, 18200, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Bellossom - Teeter Dance - Egg
  (182, 18200, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Bellossom - Tickle - Egg
  (182, 18200, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bellossom - After You - Egg
  (182, 18200, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bellossom - Strength Sap - Egg
  (182, 18200, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marill - Splash - Level 1
  (183, 18300, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 75),
  -- Azumarill - Splash - Level 1
  (184, 18400, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 71),
  -- Azumarill - Sing - Egg
  (184, 18400, 47, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Azumarill - Supersonic - Egg
  (184, 18400, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Azumarill - Belly Drum - Egg
  (184, 18400, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Azumarill - Perish Song - Egg
  (184, 18400, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Azumarill - Present - Egg
  (184, 18400, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Azumarill - Tickle - Egg
  (184, 18400, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Azumarill - Copycat - Egg
  (184, 18400, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Azumarill - Aqua Jet - Egg
  (184, 18400, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Azumarill - Soak - Egg
  (184, 18400, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Politoed - Mist - Egg
  (186, 18600, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Politoed - Haze - Egg
  (186, 18600, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Politoed - Splash - Egg
  (186, 18600, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Politoed - Mind Reader - Egg
  (186, 18600, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Politoed - Endeavor - Egg
  (186, 18600, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Politoed - Water Pulse - Egg
  (186, 18600, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Quagsire - Double Kick - Egg
  (195, 19500, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quagsire - Counter - Egg
  (195, 19500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Quagsire - Recover - Egg
  (195, 19500, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Quagsire - Curse - Egg
  (195, 19500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Quagsire - Ancient Power - Egg
  (195, 19500, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Quagsire - Stockpile - Egg
  (195, 19500, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Quagsire - Spit Up - Egg
  (195, 19500, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Quagsire - Swallow - Egg
  (195, 19500, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Quagsire - Acid Spray - Egg
  (195, 19500, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Quagsire - After You - Egg
  (195, 19500, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Quagsire - Power-Up Punch - Egg
  (195, 19500, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Espeon - Double Kick - Egg
  (196, 19600, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Espeon - Curse - Egg
  (196, 19600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Espeon - Flail - Egg
  (196, 19600, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Espeon - Mud-Slap - Egg
  (196, 19600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Espeon - Detect - Egg
  (196, 19600, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Espeon - Wish - Egg
  (196, 19600, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Espeon - Yawn - Egg
  (196, 19600, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Espeon - Tickle - Egg
  (196, 19600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Umbreon - Foul Play - Level 1
  (197, 19700, 492, 18, NULL, 1, 1, NULL, NULL, NULL, 68),
  -- Umbreon - Double Kick - Egg
  (197, 19700, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Umbreon - Curse - Egg
  (197, 19700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Umbreon - Flail - Egg
  (197, 19700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Umbreon - Mud-Slap - Egg
  (197, 19700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Umbreon - Detect - Egg
  (197, 19700, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Umbreon - Wish - Egg
  (197, 19700, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Umbreon - Yawn - Egg
  (197, 19700, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Umbreon - Tickle - Egg
  (197, 19700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Slowking - Stomp - Egg
  (199, 19900, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Slowking - Belly Drum - Egg
  (199, 19900, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Slowking - Block - Egg
  (199, 19900, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Slowking - Belch - Egg
  (199, 19900, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 92);
