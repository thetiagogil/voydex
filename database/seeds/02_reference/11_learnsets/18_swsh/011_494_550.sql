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
-- Sword / Shield learnsets for default forms, species 494-550.
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
  -- Victini - Confusion - Level 1
  (494, 49400, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victini - Quick Attack - Level 1
  (494, 49400, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victini - Focus Energy - Level 1
  (494, 49400, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victini - Flame Charge - Level 1
  (494, 49400, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victini - V-create - Level 1
  (494, 49400, 557, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victini - Work Up - Level 7
  (494, 49400, 526, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Victini - Incinerate - Level 14
  (494, 49400, 510, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Victini - Stored Power - Level 21
  (494, 49400, 500, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Victini - Headbutt - Level 28
  (494, 49400, 29, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Victini - Endure - Level 35
  (494, 49400, 203, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Victini - Zen Headbutt - Level 42
  (494, 49400, 428, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Victini - Inferno - Level 49
  (494, 49400, 517, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Victini - Reversal - Level 56
  (494, 49400, 179, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Victini - Searing Shot - Level 63
  (494, 49400, 545, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Victini - Double-Edge - Level 70
  (494, 49400, 38, 18, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Victini - Flare Blitz - Level 77
  (494, 49400, 394, 18, NULL, 1, 77, NULL, NULL, NULL, 16),
  -- Victini - Overheat - Level 84
  (494, 49400, 315, 18, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Victini - Final Gambit - Level 91
  (494, 49400, 515, 18, NULL, 1, 91, NULL, NULL, NULL, 18),
  -- Victini - Mega Punch - TM00
  (494, 49400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Victini - Mega Kick - TM01
  (494, 49400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Victini - Fire Punch - TM03
  (494, 49400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Victini - Thunder Punch - TM05
  (494, 49400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Victini - Hyper Beam - TM08
  (494, 49400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Victini - Giga Impact - TM09
  (494, 49400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Victini - Solar Beam - TM11
  (494, 49400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 25),
  -- Victini - Fire Spin - TM13
  (494, 49400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 26),
  -- Victini - Thunder Wave - TM14
  (494, 49400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Victini - Light Screen - TM17
  (494, 49400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 28),
  -- Victini - Safeguard - TM19
  (494, 49400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 29),
  -- Victini - Rest - TM21
  (494, 49400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Victini - Snore - TM24
  (494, 49400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Victini - Protect - TM25
  (494, 49400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Victini - Sunny Day - TM34
  (494, 49400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Victini - Will-O-Wisp - TM38
  (494, 49400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Victini - Facade - TM39
  (494, 49400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Victini - Swift - TM40
  (494, 49400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 36),
  -- Victini - Helping Hand - TM41
  (494, 49400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 37),
  -- Victini - Brick Break - TM43
  (494, 49400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Victini - Bounce - TM52
  (494, 49400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 39),
  -- Victini - U-turn - TM56
  (494, 49400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 40),
  -- Victini - Fling - TM59
  (494, 49400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Victini - Power Swap - TM60
  (494, 49400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 42),
  -- Victini - Guard Swap - TM61
  (494, 49400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 43),
  -- Victini - Speed Swap - TM62
  (494, 49400, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 44),
  -- Victini - Trick Room - TM70
  (494, 49400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 45),
  -- Victini - Round - TM76
  (494, 49400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Victini - Mystical Fire - TM92
  (494, 49400, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 47),
  -- Victini - Flamethrower - TR02
  (494, 49400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 48),
  -- Victini - Thunderbolt - TR08
  (494, 49400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Victini - Thunder - TR09
  (494, 49400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 50),
  -- Victini - Psychic - TR11
  (494, 49400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Victini - Focus Energy - TR13
  (494, 49400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Victini - Fire Blast - TR15
  (494, 49400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 53),
  -- Victini - Substitute - TR20
  (494, 49400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Victini - Reversal - TR21
  (494, 49400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 55),
  -- Victini - Psyshock - TR25
  (494, 49400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 56),
  -- Victini - Endure - TR26
  (494, 49400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Victini - Sleep Talk - TR27
  (494, 49400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Victini - Baton Pass - TR29
  (494, 49400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 59),
  -- Victini - Encore - TR30
  (494, 49400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 60),
  -- Victini - Shadow Ball - TR33
  (494, 49400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Victini - Future Sight - TR34
  (494, 49400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 62),
  -- Victini - Uproar - TR35
  (494, 49400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 63),
  -- Victini - Heat Wave - TR36
  (494, 49400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 64),
  -- Victini - Taunt - TR37
  (494, 49400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 65),
  -- Victini - Trick - TR38
  (494, 49400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 66),
  -- Victini - Skill Swap - TR40
  (494, 49400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 67),
  -- Victini - Blaze Kick - TR41
  (494, 49400, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 68),
  -- Victini - Overheat - TR43
  (494, 49400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 69),
  -- Victini - Flare Blitz - TR55
  (494, 49400, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 70),
  -- Victini - Focus Blast - TR64
  (494, 49400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 71),
  -- Victini - Energy Ball - TR65
  (494, 49400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 72),
  -- Victini - Zen Headbutt - TR69
  (494, 49400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 73),
  -- Victini - Grass Knot - TR77
  (494, 49400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 74),
  -- Victini - Stored Power - TR82
  (494, 49400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 75),
  -- Victini - Work Up - TR85
  (494, 49400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 76),
  -- Victini - Wild Charge - TR86
  (494, 49400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 77),
  -- Victini - Dazzling Gleam - TR92
  (494, 49400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 78),
  -- Lillipup - Tackle - Level 1
  (506, 50600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lillipup - Leer - Level 1
  (506, 50600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lillipup - Work Up - Level 4
  (506, 50600, 526, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Lillipup - Bite - Level 8
  (506, 50600, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lillipup - Retaliate - Level 12
  (506, 50600, 514, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lillipup - Baby-Doll Eyes - Level 17
  (506, 50600, 608, 18, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Lillipup - Play Rough - Level 20
  (506, 50600, 583, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lillipup - Crunch - Level 24
  (506, 50600, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lillipup - Take Down - Level 28
  (506, 50600, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lillipup - Helping Hand - Level 32
  (506, 50600, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lillipup - Reversal - Level 36
  (506, 50600, 179, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lillipup - Roar - Level 40
  (506, 50600, 46, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Lillipup - Last Resort - Level 44
  (506, 50600, 387, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Lillipup - Giga Impact - Level 48
  (506, 50600, 416, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Lillipup - Giga Impact - TM09
  (506, 50600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Lillipup - Thunder Wave - TM14
  (506, 50600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Lillipup - Dig - TM15
  (506, 50600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Lillipup - Rest - TM21
  (506, 50600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Lillipup - Snore - TM24
  (506, 50600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Lillipup - Protect - TM25
  (506, 50600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Lillipup - Charm - TM29
  (506, 50600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 21),
  -- Lillipup - Attract - TM31
  (506, 50600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Lillipup - Rain Dance - TM33
  (506, 50600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Lillipup - Sunny Day - TM34
  (506, 50600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Lillipup - Facade - TM39
  (506, 50600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Lillipup - Helping Hand - TM41
  (506, 50600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Lillipup - Rock Tomb - TM48
  (506, 50600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Lillipup - Payback - TM57
  (506, 50600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Lillipup - Thunder Fang - TM66
  (506, 50600, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 29),
  -- Lillipup - Ice Fang - TM67
  (506, 50600, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 30),
  -- Lillipup - Fire Fang - TM68
  (506, 50600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 31),
  -- Lillipup - Round - TM76
  (506, 50600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Lillipup - Retaliate - TM79
  (506, 50600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Lillipup - Snarl - TM85
  (506, 50600, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Lillipup - Thunderbolt - TR08
  (506, 50600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Lillipup - Substitute - TR20
  (506, 50600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Lillipup - Reversal - TR21
  (506, 50600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 37),
  -- Lillipup - Endure - TR26
  (506, 50600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Lillipup - Sleep Talk - TR27
  (506, 50600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Lillipup - Crunch - TR32
  (506, 50600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Lillipup - Shadow Ball - TR33
  (506, 50600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Lillipup - Uproar - TR35
  (506, 50600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 42),
  -- Lillipup - Hyper Voice - TR42
  (506, 50600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 43),
  -- Lillipup - Work Up - TR85
  (506, 50600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 44),
  -- Lillipup - Wild Charge - TR86
  (506, 50600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 45),
  -- Lillipup - Play Rough - TR90
  (506, 50600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 46),
  -- Lillipup - Psychic Fangs - TR97
  (506, 50600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 47),
  -- Lillipup - Lick - Egg
  (506, 50600, 122, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lillipup - Mud-Slap - Egg
  (506, 50600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lillipup - Yawn - Egg
  (506, 50600, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lillipup - Howl - Egg
  (506, 50600, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lillipup - Covet - Egg
  (506, 50600, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lillipup - After You - Egg
  (506, 50600, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Herdier - Tackle - Level 1
  (507, 50700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Herdier - Leer - Level 1
  (507, 50700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Herdier - Bite - Level 1
  (507, 50700, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Herdier - Work Up - Level 1
  (507, 50700, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Herdier - Retaliate - Level 12
  (507, 50700, 514, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Herdier - Baby-Doll Eyes - Level 19
  (507, 50700, 608, 18, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Herdier - Play Rough - Level 24
  (507, 50700, 583, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Herdier - Crunch - Level 30
  (507, 50700, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Herdier - Take Down - Level 36
  (507, 50700, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Herdier - Helping Hand - Level 42
  (507, 50700, 270, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Herdier - Reversal - Level 48
  (507, 50700, 179, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Herdier - Roar - Level 54
  (507, 50700, 46, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Herdier - Last Resort - Level 60
  (507, 50700, 387, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Herdier - Giga Impact - Level 66
  (507, 50700, 416, 18, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Herdier - Giga Impact - TM09
  (507, 50700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Herdier - Thunder Wave - TM14
  (507, 50700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Herdier - Dig - TM15
  (507, 50700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Herdier - Rest - TM21
  (507, 50700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Herdier - Snore - TM24
  (507, 50700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Herdier - Protect - TM25
  (507, 50700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Herdier - Charm - TM29
  (507, 50700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 21),
  -- Herdier - Attract - TM31
  (507, 50700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Herdier - Rain Dance - TM33
  (507, 50700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Herdier - Sunny Day - TM34
  (507, 50700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Herdier - Facade - TM39
  (507, 50700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Herdier - Helping Hand - TM41
  (507, 50700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Herdier - Rock Tomb - TM48
  (507, 50700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Herdier - Payback - TM57
  (507, 50700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Herdier - Thunder Fang - TM66
  (507, 50700, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 29),
  -- Herdier - Ice Fang - TM67
  (507, 50700, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 30),
  -- Herdier - Fire Fang - TM68
  (507, 50700, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 31),
  -- Herdier - Round - TM76
  (507, 50700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Herdier - Retaliate - TM79
  (507, 50700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Herdier - Snarl - TM85
  (507, 50700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Herdier - Surf - TR04
  (507, 50700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Herdier - Thunderbolt - TR08
  (507, 50700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Herdier - Substitute - TR20
  (507, 50700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Herdier - Reversal - TR21
  (507, 50700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 38),
  -- Herdier - Endure - TR26
  (507, 50700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Herdier - Sleep Talk - TR27
  (507, 50700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Herdier - Crunch - TR32
  (507, 50700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 41),
  -- Herdier - Shadow Ball - TR33
  (507, 50700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Herdier - Uproar - TR35
  (507, 50700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Herdier - Hyper Voice - TR42
  (507, 50700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 44),
  -- Herdier - Work Up - TR85
  (507, 50700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 45),
  -- Herdier - Wild Charge - TR86
  (507, 50700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 46),
  -- Herdier - Play Rough - TR90
  (507, 50700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Herdier - Psychic Fangs - TR97
  (507, 50700, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 48),
  -- Stoutland - Tackle - Level 1
  (508, 50800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stoutland - Leer - Level 1
  (508, 50800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stoutland - Bite - Level 1
  (508, 50800, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stoutland - Thunder Fang - Level 1
  (508, 50800, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stoutland - Ice Fang - Level 1
  (508, 50800, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Stoutland - Fire Fang - Level 1
  (508, 50800, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Stoutland - Work Up - Level 1
  (508, 50800, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Stoutland - Retaliate - Level 12
  (508, 50800, 514, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Stoutland - Baby-Doll Eyes - Level 19
  (508, 50800, 608, 18, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Stoutland - Play Rough - Level 24
  (508, 50800, 583, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Stoutland - Crunch - Level 30
  (508, 50800, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Stoutland - Take Down - Level 38
  (508, 50800, 36, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Stoutland - Helping Hand - Level 46
  (508, 50800, 270, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Stoutland - Reversal - Level 54
  (508, 50800, 179, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Stoutland - Roar - Level 62
  (508, 50800, 46, 18, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Stoutland - Last Resort - Level 70
  (508, 50800, 387, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Stoutland - Giga Impact - Level 78
  (508, 50800, 416, 18, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Stoutland - Hyper Beam - TM08
  (508, 50800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Stoutland - Giga Impact - TM09
  (508, 50800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Stoutland - Thunder Wave - TM14
  (508, 50800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Stoutland - Dig - TM15
  (508, 50800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Stoutland - Rest - TM21
  (508, 50800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Stoutland - Snore - TM24
  (508, 50800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Stoutland - Protect - TM25
  (508, 50800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Stoutland - Charm - TM29
  (508, 50800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Stoutland - Attract - TM31
  (508, 50800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Stoutland - Rain Dance - TM33
  (508, 50800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Stoutland - Sunny Day - TM34
  (508, 50800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Stoutland - Facade - TM39
  (508, 50800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Stoutland - Helping Hand - TM41
  (508, 50800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Stoutland - Rock Tomb - TM48
  (508, 50800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Stoutland - Payback - TM57
  (508, 50800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Stoutland - Thunder Fang - TM66
  (508, 50800, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 33),
  -- Stoutland - Ice Fang - TM67
  (508, 50800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 34),
  -- Stoutland - Fire Fang - TM68
  (508, 50800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 35),
  -- Stoutland - Round - TM76
  (508, 50800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Stoutland - Retaliate - TM79
  (508, 50800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Stoutland - Snarl - TM85
  (508, 50800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Stoutland - Stomping Tantrum - TM98
  (508, 50800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Stoutland - Surf - TR04
  (508, 50800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 40),
  -- Stoutland - Thunderbolt - TR08
  (508, 50800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Stoutland - Thunder - TR09
  (508, 50800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Stoutland - Substitute - TR20
  (508, 50800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Stoutland - Reversal - TR21
  (508, 50800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Stoutland - Endure - TR26
  (508, 50800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Stoutland - Sleep Talk - TR27
  (508, 50800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Stoutland - Crunch - TR32
  (508, 50800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 47),
  -- Stoutland - Shadow Ball - TR33
  (508, 50800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Stoutland - Uproar - TR35
  (508, 50800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Stoutland - Superpower - TR39
  (508, 50800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Stoutland - Hyper Voice - TR42
  (508, 50800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 51),
  -- Stoutland - Iron Head - TR74
  (508, 50800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Stoutland - Work Up - TR85
  (508, 50800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Stoutland - Wild Charge - TR86
  (508, 50800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 54),
  -- Stoutland - Play Rough - TR90
  (508, 50800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 55),
  -- Stoutland - Psychic Fangs - TR97
  (508, 50800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 56),
  -- Purrloin - Scratch - Level 1
  (509, 50900, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purrloin - Growl - Level 1
  (509, 50900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purrloin - Sand Attack - Level 4
  (509, 50900, 28, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Purrloin - Fake Out - Level 5
  (509, 50900, 252, 18, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Purrloin - Fury Swipes - Level 12
  (509, 50900, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Purrloin - Torment - Level 16
  (509, 50900, 259, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Purrloin - Assurance - Level 21
  (509, 50900, 372, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Purrloin - Hone Claws - Level 24
  (509, 50900, 468, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Purrloin - Sucker Punch - Level 28
  (509, 50900, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Purrloin - Nasty Plot - Level 32
  (509, 50900, 417, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Purrloin - Night Slash - Level 36
  (509, 50900, 400, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Purrloin - Play Rough - Level 40
  (509, 50900, 583, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Purrloin - Pay Day - TM02
  (509, 50900, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 13),
  -- Purrloin - Thunder Wave - TM14
  (509, 50900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Purrloin - Screech - TM16
  (509, 50900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Purrloin - Rest - TM21
  (509, 50900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Purrloin - Thief - TM23
  (509, 50900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Purrloin - Snore - TM24
  (509, 50900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Purrloin - Protect - TM25
  (509, 50900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Purrloin - Charm - TM29
  (509, 50900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Purrloin - Attract - TM31
  (509, 50900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Purrloin - Rain Dance - TM33
  (509, 50900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Purrloin - Sunny Day - TM34
  (509, 50900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Purrloin - Facade - TM39
  (509, 50900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Purrloin - Swift - TM40
  (509, 50900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Purrloin - Fake Tears - TM47
  (509, 50900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 26),
  -- Purrloin - U-turn - TM56
  (509, 50900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Purrloin - Payback - TM57
  (509, 50900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Purrloin - Assurance - TM58
  (509, 50900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Purrloin - Shadow Claw - TM65
  (509, 50900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Purrloin - Round - TM76
  (509, 50900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Purrloin - Snarl - TM85
  (509, 50900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 32),
  -- Purrloin - Substitute - TR20
  (509, 50900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Purrloin - Endure - TR26
  (509, 50900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Purrloin - Sleep Talk - TR27
  (509, 50900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Purrloin - Baton Pass - TR29
  (509, 50900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 36),
  -- Purrloin - Encore - TR30
  (509, 50900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 37),
  -- Purrloin - Iron Tail - TR31
  (509, 50900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 38),
  -- Purrloin - Shadow Ball - TR33
  (509, 50900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 39),
  -- Purrloin - Taunt - TR37
  (509, 50900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 40),
  -- Purrloin - Trick - TR38
  (509, 50900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 41),
  -- Purrloin - Hyper Voice - TR42
  (509, 50900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 42),
  -- Purrloin - Dark Pulse - TR58
  (509, 50900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 43),
  -- Purrloin - Seed Bomb - TR59
  (509, 50900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 44),
  -- Purrloin - Nasty Plot - TR68
  (509, 50900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Purrloin - Gunk Shot - TR73
  (509, 50900, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 46),
  -- Purrloin - Grass Knot - TR77
  (509, 50900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 47),
  -- Purrloin - Foul Play - TR81
  (509, 50900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Purrloin - Play Rough - TR90
  (509, 50900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 49),
  -- Purrloin - Quick Attack - Egg
  (509, 50900, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Purrloin - Double Team - Egg
  (509, 50900, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Purrloin - Slash - Egg
  (509, 50900, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Purrloin - Yawn - Egg
  (509, 50900, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Purrloin - Covet - Egg
  (509, 50900, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Purrloin - Copycat - Egg
  (509, 50900, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Liepard - Scratch - Level 1
  (510, 51000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Liepard - Sand Attack - Level 1
  (510, 51000, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Liepard - Growl - Level 1
  (510, 51000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Liepard - Fake Out - Level 1
  (510, 51000, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Liepard - Fury Swipes - Level 12
  (510, 51000, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Liepard - Torment - Level 16
  (510, 51000, 259, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Liepard - Assurance - Level 23
  (510, 51000, 372, 18, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Liepard - Hone Claws - Level 28
  (510, 51000, 468, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Liepard - Sucker Punch - Level 34
  (510, 51000, 389, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Liepard - Nasty Plot - Level 40
  (510, 51000, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Liepard - Night Slash - Level 46
  (510, 51000, 400, 18, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Liepard - Play Rough - Level 52
  (510, 51000, 583, 18, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Liepard - Pay Day - TM02
  (510, 51000, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 13),
  -- Liepard - Hyper Beam - TM08
  (510, 51000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Liepard - Giga Impact - TM09
  (510, 51000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Liepard - Thunder Wave - TM14
  (510, 51000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Liepard - Screech - TM16
  (510, 51000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Liepard - Rest - TM21
  (510, 51000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Liepard - Thief - TM23
  (510, 51000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Liepard - Snore - TM24
  (510, 51000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Liepard - Protect - TM25
  (510, 51000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Liepard - Charm - TM29
  (510, 51000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Liepard - Attract - TM31
  (510, 51000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Liepard - Rain Dance - TM33
  (510, 51000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Liepard - Sunny Day - TM34
  (510, 51000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Liepard - Facade - TM39
  (510, 51000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Liepard - Swift - TM40
  (510, 51000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Liepard - Fake Tears - TM47
  (510, 51000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Liepard - U-turn - TM56
  (510, 51000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Liepard - Payback - TM57
  (510, 51000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Liepard - Assurance - TM58
  (510, 51000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Liepard - Shadow Claw - TM65
  (510, 51000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Liepard - Psycho Cut - TM69
  (510, 51000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 33),
  -- Liepard - Round - TM76
  (510, 51000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Liepard - Snarl - TM85
  (510, 51000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 35),
  -- Liepard - Substitute - TR20
  (510, 51000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Liepard - Endure - TR26
  (510, 51000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Liepard - Sleep Talk - TR27
  (510, 51000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Liepard - Baton Pass - TR29
  (510, 51000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 39),
  -- Liepard - Encore - TR30
  (510, 51000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 40),
  -- Liepard - Iron Tail - TR31
  (510, 51000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Liepard - Shadow Ball - TR33
  (510, 51000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Liepard - Taunt - TR37
  (510, 51000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Liepard - Trick - TR38
  (510, 51000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 44),
  -- Liepard - Hyper Voice - TR42
  (510, 51000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Liepard - Dark Pulse - TR58
  (510, 51000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Liepard - Seed Bomb - TR59
  (510, 51000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 47),
  -- Liepard - Nasty Plot - TR68
  (510, 51000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 48),
  -- Liepard - Gunk Shot - TR73
  (510, 51000, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 49),
  -- Liepard - Grass Knot - TR77
  (510, 51000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 50),
  -- Liepard - Foul Play - TR81
  (510, 51000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Liepard - Play Rough - TR90
  (510, 51000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 52),
  -- Liepard - Throat Chop - TR95
  (510, 51000, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 53),
  -- Munna - Defense Curl - Level 1
  (517, 51700, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munna - Stored Power - Level 1
  (517, 51700, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munna - Hypnosis - Level 4
  (517, 51700, 95, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Munna - Psybeam - Level 8
  (517, 51700, 60, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Munna - Imprison - Level 12
  (517, 51700, 286, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Munna - Moonlight - Level 16
  (517, 51700, 236, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Munna - Magic Coat - Level 20
  (517, 51700, 277, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Munna - Zen Headbutt - Level 24
  (517, 51700, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Munna - Calm Mind - Level 28
  (517, 51700, 347, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Munna - Yawn - Level 32
  (517, 51700, 281, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Munna - Psychic - Level 36
  (517, 51700, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Munna - Moonblast - Level 40
  (517, 51700, 585, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Munna - Dream Eater - Level 44
  (517, 51700, 138, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Munna - Future Sight - Level 48
  (517, 51700, 248, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Munna - Wonder Room - Level 52
  (517, 51700, 472, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Munna - Thunder Wave - TM14
  (517, 51700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Munna - Light Screen - TM17
  (517, 51700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 17),
  -- Munna - Reflect - TM18
  (517, 51700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Munna - Safeguard - TM19
  (517, 51700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Munna - Rest - TM21
  (517, 51700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Munna - Rock Slide - TM22
  (517, 51700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Munna - Snore - TM24
  (517, 51700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Munna - Protect - TM25
  (517, 51700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Munna - Attract - TM31
  (517, 51700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Munna - Rain Dance - TM33
  (517, 51700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Munna - Facade - TM39
  (517, 51700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Munna - Swift - TM40
  (517, 51700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Munna - Helping Hand - TM41
  (517, 51700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Munna - Imprison - TM44
  (517, 51700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Munna - Rock Tomb - TM48
  (517, 51700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Munna - Power Swap - TM60
  (517, 51700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Munna - Guard Swap - TM61
  (517, 51700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Munna - Trick Room - TM70
  (517, 51700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Munna - Wonder Room - TM71
  (517, 51700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 34),
  -- Munna - Round - TM76
  (517, 51700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Munna - Psychic - TR11
  (517, 51700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Munna - Amnesia - TR17
  (517, 51700, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Munna - Substitute - TR20
  (517, 51700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Munna - Psyshock - TR25
  (517, 51700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 39),
  -- Munna - Endure - TR26
  (517, 51700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Munna - Sleep Talk - TR27
  (517, 51700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Munna - Shadow Ball - TR33
  (517, 51700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Munna - Future Sight - TR34
  (517, 51700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 43),
  -- Munna - Trick - TR38
  (517, 51700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 44),
  -- Munna - Skill Swap - TR40
  (517, 51700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 45),
  -- Munna - Calm Mind - TR49
  (517, 51700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 46),
  -- Munna - Gyro Ball - TR52
  (517, 51700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Munna - Energy Ball - TR65
  (517, 51700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Munna - Zen Headbutt - TR69
  (517, 51700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 49),
  -- Munna - Stored Power - TR82
  (517, 51700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 50),
  -- Munna - Ally Switch - TR83
  (517, 51700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 51),
  -- Munna - Dazzling Gleam - TR92
  (517, 51700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 52),
  -- Munna - Curse - Egg
  (517, 51700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Munna - Healing Wish - Egg
  (517, 51700, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Musharna - Psybeam - Level 1
  (518, 51800, 60, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Musharna - Psychic - Level 1
  (518, 51800, 94, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Musharna - Hypnosis - Level 1
  (518, 51800, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Musharna - Defense Curl - Level 1
  (518, 51800, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Musharna - Dream Eater - Level 1
  (518, 51800, 138, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Musharna - Moonlight - Level 1
  (518, 51800, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Musharna - Future Sight - Level 1
  (518, 51800, 248, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Musharna - Magic Coat - Level 1
  (518, 51800, 277, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Musharna - Yawn - Level 1
  (518, 51800, 281, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Musharna - Imprison - Level 1
  (518, 51800, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Musharna - Calm Mind - Level 1
  (518, 51800, 347, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Musharna - Zen Headbutt - Level 1
  (518, 51800, 428, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Musharna - Wonder Room - Level 1
  (518, 51800, 472, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Musharna - Stored Power - Level 1
  (518, 51800, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Musharna - Moonblast - Level 1
  (518, 51800, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Musharna - Psychic Terrain - Level 1
  (518, 51800, 678, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Musharna - Hyper Beam - TM08
  (518, 51800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Musharna - Giga Impact - TM09
  (518, 51800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Musharna - Thunder Wave - TM14
  (518, 51800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Musharna - Light Screen - TM17
  (518, 51800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Musharna - Reflect - TM18
  (518, 51800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Musharna - Safeguard - TM19
  (518, 51800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Musharna - Rest - TM21
  (518, 51800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Musharna - Rock Slide - TM22
  (518, 51800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Musharna - Snore - TM24
  (518, 51800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Musharna - Protect - TM25
  (518, 51800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Musharna - Attract - TM31
  (518, 51800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Musharna - Rain Dance - TM33
  (518, 51800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Musharna - Facade - TM39
  (518, 51800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Musharna - Swift - TM40
  (518, 51800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Musharna - Helping Hand - TM41
  (518, 51800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Musharna - Imprison - TM44
  (518, 51800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Musharna - Rock Tomb - TM48
  (518, 51800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Musharna - Power Swap - TM60
  (518, 51800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 34),
  -- Musharna - Guard Swap - TM61
  (518, 51800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 35),
  -- Musharna - Trick Room - TM70
  (518, 51800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 36),
  -- Musharna - Wonder Room - TM71
  (518, 51800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 37),
  -- Musharna - Round - TM76
  (518, 51800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Musharna - Psychic Terrain - TM91
  (518, 51800, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 39),
  -- Musharna - Psychic - TR11
  (518, 51800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Musharna - Amnesia - TR17
  (518, 51800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 41),
  -- Musharna - Substitute - TR20
  (518, 51800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Musharna - Psyshock - TR25
  (518, 51800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 43),
  -- Musharna - Endure - TR26
  (518, 51800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Musharna - Sleep Talk - TR27
  (518, 51800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Musharna - Shadow Ball - TR33
  (518, 51800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Musharna - Future Sight - TR34
  (518, 51800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 47),
  -- Musharna - Trick - TR38
  (518, 51800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 48),
  -- Musharna - Skill Swap - TR40
  (518, 51800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 49),
  -- Musharna - Calm Mind - TR49
  (518, 51800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Musharna - Gyro Ball - TR52
  (518, 51800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 51),
  -- Musharna - Energy Ball - TR65
  (518, 51800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 52),
  -- Musharna - Zen Headbutt - TR69
  (518, 51800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Musharna - Stored Power - TR82
  (518, 51800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 54),
  -- Musharna - Ally Switch - TR83
  (518, 51800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Musharna - Dazzling Gleam - TR92
  (518, 51800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 56),
  -- Pidove - Gust - Level 1
  (519, 51900, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidove - Growl - Level 1
  (519, 51900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidove - Leer - Level 4
  (519, 51900, 43, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pidove - Quick Attack - Level 8
  (519, 51900, 98, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pidove - Taunt - Level 12
  (519, 51900, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pidove - Air Cutter - Level 16
  (519, 51900, 314, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pidove - Swagger - Level 20
  (519, 51900, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pidove - Feather Dance - Level 24
  (519, 51900, 297, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pidove - Detect - Level 28
  (519, 51900, 197, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pidove - Air Slash - Level 32
  (519, 51900, 403, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidove - Roost - Level 36
  (519, 51900, 355, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pidove - Tailwind - Level 40
  (519, 51900, 366, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pidove - Sky Attack - Level 44
  (519, 51900, 143, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pidove - Fly - TM06
  (519, 51900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Pidove - Rest - TM21
  (519, 51900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Pidove - Snore - TM24
  (519, 51900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Pidove - Protect - TM25
  (519, 51900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Pidove - Steel Wing - TM30
  (519, 51900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 18),
  -- Pidove - Attract - TM31
  (519, 51900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Pidove - Rain Dance - TM33
  (519, 51900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Pidove - Sunny Day - TM34
  (519, 51900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Pidove - Facade - TM39
  (519, 51900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Pidove - Swift - TM40
  (519, 51900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Pidove - U-turn - TM56
  (519, 51900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 24),
  -- Pidove - Round - TM76
  (519, 51900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Pidove - Air Slash - TM95
  (519, 51900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 26),
  -- Pidove - Agility - TR12
  (519, 51900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 27),
  -- Pidove - Focus Energy - TR13
  (519, 51900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 28),
  -- Pidove - Substitute - TR20
  (519, 51900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Pidove - Endure - TR26
  (519, 51900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Pidove - Sleep Talk - TR27
  (519, 51900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Pidove - Uproar - TR35
  (519, 51900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 32),
  -- Pidove - Heat Wave - TR36
  (519, 51900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 33),
  -- Pidove - Taunt - TR37
  (519, 51900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 34),
  -- Pidove - Work Up - TR85
  (519, 51900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 35),
  -- Pidove - Hypnosis - Egg
  (519, 51900, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pidove - Morning Sun - Egg
  (519, 51900, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pidove - Wish - Egg
  (519, 51900, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pidove - Night Slash - Egg
  (519, 51900, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pidove - Defog - Egg
  (519, 51900, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Tranquill - Gust - Level 1
  (520, 52000, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tranquill - Leer - Level 1
  (520, 52000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tranquill - Growl - Level 1
  (520, 52000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tranquill - Quick Attack - Level 1
  (520, 52000, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tranquill - Taunt - Level 12
  (520, 52000, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tranquill - Air Cutter - Level 16
  (520, 52000, 314, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tranquill - Swagger - Level 20
  (520, 52000, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tranquill - Feather Dance - Level 26
  (520, 52000, 297, 18, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Tranquill - Detect - Level 34
  (520, 52000, 197, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Tranquill - Air Slash - Level 38
  (520, 52000, 403, 18, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Tranquill - Roost - Level 44
  (520, 52000, 355, 18, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Tranquill - Tailwind - Level 50
  (520, 52000, 366, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tranquill - Sky Attack - Level 56
  (520, 52000, 143, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Tranquill - Fly - TM06
  (520, 52000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Tranquill - Rest - TM21
  (520, 52000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Tranquill - Snore - TM24
  (520, 52000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Tranquill - Protect - TM25
  (520, 52000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Tranquill - Steel Wing - TM30
  (520, 52000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 18),
  -- Tranquill - Attract - TM31
  (520, 52000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Tranquill - Rain Dance - TM33
  (520, 52000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Tranquill - Sunny Day - TM34
  (520, 52000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Tranquill - Facade - TM39
  (520, 52000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Tranquill - Swift - TM40
  (520, 52000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Tranquill - U-turn - TM56
  (520, 52000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 24),
  -- Tranquill - Round - TM76
  (520, 52000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Tranquill - Air Slash - TM95
  (520, 52000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 26),
  -- Tranquill - Agility - TR12
  (520, 52000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 27),
  -- Tranquill - Focus Energy - TR13
  (520, 52000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 28),
  -- Tranquill - Substitute - TR20
  (520, 52000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Tranquill - Endure - TR26
  (520, 52000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Tranquill - Sleep Talk - TR27
  (520, 52000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Tranquill - Uproar - TR35
  (520, 52000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 32),
  -- Tranquill - Heat Wave - TR36
  (520, 52000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 33),
  -- Tranquill - Taunt - TR37
  (520, 52000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 34),
  -- Tranquill - Work Up - TR85
  (520, 52000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 35),
  -- Unfezant - Gust - Level 1
  (521, 52100, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Unfezant - Leer - Level 1
  (521, 52100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Unfezant - Growl - Level 1
  (521, 52100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Unfezant - Quick Attack - Level 1
  (521, 52100, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Unfezant - Taunt - Level 12
  (521, 52100, 269, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Unfezant - Air Cutter - Level 16
  (521, 52100, 314, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Unfezant - Swagger - Level 20
  (521, 52100, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Unfezant - Feather Dance - Level 26
  (521, 52100, 297, 18, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Unfezant - Detect - Level 36
  (521, 52100, 197, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Unfezant - Air Slash - Level 42
  (521, 52100, 403, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Unfezant - Roost - Level 50
  (521, 52100, 355, 18, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Unfezant - Tailwind - Level 58
  (521, 52100, 366, 18, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Unfezant - Sky Attack - Level 66
  (521, 52100, 143, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Unfezant - Fly - TM06
  (521, 52100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Unfezant - Hyper Beam - TM08
  (521, 52100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Unfezant - Giga Impact - TM09
  (521, 52100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Unfezant - Rest - TM21
  (521, 52100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Unfezant - Snore - TM24
  (521, 52100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Unfezant - Protect - TM25
  (521, 52100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Unfezant - Steel Wing - TM30
  (521, 52100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 20),
  -- Unfezant - Attract - TM31
  (521, 52100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Unfezant - Rain Dance - TM33
  (521, 52100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Unfezant - Sunny Day - TM34
  (521, 52100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Unfezant - Facade - TM39
  (521, 52100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Unfezant - Swift - TM40
  (521, 52100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Unfezant - U-turn - TM56
  (521, 52100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Unfezant - Round - TM76
  (521, 52100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Unfezant - Air Slash - TM95
  (521, 52100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 28),
  -- Unfezant - Agility - TR12
  (521, 52100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 29),
  -- Unfezant - Focus Energy - TR13
  (521, 52100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 30),
  -- Unfezant - Substitute - TR20
  (521, 52100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Unfezant - Endure - TR26
  (521, 52100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Unfezant - Sleep Talk - TR27
  (521, 52100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Unfezant - Uproar - TR35
  (521, 52100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 34),
  -- Unfezant - Heat Wave - TR36
  (521, 52100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 35),
  -- Unfezant - Taunt - TR37
  (521, 52100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 36),
  -- Unfezant - Brave Bird - TR66
  (521, 52100, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 37),
  -- Unfezant - Work Up - TR85
  (521, 52100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 38),
  -- Unfezant - Hurricane - TR89
  (521, 52100, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 39),
  -- Roggenrola - Sand Attack - Level 1
  (524, 52400, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roggenrola - Tackle - Level 1
  (524, 52400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roggenrola - Harden - Level 4
  (524, 52400, 106, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Roggenrola - Stealth Rock - Level 8
  (524, 52400, 446, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Roggenrola - Mud-Slap - Level 12
  (524, 52400, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Roggenrola - Smack Down - Level 16
  (524, 52400, 479, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Roggenrola - Iron Defense - Level 20
  (524, 52400, 334, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Roggenrola - Headbutt - Level 24
  (524, 52400, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Roggenrola - Rock Slide - Level 28
  (524, 52400, 157, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Roggenrola - Rock Blast - Level 32
  (524, 52400, 350, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Roggenrola - Sandstorm - Level 36
  (524, 52400, 201, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Roggenrola - Stone Edge - Level 40
  (524, 52400, 444, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Roggenrola - Explosion - Level 44
  (524, 52400, 153, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Roggenrola - Rest - TM21
  (524, 52400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Roggenrola - Rock Slide - TM22
  (524, 52400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 15),
  -- Roggenrola - Snore - TM24
  (524, 52400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Roggenrola - Protect - TM25
  (524, 52400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Roggenrola - Attract - TM31
  (524, 52400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Roggenrola - Sandstorm - TM32
  (524, 52400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 19),
  -- Roggenrola - Facade - TM39
  (524, 52400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Roggenrola - Rock Tomb - TM48
  (524, 52400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 21),
  -- Roggenrola - Sand Tomb - TM49
  (524, 52400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 22),
  -- Roggenrola - Rock Blast - TM54
  (524, 52400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 23),
  -- Roggenrola - Round - TM76
  (524, 52400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Roggenrola - Bulldoze - TM81
  (524, 52400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 25),
  -- Roggenrola - Earthquake - TR10
  (524, 52400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 26),
  -- Roggenrola - Substitute - TR20
  (524, 52400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Roggenrola - Endure - TR26
  (524, 52400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Roggenrola - Sleep Talk - TR27
  (524, 52400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Roggenrola - Iron Defense - TR46
  (524, 52400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 30),
  -- Roggenrola - Earth Power - TR67
  (524, 52400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 31),
  -- Roggenrola - Flash Cannon - TR70
  (524, 52400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 32),
  -- Roggenrola - Stone Edge - TR75
  (524, 52400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 33),
  -- Roggenrola - Stealth Rock - TR76
  (524, 52400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 34),
  -- Roggenrola - Heavy Slam - TR79
  (524, 52400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 35),
  -- Roggenrola - Body Press - TR99
  (524, 52400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 36),
  -- Roggenrola - Take Down - Egg
  (524, 52400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Roggenrola - Curse - Egg
  (524, 52400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Roggenrola - Gravity - Egg
  (524, 52400, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Roggenrola - Wide Guard - Egg
  (524, 52400, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Roggenrola - Autotomize - Egg
  (524, 52400, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Boldore - Sand Attack - Level 1
  (525, 52500, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Boldore - Tackle - Level 1
  (525, 52500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Boldore - Harden - Level 1
  (525, 52500, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Boldore - Power Gem - Level 1
  (525, 52500, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Boldore - Stealth Rock - Level 1
  (525, 52500, 446, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Boldore - Mud-Slap - Level 12
  (525, 52500, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Boldore - Smack Down - Level 16
  (525, 52500, 479, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Boldore - Iron Defense - Level 20
  (525, 52500, 334, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Boldore - Headbutt - Level 24
  (525, 52500, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Boldore - Rock Slide - Level 30
  (525, 52500, 157, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Boldore - Rock Blast - Level 36
  (525, 52500, 350, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Boldore - Sandstorm - Level 42
  (525, 52500, 201, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Boldore - Stone Edge - Level 48
  (525, 52500, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Boldore - Explosion - Level 54
  (525, 52500, 153, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Boldore - Power Gem - Evolution
  (525, 52500, 408, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Boldore - Rest - TM21
  (525, 52500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Boldore - Rock Slide - TM22
  (525, 52500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Boldore - Snore - TM24
  (525, 52500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Boldore - Protect - TM25
  (525, 52500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Boldore - Attract - TM31
  (525, 52500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Boldore - Sandstorm - TM32
  (525, 52500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Boldore - Facade - TM39
  (525, 52500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Boldore - Rock Tomb - TM48
  (525, 52500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 23),
  -- Boldore - Sand Tomb - TM49
  (525, 52500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 24),
  -- Boldore - Rock Blast - TM54
  (525, 52500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 25),
  -- Boldore - Round - TM76
  (525, 52500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Boldore - Bulldoze - TM81
  (525, 52500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 27),
  -- Boldore - Stomping Tantrum - TM98
  (525, 52500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 28),
  -- Boldore - Earthquake - TR10
  (525, 52500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 29),
  -- Boldore - Substitute - TR20
  (525, 52500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Boldore - Endure - TR26
  (525, 52500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Boldore - Sleep Talk - TR27
  (525, 52500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Boldore - Iron Defense - TR46
  (525, 52500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 33),
  -- Boldore - Power Gem - TR63
  (525, 52500, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 34),
  -- Boldore - Earth Power - TR67
  (525, 52500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 35),
  -- Boldore - Flash Cannon - TR70
  (525, 52500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 36),
  -- Boldore - Stone Edge - TR75
  (525, 52500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 37),
  -- Boldore - Stealth Rock - TR76
  (525, 52500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 38),
  -- Boldore - Heavy Slam - TR79
  (525, 52500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 39),
  -- Boldore - Body Press - TR99
  (525, 52500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 40),
  -- Gigalith - Sand Attack - Level 1
  (526, 52600, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gigalith - Tackle - Level 1
  (526, 52600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gigalith - Harden - Level 1
  (526, 52600, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gigalith - Power Gem - Level 1
  (526, 52600, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gigalith - Stealth Rock - Level 1
  (526, 52600, 446, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gigalith - Mud-Slap - Level 12
  (526, 52600, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gigalith - Smack Down - Level 16
  (526, 52600, 479, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gigalith - Iron Defense - Level 20
  (526, 52600, 334, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Gigalith - Headbutt - Level 24
  (526, 52600, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Gigalith - Rock Slide - Level 30
  (526, 52600, 157, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Gigalith - Rock Blast - Level 36
  (526, 52600, 350, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gigalith - Sandstorm - Level 42
  (526, 52600, 201, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Gigalith - Stone Edge - Level 48
  (526, 52600, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Gigalith - Explosion - Level 54
  (526, 52600, 153, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Gigalith - Hyper Beam - TM08
  (526, 52600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Gigalith - Giga Impact - TM09
  (526, 52600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Gigalith - Solar Beam - TM11
  (526, 52600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Gigalith - Self-Destruct - TM20
  (526, 52600, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 18),
  -- Gigalith - Rest - TM21
  (526, 52600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Gigalith - Rock Slide - TM22
  (526, 52600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Gigalith - Snore - TM24
  (526, 52600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Gigalith - Protect - TM25
  (526, 52600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Gigalith - Attract - TM31
  (526, 52600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Gigalith - Sandstorm - TM32
  (526, 52600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Gigalith - Facade - TM39
  (526, 52600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Gigalith - Weather Ball - TM46
  (526, 52600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 26),
  -- Gigalith - Rock Tomb - TM48
  (526, 52600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Gigalith - Sand Tomb - TM49
  (526, 52600, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Gigalith - Rock Blast - TM54
  (526, 52600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Gigalith - Round - TM76
  (526, 52600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Gigalith - Bulldoze - TM81
  (526, 52600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Gigalith - Stomping Tantrum - TM98
  (526, 52600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 32),
  -- Gigalith - Earthquake - TR10
  (526, 52600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Gigalith - Substitute - TR20
  (526, 52600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Gigalith - Endure - TR26
  (526, 52600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Gigalith - Sleep Talk - TR27
  (526, 52600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Gigalith - Superpower - TR39
  (526, 52600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 37),
  -- Gigalith - Iron Defense - TR46
  (526, 52600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 38),
  -- Gigalith - Power Gem - TR63
  (526, 52600, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 39),
  -- Gigalith - Earth Power - TR67
  (526, 52600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 40),
  -- Gigalith - Flash Cannon - TR70
  (526, 52600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 41),
  -- Gigalith - Iron Head - TR74
  (526, 52600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 42),
  -- Gigalith - Stone Edge - TR75
  (526, 52600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 43),
  -- Gigalith - Stealth Rock - TR76
  (526, 52600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 44),
  -- Gigalith - Heavy Slam - TR79
  (526, 52600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 45),
  -- Gigalith - Throat Chop - TR95
  (526, 52600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 46),
  -- Gigalith - Body Press - TR99
  (526, 52600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 47),
  -- Woobat - Gust - Level 1
  (527, 52700, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Woobat - Attract - Level 1
  (527, 52700, 213, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Woobat - Confusion - Level 5
  (527, 52700, 93, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Woobat - Endeavor - Level 10
  (527, 52700, 283, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Woobat - Air Cutter - Level 15
  (527, 52700, 314, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Woobat - Imprison - Level 20
  (527, 52700, 286, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Woobat - Assurance - Level 25
  (527, 52700, 372, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Woobat - Amnesia - Level 30
  (527, 52700, 133, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Woobat - Air Slash - Level 35
  (527, 52700, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Woobat - Psychic - Level 40
  (527, 52700, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Woobat - Calm Mind - Level 45
  (527, 52700, 347, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Woobat - Future Sight - Level 50
  (527, 52700, 248, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Woobat - Simple Beam - Level 55
  (527, 52700, 493, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Woobat - Fly - TM06
  (527, 52700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Woobat - Thunder Wave - TM14
  (527, 52700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Woobat - Light Screen - TM17
  (527, 52700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Woobat - Reflect - TM18
  (527, 52700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Woobat - Safeguard - TM19
  (527, 52700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Woobat - Rest - TM21
  (527, 52700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Woobat - Thief - TM23
  (527, 52700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Woobat - Snore - TM24
  (527, 52700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Woobat - Protect - TM25
  (527, 52700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Woobat - Giga Drain - TM28
  (527, 52700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Woobat - Charm - TM29
  (527, 52700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Woobat - Steel Wing - TM30
  (527, 52700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Woobat - Attract - TM31
  (527, 52700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Woobat - Rain Dance - TM33
  (527, 52700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Woobat - Facade - TM39
  (527, 52700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Woobat - Swift - TM40
  (527, 52700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Woobat - Helping Hand - TM41
  (527, 52700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Woobat - Imprison - TM44
  (527, 52700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Woobat - Fake Tears - TM47
  (527, 52700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 32),
  -- Woobat - U-turn - TM56
  (527, 52700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Woobat - Assurance - TM58
  (527, 52700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Woobat - Speed Swap - TM62
  (527, 52700, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 35),
  -- Woobat - Psycho Cut - TM69
  (527, 52700, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Woobat - Trick Room - TM70
  (527, 52700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Woobat - Round - TM76
  (527, 52700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Woobat - Acrobatics - TM78
  (527, 52700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Woobat - Air Slash - TM95
  (527, 52700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 40),
  -- Woobat - Psychic - TR11
  (527, 52700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Woobat - Amnesia - TR17
  (527, 52700, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Woobat - Substitute - TR20
  (527, 52700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Woobat - Psyshock - TR25
  (527, 52700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Woobat - Endure - TR26
  (527, 52700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Woobat - Sleep Talk - TR27
  (527, 52700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Woobat - Baton Pass - TR29
  (527, 52700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 47),
  -- Woobat - Shadow Ball - TR33
  (527, 52700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Woobat - Future Sight - TR34
  (527, 52700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Woobat - Uproar - TR35
  (527, 52700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Woobat - Heat Wave - TR36
  (527, 52700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 51),
  -- Woobat - Taunt - TR37
  (527, 52700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Woobat - Trick - TR38
  (527, 52700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 53),
  -- Woobat - Skill Swap - TR40
  (527, 52700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 54),
  -- Woobat - Calm Mind - TR49
  (527, 52700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Woobat - Gyro Ball - TR52
  (527, 52700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 56),
  -- Woobat - Energy Ball - TR65
  (527, 52700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 57),
  -- Woobat - Nasty Plot - TR68
  (527, 52700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Woobat - Zen Headbutt - TR69
  (527, 52700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Woobat - Stored Power - TR82
  (527, 52700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 60),
  -- Woobat - Ally Switch - TR83
  (527, 52700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Woobat - Venom Drench - TR91
  (527, 52700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 62),
  -- Woobat - Supersonic - Egg
  (527, 52700, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Woobat - Flatter - Egg
  (527, 52700, 260, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Woobat - Knock Off - Egg
  (527, 52700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Woobat - Roost - Egg
  (527, 52700, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Woobat - Psycho Shift - Egg
  (527, 52700, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Swoobat - Gust - Level 1
  (528, 52800, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swoobat - Confusion - Level 1
  (528, 52800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swoobat - Attract - Level 1
  (528, 52800, 213, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swoobat - Endeavor - Level 1
  (528, 52800, 283, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swoobat - Air Cutter - Level 15
  (528, 52800, 314, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swoobat - Imprison - Level 20
  (528, 52800, 286, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Swoobat - Assurance - Level 25
  (528, 52800, 372, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Swoobat - Amnesia - Level 30
  (528, 52800, 133, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Swoobat - Air Slash - Level 35
  (528, 52800, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Swoobat - Psychic - Level 40
  (528, 52800, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Swoobat - Calm Mind - Level 45
  (528, 52800, 347, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Swoobat - Future Sight - Level 50
  (528, 52800, 248, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Swoobat - Simple Beam - Level 55
  (528, 52800, 493, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Swoobat - Fly - TM06
  (528, 52800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Swoobat - Hyper Beam - TM08
  (528, 52800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Swoobat - Giga Impact - TM09
  (528, 52800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Swoobat - Thunder Wave - TM14
  (528, 52800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Swoobat - Light Screen - TM17
  (528, 52800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Swoobat - Reflect - TM18
  (528, 52800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Swoobat - Safeguard - TM19
  (528, 52800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Swoobat - Rest - TM21
  (528, 52800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Swoobat - Thief - TM23
  (528, 52800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Swoobat - Snore - TM24
  (528, 52800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Swoobat - Protect - TM25
  (528, 52800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Swoobat - Giga Drain - TM28
  (528, 52800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Swoobat - Charm - TM29
  (528, 52800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Swoobat - Steel Wing - TM30
  (528, 52800, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Swoobat - Attract - TM31
  (528, 52800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Swoobat - Rain Dance - TM33
  (528, 52800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Swoobat - Facade - TM39
  (528, 52800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Swoobat - Swift - TM40
  (528, 52800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Swoobat - Helping Hand - TM41
  (528, 52800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Swoobat - Imprison - TM44
  (528, 52800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Swoobat - Fake Tears - TM47
  (528, 52800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Swoobat - U-turn - TM56
  (528, 52800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Swoobat - Assurance - TM58
  (528, 52800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Swoobat - Speed Swap - TM62
  (528, 52800, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 37),
  -- Swoobat - Psycho Cut - TM69
  (528, 52800, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 38),
  -- Swoobat - Trick Room - TM70
  (528, 52800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Swoobat - Round - TM76
  (528, 52800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Swoobat - Acrobatics - TM78
  (528, 52800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 41),
  -- Swoobat - Air Slash - TM95
  (528, 52800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Swoobat - Psychic - TR11
  (528, 52800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Swoobat - Amnesia - TR17
  (528, 52800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 44),
  -- Swoobat - Substitute - TR20
  (528, 52800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Swoobat - Psyshock - TR25
  (528, 52800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 46),
  -- Swoobat - Endure - TR26
  (528, 52800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Swoobat - Sleep Talk - TR27
  (528, 52800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Swoobat - Baton Pass - TR29
  (528, 52800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 49),
  -- Swoobat - Shadow Ball - TR33
  (528, 52800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Swoobat - Future Sight - TR34
  (528, 52800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 51),
  -- Swoobat - Uproar - TR35
  (528, 52800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Swoobat - Heat Wave - TR36
  (528, 52800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 53),
  -- Swoobat - Taunt - TR37
  (528, 52800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 54),
  -- Swoobat - Trick - TR38
  (528, 52800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 55),
  -- Swoobat - Skill Swap - TR40
  (528, 52800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 56),
  -- Swoobat - Calm Mind - TR49
  (528, 52800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Swoobat - Gyro Ball - TR52
  (528, 52800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 58),
  -- Swoobat - Energy Ball - TR65
  (528, 52800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 59),
  -- Swoobat - Nasty Plot - TR68
  (528, 52800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 60),
  -- Swoobat - Zen Headbutt - TR69
  (528, 52800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 61),
  -- Swoobat - Stored Power - TR82
  (528, 52800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Swoobat - Ally Switch - TR83
  (528, 52800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Swoobat - Venom Drench - TR91
  (528, 52800, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 64),
  -- Swoobat - Psychic Fangs - TR97
  (528, 52800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 65),
  -- Drilbur - Mud-Slap - Level 1
  (529, 52900, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drilbur - Rapid Spin - Level 1
  (529, 52900, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drilbur - Scratch - Level 4
  (529, 52900, 10, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drilbur - Hone Claws - Level 8
  (529, 52900, 468, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drilbur - Fury Swipes - Level 12
  (529, 52900, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drilbur - Metal Claw - Level 16
  (529, 52900, 232, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drilbur - Sandstorm - Level 20
  (529, 52900, 201, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drilbur - Crush Claw - Level 24
  (529, 52900, 306, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drilbur - Rock Slide - Level 28
  (529, 52900, 157, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Drilbur - Dig - Level 32
  (529, 52900, 91, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drilbur - Swords Dance - Level 36
  (529, 52900, 14, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Drilbur - Drill Run - Level 40
  (529, 52900, 529, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Drilbur - Earthquake - Level 44
  (529, 52900, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Drilbur - Fissure - Level 48
  (529, 52900, 90, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Drilbur - Dig - TM15
  (529, 52900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Drilbur - Rest - TM21
  (529, 52900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Drilbur - Rock Slide - TM22
  (529, 52900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Drilbur - Snore - TM24
  (529, 52900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Drilbur - Protect - TM25
  (529, 52900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Drilbur - Attract - TM31
  (529, 52900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Drilbur - Sandstorm - TM32
  (529, 52900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Drilbur - Facade - TM39
  (529, 52900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Drilbur - Brick Break - TM43
  (529, 52900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 23),
  -- Drilbur - Rock Tomb - TM48
  (529, 52900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 24),
  -- Drilbur - Sand Tomb - TM49
  (529, 52900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 25),
  -- Drilbur - Mud Shot - TM53
  (529, 52900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Drilbur - Fling - TM59
  (529, 52900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 27),
  -- Drilbur - Shadow Claw - TM65
  (529, 52900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Drilbur - Round - TM76
  (529, 52900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Drilbur - Bulldoze - TM81
  (529, 52900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Drilbur - Swords Dance - TR00
  (529, 52900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Drilbur - Earthquake - TR10
  (529, 52900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 32),
  -- Drilbur - Substitute - TR20
  (529, 52900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Drilbur - Sludge Bomb - TR22
  (529, 52900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 34),
  -- Drilbur - Endure - TR26
  (529, 52900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Drilbur - Sleep Talk - TR27
  (529, 52900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Drilbur - Iron Defense - TR46
  (529, 52900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Drilbur - Poison Jab - TR57
  (529, 52900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 38),
  -- Drilbur - X-Scissor - TR60
  (529, 52900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 39),
  -- Drilbur - Earth Power - TR67
  (529, 52900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 40),
  -- Drilbur - Stealth Rock - TR76
  (529, 52900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 41),
  -- Drilbur - Drill Run - TR87
  (529, 52900, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 42),
  -- Drilbur - High Horsepower - TR94
  (529, 52900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 43),
  -- Drilbur - Submission - Egg
  (529, 52900, 66, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Drilbur - Slash - Egg
  (529, 52900, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Drilbur - Metal Sound - Egg
  (529, 52900, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Excadrill - Scratch - Level 1
  (530, 53000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Excadrill - Horn Drill - Level 1
  (530, 53000, 32, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Excadrill - Mud-Slap - Level 1
  (530, 53000, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Excadrill - Rapid Spin - Level 1
  (530, 53000, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Excadrill - Hone Claws - Level 1
  (530, 53000, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Excadrill - Fury Swipes - Level 12
  (530, 53000, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Excadrill - Metal Claw - Level 16
  (530, 53000, 232, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Excadrill - Sandstorm - Level 20
  (530, 53000, 201, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Excadrill - Crush Claw - Level 24
  (530, 53000, 306, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Excadrill - Rock Slide - Level 28
  (530, 53000, 157, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Excadrill - Dig - Level 34
  (530, 53000, 91, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Excadrill - Swords Dance - Level 40
  (530, 53000, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Excadrill - Drill Run - Level 46
  (530, 53000, 529, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Excadrill - Earthquake - Level 52
  (530, 53000, 89, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Excadrill - Fissure - Level 58
  (530, 53000, 90, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Excadrill - Horn Drill - Evolution
  (530, 53000, 32, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Excadrill - Hyper Beam - TM08
  (530, 53000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Excadrill - Giga Impact - TM09
  (530, 53000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Excadrill - Dig - TM15
  (530, 53000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Excadrill - Rest - TM21
  (530, 53000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Excadrill - Rock Slide - TM22
  (530, 53000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Excadrill - Snore - TM24
  (530, 53000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Excadrill - Protect - TM25
  (530, 53000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Excadrill - Attract - TM31
  (530, 53000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Excadrill - Sandstorm - TM32
  (530, 53000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Excadrill - Facade - TM39
  (530, 53000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Excadrill - Brick Break - TM43
  (530, 53000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Excadrill - Rock Tomb - TM48
  (530, 53000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Excadrill - Sand Tomb - TM49
  (530, 53000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 29),
  -- Excadrill - Mud Shot - TM53
  (530, 53000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Excadrill - Rock Blast - TM54
  (530, 53000, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 31),
  -- Excadrill - Fling - TM59
  (530, 53000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Excadrill - Shadow Claw - TM65
  (530, 53000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Excadrill - Round - TM76
  (530, 53000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Excadrill - Bulldoze - TM81
  (530, 53000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Excadrill - Smart Strike - TM96
  (530, 53000, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 36),
  -- Excadrill - Brutal Swing - TM97
  (530, 53000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Excadrill - Stomping Tantrum - TM98
  (530, 53000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Excadrill - Swords Dance - TR00
  (530, 53000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Excadrill - Earthquake - TR10
  (530, 53000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Excadrill - Substitute - TR20
  (530, 53000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Excadrill - Sludge Bomb - TR22
  (530, 53000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 42),
  -- Excadrill - Endure - TR26
  (530, 53000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Excadrill - Sleep Talk - TR27
  (530, 53000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Excadrill - Iron Defense - TR46
  (530, 53000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Excadrill - Poison Jab - TR57
  (530, 53000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 46),
  -- Excadrill - X-Scissor - TR60
  (530, 53000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 47),
  -- Excadrill - Focus Blast - TR64
  (530, 53000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 48),
  -- Excadrill - Earth Power - TR67
  (530, 53000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 49),
  -- Excadrill - Iron Head - TR74
  (530, 53000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 50),
  -- Excadrill - Stealth Rock - TR76
  (530, 53000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 51),
  -- Excadrill - Drill Run - TR87
  (530, 53000, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 52),
  -- Excadrill - High Horsepower - TR94
  (530, 53000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 53),
  -- Excadrill - Steel Beam - Tutor
  (530, 53000, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Audino - Pound - Level 1
  (531, 53100, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Audino - Play Nice - Level 1
  (531, 53100, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Audino - Disarming Voice - Level 4
  (531, 53100, 574, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Audino - Baby-Doll Eyes - Level 9
  (531, 53100, 608, 18, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Audino - Helping Hand - Level 12
  (531, 53100, 270, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Audino - Growl - Level 16
  (531, 53100, 45, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Audino - Zen Headbutt - Level 20
  (531, 53100, 428, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Audino - Life Dew - Level 24
  (531, 53100, 791, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Audino - After You - Level 28
  (531, 53100, 495, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Audino - Take Down - Level 32
  (531, 53100, 36, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Audino - Simple Beam - Level 36
  (531, 53100, 493, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Audino - Hyper Voice - Level 40
  (531, 53100, 304, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Audino - Heal Pulse - Level 44
  (531, 53100, 505, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Audino - Double-Edge - Level 48
  (531, 53100, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Audino - Entrainment - Level 52
  (531, 53100, 494, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Audino - Misty Terrain - Level 56
  (531, 53100, 581, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Audino - Last Resort - Level 60
  (531, 53100, 387, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Audino - Mega Punch - TM00
  (531, 53100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Audino - Mega Kick - TM01
  (531, 53100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Audino - Fire Punch - TM03
  (531, 53100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Audino - Ice Punch - TM04
  (531, 53100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Audino - Thunder Punch - TM05
  (531, 53100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Audino - Hyper Beam - TM08
  (531, 53100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Audino - Giga Impact - TM09
  (531, 53100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Audino - Solar Beam - TM11
  (531, 53100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 25),
  -- Audino - Thunder Wave - TM14
  (531, 53100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 26),
  -- Audino - Dig - TM15
  (531, 53100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Audino - Light Screen - TM17
  (531, 53100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 28),
  -- Audino - Reflect - TM18
  (531, 53100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 29),
  -- Audino - Safeguard - TM19
  (531, 53100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 30),
  -- Audino - Rest - TM21
  (531, 53100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Audino - Snore - TM24
  (531, 53100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Audino - Protect - TM25
  (531, 53100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Audino - Icy Wind - TM27
  (531, 53100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 34),
  -- Audino - Attract - TM31
  (531, 53100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Audino - Rain Dance - TM33
  (531, 53100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Audino - Sunny Day - TM34
  (531, 53100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Audino - Facade - TM39
  (531, 53100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Audino - Helping Hand - TM41
  (531, 53100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Audino - Fling - TM59
  (531, 53100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Audino - Drain Punch - TM63
  (531, 53100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Audino - Trick Room - TM70
  (531, 53100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 42),
  -- Audino - Round - TM76
  (531, 53100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Audino - Retaliate - TM79
  (531, 53100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 44),
  -- Audino - Draining Kiss - TM87
  (531, 53100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Audino - Misty Terrain - TM89
  (531, 53100, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Audino - Stomping Tantrum - TM98
  (531, 53100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 47),
  -- Audino - Body Slam - TR01
  (531, 53100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Audino - Flamethrower - TR02
  (531, 53100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 49),
  -- Audino - Surf - TR04
  (531, 53100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Audino - Ice Beam - TR05
  (531, 53100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Audino - Blizzard - TR06
  (531, 53100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Audino - Low Kick - TR07
  (531, 53100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 53),
  -- Audino - Thunderbolt - TR08
  (531, 53100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Audino - Thunder - TR09
  (531, 53100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 55),
  -- Audino - Psychic - TR11
  (531, 53100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 56),
  -- Audino - Fire Blast - TR15
  (531, 53100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 57),
  -- Audino - Amnesia - TR17
  (531, 53100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 58),
  -- Audino - Substitute - TR20
  (531, 53100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Audino - Psyshock - TR25
  (531, 53100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 60),
  -- Audino - Endure - TR26
  (531, 53100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 61),
  -- Audino - Sleep Talk - TR27
  (531, 53100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 62),
  -- Audino - Encore - TR30
  (531, 53100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 63),
  -- Audino - Iron Tail - TR31
  (531, 53100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 64),
  -- Audino - Shadow Ball - TR33
  (531, 53100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 65),
  -- Audino - Uproar - TR35
  (531, 53100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 66),
  -- Audino - Skill Swap - TR40
  (531, 53100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 67),
  -- Audino - Hyper Voice - TR42
  (531, 53100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 68),
  -- Audino - Calm Mind - TR49
  (531, 53100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 69),
  -- Audino - Zen Headbutt - TR69
  (531, 53100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 70),
  -- Audino - Grass Knot - TR77
  (531, 53100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Audino - Ally Switch - TR83
  (531, 53100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 72),
  -- Audino - Work Up - TR85
  (531, 53100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 73),
  -- Audino - Wild Charge - TR86
  (531, 53100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 74),
  -- Audino - Dazzling Gleam - TR92
  (531, 53100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 75),
  -- Audino - Throat Chop - TR95
  (531, 53100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 76),
  -- Audino - Sweet Kiss - Egg
  (531, 53100, 186, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Audino - Wish - Egg
  (531, 53100, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Audino - Yawn - Egg
  (531, 53100, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Audino - Healing Wish - Egg
  (531, 53100, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Timburr - Pound - Level 1
  (532, 53200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Timburr - Leer - Level 1
  (532, 53200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Timburr - Low Kick - Level 4
  (532, 53200, 67, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Timburr - Rock Throw - Level 8
  (532, 53200, 88, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Timburr - Focus Energy - Level 12
  (532, 53200, 116, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Timburr - Bulk Up - Level 16
  (532, 53200, 339, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Timburr - Rock Slide - Level 20
  (532, 53200, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Timburr - Slam - Level 24
  (532, 53200, 21, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Timburr - Scary Face - Level 28
  (532, 53200, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Timburr - Dynamic Punch - Level 32
  (532, 53200, 223, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Timburr - Hammer Arm - Level 36
  (532, 53200, 359, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Timburr - Stone Edge - Level 40
  (532, 53200, 444, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Timburr - Superpower - Level 44
  (532, 53200, 276, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Timburr - Focus Punch - Level 48
  (532, 53200, 264, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Timburr - Mega Punch - TM00
  (532, 53200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Timburr - Mega Kick - TM01
  (532, 53200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Timburr - Fire Punch - TM03
  (532, 53200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Timburr - Ice Punch - TM04
  (532, 53200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Timburr - Thunder Punch - TM05
  (532, 53200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Timburr - Dig - TM15
  (532, 53200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Timburr - Rest - TM21
  (532, 53200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Timburr - Rock Slide - TM22
  (532, 53200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Timburr - Snore - TM24
  (532, 53200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Timburr - Protect - TM25
  (532, 53200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Timburr - Scary Face - TM26
  (532, 53200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Timburr - Attract - TM31
  (532, 53200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Timburr - Rain Dance - TM33
  (532, 53200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Timburr - Sunny Day - TM34
  (532, 53200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Timburr - Facade - TM39
  (532, 53200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Timburr - Helping Hand - TM41
  (532, 53200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Timburr - Revenge - TM42
  (532, 53200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Timburr - Brick Break - TM43
  (532, 53200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Timburr - Rock Tomb - TM48
  (532, 53200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Timburr - Payback - TM57
  (532, 53200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Timburr - Fling - TM59
  (532, 53200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Timburr - Drain Punch - TM63
  (532, 53200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Timburr - Low Sweep - TM75
  (532, 53200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Timburr - Round - TM76
  (532, 53200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Timburr - Retaliate - TM79
  (532, 53200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Timburr - Brutal Swing - TM97
  (532, 53200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Timburr - Low Kick - TR07
  (532, 53200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Timburr - Focus Energy - TR13
  (532, 53200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Timburr - Substitute - TR20
  (532, 53200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Timburr - Reversal - TR21
  (532, 53200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Timburr - Endure - TR26
  (532, 53200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Timburr - Sleep Talk - TR27
  (532, 53200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Timburr - Taunt - TR37
  (532, 53200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Timburr - Superpower - TR39
  (532, 53200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Timburr - Bulk Up - TR48
  (532, 53200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 49),
  -- Timburr - Poison Jab - TR57
  (532, 53200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Timburr - Focus Blast - TR64
  (532, 53200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 51),
  -- Timburr - Stone Edge - TR75
  (532, 53200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 52),
  -- Timburr - Grass Knot - TR77
  (532, 53200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 53),
  -- Timburr - Work Up - TR85
  (532, 53200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Timburr - Counter - Egg
  (532, 53200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Timburr - Mach Punch - Egg
  (532, 53200, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Timburr - Detect - Egg
  (532, 53200, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Timburr - Defog - Egg
  (532, 53200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Timburr - Wide Guard - Egg
  (532, 53200, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Timburr - Power-Up Punch - Egg
  (532, 53200, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gurdurr - Pound - Level 1
  (533, 53300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gurdurr - Leer - Level 1
  (533, 53300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gurdurr - Low Kick - Level 1
  (533, 53300, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gurdurr - Rock Throw - Level 1
  (533, 53300, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gurdurr - Focus Energy - Level 12
  (533, 53300, 116, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gurdurr - Bulk Up - Level 16
  (533, 53300, 339, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gurdurr - Rock Slide - Level 20
  (533, 53300, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gurdurr - Slam - Level 24
  (533, 53300, 21, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gurdurr - Scary Face - Level 30
  (533, 53300, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Gurdurr - Dynamic Punch - Level 36
  (533, 53300, 223, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Gurdurr - Hammer Arm - Level 42
  (533, 53300, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Gurdurr - Stone Edge - Level 48
  (533, 53300, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Gurdurr - Superpower - Level 54
  (533, 53300, 276, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gurdurr - Focus Punch - Level 60
  (533, 53300, 264, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Gurdurr - Mega Punch - TM00
  (533, 53300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Gurdurr - Mega Kick - TM01
  (533, 53300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Gurdurr - Fire Punch - TM03
  (533, 53300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Gurdurr - Ice Punch - TM04
  (533, 53300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Gurdurr - Thunder Punch - TM05
  (533, 53300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Gurdurr - Dig - TM15
  (533, 53300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Gurdurr - Rest - TM21
  (533, 53300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Gurdurr - Rock Slide - TM22
  (533, 53300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Gurdurr - Snore - TM24
  (533, 53300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Gurdurr - Protect - TM25
  (533, 53300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Gurdurr - Scary Face - TM26
  (533, 53300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Gurdurr - Attract - TM31
  (533, 53300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Gurdurr - Rain Dance - TM33
  (533, 53300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Gurdurr - Sunny Day - TM34
  (533, 53300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Gurdurr - Facade - TM39
  (533, 53300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Gurdurr - Helping Hand - TM41
  (533, 53300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Gurdurr - Revenge - TM42
  (533, 53300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Gurdurr - Brick Break - TM43
  (533, 53300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Gurdurr - Rock Tomb - TM48
  (533, 53300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Gurdurr - Payback - TM57
  (533, 53300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Gurdurr - Fling - TM59
  (533, 53300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Gurdurr - Drain Punch - TM63
  (533, 53300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Gurdurr - Low Sweep - TM75
  (533, 53300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Gurdurr - Round - TM76
  (533, 53300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Gurdurr - Retaliate - TM79
  (533, 53300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Gurdurr - Brutal Swing - TM97
  (533, 53300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Gurdurr - Low Kick - TR07
  (533, 53300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Gurdurr - Focus Energy - TR13
  (533, 53300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Gurdurr - Substitute - TR20
  (533, 53300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Gurdurr - Reversal - TR21
  (533, 53300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Gurdurr - Endure - TR26
  (533, 53300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Gurdurr - Sleep Talk - TR27
  (533, 53300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Gurdurr - Taunt - TR37
  (533, 53300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Gurdurr - Superpower - TR39
  (533, 53300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Gurdurr - Bulk Up - TR48
  (533, 53300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 49),
  -- Gurdurr - Close Combat - TR53
  (533, 53300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 50),
  -- Gurdurr - Poison Jab - TR57
  (533, 53300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 51),
  -- Gurdurr - Focus Blast - TR64
  (533, 53300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Gurdurr - Stone Edge - TR75
  (533, 53300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Gurdurr - Grass Knot - TR77
  (533, 53300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Gurdurr - Work Up - TR85
  (533, 53300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 55),
  -- Gurdurr - High Horsepower - TR94
  (533, 53300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 56),
  -- Conkeldurr - Pound - Level 1
  (534, 53400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Conkeldurr - Leer - Level 1
  (534, 53400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Conkeldurr - Low Kick - Level 1
  (534, 53400, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Conkeldurr - Rock Throw - Level 1
  (534, 53400, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Conkeldurr - Focus Energy - Level 12
  (534, 53400, 116, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Conkeldurr - Bulk Up - Level 16
  (534, 53400, 339, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Conkeldurr - Rock Slide - Level 20
  (534, 53400, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Conkeldurr - Slam - Level 24
  (534, 53400, 21, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Conkeldurr - Scary Face - Level 30
  (534, 53400, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Conkeldurr - Dynamic Punch - Level 36
  (534, 53400, 223, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Conkeldurr - Hammer Arm - Level 42
  (534, 53400, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Conkeldurr - Stone Edge - Level 48
  (534, 53400, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Conkeldurr - Superpower - Level 54
  (534, 53400, 276, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Conkeldurr - Focus Punch - Level 60
  (534, 53400, 264, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Conkeldurr - Mega Punch - TM00
  (534, 53400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Conkeldurr - Mega Kick - TM01
  (534, 53400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Conkeldurr - Fire Punch - TM03
  (534, 53400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Conkeldurr - Ice Punch - TM04
  (534, 53400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Conkeldurr - Thunder Punch - TM05
  (534, 53400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Conkeldurr - Hyper Beam - TM08
  (534, 53400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Conkeldurr - Giga Impact - TM09
  (534, 53400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Conkeldurr - Dig - TM15
  (534, 53400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Conkeldurr - Rest - TM21
  (534, 53400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Conkeldurr - Rock Slide - TM22
  (534, 53400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Conkeldurr - Snore - TM24
  (534, 53400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Conkeldurr - Protect - TM25
  (534, 53400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Conkeldurr - Scary Face - TM26
  (534, 53400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Conkeldurr - Attract - TM31
  (534, 53400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Conkeldurr - Rain Dance - TM33
  (534, 53400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Conkeldurr - Sunny Day - TM34
  (534, 53400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Conkeldurr - Facade - TM39
  (534, 53400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Conkeldurr - Helping Hand - TM41
  (534, 53400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Conkeldurr - Revenge - TM42
  (534, 53400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Conkeldurr - Brick Break - TM43
  (534, 53400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Conkeldurr - Rock Tomb - TM48
  (534, 53400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Conkeldurr - Rock Blast - TM54
  (534, 53400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Conkeldurr - Payback - TM57
  (534, 53400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Conkeldurr - Fling - TM59
  (534, 53400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Conkeldurr - Drain Punch - TM63
  (534, 53400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Conkeldurr - Low Sweep - TM75
  (534, 53400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Conkeldurr - Round - TM76
  (534, 53400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Conkeldurr - Retaliate - TM79
  (534, 53400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Conkeldurr - Bulldoze - TM81
  (534, 53400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Conkeldurr - Brutal Swing - TM97
  (534, 53400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Conkeldurr - Stomping Tantrum - TM98
  (534, 53400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 45),
  -- Conkeldurr - Low Kick - TR07
  (534, 53400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 46),
  -- Conkeldurr - Earthquake - TR10
  (534, 53400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Conkeldurr - Focus Energy - TR13
  (534, 53400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 48),
  -- Conkeldurr - Substitute - TR20
  (534, 53400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Conkeldurr - Reversal - TR21
  (534, 53400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 50),
  -- Conkeldurr - Endure - TR26
  (534, 53400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Conkeldurr - Sleep Talk - TR27
  (534, 53400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Conkeldurr - Taunt - TR37
  (534, 53400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Conkeldurr - Superpower - TR39
  (534, 53400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 54),
  -- Conkeldurr - Bulk Up - TR48
  (534, 53400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Conkeldurr - Close Combat - TR53
  (534, 53400, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 56),
  -- Conkeldurr - Poison Jab - TR57
  (534, 53400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 57),
  -- Conkeldurr - Focus Blast - TR64
  (534, 53400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Conkeldurr - Stone Edge - TR75
  (534, 53400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Conkeldurr - Grass Knot - TR77
  (534, 53400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Conkeldurr - Work Up - TR85
  (534, 53400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Conkeldurr - High Horsepower - TR94
  (534, 53400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 62),
  -- Tympole - Growl - Level 1
  (535, 53500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tympole - Echoed Voice - Level 1
  (535, 53500, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tympole - Acid - Level 4
  (535, 53500, 51, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tympole - Supersonic - Level 8
  (535, 53500, 48, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tympole - Mud Shot - Level 12
  (535, 53500, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tympole - Round - Level 16
  (535, 53500, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tympole - Bubble Beam - Level 20
  (535, 53500, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tympole - Flail - Level 24
  (535, 53500, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tympole - Uproar - Level 28
  (535, 53500, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tympole - Aqua Ring - Level 32
  (535, 53500, 392, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tympole - Hyper Voice - Level 36
  (535, 53500, 304, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tympole - Muddy Water - Level 40
  (535, 53500, 330, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tympole - Rain Dance - Level 44
  (535, 53500, 240, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tympole - Hydro Pump - Level 48
  (535, 53500, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tympole - Screech - TM16
  (535, 53500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Tympole - Rest - TM21
  (535, 53500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Tympole - Snore - TM24
  (535, 53500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Tympole - Protect - TM25
  (535, 53500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Tympole - Icy Wind - TM27
  (535, 53500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Tympole - Attract - TM31
  (535, 53500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Tympole - Rain Dance - TM33
  (535, 53500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Tympole - Hail - TM35
  (535, 53500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Tympole - Facade - TM39
  (535, 53500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Tympole - Weather Ball - TM46
  (535, 53500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 24),
  -- Tympole - Bounce - TM52
  (535, 53500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Tympole - Mud Shot - TM53
  (535, 53500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Tympole - Round - TM76
  (535, 53500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Tympole - Hydro Pump - TR03
  (535, 53500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 28),
  -- Tympole - Surf - TR04
  (535, 53500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Tympole - Substitute - TR20
  (535, 53500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Tympole - Sludge Bomb - TR22
  (535, 53500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 31),
  -- Tympole - Endure - TR26
  (535, 53500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Tympole - Sleep Talk - TR27
  (535, 53500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Tympole - Uproar - TR35
  (535, 53500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 34),
  -- Tympole - Hyper Voice - TR42
  (535, 53500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 35),
  -- Tympole - Muddy Water - TR45
  (535, 53500, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 36),
  -- Tympole - Earth Power - TR67
  (535, 53500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 37),
  -- Tympole - Sludge Wave - TR78
  (535, 53500, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 38),
  -- Tympole - Scald - TR84
  (535, 53500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 39),
  -- Tympole - Venom Drench - TR91
  (535, 53500, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 40),
  -- Tympole - Mist - Egg
  (535, 53500, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tympole - Toxic - Egg
  (535, 53500, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Tympole - Mud-Slap - Egg
  (535, 53500, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tympole - Water Pulse - Egg
  (535, 53500, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Palpitoad - Growl - Level 1
  (536, 53600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palpitoad - Supersonic - Level 1
  (536, 53600, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palpitoad - Acid - Level 1
  (536, 53600, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palpitoad - Echoed Voice - Level 1
  (536, 53600, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palpitoad - Mud Shot - Level 12
  (536, 53600, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Palpitoad - Round - Level 16
  (536, 53600, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Palpitoad - Bubble Beam - Level 20
  (536, 53600, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Palpitoad - Flail - Level 24
  (536, 53600, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Palpitoad - Uproar - Level 30
  (536, 53600, 253, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Palpitoad - Aqua Ring - Level 37
  (536, 53600, 392, 18, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Palpitoad - Hyper Voice - Level 42
  (536, 53600, 304, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Palpitoad - Muddy Water - Level 48
  (536, 53600, 330, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Palpitoad - Rain Dance - Level 54
  (536, 53600, 240, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Palpitoad - Hydro Pump - Level 60
  (536, 53600, 56, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Palpitoad - Screech - TM16
  (536, 53600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Palpitoad - Rest - TM21
  (536, 53600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Palpitoad - Snore - TM24
  (536, 53600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Palpitoad - Protect - TM25
  (536, 53600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Palpitoad - Icy Wind - TM27
  (536, 53600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Palpitoad - Attract - TM31
  (536, 53600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Palpitoad - Rain Dance - TM33
  (536, 53600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Palpitoad - Hail - TM35
  (536, 53600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Palpitoad - Facade - TM39
  (536, 53600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Palpitoad - Weather Ball - TM46
  (536, 53600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 24),
  -- Palpitoad - Bounce - TM52
  (536, 53600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Palpitoad - Mud Shot - TM53
  (536, 53600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Palpitoad - Round - TM76
  (536, 53600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Palpitoad - Bulldoze - TM81
  (536, 53600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 28),
  -- Palpitoad - Hydro Pump - TR03
  (536, 53600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 29),
  -- Palpitoad - Surf - TR04
  (536, 53600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Palpitoad - Substitute - TR20
  (536, 53600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Palpitoad - Sludge Bomb - TR22
  (536, 53600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 32),
  -- Palpitoad - Endure - TR26
  (536, 53600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Palpitoad - Sleep Talk - TR27
  (536, 53600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Palpitoad - Uproar - TR35
  (536, 53600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 35),
  -- Palpitoad - Hyper Voice - TR42
  (536, 53600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 36),
  -- Palpitoad - Muddy Water - TR45
  (536, 53600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 37),
  -- Palpitoad - Earth Power - TR67
  (536, 53600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 38),
  -- Palpitoad - Power Whip - TR72
  (536, 53600, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 39),
  -- Palpitoad - Stealth Rock - TR76
  (536, 53600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 40),
  -- Palpitoad - Sludge Wave - TR78
  (536, 53600, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 41),
  -- Palpitoad - Scald - TR84
  (536, 53600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Palpitoad - Venom Drench - TR91
  (536, 53600, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 43),
  -- Seismitoad - Growl - Level 1
  (537, 53700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seismitoad - Supersonic - Level 1
  (537, 53700, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seismitoad - Acid - Level 1
  (537, 53700, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seismitoad - Gastro Acid - Level 1
  (537, 53700, 380, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seismitoad - Drain Punch - Level 1
  (537, 53700, 409, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seismitoad - Echoed Voice - Level 1
  (537, 53700, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Seismitoad - Mud Shot - Level 12
  (537, 53700, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Seismitoad - Round - Level 16
  (537, 53700, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Seismitoad - Bubble Beam - Level 20
  (537, 53700, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Seismitoad - Flail - Level 24
  (537, 53700, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Seismitoad - Uproar - Level 30
  (537, 53700, 253, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Seismitoad - Aqua Ring - Level 39
  (537, 53700, 392, 18, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Seismitoad - Hyper Voice - Level 46
  (537, 53700, 304, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Seismitoad - Muddy Water - Level 54
  (537, 53700, 330, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Seismitoad - Rain Dance - Level 62
  (537, 53700, 240, 18, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Seismitoad - Hydro Pump - Level 70
  (537, 53700, 56, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Seismitoad - Drain Punch - Evolution
  (537, 53700, 409, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Seismitoad - Mega Punch - TM00
  (537, 53700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Seismitoad - Mega Kick - TM01
  (537, 53700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Seismitoad - Ice Punch - TM04
  (537, 53700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Seismitoad - Hyper Beam - TM08
  (537, 53700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Seismitoad - Giga Impact - TM09
  (537, 53700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Seismitoad - Dig - TM15
  (537, 53700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Seismitoad - Screech - TM16
  (537, 53700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Seismitoad - Rest - TM21
  (537, 53700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Seismitoad - Rock Slide - TM22
  (537, 53700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Seismitoad - Snore - TM24
  (537, 53700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Seismitoad - Protect - TM25
  (537, 53700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Seismitoad - Icy Wind - TM27
  (537, 53700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Seismitoad - Attract - TM31
  (537, 53700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Seismitoad - Rain Dance - TM33
  (537, 53700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Seismitoad - Hail - TM35
  (537, 53700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Seismitoad - Facade - TM39
  (537, 53700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Seismitoad - Brick Break - TM43
  (537, 53700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Seismitoad - Dive - TM45
  (537, 53700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Seismitoad - Weather Ball - TM46
  (537, 53700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Seismitoad - Rock Tomb - TM48
  (537, 53700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Seismitoad - Bounce - TM52
  (537, 53700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 38),
  -- Seismitoad - Mud Shot - TM53
  (537, 53700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Seismitoad - Payback - TM57
  (537, 53700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Seismitoad - Fling - TM59
  (537, 53700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Seismitoad - Drain Punch - TM63
  (537, 53700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Seismitoad - Venoshock - TM74
  (537, 53700, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 43),
  -- Seismitoad - Round - TM76
  (537, 53700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Seismitoad - Bulldoze - TM81
  (537, 53700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Seismitoad - Stomping Tantrum - TM98
  (537, 53700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 46),
  -- Seismitoad - Hydro Pump - TR03
  (537, 53700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Seismitoad - Surf - TR04
  (537, 53700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Seismitoad - Low Kick - TR07
  (537, 53700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Seismitoad - Earthquake - TR10
  (537, 53700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Seismitoad - Substitute - TR20
  (537, 53700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Seismitoad - Sludge Bomb - TR22
  (537, 53700, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Seismitoad - Endure - TR26
  (537, 53700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Seismitoad - Sleep Talk - TR27
  (537, 53700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Seismitoad - Uproar - TR35
  (537, 53700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Seismitoad - Hyper Voice - TR42
  (537, 53700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 56),
  -- Seismitoad - Muddy Water - TR45
  (537, 53700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 57),
  -- Seismitoad - Poison Jab - TR57
  (537, 53700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Seismitoad - Focus Blast - TR64
  (537, 53700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Seismitoad - Earth Power - TR67
  (537, 53700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Seismitoad - Power Whip - TR72
  (537, 53700, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 61),
  -- Seismitoad - Stealth Rock - TR76
  (537, 53700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Seismitoad - Grass Knot - TR77
  (537, 53700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Seismitoad - Sludge Wave - TR78
  (537, 53700, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 64),
  -- Seismitoad - Scald - TR84
  (537, 53700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 65),
  -- Seismitoad - Venom Drench - TR91
  (537, 53700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 66),
  -- Seismitoad - Liquidation - TR98
  (537, 53700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 67),
  -- Throh - Bind - Level 1
  (538, 53800, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Throh - Leer - Level 1
  (538, 53800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Throh - Focus Energy - Level 5
  (538, 53800, 116, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Throh - Circle Throw - Level 10
  (538, 53800, 509, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Throh - Wide Guard - Level 15
  (538, 53800, 469, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Throh - Revenge - Level 20
  (538, 53800, 279, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Throh - Bulk Up - Level 25
  (538, 53800, 339, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Throh - Storm Throw - Level 30
  (538, 53800, 480, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Throh - Vital Throw - Level 35
  (538, 53800, 233, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Throh - Seismic Toss - Level 40
  (538, 53800, 69, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Throh - Endure - Level 45
  (538, 53800, 203, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Throh - Reversal - Level 50
  (538, 53800, 179, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Throh - Superpower - Level 55
  (538, 53800, 276, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Throh - Mega Punch - TM00
  (538, 53800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Throh - Mega Kick - TM01
  (538, 53800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Throh - Fire Punch - TM03
  (538, 53800, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 16),
  -- Throh - Ice Punch - TM04
  (538, 53800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Throh - Thunder Punch - TM05
  (538, 53800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Throh - Giga Impact - TM09
  (538, 53800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Throh - Dig - TM15
  (538, 53800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Throh - Rest - TM21
  (538, 53800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Throh - Rock Slide - TM22
  (538, 53800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Throh - Snore - TM24
  (538, 53800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Throh - Protect - TM25
  (538, 53800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Throh - Scary Face - TM26
  (538, 53800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Throh - Attract - TM31
  (538, 53800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Throh - Rain Dance - TM33
  (538, 53800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Throh - Sunny Day - TM34
  (538, 53800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Throh - Facade - TM39
  (538, 53800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Throh - Helping Hand - TM41
  (538, 53800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Throh - Revenge - TM42
  (538, 53800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Throh - Brick Break - TM43
  (538, 53800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Throh - Rock Tomb - TM48
  (538, 53800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Throh - Payback - TM57
  (538, 53800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Throh - Fling - TM59
  (538, 53800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Throh - Low Sweep - TM75
  (538, 53800, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 36),
  -- Throh - Round - TM76
  (538, 53800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Throh - Retaliate - TM79
  (538, 53800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Throh - Bulldoze - TM81
  (538, 53800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Throh - Stomping Tantrum - TM98
  (538, 53800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Throh - Body Slam - TR01
  (538, 53800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Throh - Low Kick - TR07
  (538, 53800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 42),
  -- Throh - Earthquake - TR10
  (538, 53800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Throh - Focus Energy - TR13
  (538, 53800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 44),
  -- Throh - Substitute - TR20
  (538, 53800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Throh - Reversal - TR21
  (538, 53800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 46),
  -- Throh - Endure - TR26
  (538, 53800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Throh - Sleep Talk - TR27
  (538, 53800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Throh - Taunt - TR37
  (538, 53800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Throh - Superpower - TR39
  (538, 53800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Throh - Bulk Up - TR48
  (538, 53800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 51),
  -- Throh - Poison Jab - TR57
  (538, 53800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 52),
  -- Throh - Focus Blast - TR64
  (538, 53800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Throh - Zen Headbutt - TR69
  (538, 53800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Throh - Stone Edge - TR75
  (538, 53800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Throh - Grass Knot - TR77
  (538, 53800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Throh - Work Up - TR85
  (538, 53800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Sawk - Leer - Level 1
  (539, 53900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawk - Rock Smash - Level 1
  (539, 53900, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawk - Focus Energy - Level 5
  (539, 53900, 116, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sawk - Double Kick - Level 10
  (539, 53900, 24, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sawk - Quick Guard - Level 15
  (539, 53900, 501, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sawk - Low Sweep - Level 20
  (539, 53900, 490, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sawk - Bulk Up - Level 25
  (539, 53900, 339, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sawk - Retaliate - Level 30
  (539, 53900, 514, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sawk - Brick Break - Level 35
  (539, 53900, 280, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sawk - Counter - Level 40
  (539, 53900, 68, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sawk - Endure - Level 45
  (539, 53900, 203, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sawk - Reversal - Level 50
  (539, 53900, 179, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sawk - Close Combat - Level 55
  (539, 53900, 370, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Sawk - Mega Punch - TM00
  (539, 53900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Sawk - Mega Kick - TM01
  (539, 53900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Sawk - Fire Punch - TM03
  (539, 53900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 16),
  -- Sawk - Ice Punch - TM04
  (539, 53900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Sawk - Thunder Punch - TM05
  (539, 53900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Sawk - Giga Impact - TM09
  (539, 53900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Sawk - Dig - TM15
  (539, 53900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Sawk - Rest - TM21
  (539, 53900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Sawk - Rock Slide - TM22
  (539, 53900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Sawk - Snore - TM24
  (539, 53900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Sawk - Protect - TM25
  (539, 53900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Sawk - Scary Face - TM26
  (539, 53900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Sawk - Attract - TM31
  (539, 53900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Sawk - Rain Dance - TM33
  (539, 53900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Sawk - Sunny Day - TM34
  (539, 53900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Sawk - Facade - TM39
  (539, 53900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Sawk - Helping Hand - TM41
  (539, 53900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Sawk - Revenge - TM42
  (539, 53900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Sawk - Brick Break - TM43
  (539, 53900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Sawk - Rock Tomb - TM48
  (539, 53900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Sawk - Payback - TM57
  (539, 53900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Sawk - Fling - TM59
  (539, 53900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Sawk - Low Sweep - TM75
  (539, 53900, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 36),
  -- Sawk - Round - TM76
  (539, 53900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Sawk - Retaliate - TM79
  (539, 53900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Sawk - Bulldoze - TM81
  (539, 53900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Sawk - Low Kick - TR07
  (539, 53900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 40),
  -- Sawk - Earthquake - TR10
  (539, 53900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Sawk - Focus Energy - TR13
  (539, 53900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Sawk - Substitute - TR20
  (539, 53900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Sawk - Reversal - TR21
  (539, 53900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Sawk - Endure - TR26
  (539, 53900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Sawk - Sleep Talk - TR27
  (539, 53900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Sawk - Taunt - TR37
  (539, 53900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Sawk - Superpower - TR39
  (539, 53900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Sawk - Bulk Up - TR48
  (539, 53900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 49),
  -- Sawk - Close Combat - TR53
  (539, 53900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 50),
  -- Sawk - Poison Jab - TR57
  (539, 53900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 51),
  -- Sawk - Focus Blast - TR64
  (539, 53900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Sawk - Zen Headbutt - TR69
  (539, 53900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Sawk - Stone Edge - TR75
  (539, 53900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Sawk - Grass Knot - TR77
  (539, 53900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Sawk - Work Up - TR85
  (539, 53900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Sawk - Throat Chop - TR95
  (539, 53900, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 57),
  -- Venipede - Poison Sting - Level 1
  (543, 54300, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venipede - Defense Curl - Level 1
  (543, 54300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venipede - Rollout - Level 4
  (543, 54300, 205, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Venipede - Protect - Level 8
  (543, 54300, 182, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Venipede - Poison Tail - Level 12
  (543, 54300, 342, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Venipede - Screech - Level 16
  (543, 54300, 103, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Venipede - Bug Bite - Level 20
  (543, 54300, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Venipede - Venoshock - Level 24
  (543, 54300, 474, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Venipede - Take Down - Level 28
  (543, 54300, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Venipede - Agility - Level 32
  (543, 54300, 97, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Venipede - Toxic - Level 36
  (543, 54300, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Venipede - Venom Drench - Level 40
  (543, 54300, 599, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Venipede - Double-Edge - Level 44
  (543, 54300, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Venipede - Pin Missile - TM07
  (543, 54300, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 14),
  -- Venipede - Solar Beam - TM11
  (543, 54300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Venipede - Screech - TM16
  (543, 54300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Venipede - Rest - TM21
  (543, 54300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Venipede - Snore - TM24
  (543, 54300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Venipede - Protect - TM25
  (543, 54300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Venipede - Attract - TM31
  (543, 54300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Venipede - Sunny Day - TM34
  (543, 54300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Venipede - Facade - TM39
  (543, 54300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Venipede - Payback - TM57
  (543, 54300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 23),
  -- Venipede - Venoshock - TM74
  (543, 54300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 24),
  -- Venipede - Round - TM76
  (543, 54300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Venipede - Hex - TM77
  (543, 54300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 26),
  -- Venipede - Agility - TR12
  (543, 54300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 27),
  -- Venipede - Substitute - TR20
  (543, 54300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 28),
  -- Venipede - Sludge Bomb - TR22
  (543, 54300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 29),
  -- Venipede - Spikes - TR23
  (543, 54300, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 30),
  -- Venipede - Endure - TR26
  (543, 54300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Venipede - Sleep Talk - TR27
  (543, 54300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Venipede - Iron Defense - TR46
  (543, 54300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 33),
  -- Venipede - Gyro Ball - TR52
  (543, 54300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 34),
  -- Venipede - Toxic Spikes - TR54
  (543, 54300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 35),
  -- Venipede - Poison Jab - TR57
  (543, 54300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 36),
  -- Venipede - Venom Drench - TR91
  (543, 54300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 37),
  -- Venipede - Bite - Egg
  (543, 54300, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Venipede - Fury Cutter - Egg
  (543, 54300, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Whirlipede - Poison Sting - Level 1
  (544, 54400, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whirlipede - Defense Curl - Level 1
  (544, 54400, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whirlipede - Protect - Level 1
  (544, 54400, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whirlipede - Rollout - Level 1
  (544, 54400, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whirlipede - Iron Defense - Level 1
  (544, 54400, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whirlipede - Poison Tail - Level 12
  (544, 54400, 342, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Whirlipede - Screech - Level 16
  (544, 54400, 103, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Whirlipede - Bug Bite - Level 20
  (544, 54400, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Whirlipede - Venoshock - Level 26
  (544, 54400, 474, 18, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Whirlipede - Take Down - Level 32
  (544, 54400, 36, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Whirlipede - Agility - Level 38
  (544, 54400, 97, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Whirlipede - Toxic - Level 44
  (544, 54400, 92, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Whirlipede - Venom Drench - Level 50
  (544, 54400, 599, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Whirlipede - Double-Edge - Level 56
  (544, 54400, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Whirlipede - Iron Defense - Evolution
  (544, 54400, 334, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Whirlipede - Pin Missile - TM07
  (544, 54400, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 16),
  -- Whirlipede - Solar Beam - TM11
  (544, 54400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Whirlipede - Screech - TM16
  (544, 54400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Whirlipede - Rest - TM21
  (544, 54400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Whirlipede - Snore - TM24
  (544, 54400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Whirlipede - Protect - TM25
  (544, 54400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Whirlipede - Attract - TM31
  (544, 54400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Whirlipede - Sunny Day - TM34
  (544, 54400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Whirlipede - Facade - TM39
  (544, 54400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Whirlipede - Payback - TM57
  (544, 54400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 25),
  -- Whirlipede - Venoshock - TM74
  (544, 54400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 26),
  -- Whirlipede - Round - TM76
  (544, 54400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Whirlipede - Hex - TM77
  (544, 54400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Whirlipede - Agility - TR12
  (544, 54400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 29),
  -- Whirlipede - Substitute - TR20
  (544, 54400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Whirlipede - Sludge Bomb - TR22
  (544, 54400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 31),
  -- Whirlipede - Spikes - TR23
  (544, 54400, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 32),
  -- Whirlipede - Endure - TR26
  (544, 54400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Whirlipede - Sleep Talk - TR27
  (544, 54400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Whirlipede - Iron Defense - TR46
  (544, 54400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 35),
  -- Whirlipede - Gyro Ball - TR52
  (544, 54400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 36),
  -- Whirlipede - Toxic Spikes - TR54
  (544, 54400, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 37),
  -- Whirlipede - Poison Jab - TR57
  (544, 54400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 38),
  -- Whirlipede - Venom Drench - TR91
  (544, 54400, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 39),
  -- Scolipede - Poison Sting - Level 1
  (545, 54500, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scolipede - Defense Curl - Level 1
  (545, 54500, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scolipede - Protect - Level 1
  (545, 54500, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scolipede - Rollout - Level 1
  (545, 54500, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scolipede - Baton Pass - Level 1
  (545, 54500, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Scolipede - Iron Defense - Level 1
  (545, 54500, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Scolipede - Poison Tail - Level 12
  (545, 54500, 342, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Scolipede - Screech - Level 16
  (545, 54500, 103, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Scolipede - Bug Bite - Level 20
  (545, 54500, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Scolipede - Venoshock - Level 26
  (545, 54500, 474, 18, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Scolipede - Take Down - Level 34
  (545, 54500, 36, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Scolipede - Agility - Level 42
  (545, 54500, 97, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Scolipede - Toxic - Level 50
  (545, 54500, 92, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Scolipede - Venom Drench - Level 58
  (545, 54500, 599, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Scolipede - Double-Edge - Level 66
  (545, 54500, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Scolipede - Megahorn - Level 74
  (545, 54500, 224, 18, NULL, 1, 74, NULL, NULL, NULL, 16),
  -- Scolipede - Pin Missile - TM07
  (545, 54500, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 17),
  -- Scolipede - Hyper Beam - TM08
  (545, 54500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Scolipede - Giga Impact - TM09
  (545, 54500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Scolipede - Solar Beam - TM11
  (545, 54500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Scolipede - Dig - TM15
  (545, 54500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Scolipede - Screech - TM16
  (545, 54500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Scolipede - Rest - TM21
  (545, 54500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Scolipede - Rock Slide - TM22
  (545, 54500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Scolipede - Snore - TM24
  (545, 54500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Scolipede - Protect - TM25
  (545, 54500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Scolipede - Attract - TM31
  (545, 54500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Scolipede - Sunny Day - TM34
  (545, 54500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Scolipede - Facade - TM39
  (545, 54500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Scolipede - Rock Tomb - TM48
  (545, 54500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Scolipede - Payback - TM57
  (545, 54500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Scolipede - Assurance - TM58
  (545, 54500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Scolipede - Cross Poison - TM73
  (545, 54500, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 33),
  -- Scolipede - Venoshock - TM74
  (545, 54500, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 34),
  -- Scolipede - Round - TM76
  (545, 54500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Scolipede - Hex - TM77
  (545, 54500, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 36),
  -- Scolipede - Bulldoze - TM81
  (545, 54500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Scolipede - Smart Strike - TM96
  (545, 54500, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 38),
  -- Scolipede - Stomping Tantrum - TM98
  (545, 54500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Scolipede - Swords Dance - TR00
  (545, 54500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Scolipede - Earthquake - TR10
  (545, 54500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Scolipede - Agility - TR12
  (545, 54500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Scolipede - Substitute - TR20
  (545, 54500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Scolipede - Sludge Bomb - TR22
  (545, 54500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Scolipede - Spikes - TR23
  (545, 54500, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 45),
  -- Scolipede - Endure - TR26
  (545, 54500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Scolipede - Sleep Talk - TR27
  (545, 54500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Scolipede - Megahorn - TR28
  (545, 54500, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 48),
  -- Scolipede - Baton Pass - TR29
  (545, 54500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 49),
  -- Scolipede - Iron Tail - TR31
  (545, 54500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Scolipede - Superpower - TR39
  (545, 54500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Scolipede - Iron Defense - TR46
  (545, 54500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Scolipede - Gyro Ball - TR52
  (545, 54500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 53),
  -- Scolipede - Toxic Spikes - TR54
  (545, 54500, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 54),
  -- Scolipede - Poison Jab - TR57
  (545, 54500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 55),
  -- Scolipede - X-Scissor - TR60
  (545, 54500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 56),
  -- Scolipede - Venom Drench - TR91
  (545, 54500, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 57),
  -- Scolipede - Throat Chop - TR95
  (545, 54500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 58),
  -- Cottonee - Absorb - Level 1
  (546, 54600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cottonee - Helping Hand - Level 1
  (546, 54600, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cottonee - Fairy Wind - Level 3
  (546, 54600, 584, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Cottonee - Stun Spore - Level 6
  (546, 54600, 78, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Cottonee - Mega Drain - Level 12
  (546, 54600, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cottonee - Razor Leaf - Level 15
  (546, 54600, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cottonee - Growth - Level 18
  (546, 54600, 74, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Cottonee - Poison Powder - Level 21
  (546, 54600, 77, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Cottonee - Giga Drain - Level 24
  (546, 54600, 202, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cottonee - Charm - Level 27
  (546, 54600, 204, 18, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Cottonee - Leech Seed - Level 30
  (546, 54600, 73, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cottonee - Cotton Spore - Level 33
  (546, 54600, 178, 18, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Cottonee - Energy Ball - Level 36
  (546, 54600, 412, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Cottonee - Sunny Day - Level 39
  (546, 54600, 241, 18, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Cottonee - Endeavor - Level 42
  (546, 54600, 283, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Cottonee - Cotton Guard - Level 45
  (546, 54600, 538, 18, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Cottonee - Solar Beam - Level 48
  (546, 54600, 76, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Cottonee - Solar Beam - TM11
  (546, 54600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Cottonee - Safeguard - TM19
  (546, 54600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Cottonee - Rest - TM21
  (546, 54600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Cottonee - Snore - TM24
  (546, 54600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Cottonee - Protect - TM25
  (546, 54600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Cottonee - Giga Drain - TM28
  (546, 54600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Cottonee - Charm - TM29
  (546, 54600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Cottonee - Attract - TM31
  (546, 54600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Cottonee - Sunny Day - TM34
  (546, 54600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Cottonee - Beat Up - TM37
  (546, 54600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 27),
  -- Cottonee - Facade - TM39
  (546, 54600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Cottonee - Swift - TM40
  (546, 54600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Cottonee - Helping Hand - TM41
  (546, 54600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Cottonee - Fake Tears - TM47
  (546, 54600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 31),
  -- Cottonee - Round - TM76
  (546, 54600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Cottonee - Grassy Terrain - TM88
  (546, 54600, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 33),
  -- Cottonee - Misty Terrain - TM89
  (546, 54600, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 34),
  -- Cottonee - Substitute - TR20
  (546, 54600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Cottonee - Endure - TR26
  (546, 54600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Cottonee - Sleep Talk - TR27
  (546, 54600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Cottonee - Encore - TR30
  (546, 54600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 38),
  -- Cottonee - Taunt - TR37
  (546, 54600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 39),
  -- Cottonee - Seed Bomb - TR59
  (546, 54600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 40),
  -- Cottonee - Energy Ball - TR65
  (546, 54600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 41),
  -- Cottonee - Grass Knot - TR77
  (546, 54600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 42),
  -- Cottonee - Dazzling Gleam - TR92
  (546, 54600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 43),
  -- Cottonee - Memento - Egg
  (546, 54600, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cottonee - Nature Power - Egg
  (546, 54600, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cottonee - Tickle - Egg
  (546, 54600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cottonee - Worry Seed - Egg
  (546, 54600, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cottonee - Switcheroo - Egg
  (546, 54600, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whimsicott - Gust - Level 1
  (547, 54700, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whimsicott - Absorb - Level 1
  (547, 54700, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whimsicott - Mega Drain - Level 1
  (547, 54700, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whimsicott - Leech Seed - Level 1
  (547, 54700, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whimsicott - Growth - Level 1
  (547, 54700, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whimsicott - Razor Leaf - Level 1
  (547, 54700, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Whimsicott - Solar Beam - Level 1
  (547, 54700, 76, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Whimsicott - Poison Powder - Level 1
  (547, 54700, 77, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Whimsicott - Stun Spore - Level 1
  (547, 54700, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Whimsicott - Cotton Spore - Level 1
  (547, 54700, 178, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Whimsicott - Giga Drain - Level 1
  (547, 54700, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Whimsicott - Charm - Level 1
  (547, 54700, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Whimsicott - Sunny Day - Level 1
  (547, 54700, 241, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Whimsicott - Memento - Level 1
  (547, 54700, 262, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Whimsicott - Helping Hand - Level 1
  (547, 54700, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Whimsicott - Endeavor - Level 1
  (547, 54700, 283, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Whimsicott - Tailwind - Level 1
  (547, 54700, 366, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Whimsicott - Energy Ball - Level 1
  (547, 54700, 412, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Whimsicott - Cotton Guard - Level 1
  (547, 54700, 538, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Whimsicott - Hurricane - Level 1
  (547, 54700, 542, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Whimsicott - Fairy Wind - Level 1
  (547, 54700, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Whimsicott - Moonblast - Level 1
  (547, 54700, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 22),
  -- Whimsicott - Hyper Beam - TM08
  (547, 54700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Whimsicott - Giga Impact - TM09
  (547, 54700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Whimsicott - Solar Beam - TM11
  (547, 54700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 25),
  -- Whimsicott - Light Screen - TM17
  (547, 54700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 26),
  -- Whimsicott - Safeguard - TM19
  (547, 54700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Whimsicott - Rest - TM21
  (547, 54700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Whimsicott - Thief - TM23
  (547, 54700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Whimsicott - Snore - TM24
  (547, 54700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Whimsicott - Protect - TM25
  (547, 54700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Whimsicott - Giga Drain - TM28
  (547, 54700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 32),
  -- Whimsicott - Charm - TM29
  (547, 54700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 33),
  -- Whimsicott - Attract - TM31
  (547, 54700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Whimsicott - Sunny Day - TM34
  (547, 54700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Whimsicott - Beat Up - TM37
  (547, 54700, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 36),
  -- Whimsicott - Facade - TM39
  (547, 54700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Whimsicott - Swift - TM40
  (547, 54700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Whimsicott - Helping Hand - TM41
  (547, 54700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Whimsicott - Fake Tears - TM47
  (547, 54700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 40),
  -- Whimsicott - U-turn - TM56
  (547, 54700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Whimsicott - Fling - TM59
  (547, 54700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Whimsicott - Trick Room - TM70
  (547, 54700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 43),
  -- Whimsicott - Round - TM76
  (547, 54700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Whimsicott - Grassy Terrain - TM88
  (547, 54700, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 45),
  -- Whimsicott - Misty Terrain - TM89
  (547, 54700, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Whimsicott - Psychic - TR11
  (547, 54700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Whimsicott - Substitute - TR20
  (547, 54700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Whimsicott - Endure - TR26
  (547, 54700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Whimsicott - Sleep Talk - TR27
  (547, 54700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Whimsicott - Encore - TR30
  (547, 54700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 51),
  -- Whimsicott - Shadow Ball - TR33
  (547, 54700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Whimsicott - Taunt - TR37
  (547, 54700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Whimsicott - Seed Bomb - TR59
  (547, 54700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 54),
  -- Whimsicott - Energy Ball - TR65
  (547, 54700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Whimsicott - Grass Knot - TR77
  (547, 54700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Whimsicott - Hurricane - TR89
  (547, 54700, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 57),
  -- Whimsicott - Play Rough - TR90
  (547, 54700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Whimsicott - Dazzling Gleam - TR92
  (547, 54700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 59),
  -- Petilil - Absorb - Level 1
  (548, 54800, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Petilil - Growth - Level 1
  (548, 54800, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Petilil - Helping Hand - Level 3
  (548, 54800, 270, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Petilil - Stun Spore - Level 6
  (548, 54800, 78, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Petilil - Mega Drain - Level 9
  (548, 54800, 72, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Petilil - Aromatherapy - Level 12
  (548, 54800, 312, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Petilil - Magical Leaf - Level 15
  (548, 54800, 345, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Petilil - Sleep Powder - Level 18
  (548, 54800, 79, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Petilil - Giga Drain - Level 21
  (548, 54800, 202, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Petilil - Leech Seed - Level 24
  (548, 54800, 73, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Petilil - After You - Level 27
  (548, 54800, 495, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Petilil - Energy Ball - Level 30
  (548, 54800, 412, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Petilil - Synthesis - Level 33
  (548, 54800, 235, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Petilil - Sunny Day - Level 36
  (548, 54800, 241, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Petilil - Entrainment - Level 39
  (548, 54800, 494, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Petilil - Leaf Storm - Level 42
  (548, 54800, 437, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Petilil - Magical Leaf - TM10
  (548, 54800, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 17),
  -- Petilil - Solar Beam - TM11
  (548, 54800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Petilil - Safeguard - TM19
  (548, 54800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Petilil - Rest - TM21
  (548, 54800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Petilil - Snore - TM24
  (548, 54800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Petilil - Protect - TM25
  (548, 54800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Petilil - Giga Drain - TM28
  (548, 54800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Petilil - Charm - TM29
  (548, 54800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Petilil - Attract - TM31
  (548, 54800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Petilil - Sunny Day - TM34
  (548, 54800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Petilil - Facade - TM39
  (548, 54800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Petilil - Helping Hand - TM41
  (548, 54800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Petilil - Round - TM76
  (548, 54800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Petilil - Substitute - TR20
  (548, 54800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Petilil - Endure - TR26
  (548, 54800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Petilil - Sleep Talk - TR27
  (548, 54800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Petilil - Encore - TR30
  (548, 54800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 33),
  -- Petilil - Seed Bomb - TR59
  (548, 54800, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 34),
  -- Petilil - Energy Ball - TR65
  (548, 54800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 35),
  -- Petilil - Leaf Storm - TR71
  (548, 54800, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 36),
  -- Petilil - Grass Knot - TR77
  (548, 54800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 37),
  -- Petilil - Pollen Puff - TR96
  (548, 54800, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 38),
  -- Petilil - Sweet Scent - Egg
  (548, 54800, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Petilil - Ingrain - Egg
  (548, 54800, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Petilil - Healing Wish - Egg
  (548, 54800, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Petilil - Worry Seed - Egg
  (548, 54800, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lilligant - Absorb - Level 1
  (549, 54900, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant - Mega Drain - Level 1
  (549, 54900, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lilligant - Leech Seed - Level 1
  (549, 54900, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lilligant - Growth - Level 1
  (549, 54900, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lilligant - Stun Spore - Level 1
  (549, 54900, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lilligant - Sleep Powder - Level 1
  (549, 54900, 79, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lilligant - Petal Dance - Level 1
  (549, 54900, 80, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lilligant - Giga Drain - Level 1
  (549, 54900, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lilligant - Synthesis - Level 1
  (549, 54900, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lilligant - Sunny Day - Level 1
  (549, 54900, 241, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lilligant - Helping Hand - Level 1
  (549, 54900, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lilligant - Teeter Dance - Level 1
  (549, 54900, 298, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lilligant - Aromatherapy - Level 1
  (549, 54900, 312, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Lilligant - Magical Leaf - Level 1
  (549, 54900, 345, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Lilligant - Energy Ball - Level 1
  (549, 54900, 412, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Lilligant - Leaf Storm - Level 1
  (549, 54900, 437, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Lilligant - Quiver Dance - Level 1
  (549, 54900, 483, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Lilligant - Entrainment - Level 1
  (549, 54900, 494, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Lilligant - After You - Level 1
  (549, 54900, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Lilligant - Petal Blizzard - Level 1
  (549, 54900, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Lilligant - Petal Dance - Evolution
  (549, 54900, 80, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Lilligant - Hyper Beam - TM08
  (549, 54900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Lilligant - Giga Impact - TM09
  (549, 54900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Lilligant - Magical Leaf - TM10
  (549, 54900, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 24),
  -- Lilligant - Solar Beam - TM11
  (549, 54900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 25),
  -- Lilligant - Solar Blade - TM12
  (549, 54900, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 26),
  -- Lilligant - Light Screen - TM17
  (549, 54900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 27),
  -- Lilligant - Safeguard - TM19
  (549, 54900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 28),
  -- Lilligant - Rest - TM21
  (549, 54900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Lilligant - Snore - TM24
  (549, 54900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Lilligant - Protect - TM25
  (549, 54900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Lilligant - Giga Drain - TM28
  (549, 54900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 32),
  -- Lilligant - Charm - TM29
  (549, 54900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 33),
  -- Lilligant - Attract - TM31
  (549, 54900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Lilligant - Sunny Day - TM34
  (549, 54900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Lilligant - Facade - TM39
  (549, 54900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Lilligant - Helping Hand - TM41
  (549, 54900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 37),
  -- Lilligant - Round - TM76
  (549, 54900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Lilligant - Grassy Terrain - TM88
  (549, 54900, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 39),
  -- Lilligant - Swords Dance - TR00
  (549, 54900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Lilligant - Substitute - TR20
  (549, 54900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Lilligant - Endure - TR26
  (549, 54900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Lilligant - Sleep Talk - TR27
  (549, 54900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Lilligant - Encore - TR30
  (549, 54900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 44),
  -- Lilligant - Leaf Blade - TR50
  (549, 54900, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 45),
  -- Lilligant - Seed Bomb - TR59
  (549, 54900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Lilligant - Energy Ball - TR65
  (549, 54900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Lilligant - Leaf Storm - TR71
  (549, 54900, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 48),
  -- Lilligant - Grass Knot - TR77
  (549, 54900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 49),
  -- Lilligant - Pollen Puff - TR96
  (549, 54900, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 50),
  -- Basculin - Tail Whip - Level 1
  (550, 55000, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin - Water Gun - Level 1
  (550, 55000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin - Tackle - Level 4
  (550, 55000, 33, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin - Flail - Level 8
  (550, 55000, 175, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Basculin - Aqua Jet - Level 12
  (550, 55000, 453, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Basculin - Bite - Level 16
  (550, 55000, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Basculin - Scary Face - Level 20
  (550, 55000, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Basculin - Headbutt - Level 24
  (550, 55000, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Basculin - Soak - Level 28
  (550, 55000, 487, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Basculin - Crunch - Level 32
  (550, 55000, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Basculin - Take Down - Level 36
  (550, 55000, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Basculin - Final Gambit - Level 40
  (550, 55000, 515, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Basculin - Aqua Tail - Level 44
  (550, 55000, 401, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Basculin - Thrash - Level 48
  (550, 55000, 37, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Basculin - Double-Edge - Level 52
  (550, 55000, 38, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Basculin - Head Smash - Level 56
  (550, 55000, 457, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Basculin - Rest - TM21
  (550, 55000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Basculin - Snore - TM24
  (550, 55000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Basculin - Protect - TM25
  (550, 55000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Basculin - Scary Face - TM26
  (550, 55000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Basculin - Icy Wind - TM27
  (550, 55000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Basculin - Attract - TM31
  (550, 55000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Basculin - Rain Dance - TM33
  (550, 55000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Basculin - Hail - TM35
  (550, 55000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Basculin - Whirlpool - TM36
  (550, 55000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Basculin - Facade - TM39
  (550, 55000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Basculin - Swift - TM40
  (550, 55000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Basculin - Revenge - TM42
  (550, 55000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Basculin - Dive - TM45
  (550, 55000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 29),
  -- Basculin - Bounce - TM52
  (550, 55000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Basculin - Mud Shot - TM53
  (550, 55000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Basculin - Brine - TM55
  (550, 55000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Basculin - Assurance - TM58
  (550, 55000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Basculin - Ice Fang - TM67
  (550, 55000, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 34),
  -- Basculin - Round - TM76
  (550, 55000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Basculin - Hydro Pump - TR03
  (550, 55000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Basculin - Surf - TR04
  (550, 55000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Basculin - Ice Beam - TR05
  (550, 55000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Basculin - Agility - TR12
  (550, 55000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Basculin - Waterfall - TR16
  (550, 55000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 40),
  -- Basculin - Substitute - TR20
  (550, 55000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Basculin - Reversal - TR21
  (550, 55000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Basculin - Endure - TR26
  (550, 55000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Basculin - Sleep Talk - TR27
  (550, 55000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Basculin - Crunch - TR32
  (550, 55000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 45),
  -- Basculin - Uproar - TR35
  (550, 55000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 46),
  -- Basculin - Taunt - TR37
  (550, 55000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Basculin - Superpower - TR39
  (550, 55000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Basculin - Muddy Water - TR45
  (550, 55000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Basculin - Zen Headbutt - TR69
  (550, 55000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Basculin - Scald - TR84
  (550, 55000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Basculin - Psychic Fangs - TR97
  (550, 55000, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Basculin - Liquidation - TR98
  (550, 55000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 53),
  -- Basculin - Bubble Beam - Egg
  (550, 55000, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Basculin - Endeavor - Egg
  (550, 55000, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 55);

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
  -- Herdier - Lick - Egg
  (507, 50700, 122, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Herdier - Mud-Slap - Egg
  (507, 50700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Herdier - Yawn - Egg
  (507, 50700, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Herdier - Howl - Egg
  (507, 50700, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Herdier - Covet - Egg
  (507, 50700, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Herdier - After You - Egg
  (507, 50700, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stoutland - Lick - Egg
  (508, 50800, 122, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stoutland - Mud-Slap - Egg
  (508, 50800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stoutland - Yawn - Egg
  (508, 50800, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stoutland - Howl - Egg
  (508, 50800, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stoutland - Covet - Egg
  (508, 50800, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stoutland - After You - Egg
  (508, 50800, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Liepard - Quick Attack - Egg
  (510, 51000, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Liepard - Double Team - Egg
  (510, 51000, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Liepard - Slash - Egg
  (510, 51000, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Liepard - Yawn - Egg
  (510, 51000, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Liepard - Covet - Egg
  (510, 51000, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Liepard - Copycat - Egg
  (510, 51000, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Musharna - Curse - Egg
  (518, 51800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Musharna - Healing Wish - Egg
  (518, 51800, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tranquill - Hypnosis - Egg
  (520, 52000, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tranquill - Morning Sun - Egg
  (520, 52000, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tranquill - Wish - Egg
  (520, 52000, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tranquill - Night Slash - Egg
  (520, 52000, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tranquill - Defog - Egg
  (520, 52000, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Unfezant - Hypnosis - Egg
  (521, 52100, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Unfezant - Morning Sun - Egg
  (521, 52100, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Unfezant - Wish - Egg
  (521, 52100, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Unfezant - Night Slash - Egg
  (521, 52100, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Unfezant - Defog - Egg
  (521, 52100, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Boldore - Take Down - Egg
  (525, 52500, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Boldore - Curse - Egg
  (525, 52500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Boldore - Gravity - Egg
  (525, 52500, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Boldore - Wide Guard - Egg
  (525, 52500, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Boldore - Autotomize - Egg
  (525, 52500, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gigalith - Take Down - Egg
  (526, 52600, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gigalith - Curse - Egg
  (526, 52600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gigalith - Gravity - Egg
  (526, 52600, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gigalith - Wide Guard - Egg
  (526, 52600, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gigalith - Autotomize - Egg
  (526, 52600, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swoobat - Supersonic - Egg
  (528, 52800, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Swoobat - Flatter - Egg
  (528, 52800, 260, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Swoobat - Knock Off - Egg
  (528, 52800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Swoobat - Roost - Egg
  (528, 52800, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Swoobat - Psycho Shift - Egg
  (528, 52800, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Excadrill - Submission - Egg
  (530, 53000, 66, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Excadrill - Slash - Egg
  (530, 53000, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Excadrill - Metal Sound - Egg
  (530, 53000, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gurdurr - Counter - Egg
  (533, 53300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gurdurr - Mach Punch - Egg
  (533, 53300, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gurdurr - Detect - Egg
  (533, 53300, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gurdurr - Defog - Egg
  (533, 53300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gurdurr - Wide Guard - Egg
  (533, 53300, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gurdurr - Power-Up Punch - Egg
  (533, 53300, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Conkeldurr - Counter - Egg
  (534, 53400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Conkeldurr - Mach Punch - Egg
  (534, 53400, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Conkeldurr - Detect - Egg
  (534, 53400, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Conkeldurr - Defog - Egg
  (534, 53400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Conkeldurr - Wide Guard - Egg
  (534, 53400, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Conkeldurr - Power-Up Punch - Egg
  (534, 53400, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Palpitoad - Mist - Egg
  (536, 53600, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Palpitoad - Toxic - Egg
  (536, 53600, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Palpitoad - Mud-Slap - Egg
  (536, 53600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Palpitoad - Water Pulse - Egg
  (536, 53600, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seismitoad - Mist - Egg
  (537, 53700, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Seismitoad - Toxic - Egg
  (537, 53700, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Seismitoad - Mud-Slap - Egg
  (537, 53700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Seismitoad - Water Pulse - Egg
  (537, 53700, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Whirlipede - Bite - Egg
  (544, 54400, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Whirlipede - Fury Cutter - Egg
  (544, 54400, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Scolipede - Bite - Egg
  (545, 54500, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scolipede - Fury Cutter - Egg
  (545, 54500, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Whimsicott - Memento - Egg
  (547, 54700, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Whimsicott - Nature Power - Egg
  (547, 54700, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Whimsicott - Tickle - Egg
  (547, 54700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Whimsicott - Worry Seed - Egg
  (547, 54700, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Whimsicott - Switcheroo - Egg
  (547, 54700, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lilligant - Sweet Scent - Egg
  (549, 54900, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lilligant - Ingrain - Egg
  (549, 54900, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lilligant - Healing Wish - Egg
  (549, 54900, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lilligant - Worry Seed - Egg
  (549, 54900, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 54);
