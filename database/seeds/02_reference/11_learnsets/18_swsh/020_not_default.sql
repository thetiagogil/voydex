-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for non-default forms.
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
  -- Raichu (Alolan Raichu) - Slam - Level 1
  (26, 2601, 21, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu (Alolan Raichu) - Tail Whip - Level 1
  (26, 2601, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu (Alolan Raichu) - Growl - Level 1
  (26, 2601, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu (Alolan Raichu) - Thunder Shock - Level 1
  (26, 2601, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu (Alolan Raichu) - Thunderbolt - Level 1
  (26, 2601, 85, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu (Alolan Raichu) - Thunder Wave - Level 1
  (26, 2601, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu (Alolan Raichu) - Thunder - Level 1
  (26, 2601, 87, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu (Alolan Raichu) - Psychic - Level 1
  (26, 2601, 94, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Raichu (Alolan Raichu) - Agility - Level 1
  (26, 2601, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Raichu (Alolan Raichu) - Quick Attack - Level 1
  (26, 2601, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Raichu (Alolan Raichu) - Double Team - Level 1
  (26, 2601, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Raichu (Alolan Raichu) - Light Screen - Level 1
  (26, 2601, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Raichu (Alolan Raichu) - Sweet Kiss - Level 1
  (26, 2601, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Raichu (Alolan Raichu) - Charm - Level 1
  (26, 2601, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Raichu (Alolan Raichu) - Spark - Level 1
  (26, 2601, 209, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Raichu (Alolan Raichu) - Feint - Level 1
  (26, 2601, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Raichu (Alolan Raichu) - Nasty Plot - Level 1
  (26, 2601, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Raichu (Alolan Raichu) - Discharge - Level 1
  (26, 2601, 435, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Raichu (Alolan Raichu) - Electro Ball - Level 1
  (26, 2601, 486, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Raichu (Alolan Raichu) - Play Nice - Level 1
  (26, 2601, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Raichu (Alolan Raichu) - Nuzzle - Level 1
  (26, 2601, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Raichu (Alolan Raichu) - Psychic - Evolution
  (26, 2601, 94, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Raichu (Alolan Raichu) - Mega Punch - TM00
  (26, 2601, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Raichu (Alolan Raichu) - Mega Kick - TM01
  (26, 2601, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Raichu (Alolan Raichu) - Pay Day - TM02
  (26, 2601, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Raichu (Alolan Raichu) - Thunder Punch - TM05
  (26, 2601, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Raichu (Alolan Raichu) - Hyper Beam - TM08
  (26, 2601, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Raichu (Alolan Raichu) - Giga Impact - TM09
  (26, 2601, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Raichu (Alolan Raichu) - Thunder Wave - TM14
  (26, 2601, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 29),
  -- Raichu (Alolan Raichu) - Dig - TM15
  (26, 2601, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Raichu (Alolan Raichu) - Light Screen - TM17
  (26, 2601, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Raichu (Alolan Raichu) - Reflect - TM18
  (26, 2601, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 32),
  -- Raichu (Alolan Raichu) - Safeguard - TM19
  (26, 2601, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Raichu (Alolan Raichu) - Rest - TM21
  (26, 2601, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Raichu (Alolan Raichu) - Thief - TM23
  (26, 2601, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 35),
  -- Raichu (Alolan Raichu) - Snore - TM24
  (26, 2601, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Raichu (Alolan Raichu) - Protect - TM25
  (26, 2601, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Raichu (Alolan Raichu) - Charm - TM29
  (26, 2601, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 38),
  -- Raichu (Alolan Raichu) - Attract - TM31
  (26, 2601, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Raichu (Alolan Raichu) - Rain Dance - TM33
  (26, 2601, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 40),
  -- Raichu (Alolan Raichu) - Facade - TM39
  (26, 2601, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 41),
  -- Raichu (Alolan Raichu) - Swift - TM40
  (26, 2601, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 42),
  -- Raichu (Alolan Raichu) - Helping Hand - TM41
  (26, 2601, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 43),
  -- Raichu (Alolan Raichu) - Brick Break - TM43
  (26, 2601, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 44),
  -- Raichu (Alolan Raichu) - Fling - TM59
  (26, 2601, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Raichu (Alolan Raichu) - Speed Swap - TM62
  (26, 2601, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 46),
  -- Raichu (Alolan Raichu) - Magic Room - TM72
  (26, 2601, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 47),
  -- Raichu (Alolan Raichu) - Round - TM76
  (26, 2601, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Raichu (Alolan Raichu) - Volt Switch - TM80
  (26, 2601, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 49),
  -- Raichu (Alolan Raichu) - Electroweb - TM82
  (26, 2601, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 50),
  -- Raichu (Alolan Raichu) - Draining Kiss - TM87
  (26, 2601, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 51),
  -- Raichu (Alolan Raichu) - Electric Terrain - TM90
  (26, 2601, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 52),
  -- Raichu (Alolan Raichu) - Body Slam - TR01
  (26, 2601, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Raichu (Alolan Raichu) - Surf - TR04
  (26, 2601, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 54),
  -- Raichu (Alolan Raichu) - Thunderbolt - TR08
  (26, 2601, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 55),
  -- Raichu (Alolan Raichu) - Thunder - TR09
  (26, 2601, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 56),
  -- Raichu (Alolan Raichu) - Psychic - TR11
  (26, 2601, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 57),
  -- Raichu (Alolan Raichu) - Agility - TR12
  (26, 2601, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 58),
  -- Raichu (Alolan Raichu) - Substitute - TR20
  (26, 2601, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Raichu (Alolan Raichu) - Reversal - TR21
  (26, 2601, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 60),
  -- Raichu (Alolan Raichu) - Psyshock - TR25
  (26, 2601, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 61),
  -- Raichu (Alolan Raichu) - Endure - TR26
  (26, 2601, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 62),
  -- Raichu (Alolan Raichu) - Sleep Talk - TR27
  (26, 2601, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 63),
  -- Raichu (Alolan Raichu) - Encore - TR30
  (26, 2601, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 64),
  -- Raichu (Alolan Raichu) - Iron Tail - TR31
  (26, 2601, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 65),
  -- Raichu (Alolan Raichu) - Future Sight - TR34
  (26, 2601, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 66),
  -- Raichu (Alolan Raichu) - Uproar - TR35
  (26, 2601, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 67),
  -- Raichu (Alolan Raichu) - Calm Mind - TR49
  (26, 2601, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 68),
  -- Raichu (Alolan Raichu) - Focus Blast - TR64
  (26, 2601, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 69),
  -- Raichu (Alolan Raichu) - Nasty Plot - TR68
  (26, 2601, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 70),
  -- Raichu (Alolan Raichu) - Grass Knot - TR77
  (26, 2601, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Raichu (Alolan Raichu) - Electro Ball - TR80
  (26, 2601, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 72),
  -- Raichu (Alolan Raichu) - Stored Power - TR82
  (26, 2601, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 73),
  -- Raichu (Alolan Raichu) - Ally Switch - TR83
  (26, 2601, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 74),
  -- Raichu (Alolan Raichu) - Wild Charge - TR86
  (26, 2601, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 75),
  -- Raichu (Alolan Raichu) - Play Rough - TR90
  (26, 2601, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 76),
  -- Sandshrew (Alolan Sandshrew) - Scratch - Level 1
  (27, 2701, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew (Alolan Sandshrew) - Defense Curl - Level 1
  (27, 2701, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew (Alolan Sandshrew) - Mist - Level 3
  (27, 2701, 54, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew (Alolan Sandshrew) - Powder Snow - Level 6
  (27, 2701, 181, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandshrew (Alolan Sandshrew) - Rollout - Level 9
  (27, 2701, 205, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandshrew (Alolan Sandshrew) - Fury Cutter - Level 12
  (27, 2701, 210, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandshrew (Alolan Sandshrew) - Rapid Spin - Level 15
  (27, 2701, 229, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandshrew (Alolan Sandshrew) - Metal Claw - Level 18
  (27, 2701, 232, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandshrew (Alolan Sandshrew) - Swift - Level 21
  (27, 2701, 129, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandshrew (Alolan Sandshrew) - Fury Swipes - Level 24
  (27, 2701, 154, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandshrew (Alolan Sandshrew) - Iron Defense - Level 27
  (27, 2701, 334, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandshrew (Alolan Sandshrew) - Slash - Level 30
  (27, 2701, 163, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandshrew (Alolan Sandshrew) - Iron Head - Level 33
  (27, 2701, 442, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandshrew (Alolan Sandshrew) - Gyro Ball - Level 36
  (27, 2701, 360, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandshrew (Alolan Sandshrew) - Swords Dance - Level 39
  (27, 2701, 14, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandshrew (Alolan Sandshrew) - Hail - Level 42
  (27, 2701, 258, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - Level 45
  (27, 2701, 59, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sandshrew (Alolan Sandshrew) - Ice Punch - TM04
  (27, 2701, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Sandshrew (Alolan Sandshrew) - Dig - TM15
  (27, 2701, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Sandshrew (Alolan Sandshrew) - Safeguard - TM19
  (27, 2701, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Sandshrew (Alolan Sandshrew) - Rest - TM21
  (27, 2701, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Sandshrew (Alolan Sandshrew) - Rock Slide - TM22
  (27, 2701, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Sandshrew (Alolan Sandshrew) - Thief - TM23
  (27, 2701, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Sandshrew (Alolan Sandshrew) - Snore - TM24
  (27, 2701, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Sandshrew (Alolan Sandshrew) - Protect - TM25
  (27, 2701, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Sandshrew (Alolan Sandshrew) - Icy Wind - TM27
  (27, 2701, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Sandshrew (Alolan Sandshrew) - Attract - TM31
  (27, 2701, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Sandshrew (Alolan Sandshrew) - Sunny Day - TM34
  (27, 2701, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Sandshrew (Alolan Sandshrew) - Hail - TM35
  (27, 2701, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Sandshrew (Alolan Sandshrew) - Facade - TM39
  (27, 2701, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Sandshrew (Alolan Sandshrew) - Swift - TM40
  (27, 2701, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Sandshrew (Alolan Sandshrew) - Brick Break - TM43
  (27, 2701, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Sandshrew (Alolan Sandshrew) - Rock Tomb - TM48
  (27, 2701, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Sandshrew (Alolan Sandshrew) - Icicle Spear - TM51
  (27, 2701, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 34),
  -- Sandshrew (Alolan Sandshrew) - Fling - TM59
  (27, 2701, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Sandshrew (Alolan Sandshrew) - Avalanche - TM64
  (27, 2701, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 36),
  -- Sandshrew (Alolan Sandshrew) - Shadow Claw - TM65
  (27, 2701, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Sandshrew (Alolan Sandshrew) - Round - TM76
  (27, 2701, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Sandshrew (Alolan Sandshrew) - Bulldoze - TM81
  (27, 2701, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Sandshrew (Alolan Sandshrew) - Swords Dance - TR00
  (27, 2701, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Sandshrew (Alolan Sandshrew) - Body Slam - TR01
  (27, 2701, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - TR06
  (27, 2701, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Sandshrew (Alolan Sandshrew) - Earthquake - TR10
  (27, 2701, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Sandshrew (Alolan Sandshrew) - Amnesia - TR17
  (27, 2701, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 44),
  -- Sandshrew (Alolan Sandshrew) - Leech Life - TR18
  (27, 2701, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 45),
  -- Sandshrew (Alolan Sandshrew) - Substitute - TR20
  (27, 2701, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Sandshrew (Alolan Sandshrew) - Endure - TR26
  (27, 2701, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Sandshrew (Alolan Sandshrew) - Sleep Talk - TR27
  (27, 2701, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Sandshrew (Alolan Sandshrew) - Iron Tail - TR31
  (27, 2701, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Sandshrew (Alolan Sandshrew) - Iron Defense - TR46
  (27, 2701, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Sandshrew (Alolan Sandshrew) - Gyro Ball - TR52
  (27, 2701, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 51),
  -- Sandshrew (Alolan Sandshrew) - Poison Jab - TR57
  (27, 2701, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 52),
  -- Sandshrew (Alolan Sandshrew) - X-Scissor - TR60
  (27, 2701, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 53),
  -- Sandshrew (Alolan Sandshrew) - Iron Head - TR74
  (27, 2701, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Sandshrew (Alolan Sandshrew) - Stealth Rock - TR76
  (27, 2701, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 55),
  -- Sandshrew (Alolan Sandshrew) - Work Up - TR85
  (27, 2701, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Sandshrew (Alolan Sandshrew) - Throat Chop - TR95
  (27, 2701, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 57),
  -- Sandshrew (Alolan Sandshrew) - Counter - Egg
  (27, 2701, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew (Alolan Sandshrew) - Curse - Egg
  (27, 2701, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew (Alolan Sandshrew) - Flail - Egg
  (27, 2701, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandshrew (Alolan Sandshrew) - Crush Claw - Egg
  (27, 2701, 306, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandshrew (Alolan Sandshrew) - Night Slash - Egg
  (27, 2701, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sandshrew (Alolan Sandshrew) - Hone Claws - Egg
  (27, 2701, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sandshrew (Alolan Sandshrew) - Steel Beam - Tutor
  (27, 2701, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Sandslash (Alolan Sandslash) - Scratch - Level 1
  (28, 2801, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash (Alolan Sandslash) - Swords Dance - Level 1
  (28, 2801, 14, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash (Alolan Sandslash) - Mist - Level 1
  (28, 2801, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash (Alolan Sandslash) - Blizzard - Level 1
  (28, 2801, 59, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash (Alolan Sandslash) - Defense Curl - Level 1
  (28, 2801, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash (Alolan Sandslash) - Swift - Level 1
  (28, 2801, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sandslash (Alolan Sandslash) - Fury Swipes - Level 1
  (28, 2801, 154, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sandslash (Alolan Sandslash) - Slash - Level 1
  (28, 2801, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Sandslash (Alolan Sandslash) - Powder Snow - Level 1
  (28, 2801, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Sandslash (Alolan Sandslash) - Rollout - Level 1
  (28, 2801, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Sandslash (Alolan Sandslash) - Fury Cutter - Level 1
  (28, 2801, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Sandslash (Alolan Sandslash) - Rapid Spin - Level 1
  (28, 2801, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Sandslash (Alolan Sandslash) - Metal Claw - Level 1
  (28, 2801, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Sandslash (Alolan Sandslash) - Hail - Level 1
  (28, 2801, 258, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Sandslash (Alolan Sandslash) - Icicle Spear - Level 1
  (28, 2801, 333, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Sandslash (Alolan Sandslash) - Iron Defense - Level 1
  (28, 2801, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Sandslash (Alolan Sandslash) - Gyro Ball - Level 1
  (28, 2801, 360, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Sandslash (Alolan Sandslash) - Metal Burst - Level 1
  (28, 2801, 368, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Sandslash (Alolan Sandslash) - Iron Head - Level 1
  (28, 2801, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Sandslash (Alolan Sandslash) - Icicle Crash - Level 1
  (28, 2801, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Sandslash (Alolan Sandslash) - Icicle Spear - Evolution
  (28, 2801, 333, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Sandslash (Alolan Sandslash) - Ice Punch - TM04
  (28, 2801, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Sandslash (Alolan Sandslash) - Pin Missile - TM07
  (28, 2801, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 23),
  -- Sandslash (Alolan Sandslash) - Hyper Beam - TM08
  (28, 2801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Sandslash (Alolan Sandslash) - Giga Impact - TM09
  (28, 2801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Sandslash (Alolan Sandslash) - Dig - TM15
  (28, 2801, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Sandslash (Alolan Sandslash) - Safeguard - TM19
  (28, 2801, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Sandslash (Alolan Sandslash) - Rest - TM21
  (28, 2801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Sandslash (Alolan Sandslash) - Rock Slide - TM22
  (28, 2801, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Sandslash (Alolan Sandslash) - Thief - TM23
  (28, 2801, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Sandslash (Alolan Sandslash) - Snore - TM24
  (28, 2801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Sandslash (Alolan Sandslash) - Protect - TM25
  (28, 2801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Sandslash (Alolan Sandslash) - Icy Wind - TM27
  (28, 2801, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Sandslash (Alolan Sandslash) - Attract - TM31
  (28, 2801, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Sandslash (Alolan Sandslash) - Sunny Day - TM34
  (28, 2801, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Sandslash (Alolan Sandslash) - Hail - TM35
  (28, 2801, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 36),
  -- Sandslash (Alolan Sandslash) - Facade - TM39
  (28, 2801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Sandslash (Alolan Sandslash) - Swift - TM40
  (28, 2801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Sandslash (Alolan Sandslash) - Brick Break - TM43
  (28, 2801, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Sandslash (Alolan Sandslash) - Rock Tomb - TM48
  (28, 2801, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Sandslash (Alolan Sandslash) - Icicle Spear - TM51
  (28, 2801, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 41),
  -- Sandslash (Alolan Sandslash) - Fling - TM59
  (28, 2801, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Sandslash (Alolan Sandslash) - Avalanche - TM64
  (28, 2801, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 43),
  -- Sandslash (Alolan Sandslash) - Shadow Claw - TM65
  (28, 2801, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Sandslash (Alolan Sandslash) - Round - TM76
  (28, 2801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Sandslash (Alolan Sandslash) - Bulldoze - TM81
  (28, 2801, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 46),
  -- Sandslash (Alolan Sandslash) - Swords Dance - TR00
  (28, 2801, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Sandslash (Alolan Sandslash) - Body Slam - TR01
  (28, 2801, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Sandslash (Alolan Sandslash) - Blizzard - TR06
  (28, 2801, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Sandslash (Alolan Sandslash) - Earthquake - TR10
  (28, 2801, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Sandslash (Alolan Sandslash) - Agility - TR12
  (28, 2801, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 51),
  -- Sandslash (Alolan Sandslash) - Amnesia - TR17
  (28, 2801, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 52),
  -- Sandslash (Alolan Sandslash) - Leech Life - TR18
  (28, 2801, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 53),
  -- Sandslash (Alolan Sandslash) - Substitute - TR20
  (28, 2801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Sandslash (Alolan Sandslash) - Spikes - TR23
  (28, 2801, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 55),
  -- Sandslash (Alolan Sandslash) - Endure - TR26
  (28, 2801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Sandslash (Alolan Sandslash) - Sleep Talk - TR27
  (28, 2801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Sandslash (Alolan Sandslash) - Iron Tail - TR31
  (28, 2801, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Sandslash (Alolan Sandslash) - Iron Defense - TR46
  (28, 2801, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 59),
  -- Sandslash (Alolan Sandslash) - Gyro Ball - TR52
  (28, 2801, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 60),
  -- Sandslash (Alolan Sandslash) - Poison Jab - TR57
  (28, 2801, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 61),
  -- Sandslash (Alolan Sandslash) - X-Scissor - TR60
  (28, 2801, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 62),
  -- Sandslash (Alolan Sandslash) - Focus Blast - TR64
  (28, 2801, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Sandslash (Alolan Sandslash) - Iron Head - TR74
  (28, 2801, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 64),
  -- Sandslash (Alolan Sandslash) - Stealth Rock - TR76
  (28, 2801, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 65),
  -- Sandslash (Alolan Sandslash) - Work Up - TR85
  (28, 2801, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Sandslash (Alolan Sandslash) - Drill Run - TR87
  (28, 2801, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 67),
  -- Sandslash (Alolan Sandslash) - Throat Chop - TR95
  (28, 2801, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 68),
  -- Sandslash (Alolan Sandslash) - Steel Beam - Tutor
  (28, 2801, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 69),
  -- Vulpix (Alolan Vulpix) - Tail Whip - Level 1
  (37, 3701, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Powder Snow - Level 1
  (37, 3701, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Disable - Level 4
  (37, 3701, 50, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Ice Shard - Level 8
  (37, 3701, 420, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vulpix (Alolan Vulpix) - Spite - Level 12
  (37, 3701, 180, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vulpix (Alolan Vulpix) - Icy Wind - Level 16
  (37, 3701, 196, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vulpix (Alolan Vulpix) - Confuse Ray - Level 20
  (37, 3701, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vulpix (Alolan Vulpix) - Aurora Beam - Level 24
  (37, 3701, 62, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix (Alolan Vulpix) - Extrasensory - Level 28
  (37, 3701, 326, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix (Alolan Vulpix) - Ice Beam - Level 32
  (37, 3701, 58, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vulpix (Alolan Vulpix) - Imprison - Level 36
  (37, 3701, 286, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vulpix (Alolan Vulpix) - Mist - Level 40
  (37, 3701, 54, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vulpix (Alolan Vulpix) - Aurora Veil - Level 44
  (37, 3701, 694, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vulpix (Alolan Vulpix) - Sheer Cold - Level 48
  (37, 3701, 329, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vulpix (Alolan Vulpix) - Grudge - Level 52
  (37, 3701, 288, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Vulpix (Alolan Vulpix) - Blizzard - Level 56
  (37, 3701, 59, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Vulpix (Alolan Vulpix) - Dig - TM15
  (37, 3701, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Vulpix (Alolan Vulpix) - Safeguard - TM19
  (37, 3701, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Vulpix (Alolan Vulpix) - Rest - TM21
  (37, 3701, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Vulpix (Alolan Vulpix) - Snore - TM24
  (37, 3701, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Vulpix (Alolan Vulpix) - Protect - TM25
  (37, 3701, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Vulpix (Alolan Vulpix) - Icy Wind - TM27
  (37, 3701, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Vulpix (Alolan Vulpix) - Charm - TM29
  (37, 3701, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 23),
  -- Vulpix (Alolan Vulpix) - Attract - TM31
  (37, 3701, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Vulpix (Alolan Vulpix) - Rain Dance - TM33
  (37, 3701, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Vulpix (Alolan Vulpix) - Hail - TM35
  (37, 3701, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Vulpix (Alolan Vulpix) - Facade - TM39
  (37, 3701, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Vulpix (Alolan Vulpix) - Swift - TM40
  (37, 3701, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Vulpix (Alolan Vulpix) - Imprison - TM44
  (37, 3701, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Vulpix (Alolan Vulpix) - Weather Ball - TM46
  (37, 3701, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 30),
  -- Vulpix (Alolan Vulpix) - Payback - TM57
  (37, 3701, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Vulpix (Alolan Vulpix) - Power Swap - TM60
  (37, 3701, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 32),
  -- Vulpix (Alolan Vulpix) - Round - TM76
  (37, 3701, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Vulpix (Alolan Vulpix) - Hex - TM77
  (37, 3701, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 34),
  -- Vulpix (Alolan Vulpix) - Tail Slap - TM84
  (37, 3701, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 35),
  -- Vulpix (Alolan Vulpix) - Draining Kiss - TM87
  (37, 3701, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 36),
  -- Vulpix (Alolan Vulpix) - Body Slam - TR01
  (37, 3701, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Vulpix (Alolan Vulpix) - Ice Beam - TR05
  (37, 3701, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Vulpix (Alolan Vulpix) - Blizzard - TR06
  (37, 3701, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Vulpix (Alolan Vulpix) - Agility - TR12
  (37, 3701, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Vulpix (Alolan Vulpix) - Substitute - TR20
  (37, 3701, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Vulpix (Alolan Vulpix) - Endure - TR26
  (37, 3701, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Vulpix (Alolan Vulpix) - Sleep Talk - TR27
  (37, 3701, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Vulpix (Alolan Vulpix) - Encore - TR30
  (37, 3701, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 44),
  -- Vulpix (Alolan Vulpix) - Iron Tail - TR31
  (37, 3701, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Vulpix (Alolan Vulpix) - Dark Pulse - TR58
  (37, 3701, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Vulpix (Alolan Vulpix) - Zen Headbutt - TR69
  (37, 3701, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 47),
  -- Vulpix (Alolan Vulpix) - Foul Play - TR81
  (37, 3701, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Vulpix (Alolan Vulpix) - Roar - Egg
  (37, 3701, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vulpix (Alolan Vulpix) - Hypnosis - Egg
  (37, 3701, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vulpix (Alolan Vulpix) - Flail - Egg
  (37, 3701, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vulpix (Alolan Vulpix) - Howl - Egg
  (37, 3701, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix (Alolan Vulpix) - Freeze-Dry - Egg
  (37, 3701, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix (Alolan Vulpix) - Moonblast - Egg
  (37, 3701, 585, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vulpix (Alolan Vulpix) - Baby-Doll Eyes - Egg
  (37, 3701, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ninetales (Alolan Ninetales) - Tail Whip - Level 1
  (38, 3801, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Disable - Level 1
  (38, 3801, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Mist - Level 1
  (38, 3801, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Ice Beam - Level 1
  (38, 3801, 58, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Blizzard - Level 1
  (38, 3801, 59, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales (Alolan Ninetales) - Aurora Beam - Level 1
  (38, 3801, 62, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninetales (Alolan Ninetales) - Confuse Ray - Level 1
  (38, 3801, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ninetales (Alolan Ninetales) - Spite - Level 1
  (38, 3801, 180, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ninetales (Alolan Ninetales) - Powder Snow - Level 1
  (38, 3801, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ninetales (Alolan Ninetales) - Icy Wind - Level 1
  (38, 3801, 196, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Ninetales (Alolan Ninetales) - Imprison - Level 1
  (38, 3801, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Ninetales (Alolan Ninetales) - Grudge - Level 1
  (38, 3801, 288, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Ninetales (Alolan Ninetales) - Extrasensory - Level 1
  (38, 3801, 326, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Ninetales (Alolan Ninetales) - Sheer Cold - Level 1
  (38, 3801, 329, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - Level 1
  (38, 3801, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Ninetales (Alolan Ninetales) - Ice Shard - Level 1
  (38, 3801, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - Level 1
  (38, 3801, 605, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Ninetales (Alolan Ninetales) - Aurora Veil - Level 1
  (38, 3801, 694, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - Evolution
  (38, 3801, 605, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Ninetales (Alolan Ninetales) - Hyper Beam - TM08
  (38, 3801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Ninetales (Alolan Ninetales) - Giga Impact - TM09
  (38, 3801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Ninetales (Alolan Ninetales) - Solar Beam - TM11
  (38, 3801, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Ninetales (Alolan Ninetales) - Dig - TM15
  (38, 3801, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Ninetales (Alolan Ninetales) - Safeguard - TM19
  (38, 3801, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Ninetales (Alolan Ninetales) - Rest - TM21
  (38, 3801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Ninetales (Alolan Ninetales) - Snore - TM24
  (38, 3801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Ninetales (Alolan Ninetales) - Protect - TM25
  (38, 3801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Ninetales (Alolan Ninetales) - Icy Wind - TM27
  (38, 3801, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Ninetales (Alolan Ninetales) - Charm - TM29
  (38, 3801, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 29),
  -- Ninetales (Alolan Ninetales) - Attract - TM31
  (38, 3801, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Ninetales (Alolan Ninetales) - Rain Dance - TM33
  (38, 3801, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Ninetales (Alolan Ninetales) - Hail - TM35
  (38, 3801, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Ninetales (Alolan Ninetales) - Facade - TM39
  (38, 3801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Ninetales (Alolan Ninetales) - Swift - TM40
  (38, 3801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Ninetales (Alolan Ninetales) - Imprison - TM44
  (38, 3801, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Ninetales (Alolan Ninetales) - Weather Ball - TM46
  (38, 3801, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Ninetales (Alolan Ninetales) - Fake Tears - TM47
  (38, 3801, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 37),
  -- Ninetales (Alolan Ninetales) - Payback - TM57
  (38, 3801, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Ninetales (Alolan Ninetales) - Power Swap - TM60
  (38, 3801, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 39),
  -- Ninetales (Alolan Ninetales) - Avalanche - TM64
  (38, 3801, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 40),
  -- Ninetales (Alolan Ninetales) - Wonder Room - TM71
  (38, 3801, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 41),
  -- Ninetales (Alolan Ninetales) - Round - TM76
  (38, 3801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Ninetales (Alolan Ninetales) - Hex - TM77
  (38, 3801, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 43),
  -- Ninetales (Alolan Ninetales) - Tail Slap - TM84
  (38, 3801, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 44),
  -- Ninetales (Alolan Ninetales) - Draining Kiss - TM87
  (38, 3801, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Ninetales (Alolan Ninetales) - Misty Terrain - TM89
  (38, 3801, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Ninetales (Alolan Ninetales) - Body Slam - TR01
  (38, 3801, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Ninetales (Alolan Ninetales) - Ice Beam - TR05
  (38, 3801, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Ninetales (Alolan Ninetales) - Blizzard - TR06
  (38, 3801, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Ninetales (Alolan Ninetales) - Agility - TR12
  (38, 3801, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Ninetales (Alolan Ninetales) - Substitute - TR20
  (38, 3801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Ninetales (Alolan Ninetales) - Psyshock - TR25
  (38, 3801, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Ninetales (Alolan Ninetales) - Endure - TR26
  (38, 3801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Ninetales (Alolan Ninetales) - Sleep Talk - TR27
  (38, 3801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Ninetales (Alolan Ninetales) - Encore - TR30
  (38, 3801, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Ninetales (Alolan Ninetales) - Iron Tail - TR31
  (38, 3801, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Ninetales (Alolan Ninetales) - Calm Mind - TR49
  (38, 3801, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Ninetales (Alolan Ninetales) - Dark Pulse - TR58
  (38, 3801, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 58),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - TR68
  (38, 3801, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Ninetales (Alolan Ninetales) - Zen Headbutt - TR69
  (38, 3801, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 60),
  -- Ninetales (Alolan Ninetales) - Foul Play - TR81
  (38, 3801, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 61),
  -- Ninetales (Alolan Ninetales) - Stored Power - TR82
  (38, 3801, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - TR92
  (38, 3801, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 63),
  -- Diglett (Alolan Diglett) - Sand Attack - Level 1
  (50, 5001, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett (Alolan Diglett) - Metal Claw - Level 1
  (50, 5001, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett (Alolan Diglett) - Growl - Level 4
  (50, 5001, 45, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett (Alolan Diglett) - Astonish - Level 8
  (50, 5001, 310, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diglett (Alolan Diglett) - Mud-Slap - Level 12
  (50, 5001, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett (Alolan Diglett) - Bulldoze - Level 16
  (50, 5001, 523, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Diglett (Alolan Diglett) - Sucker Punch - Level 20
  (50, 5001, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Diglett (Alolan Diglett) - Iron Head - Level 24
  (50, 5001, 442, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Diglett (Alolan Diglett) - Sandstorm - Level 28
  (50, 5001, 201, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Diglett (Alolan Diglett) - Dig - Level 32
  (50, 5001, 91, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Diglett (Alolan Diglett) - Earth Power - Level 36
  (50, 5001, 414, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Diglett (Alolan Diglett) - Earthquake - Level 40
  (50, 5001, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Diglett (Alolan Diglett) - Fissure - Level 44
  (50, 5001, 90, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Diglett (Alolan Diglett) - Dig - TM15
  (50, 5001, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Diglett (Alolan Diglett) - Screech - TM16
  (50, 5001, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Diglett (Alolan Diglett) - Rest - TM21
  (50, 5001, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Diglett (Alolan Diglett) - Rock Slide - TM22
  (50, 5001, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Diglett (Alolan Diglett) - Thief - TM23
  (50, 5001, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Diglett (Alolan Diglett) - Snore - TM24
  (50, 5001, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Diglett (Alolan Diglett) - Protect - TM25
  (50, 5001, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Diglett (Alolan Diglett) - Attract - TM31
  (50, 5001, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Diglett (Alolan Diglett) - Sandstorm - TM32
  (50, 5001, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Diglett (Alolan Diglett) - Sunny Day - TM34
  (50, 5001, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Diglett (Alolan Diglett) - Beat Up - TM37
  (50, 5001, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 24),
  -- Diglett (Alolan Diglett) - Facade - TM39
  (50, 5001, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Diglett (Alolan Diglett) - Rock Tomb - TM48
  (50, 5001, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Diglett (Alolan Diglett) - Assurance - TM58
  (50, 5001, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Diglett (Alolan Diglett) - Shadow Claw - TM65
  (50, 5001, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Diglett (Alolan Diglett) - Round - TM76
  (50, 5001, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Diglett (Alolan Diglett) - Bulldoze - TM81
  (50, 5001, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Diglett (Alolan Diglett) - Stomping Tantrum - TM98
  (50, 5001, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 31),
  -- Diglett (Alolan Diglett) - Body Slam - TR01
  (50, 5001, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Diglett (Alolan Diglett) - Earthquake - TR10
  (50, 5001, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Diglett (Alolan Diglett) - Agility - TR12
  (50, 5001, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 34),
  -- Diglett (Alolan Diglett) - Substitute - TR20
  (50, 5001, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Diglett (Alolan Diglett) - Reversal - TR21
  (50, 5001, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 36),
  -- Diglett (Alolan Diglett) - Sludge Bomb - TR22
  (50, 5001, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 37),
  -- Diglett (Alolan Diglett) - Endure - TR26
  (50, 5001, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Diglett (Alolan Diglett) - Sleep Talk - TR27
  (50, 5001, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Diglett (Alolan Diglett) - Uproar - TR35
  (50, 5001, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 40),
  -- Diglett (Alolan Diglett) - Iron Defense - TR46
  (50, 5001, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Diglett (Alolan Diglett) - Earth Power - TR67
  (50, 5001, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 42),
  -- Diglett (Alolan Diglett) - Flash Cannon - TR70
  (50, 5001, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 43),
  -- Diglett (Alolan Diglett) - Iron Head - TR74
  (50, 5001, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 44),
  -- Diglett (Alolan Diglett) - Ally Switch - TR83
  (50, 5001, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 45),
  -- Diglett (Alolan Diglett) - Work Up - TR85
  (50, 5001, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 46),
  -- Diglett (Alolan Diglett) - Headbutt - Egg
  (50, 5001, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Diglett (Alolan Diglett) - Thrash - Egg
  (50, 5001, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Diglett (Alolan Diglett) - Ancient Power - Egg
  (50, 5001, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Diglett (Alolan Diglett) - Memento - Egg
  (50, 5001, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Diglett (Alolan Diglett) - Metal Sound - Egg
  (50, 5001, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Diglett (Alolan Diglett) - Hone Claws - Egg
  (50, 5001, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Diglett (Alolan Diglett) - Final Gambit - Egg
  (50, 5001, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Diglett (Alolan Diglett) - Steel Beam - Tutor
  (50, 5001, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Dugtrio (Alolan Dugtrio) - Sand Attack - Level 1
  (51, 5101, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio (Alolan Dugtrio) - Growl - Level 1
  (51, 5101, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - Level 1
  (51, 5101, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio (Alolan Dugtrio) - Metal Claw - Level 1
  (51, 5101, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio (Alolan Dugtrio) - Astonish - Level 1
  (51, 5101, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio (Alolan Dugtrio) - Sand Tomb - Level 1
  (51, 5101, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio (Alolan Dugtrio) - Night Slash - Level 1
  (51, 5101, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dugtrio (Alolan Dugtrio) - Mud-Slap - Level 12
  (51, 5101, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dugtrio (Alolan Dugtrio) - Bulldoze - Level 16
  (51, 5101, 523, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Dugtrio (Alolan Dugtrio) - Sucker Punch - Level 20
  (51, 5101, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Dugtrio (Alolan Dugtrio) - Iron Head - Level 24
  (51, 5101, 442, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Dugtrio (Alolan Dugtrio) - Sandstorm - Level 30
  (51, 5101, 201, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Dugtrio (Alolan Dugtrio) - Dig - Level 36
  (51, 5101, 91, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Dugtrio (Alolan Dugtrio) - Earth Power - Level 42
  (51, 5101, 414, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - Level 48
  (51, 5101, 89, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Dugtrio (Alolan Dugtrio) - Fissure - Level 54
  (51, 5101, 90, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Dugtrio (Alolan Dugtrio) - Sand Tomb - Evolution
  (51, 5101, 328, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Dugtrio (Alolan Dugtrio) - Hyper Beam - TM08
  (51, 5101, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Dugtrio (Alolan Dugtrio) - Giga Impact - TM09
  (51, 5101, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Dugtrio (Alolan Dugtrio) - Dig - TM15
  (51, 5101, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Dugtrio (Alolan Dugtrio) - Screech - TM16
  (51, 5101, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Dugtrio (Alolan Dugtrio) - Rest - TM21
  (51, 5101, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Dugtrio (Alolan Dugtrio) - Rock Slide - TM22
  (51, 5101, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Dugtrio (Alolan Dugtrio) - Thief - TM23
  (51, 5101, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Dugtrio (Alolan Dugtrio) - Snore - TM24
  (51, 5101, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Dugtrio (Alolan Dugtrio) - Protect - TM25
  (51, 5101, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Dugtrio (Alolan Dugtrio) - Attract - TM31
  (51, 5101, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Dugtrio (Alolan Dugtrio) - Sandstorm - TM32
  (51, 5101, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Dugtrio (Alolan Dugtrio) - Sunny Day - TM34
  (51, 5101, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Dugtrio (Alolan Dugtrio) - Beat Up - TM37
  (51, 5101, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 30),
  -- Dugtrio (Alolan Dugtrio) - Facade - TM39
  (51, 5101, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Dugtrio (Alolan Dugtrio) - Rock Tomb - TM48
  (51, 5101, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Dugtrio (Alolan Dugtrio) - Sand Tomb - TM49
  (51, 5101, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Dugtrio (Alolan Dugtrio) - Assurance - TM58
  (51, 5101, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Dugtrio (Alolan Dugtrio) - Shadow Claw - TM65
  (51, 5101, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Dugtrio (Alolan Dugtrio) - Round - TM76
  (51, 5101, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Dugtrio (Alolan Dugtrio) - Bulldoze - TM81
  (51, 5101, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Dugtrio (Alolan Dugtrio) - Stomping Tantrum - TM98
  (51, 5101, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Dugtrio (Alolan Dugtrio) - Body Slam - TR01
  (51, 5101, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - TR10
  (51, 5101, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Dugtrio (Alolan Dugtrio) - Agility - TR12
  (51, 5101, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - TR19
  (51, 5101, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 42),
  -- Dugtrio (Alolan Dugtrio) - Substitute - TR20
  (51, 5101, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Dugtrio (Alolan Dugtrio) - Reversal - TR21
  (51, 5101, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Dugtrio (Alolan Dugtrio) - Sludge Bomb - TR22
  (51, 5101, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 45),
  -- Dugtrio (Alolan Dugtrio) - Endure - TR26
  (51, 5101, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Dugtrio (Alolan Dugtrio) - Sleep Talk - TR27
  (51, 5101, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Dugtrio (Alolan Dugtrio) - Uproar - TR35
  (51, 5101, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 48),
  -- Dugtrio (Alolan Dugtrio) - Iron Defense - TR46
  (51, 5101, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 49),
  -- Dugtrio (Alolan Dugtrio) - Earth Power - TR67
  (51, 5101, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 50),
  -- Dugtrio (Alolan Dugtrio) - Flash Cannon - TR70
  (51, 5101, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 51),
  -- Dugtrio (Alolan Dugtrio) - Iron Head - TR74
  (51, 5101, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Dugtrio (Alolan Dugtrio) - Stone Edge - TR75
  (51, 5101, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Dugtrio (Alolan Dugtrio) - Sludge Wave - TR78
  (51, 5101, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 54),
  -- Dugtrio (Alolan Dugtrio) - Ally Switch - TR83
  (51, 5101, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Dugtrio (Alolan Dugtrio) - Work Up - TR85
  (51, 5101, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Dugtrio (Alolan Dugtrio) - High Horsepower - TR94
  (51, 5101, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Dugtrio (Alolan Dugtrio) - Steel Beam - Tutor
  (51, 5101, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Meowth (Alolan Meowth) - Growl - Level 1
  (52, 5201, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth (Alolan Meowth) - Fake Out - Level 1
  (52, 5201, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth (Alolan Meowth) - Feint - Level 4
  (52, 5201, 364, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth (Alolan Meowth) - Scratch - Level 8
  (52, 5201, 10, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth (Alolan Meowth) - Pay Day - Level 12
  (52, 5201, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth (Alolan Meowth) - Bite - Level 16
  (52, 5201, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth (Alolan Meowth) - Taunt - Level 20
  (52, 5201, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth (Alolan Meowth) - Assurance - Level 24
  (52, 5201, 372, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth (Alolan Meowth) - Fury Swipes - Level 29
  (52, 5201, 154, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth (Alolan Meowth) - Screech - Level 32
  (52, 5201, 103, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth (Alolan Meowth) - Night Slash - Level 36
  (52, 5201, 400, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth (Alolan Meowth) - Nasty Plot - Level 40
  (52, 5201, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth (Alolan Meowth) - Play Rough - Level 44
  (52, 5201, 583, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth (Alolan Meowth) - Pay Day - TM02
  (52, 5201, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 14),
  -- Meowth (Alolan Meowth) - Dig - TM15
  (52, 5201, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Meowth (Alolan Meowth) - Screech - TM16
  (52, 5201, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Meowth (Alolan Meowth) - Rest - TM21
  (52, 5201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Meowth (Alolan Meowth) - Thief - TM23
  (52, 5201, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Meowth (Alolan Meowth) - Snore - TM24
  (52, 5201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Meowth (Alolan Meowth) - Protect - TM25
  (52, 5201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Meowth (Alolan Meowth) - Icy Wind - TM27
  (52, 5201, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Meowth (Alolan Meowth) - Charm - TM29
  (52, 5201, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Meowth (Alolan Meowth) - Attract - TM31
  (52, 5201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Meowth (Alolan Meowth) - Rain Dance - TM33
  (52, 5201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Meowth (Alolan Meowth) - Sunny Day - TM34
  (52, 5201, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Meowth (Alolan Meowth) - Facade - TM39
  (52, 5201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Meowth (Alolan Meowth) - Swift - TM40
  (52, 5201, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Meowth (Alolan Meowth) - U-turn - TM56
  (52, 5201, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Meowth (Alolan Meowth) - Payback - TM57
  (52, 5201, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Meowth (Alolan Meowth) - Assurance - TM58
  (52, 5201, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Meowth (Alolan Meowth) - Shadow Claw - TM65
  (52, 5201, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Meowth (Alolan Meowth) - Round - TM76
  (52, 5201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Meowth (Alolan Meowth) - Retaliate - TM79
  (52, 5201, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Meowth (Alolan Meowth) - Body Slam - TR01
  (52, 5201, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Meowth (Alolan Meowth) - Thunderbolt - TR08
  (52, 5201, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Meowth (Alolan Meowth) - Thunder - TR09
  (52, 5201, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Meowth (Alolan Meowth) - Amnesia - TR17
  (52, 5201, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Meowth (Alolan Meowth) - Substitute - TR20
  (52, 5201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Meowth (Alolan Meowth) - Endure - TR26
  (52, 5201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Meowth (Alolan Meowth) - Sleep Talk - TR27
  (52, 5201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Meowth (Alolan Meowth) - Iron Tail - TR31
  (52, 5201, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Meowth (Alolan Meowth) - Shadow Ball - TR33
  (52, 5201, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Meowth (Alolan Meowth) - Uproar - TR35
  (52, 5201, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Meowth (Alolan Meowth) - Taunt - TR37
  (52, 5201, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 44),
  -- Meowth (Alolan Meowth) - Hyper Voice - TR42
  (52, 5201, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Meowth (Alolan Meowth) - Dark Pulse - TR58
  (52, 5201, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Meowth (Alolan Meowth) - Seed Bomb - TR59
  (52, 5201, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 47),
  -- Meowth (Alolan Meowth) - Nasty Plot - TR68
  (52, 5201, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 48),
  -- Meowth (Alolan Meowth) - Gunk Shot - TR73
  (52, 5201, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 49),
  -- Meowth (Alolan Meowth) - Foul Play - TR81
  (52, 5201, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 50),
  -- Meowth (Alolan Meowth) - Work Up - TR85
  (52, 5201, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 51),
  -- Meowth (Alolan Meowth) - Play Rough - TR90
  (52, 5201, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 52),
  -- Meowth (Alolan Meowth) - Throat Chop - TR95
  (52, 5201, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 53),
  -- Meowth (Alolan Meowth) - Hypnosis - Egg
  (52, 5201, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth (Alolan Meowth) - Flail - Egg
  (52, 5201, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth (Alolan Meowth) - Spite - Egg
  (52, 5201, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth (Alolan Meowth) - Flatter - Egg
  (52, 5201, 260, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth (Alolan Meowth) - Covet - Egg
  (52, 5201, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth (Alolan Meowth) - Parting Shot - Egg
  (52, 5201, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth (Galarian Meowth) - Growl - Level 1
  (52, 5202, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth (Galarian Meowth) - Fake Out - Level 1
  (52, 5202, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth (Galarian Meowth) - Hone Claws - Level 4
  (52, 5202, 468, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth (Galarian Meowth) - Scratch - Level 8
  (52, 5202, 10, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth (Galarian Meowth) - Pay Day - Level 12
  (52, 5202, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth (Galarian Meowth) - Metal Claw - Level 16
  (52, 5202, 232, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth (Galarian Meowth) - Taunt - Level 20
  (52, 5202, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth (Galarian Meowth) - Swagger - Level 24
  (52, 5202, 207, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth (Galarian Meowth) - Fury Swipes - Level 29
  (52, 5202, 154, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth (Galarian Meowth) - Screech - Level 32
  (52, 5202, 103, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth (Galarian Meowth) - Slash - Level 36
  (52, 5202, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth (Galarian Meowth) - Metal Sound - Level 40
  (52, 5202, 319, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth (Galarian Meowth) - Thrash - Level 44
  (52, 5202, 37, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth (Galarian Meowth) - Pay Day - TM02
  (52, 5202, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 14),
  -- Meowth (Galarian Meowth) - Dig - TM15
  (52, 5202, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Meowth (Galarian Meowth) - Screech - TM16
  (52, 5202, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Meowth (Galarian Meowth) - Rest - TM21
  (52, 5202, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Meowth (Galarian Meowth) - Thief - TM23
  (52, 5202, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Meowth (Galarian Meowth) - Snore - TM24
  (52, 5202, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Meowth (Galarian Meowth) - Protect - TM25
  (52, 5202, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Meowth (Galarian Meowth) - Attract - TM31
  (52, 5202, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Meowth (Galarian Meowth) - Rain Dance - TM33
  (52, 5202, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Meowth (Galarian Meowth) - Sunny Day - TM34
  (52, 5202, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Meowth (Galarian Meowth) - Facade - TM39
  (52, 5202, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Meowth (Galarian Meowth) - U-turn - TM56
  (52, 5202, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 25),
  -- Meowth (Galarian Meowth) - Payback - TM57
  (52, 5202, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Meowth (Galarian Meowth) - Assurance - TM58
  (52, 5202, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Meowth (Galarian Meowth) - Shadow Claw - TM65
  (52, 5202, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Meowth (Galarian Meowth) - Round - TM76
  (52, 5202, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Meowth (Galarian Meowth) - Retaliate - TM79
  (52, 5202, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 30),
  -- Meowth (Galarian Meowth) - Swords Dance - TR00
  (52, 5202, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Meowth (Galarian Meowth) - Body Slam - TR01
  (52, 5202, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Meowth (Galarian Meowth) - Thunderbolt - TR08
  (52, 5202, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Meowth (Galarian Meowth) - Thunder - TR09
  (52, 5202, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Meowth (Galarian Meowth) - Amnesia - TR17
  (52, 5202, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Meowth (Galarian Meowth) - Substitute - TR20
  (52, 5202, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Meowth (Galarian Meowth) - Endure - TR26
  (52, 5202, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Meowth (Galarian Meowth) - Sleep Talk - TR27
  (52, 5202, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Meowth (Galarian Meowth) - Iron Tail - TR31
  (52, 5202, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Meowth (Galarian Meowth) - Crunch - TR32
  (52, 5202, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Meowth (Galarian Meowth) - Shadow Ball - TR33
  (52, 5202, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Meowth (Galarian Meowth) - Uproar - TR35
  (52, 5202, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 42),
  -- Meowth (Galarian Meowth) - Taunt - TR37
  (52, 5202, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Meowth (Galarian Meowth) - Hyper Voice - TR42
  (52, 5202, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 44),
  -- Meowth (Galarian Meowth) - Iron Defense - TR46
  (52, 5202, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Meowth (Galarian Meowth) - Gyro Ball - TR52
  (52, 5202, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 46),
  -- Meowth (Galarian Meowth) - Dark Pulse - TR58
  (52, 5202, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 47),
  -- Meowth (Galarian Meowth) - Seed Bomb - TR59
  (52, 5202, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 48),
  -- Meowth (Galarian Meowth) - Nasty Plot - TR68
  (52, 5202, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 49),
  -- Meowth (Galarian Meowth) - Gunk Shot - TR73
  (52, 5202, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 50),
  -- Meowth (Galarian Meowth) - Iron Head - TR74
  (52, 5202, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 51),
  -- Meowth (Galarian Meowth) - Foul Play - TR81
  (52, 5202, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Meowth (Galarian Meowth) - Work Up - TR85
  (52, 5202, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Meowth (Galarian Meowth) - Play Rough - TR90
  (52, 5202, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 54),
  -- Meowth (Galarian Meowth) - Throat Chop - TR95
  (52, 5202, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 55),
  -- Meowth (Galarian Meowth) - Double-Edge - Egg
  (52, 5202, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth (Galarian Meowth) - Curse - Egg
  (52, 5202, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth (Galarian Meowth) - Flail - Egg
  (52, 5202, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth (Galarian Meowth) - Spite - Egg
  (52, 5202, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth (Galarian Meowth) - Covet - Egg
  (52, 5202, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth (Galarian Meowth) - Night Slash - Egg
  (52, 5202, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meowth (Galarian Meowth) - Steel Beam - Tutor
  (52, 5202, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Persian (Alolan Persian) - Scratch - Level 1
  (53, 5301, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian (Alolan Persian) - Growl - Level 1
  (53, 5301, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian (Alolan Persian) - Fake Out - Level 1
  (53, 5301, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian (Alolan Persian) - Feint - Level 1
  (53, 5301, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian (Alolan Persian) - Power Gem - Level 1
  (53, 5301, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian (Alolan Persian) - Switcheroo - Level 1
  (53, 5301, 415, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian (Alolan Persian) - Quash - Level 1
  (53, 5301, 511, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Persian (Alolan Persian) - Pay Day - Level 12
  (53, 5301, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Persian (Alolan Persian) - Bite - Level 16
  (53, 5301, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Persian (Alolan Persian) - Taunt - Level 20
  (53, 5301, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Persian (Alolan Persian) - Assurance - Level 24
  (53, 5301, 372, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Persian (Alolan Persian) - Fury Swipes - Level 31
  (53, 5301, 154, 18, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Persian (Alolan Persian) - Screech - Level 36
  (53, 5301, 103, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Persian (Alolan Persian) - Night Slash - Level 42
  (53, 5301, 400, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Persian (Alolan Persian) - Nasty Plot - Level 48
  (53, 5301, 417, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Persian (Alolan Persian) - Play Rough - Level 54
  (53, 5301, 583, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Persian (Alolan Persian) - Power Gem - Evolution
  (53, 5301, 408, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Persian (Alolan Persian) - Pay Day - TM02
  (53, 5301, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Persian (Alolan Persian) - Hyper Beam - TM08
  (53, 5301, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Persian (Alolan Persian) - Giga Impact - TM09
  (53, 5301, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Persian (Alolan Persian) - Dig - TM15
  (53, 5301, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Persian (Alolan Persian) - Screech - TM16
  (53, 5301, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Persian (Alolan Persian) - Rest - TM21
  (53, 5301, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Persian (Alolan Persian) - Thief - TM23
  (53, 5301, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Persian (Alolan Persian) - Snore - TM24
  (53, 5301, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Persian (Alolan Persian) - Protect - TM25
  (53, 5301, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Persian (Alolan Persian) - Icy Wind - TM27
  (53, 5301, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Persian (Alolan Persian) - Charm - TM29
  (53, 5301, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 28),
  -- Persian (Alolan Persian) - Attract - TM31
  (53, 5301, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Persian (Alolan Persian) - Rain Dance - TM33
  (53, 5301, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Persian (Alolan Persian) - Sunny Day - TM34
  (53, 5301, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Persian (Alolan Persian) - Beat Up - TM37
  (53, 5301, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 32),
  -- Persian (Alolan Persian) - Facade - TM39
  (53, 5301, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Persian (Alolan Persian) - Swift - TM40
  (53, 5301, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Persian (Alolan Persian) - Fake Tears - TM47
  (53, 5301, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 35),
  -- Persian (Alolan Persian) - U-turn - TM56
  (53, 5301, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 36),
  -- Persian (Alolan Persian) - Payback - TM57
  (53, 5301, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Persian (Alolan Persian) - Assurance - TM58
  (53, 5301, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 38),
  -- Persian (Alolan Persian) - Shadow Claw - TM65
  (53, 5301, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Persian (Alolan Persian) - Round - TM76
  (53, 5301, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Persian (Alolan Persian) - Retaliate - TM79
  (53, 5301, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Persian (Alolan Persian) - Snarl - TM85
  (53, 5301, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Persian (Alolan Persian) - Body Slam - TR01
  (53, 5301, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Persian (Alolan Persian) - Thunderbolt - TR08
  (53, 5301, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Persian (Alolan Persian) - Thunder - TR09
  (53, 5301, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Persian (Alolan Persian) - Amnesia - TR17
  (53, 5301, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Persian (Alolan Persian) - Substitute - TR20
  (53, 5301, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Persian (Alolan Persian) - Endure - TR26
  (53, 5301, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Persian (Alolan Persian) - Sleep Talk - TR27
  (53, 5301, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Persian (Alolan Persian) - Iron Tail - TR31
  (53, 5301, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Persian (Alolan Persian) - Shadow Ball - TR33
  (53, 5301, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Persian (Alolan Persian) - Uproar - TR35
  (53, 5301, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Persian (Alolan Persian) - Taunt - TR37
  (53, 5301, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Persian (Alolan Persian) - Hyper Voice - TR42
  (53, 5301, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Persian (Alolan Persian) - Dark Pulse - TR58
  (53, 5301, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Persian (Alolan Persian) - Seed Bomb - TR59
  (53, 5301, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 56),
  -- Persian (Alolan Persian) - Power Gem - TR63
  (53, 5301, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 57),
  -- Persian (Alolan Persian) - Nasty Plot - TR68
  (53, 5301, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Persian (Alolan Persian) - Gunk Shot - TR73
  (53, 5301, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 59),
  -- Persian (Alolan Persian) - Foul Play - TR81
  (53, 5301, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 60),
  -- Persian (Alolan Persian) - Work Up - TR85
  (53, 5301, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Persian (Alolan Persian) - Play Rough - TR90
  (53, 5301, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 62),
  -- Persian (Alolan Persian) - Throat Chop - TR95
  (53, 5301, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 63),
  -- Ponyta (Galarian Ponyta) - Tackle - Level 1
  (77, 7701, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta (Galarian Ponyta) - Growl - Level 1
  (77, 7701, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta (Galarian Ponyta) - Tail Whip - Level 5
  (77, 7701, 39, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ponyta (Galarian Ponyta) - Confusion - Level 10
  (77, 7701, 93, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ponyta (Galarian Ponyta) - Fairy Wind - Level 15
  (77, 7701, 584, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ponyta (Galarian Ponyta) - Agility - Level 20
  (77, 7701, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Ponyta (Galarian Ponyta) - Psybeam - Level 25
  (77, 7701, 60, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Ponyta (Galarian Ponyta) - Stomp - Level 30
  (77, 7701, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ponyta (Galarian Ponyta) - Heal Pulse - Level 35
  (77, 7701, 505, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Ponyta (Galarian Ponyta) - Take Down - Level 41
  (77, 7701, 36, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Ponyta (Galarian Ponyta) - Dazzling Gleam - Level 45
  (77, 7701, 605, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Ponyta (Galarian Ponyta) - Psychic - Level 50
  (77, 7701, 94, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Ponyta (Galarian Ponyta) - Healing Wish - Level 55
  (77, 7701, 361, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Ponyta (Galarian Ponyta) - Rest - TM21
  (77, 7701, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Ponyta (Galarian Ponyta) - Snore - TM24
  (77, 7701, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Ponyta (Galarian Ponyta) - Protect - TM25
  (77, 7701, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Ponyta (Galarian Ponyta) - Charm - TM29
  (77, 7701, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 17),
  -- Ponyta (Galarian Ponyta) - Attract - TM31
  (77, 7701, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Ponyta (Galarian Ponyta) - Facade - TM39
  (77, 7701, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Ponyta (Galarian Ponyta) - Swift - TM40
  (77, 7701, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 20),
  -- Ponyta (Galarian Ponyta) - Imprison - TM44
  (77, 7701, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 21),
  -- Ponyta (Galarian Ponyta) - Bounce - TM52
  (77, 7701, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 22),
  -- Ponyta (Galarian Ponyta) - Round - TM76
  (77, 7701, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 23),
  -- Ponyta (Galarian Ponyta) - Mystical Fire - TM92
  (77, 7701, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 24),
  -- Ponyta (Galarian Ponyta) - Body Slam - TR01
  (77, 7701, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 25),
  -- Ponyta (Galarian Ponyta) - Low Kick - TR07
  (77, 7701, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 26),
  -- Ponyta (Galarian Ponyta) - Psychic - TR11
  (77, 7701, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 27),
  -- Ponyta (Galarian Ponyta) - Agility - TR12
  (77, 7701, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 28),
  -- Ponyta (Galarian Ponyta) - Substitute - TR20
  (77, 7701, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Ponyta (Galarian Ponyta) - Endure - TR26
  (77, 7701, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Ponyta (Galarian Ponyta) - Sleep Talk - TR27
  (77, 7701, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Ponyta (Galarian Ponyta) - Iron Tail - TR31
  (77, 7701, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 32),
  -- Ponyta (Galarian Ponyta) - Future Sight - TR34
  (77, 7701, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 33),
  -- Ponyta (Galarian Ponyta) - Calm Mind - TR49
  (77, 7701, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 34),
  -- Ponyta (Galarian Ponyta) - Zen Headbutt - TR69
  (77, 7701, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 35),
  -- Ponyta (Galarian Ponyta) - Stored Power - TR82
  (77, 7701, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 36),
  -- Ponyta (Galarian Ponyta) - Ally Switch - TR83
  (77, 7701, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 37),
  -- Ponyta (Galarian Ponyta) - Wild Charge - TR86
  (77, 7701, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 38),
  -- Ponyta (Galarian Ponyta) - Play Rough - TR90
  (77, 7701, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 39),
  -- Ponyta (Galarian Ponyta) - Dazzling Gleam - TR92
  (77, 7701, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 40),
  -- Ponyta (Galarian Ponyta) - High Horsepower - TR94
  (77, 7701, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 41),
  -- Ponyta (Galarian Ponyta) - Double Kick - Egg
  (77, 7701, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ponyta (Galarian Ponyta) - Horn Drill - Egg
  (77, 7701, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ponyta (Galarian Ponyta) - Thrash - Egg
  (77, 7701, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ponyta (Galarian Ponyta) - Double-Edge - Egg
  (77, 7701, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ponyta (Galarian Ponyta) - Hypnosis - Egg
  (77, 7701, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ponyta (Galarian Ponyta) - Morning Sun - Egg
  (77, 7701, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Rapidash (Galarian Rapidash) - Tackle - Level 1
  (78, 7801, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash (Galarian Rapidash) - Tail Whip - Level 1
  (78, 7801, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash (Galarian Rapidash) - Growl - Level 1
  (78, 7801, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash (Galarian Rapidash) - Confusion - Level 1
  (78, 7801, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash (Galarian Rapidash) - Quick Attack - Level 1
  (78, 7801, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash (Galarian Rapidash) - Megahorn - Level 1
  (78, 7801, 224, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash (Galarian Rapidash) - Psycho Cut - Level 1
  (78, 7801, 427, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rapidash (Galarian Rapidash) - Fairy Wind - Level 15
  (78, 7801, 584, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Rapidash (Galarian Rapidash) - Agility - Level 20
  (78, 7801, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Rapidash (Galarian Rapidash) - Psybeam - Level 25
  (78, 7801, 60, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rapidash (Galarian Rapidash) - Stomp - Level 30
  (78, 7801, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rapidash (Galarian Rapidash) - Heal Pulse - Level 35
  (78, 7801, 505, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Rapidash (Galarian Rapidash) - Take Down - Level 43
  (78, 7801, 36, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rapidash (Galarian Rapidash) - Dazzling Gleam - Level 49
  (78, 7801, 605, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Rapidash (Galarian Rapidash) - Psychic - Level 56
  (78, 7801, 94, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Rapidash (Galarian Rapidash) - Healing Wish - Level 63
  (78, 7801, 361, 18, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Rapidash (Galarian Rapidash) - Psycho Cut - Evolution
  (78, 7801, 427, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Rapidash (Galarian Rapidash) - Pay Day - TM02
  (78, 7801, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Rapidash (Galarian Rapidash) - Hyper Beam - TM08
  (78, 7801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Rapidash (Galarian Rapidash) - Giga Impact - TM09
  (78, 7801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Rapidash (Galarian Rapidash) - Rest - TM21
  (78, 7801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Rapidash (Galarian Rapidash) - Snore - TM24
  (78, 7801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Rapidash (Galarian Rapidash) - Protect - TM25
  (78, 7801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Rapidash (Galarian Rapidash) - Charm - TM29
  (78, 7801, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Rapidash (Galarian Rapidash) - Attract - TM31
  (78, 7801, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Rapidash (Galarian Rapidash) - Facade - TM39
  (78, 7801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Rapidash (Galarian Rapidash) - Swift - TM40
  (78, 7801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Rapidash (Galarian Rapidash) - Imprison - TM44
  (78, 7801, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Rapidash (Galarian Rapidash) - Bounce - TM52
  (78, 7801, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Rapidash (Galarian Rapidash) - Psycho Cut - TM69
  (78, 7801, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 30),
  -- Rapidash (Galarian Rapidash) - Trick Room - TM70
  (78, 7801, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 31),
  -- Rapidash (Galarian Rapidash) - Wonder Room - TM71
  (78, 7801, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 32),
  -- Rapidash (Galarian Rapidash) - Magic Room - TM72
  (78, 7801, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 33),
  -- Rapidash (Galarian Rapidash) - Round - TM76
  (78, 7801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Rapidash (Galarian Rapidash) - Misty Terrain - TM89
  (78, 7801, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 35),
  -- Rapidash (Galarian Rapidash) - Psychic Terrain - TM91
  (78, 7801, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 36),
  -- Rapidash (Galarian Rapidash) - Mystical Fire - TM92
  (78, 7801, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 37),
  -- Rapidash (Galarian Rapidash) - Smart Strike - TM96
  (78, 7801, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 38),
  -- Rapidash (Galarian Rapidash) - Swords Dance - TR00
  (78, 7801, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Rapidash (Galarian Rapidash) - Body Slam - TR01
  (78, 7801, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Rapidash (Galarian Rapidash) - Low Kick - TR07
  (78, 7801, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Rapidash (Galarian Rapidash) - Psychic - TR11
  (78, 7801, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Rapidash (Galarian Rapidash) - Agility - TR12
  (78, 7801, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Rapidash (Galarian Rapidash) - Substitute - TR20
  (78, 7801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Rapidash (Galarian Rapidash) - Endure - TR26
  (78, 7801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Rapidash (Galarian Rapidash) - Sleep Talk - TR27
  (78, 7801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Rapidash (Galarian Rapidash) - Megahorn - TR28
  (78, 7801, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 47),
  -- Rapidash (Galarian Rapidash) - Baton Pass - TR29
  (78, 7801, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Rapidash (Galarian Rapidash) - Iron Tail - TR31
  (78, 7801, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Rapidash (Galarian Rapidash) - Future Sight - TR34
  (78, 7801, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 50),
  -- Rapidash (Galarian Rapidash) - Calm Mind - TR49
  (78, 7801, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 51),
  -- Rapidash (Galarian Rapidash) - Zen Headbutt - TR69
  (78, 7801, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Rapidash (Galarian Rapidash) - Stored Power - TR82
  (78, 7801, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 53),
  -- Rapidash (Galarian Rapidash) - Ally Switch - TR83
  (78, 7801, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Rapidash (Galarian Rapidash) - Wild Charge - TR86
  (78, 7801, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 55),
  -- Rapidash (Galarian Rapidash) - Drill Run - TR87
  (78, 7801, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 56),
  -- Rapidash (Galarian Rapidash) - Play Rough - TR90
  (78, 7801, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Rapidash (Galarian Rapidash) - Dazzling Gleam - TR92
  (78, 7801, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 58),
  -- Rapidash (Galarian Rapidash) - High Horsepower - TR94
  (78, 7801, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 59),
  -- Rapidash (Galarian Rapidash) - Throat Chop - TR95
  (78, 7801, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 60),
  -- Slowpoke (Galarian Slowpoke) - Tackle - Level 1
  (79, 7901, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke (Galarian Slowpoke) - Curse - Level 1
  (79, 7901, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke (Galarian Slowpoke) - Growl - Level 3
  (79, 7901, 45, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Slowpoke (Galarian Slowpoke) - Acid - Level 6
  (79, 7901, 51, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke (Galarian Slowpoke) - Yawn - Level 9
  (79, 7901, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke (Galarian Slowpoke) - Confusion - Level 12
  (79, 7901, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slowpoke (Galarian Slowpoke) - Disable - Level 15
  (79, 7901, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowpoke (Galarian Slowpoke) - Water Pulse - Level 18
  (79, 7901, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowpoke (Galarian Slowpoke) - Headbutt - Level 21
  (79, 7901, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowpoke (Galarian Slowpoke) - Zen Headbutt - Level 24
  (79, 7901, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowpoke (Galarian Slowpoke) - Amnesia - Level 27
  (79, 7901, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowpoke (Galarian Slowpoke) - Surf - Level 30
  (79, 7901, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowpoke (Galarian Slowpoke) - Slack Off - Level 33
  (79, 7901, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slowpoke (Galarian Slowpoke) - Psychic - Level 36
  (79, 7901, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowpoke (Galarian Slowpoke) - Psych Up - Level 39
  (79, 7901, 244, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slowpoke (Galarian Slowpoke) - Rain Dance - Level 42
  (79, 7901, 240, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slowpoke (Galarian Slowpoke) - Heal Pulse - Level 45
  (79, 7901, 505, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Slowpoke (Galarian Slowpoke) - Pay Day - TM02
  (79, 7901, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Slowpoke (Galarian Slowpoke) - Thunder Wave - TM14
  (79, 7901, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Slowpoke (Galarian Slowpoke) - Dig - TM15
  (79, 7901, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Slowpoke (Galarian Slowpoke) - Light Screen - TM17
  (79, 7901, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Slowpoke (Galarian Slowpoke) - Safeguard - TM19
  (79, 7901, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Slowpoke (Galarian Slowpoke) - Rest - TM21
  (79, 7901, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Slowpoke (Galarian Slowpoke) - Snore - TM24
  (79, 7901, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Slowpoke (Galarian Slowpoke) - Protect - TM25
  (79, 7901, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Slowpoke (Galarian Slowpoke) - Icy Wind - TM27
  (79, 7901, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Slowpoke (Galarian Slowpoke) - Attract - TM31
  (79, 7901, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Slowpoke (Galarian Slowpoke) - Rain Dance - TM33
  (79, 7901, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Slowpoke (Galarian Slowpoke) - Sunny Day - TM34
  (79, 7901, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Slowpoke (Galarian Slowpoke) - Hail - TM35
  (79, 7901, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Slowpoke (Galarian Slowpoke) - Whirlpool - TM36
  (79, 7901, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Slowpoke (Galarian Slowpoke) - Facade - TM39
  (79, 7901, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Slowpoke (Galarian Slowpoke) - Swift - TM40
  (79, 7901, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Slowpoke (Galarian Slowpoke) - Imprison - TM44
  (79, 7901, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Slowpoke (Galarian Slowpoke) - Dive - TM45
  (79, 7901, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Slowpoke (Galarian Slowpoke) - Weather Ball - TM46
  (79, 7901, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Slowpoke (Galarian Slowpoke) - Mud Shot - TM53
  (79, 7901, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Slowpoke (Galarian Slowpoke) - Brine - TM55
  (79, 7901, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 38),
  -- Slowpoke (Galarian Slowpoke) - Trick Room - TM70
  (79, 7901, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Slowpoke (Galarian Slowpoke) - Wonder Room - TM71
  (79, 7901, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Slowpoke (Galarian Slowpoke) - Round - TM76
  (79, 7901, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Slowpoke (Galarian Slowpoke) - Bulldoze - TM81
  (79, 7901, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Slowpoke (Galarian Slowpoke) - Psychic Terrain - TM91
  (79, 7901, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 43),
  -- Slowpoke (Galarian Slowpoke) - Body Slam - TR01
  (79, 7901, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Slowpoke (Galarian Slowpoke) - Flamethrower - TR02
  (79, 7901, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Slowpoke (Galarian Slowpoke) - Hydro Pump - TR03
  (79, 7901, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Slowpoke (Galarian Slowpoke) - Surf - TR04
  (79, 7901, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Slowpoke (Galarian Slowpoke) - Ice Beam - TR05
  (79, 7901, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Slowpoke (Galarian Slowpoke) - Blizzard - TR06
  (79, 7901, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Slowpoke (Galarian Slowpoke) - Earthquake - TR10
  (79, 7901, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Slowpoke (Galarian Slowpoke) - Psychic - TR11
  (79, 7901, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Slowpoke (Galarian Slowpoke) - Fire Blast - TR15
  (79, 7901, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 52),
  -- Slowpoke (Galarian Slowpoke) - Amnesia - TR17
  (79, 7901, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 53),
  -- Slowpoke (Galarian Slowpoke) - Tri Attack - TR19
  (79, 7901, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 54),
  -- Slowpoke (Galarian Slowpoke) - Substitute - TR20
  (79, 7901, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Slowpoke (Galarian Slowpoke) - Psyshock - TR25
  (79, 7901, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 56),
  -- Slowpoke (Galarian Slowpoke) - Endure - TR26
  (79, 7901, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Slowpoke (Galarian Slowpoke) - Sleep Talk - TR27
  (79, 7901, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Slowpoke (Galarian Slowpoke) - Iron Tail - TR31
  (79, 7901, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Slowpoke (Galarian Slowpoke) - Shadow Ball - TR33
  (79, 7901, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Slowpoke (Galarian Slowpoke) - Future Sight - TR34
  (79, 7901, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 61),
  -- Slowpoke (Galarian Slowpoke) - Trick - TR38
  (79, 7901, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 62),
  -- Slowpoke (Galarian Slowpoke) - Skill Swap - TR40
  (79, 7901, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 63),
  -- Slowpoke (Galarian Slowpoke) - Calm Mind - TR49
  (79, 7901, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 64),
  -- Slowpoke (Galarian Slowpoke) - Zen Headbutt - TR69
  (79, 7901, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Slowpoke (Galarian Slowpoke) - Grass Knot - TR77
  (79, 7901, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 66),
  -- Slowpoke (Galarian Slowpoke) - Foul Play - TR81
  (79, 7901, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 67),
  -- Slowpoke (Galarian Slowpoke) - Stored Power - TR82
  (79, 7901, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 68),
  -- Slowpoke (Galarian Slowpoke) - Scald - TR84
  (79, 7901, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 69),
  -- Slowpoke (Galarian Slowpoke) - Liquidation - TR98
  (79, 7901, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 70),
  -- Slowpoke (Galarian Slowpoke) - Stomp - Egg
  (79, 7901, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Slowpoke (Galarian Slowpoke) - Belly Drum - Egg
  (79, 7901, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slowpoke (Galarian Slowpoke) - Block - Egg
  (79, 7901, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Slowpoke (Galarian Slowpoke) - Belch - Egg
  (79, 7901, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Slowbro (Galarian Slowbro) - Tackle - Level 1
  (80, 8002, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro (Galarian Slowbro) - Growl - Level 1
  (80, 8002, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro (Galarian Slowbro) - Acid - Level 1
  (80, 8002, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro (Galarian Slowbro) - Withdraw - Level 1
  (80, 8002, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro (Galarian Slowbro) - Curse - Level 1
  (80, 8002, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro (Galarian Slowbro) - Shell Side Arm - Level 1
  (80, 8002, 801, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowbro (Galarian Slowbro) - Yawn - Level 9
  (80, 8002, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Slowbro (Galarian Slowbro) - Confusion - Level 12
  (80, 8002, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Slowbro (Galarian Slowbro) - Disable - Level 15
  (80, 8002, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Slowbro (Galarian Slowbro) - Water Pulse - Level 18
  (80, 8002, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Slowbro (Galarian Slowbro) - Headbutt - Level 21
  (80, 8002, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Slowbro (Galarian Slowbro) - Zen Headbutt - Level 24
  (80, 8002, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Slowbro (Galarian Slowbro) - Amnesia - Level 27
  (80, 8002, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Slowbro (Galarian Slowbro) - Surf - Level 30
  (80, 8002, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Slowbro (Galarian Slowbro) - Slack Off - Level 33
  (80, 8002, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Slowbro (Galarian Slowbro) - Psychic - Level 36
  (80, 8002, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Slowbro (Galarian Slowbro) - Psych Up - Level 39
  (80, 8002, 244, 18, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Slowbro (Galarian Slowbro) - Rain Dance - Level 42
  (80, 8002, 240, 18, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Slowbro (Galarian Slowbro) - Heal Pulse - Level 45
  (80, 8002, 505, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Slowbro (Galarian Slowbro) - Shell Side Arm - Evolution
  (80, 8002, 801, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Slowbro (Galarian Slowbro) - Mega Punch - TM00
  (80, 8002, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Slowbro (Galarian Slowbro) - Mega Kick - TM01
  (80, 8002, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Slowbro (Galarian Slowbro) - Pay Day - TM02
  (80, 8002, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 23),
  -- Slowbro (Galarian Slowbro) - Ice Punch - TM04
  (80, 8002, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Slowbro (Galarian Slowbro) - Hyper Beam - TM08
  (80, 8002, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Slowbro (Galarian Slowbro) - Giga Impact - TM09
  (80, 8002, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Slowbro (Galarian Slowbro) - Thunder Wave - TM14
  (80, 8002, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Slowbro (Galarian Slowbro) - Dig - TM15
  (80, 8002, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Slowbro (Galarian Slowbro) - Light Screen - TM17
  (80, 8002, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 29),
  -- Slowbro (Galarian Slowbro) - Safeguard - TM19
  (80, 8002, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 30),
  -- Slowbro (Galarian Slowbro) - Rest - TM21
  (80, 8002, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 31),
  -- Slowbro (Galarian Slowbro) - Snore - TM24
  (80, 8002, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Slowbro (Galarian Slowbro) - Protect - TM25
  (80, 8002, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Slowbro (Galarian Slowbro) - Icy Wind - TM27
  (80, 8002, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 34),
  -- Slowbro (Galarian Slowbro) - Attract - TM31
  (80, 8002, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Slowbro (Galarian Slowbro) - Rain Dance - TM33
  (80, 8002, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Slowbro (Galarian Slowbro) - Sunny Day - TM34
  (80, 8002, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Slowbro (Galarian Slowbro) - Hail - TM35
  (80, 8002, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 38),
  -- Slowbro (Galarian Slowbro) - Whirlpool - TM36
  (80, 8002, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 39),
  -- Slowbro (Galarian Slowbro) - Facade - TM39
  (80, 8002, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Slowbro (Galarian Slowbro) - Swift - TM40
  (80, 8002, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Slowbro (Galarian Slowbro) - Brick Break - TM43
  (80, 8002, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 42),
  -- Slowbro (Galarian Slowbro) - Imprison - TM44
  (80, 8002, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 43),
  -- Slowbro (Galarian Slowbro) - Dive - TM45
  (80, 8002, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 44),
  -- Slowbro (Galarian Slowbro) - Weather Ball - TM46
  (80, 8002, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 45),
  -- Slowbro (Galarian Slowbro) - Mud Shot - TM53
  (80, 8002, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 46),
  -- Slowbro (Galarian Slowbro) - Brine - TM55
  (80, 8002, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 47),
  -- Slowbro (Galarian Slowbro) - Fling - TM59
  (80, 8002, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Slowbro (Galarian Slowbro) - Drain Punch - TM63
  (80, 8002, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 49),
  -- Slowbro (Galarian Slowbro) - Avalanche - TM64
  (80, 8002, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 50),
  -- Slowbro (Galarian Slowbro) - Trick Room - TM70
  (80, 8002, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 51),
  -- Slowbro (Galarian Slowbro) - Wonder Room - TM71
  (80, 8002, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 52),
  -- Slowbro (Galarian Slowbro) - Venoshock - TM74
  (80, 8002, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 53),
  -- Slowbro (Galarian Slowbro) - Round - TM76
  (80, 8002, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 54),
  -- Slowbro (Galarian Slowbro) - Bulldoze - TM81
  (80, 8002, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 55),
  -- Slowbro (Galarian Slowbro) - Razor Shell - TM83
  (80, 8002, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 56),
  -- Slowbro (Galarian Slowbro) - Psychic Terrain - TM91
  (80, 8002, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 57),
  -- Slowbro (Galarian Slowbro) - Brutal Swing - TM97
  (80, 8002, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 58),
  -- Slowbro (Galarian Slowbro) - Body Slam - TR01
  (80, 8002, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 59),
  -- Slowbro (Galarian Slowbro) - Flamethrower - TR02
  (80, 8002, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 60),
  -- Slowbro (Galarian Slowbro) - Hydro Pump - TR03
  (80, 8002, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 61),
  -- Slowbro (Galarian Slowbro) - Surf - TR04
  (80, 8002, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 62),
  -- Slowbro (Galarian Slowbro) - Ice Beam - TR05
  (80, 8002, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 63),
  -- Slowbro (Galarian Slowbro) - Blizzard - TR06
  (80, 8002, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 64),
  -- Slowbro (Galarian Slowbro) - Earthquake - TR10
  (80, 8002, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 65),
  -- Slowbro (Galarian Slowbro) - Psychic - TR11
  (80, 8002, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 66),
  -- Slowbro (Galarian Slowbro) - Fire Blast - TR15
  (80, 8002, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 67),
  -- Slowbro (Galarian Slowbro) - Amnesia - TR17
  (80, 8002, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 68),
  -- Slowbro (Galarian Slowbro) - Tri Attack - TR19
  (80, 8002, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 69),
  -- Slowbro (Galarian Slowbro) - Substitute - TR20
  (80, 8002, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 70),
  -- Slowbro (Galarian Slowbro) - Sludge Bomb - TR22
  (80, 8002, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 71),
  -- Slowbro (Galarian Slowbro) - Psyshock - TR25
  (80, 8002, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 72),
  -- Slowbro (Galarian Slowbro) - Endure - TR26
  (80, 8002, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 73),
  -- Slowbro (Galarian Slowbro) - Sleep Talk - TR27
  (80, 8002, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 74),
  -- Slowbro (Galarian Slowbro) - Iron Tail - TR31
  (80, 8002, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 75),
  -- Slowbro (Galarian Slowbro) - Shadow Ball - TR33
  (80, 8002, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 76),
  -- Slowbro (Galarian Slowbro) - Future Sight - TR34
  (80, 8002, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 77),
  -- Slowbro (Galarian Slowbro) - Trick - TR38
  (80, 8002, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 78),
  -- Slowbro (Galarian Slowbro) - Skill Swap - TR40
  (80, 8002, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 79),
  -- Slowbro (Galarian Slowbro) - Muddy Water - TR45
  (80, 8002, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 80),
  -- Slowbro (Galarian Slowbro) - Iron Defense - TR46
  (80, 8002, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 81),
  -- Slowbro (Galarian Slowbro) - Calm Mind - TR49
  (80, 8002, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 82),
  -- Slowbro (Galarian Slowbro) - Poison Jab - TR57
  (80, 8002, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 83),
  -- Slowbro (Galarian Slowbro) - Focus Blast - TR64
  (80, 8002, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 84),
  -- Slowbro (Galarian Slowbro) - Nasty Plot - TR68
  (80, 8002, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 85),
  -- Slowbro (Galarian Slowbro) - Zen Headbutt - TR69
  (80, 8002, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 86),
  -- Slowbro (Galarian Slowbro) - Grass Knot - TR77
  (80, 8002, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 87),
  -- Slowbro (Galarian Slowbro) - Sludge Wave - TR78
  (80, 8002, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 88),
  -- Slowbro (Galarian Slowbro) - Foul Play - TR81
  (80, 8002, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 89),
  -- Slowbro (Galarian Slowbro) - Stored Power - TR82
  (80, 8002, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 90),
  -- Slowbro (Galarian Slowbro) - Scald - TR84
  (80, 8002, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 91),
  -- Slowbro (Galarian Slowbro) - Liquidation - TR98
  (80, 8002, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 92),
  -- Farfetch'd (Galarian Farfetch'd) - Sand Attack - Level 1
  (83, 8301, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd (Galarian Farfetch'd) - Peck - Level 1
  (83, 8301, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd (Galarian Farfetch'd) - Leer - Level 5
  (83, 8301, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Farfetch'd (Galarian Farfetch'd) - Fury Cutter - Level 10
  (83, 8301, 210, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Farfetch'd (Galarian Farfetch'd) - Rock Smash - Level 15
  (83, 8301, 249, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Farfetch'd (Galarian Farfetch'd) - Brutal Swing - Level 20
  (83, 8301, 693, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Farfetch'd (Galarian Farfetch'd) - Detect - Level 25
  (83, 8301, 197, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Farfetch'd (Galarian Farfetch'd) - Knock Off - Level 30
  (83, 8301, 282, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Farfetch'd (Galarian Farfetch'd) - Defog - Level 35
  (83, 8301, 432, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Farfetch'd (Galarian Farfetch'd) - Brick Break - Level 40
  (83, 8301, 280, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Farfetch'd (Galarian Farfetch'd) - Swords Dance - Level 45
  (83, 8301, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Farfetch'd (Galarian Farfetch'd) - Slam - Level 50
  (83, 8301, 21, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Farfetch'd (Galarian Farfetch'd) - Leaf Blade - Level 55
  (83, 8301, 348, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Farfetch'd (Galarian Farfetch'd) - Final Gambit - Level 60
  (83, 8301, 515, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Farfetch'd (Galarian Farfetch'd) - Brave Bird - Level 65
  (83, 8301, 413, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Farfetch'd (Galarian Farfetch'd) - Solar Blade - TM12
  (83, 8301, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 16),
  -- Farfetch'd (Galarian Farfetch'd) - Rest - TM21
  (83, 8301, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Farfetch'd (Galarian Farfetch'd) - Snore - TM24
  (83, 8301, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Farfetch'd (Galarian Farfetch'd) - Protect - TM25
  (83, 8301, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Farfetch'd (Galarian Farfetch'd) - Steel Wing - TM30
  (83, 8301, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 20),
  -- Farfetch'd (Galarian Farfetch'd) - Attract - TM31
  (83, 8301, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Farfetch'd (Galarian Farfetch'd) - Sunny Day - TM34
  (83, 8301, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Farfetch'd (Galarian Farfetch'd) - Facade - TM39
  (83, 8301, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Farfetch'd (Galarian Farfetch'd) - Helping Hand - TM41
  (83, 8301, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Farfetch'd (Galarian Farfetch'd) - Revenge - TM42
  (83, 8301, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Farfetch'd (Galarian Farfetch'd) - Brick Break - TM43
  (83, 8301, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Farfetch'd (Galarian Farfetch'd) - Assurance - TM58
  (83, 8301, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Farfetch'd (Galarian Farfetch'd) - Round - TM76
  (83, 8301, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Farfetch'd (Galarian Farfetch'd) - Retaliate - TM79
  (83, 8301, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 29),
  -- Farfetch'd (Galarian Farfetch'd) - Brutal Swing - TM97
  (83, 8301, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 30),
  -- Farfetch'd (Galarian Farfetch'd) - Swords Dance - TR00
  (83, 8301, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Farfetch'd (Galarian Farfetch'd) - Body Slam - TR01
  (83, 8301, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Farfetch'd (Galarian Farfetch'd) - Focus Energy - TR13
  (83, 8301, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 33),
  -- Farfetch'd (Galarian Farfetch'd) - Substitute - TR20
  (83, 8301, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Farfetch'd (Galarian Farfetch'd) - Endure - TR26
  (83, 8301, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Farfetch'd (Galarian Farfetch'd) - Sleep Talk - TR27
  (83, 8301, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Farfetch'd (Galarian Farfetch'd) - Superpower - TR39
  (83, 8301, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 37),
  -- Farfetch'd (Galarian Farfetch'd) - Leaf Blade - TR50
  (83, 8301, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 38),
  -- Farfetch'd (Galarian Farfetch'd) - Close Combat - TR53
  (83, 8301, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 39),
  -- Farfetch'd (Galarian Farfetch'd) - Poison Jab - TR57
  (83, 8301, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 40),
  -- Farfetch'd (Galarian Farfetch'd) - Brave Bird - TR66
  (83, 8301, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 41),
  -- Farfetch'd (Galarian Farfetch'd) - Work Up - TR85
  (83, 8301, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 42),
  -- Farfetch'd (Galarian Farfetch'd) - Throat Chop - TR95
  (83, 8301, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 43),
  -- Farfetch'd (Galarian Farfetch'd) - Double-Edge - Egg
  (83, 8301, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Farfetch'd (Galarian Farfetch'd) - Counter - Egg
  (83, 8301, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Farfetch'd (Galarian Farfetch'd) - Quick Attack - Egg
  (83, 8301, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Farfetch'd (Galarian Farfetch'd) - Sky Attack - Egg
  (83, 8301, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Farfetch'd (Galarian Farfetch'd) - Curse - Egg
  (83, 8301, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd (Galarian Farfetch'd) - Flail - Egg
  (83, 8301, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd (Galarian Farfetch'd) - Covet - Egg
  (83, 8301, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd (Galarian Farfetch'd) - Feint - Egg
  (83, 8301, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd (Galarian Farfetch'd) - Night Slash - Egg
  (83, 8301, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd (Galarian Farfetch'd) - Simple Beam - Egg
  (83, 8301, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd (Galarian Farfetch'd) - Quick Guard - Egg
  (83, 8301, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggutor (Alolan Exeggutor) - Absorb - Level 1
  (103, 10301, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor (Alolan Exeggutor) - Mega Drain - Level 1
  (103, 10301, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor (Alolan Exeggutor) - Leech Seed - Level 1
  (103, 10301, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor (Alolan Exeggutor) - Solar Beam - Level 1
  (103, 10301, 76, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor (Alolan Exeggutor) - Confusion - Level 1
  (103, 10301, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor (Alolan Exeggutor) - Hypnosis - Level 1
  (103, 10301, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor (Alolan Exeggutor) - Reflect - Level 1
  (103, 10301, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor (Alolan Exeggutor) - Giga Drain - Level 1
  (103, 10301, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exeggutor (Alolan Exeggutor) - Synthesis - Level 1
  (103, 10301, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Exeggutor (Alolan Exeggutor) - Uproar - Level 1
  (103, 10301, 253, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Exeggutor (Alolan Exeggutor) - Extrasensory - Level 1
  (103, 10301, 326, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Exeggutor (Alolan Exeggutor) - Bullet Seed - Level 1
  (103, 10301, 331, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Exeggutor (Alolan Exeggutor) - Worry Seed - Level 1
  (103, 10301, 388, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Exeggutor (Alolan Exeggutor) - Seed Bomb - Level 1
  (103, 10301, 402, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Exeggutor (Alolan Exeggutor) - Leaf Storm - Level 1
  (103, 10301, 437, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Exeggutor (Alolan Exeggutor) - Wood Hammer - Level 1
  (103, 10301, 452, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Exeggutor (Alolan Exeggutor) - Psyshock - Level 1
  (103, 10301, 473, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Exeggutor (Alolan Exeggutor) - Dragon Hammer - Level 1
  (103, 10301, 692, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Exeggutor (Alolan Exeggutor) - Dragon Hammer - Evolution
  (103, 10301, 692, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Exeggutor (Alolan Exeggutor) - Hyper Beam - TM08
  (103, 10301, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Exeggutor (Alolan Exeggutor) - Giga Impact - TM09
  (103, 10301, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Exeggutor (Alolan Exeggutor) - Magical Leaf - TM10
  (103, 10301, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 22),
  -- Exeggutor (Alolan Exeggutor) - Solar Beam - TM11
  (103, 10301, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Exeggutor (Alolan Exeggutor) - Light Screen - TM17
  (103, 10301, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Exeggutor (Alolan Exeggutor) - Reflect - TM18
  (103, 10301, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Exeggutor (Alolan Exeggutor) - Self-Destruct - TM20
  (103, 10301, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Exeggutor (Alolan Exeggutor) - Rest - TM21
  (103, 10301, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Exeggutor (Alolan Exeggutor) - Thief - TM23
  (103, 10301, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Exeggutor (Alolan Exeggutor) - Snore - TM24
  (103, 10301, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Exeggutor (Alolan Exeggutor) - Protect - TM25
  (103, 10301, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Exeggutor (Alolan Exeggutor) - Giga Drain - TM28
  (103, 10301, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Exeggutor (Alolan Exeggutor) - Attract - TM31
  (103, 10301, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Exeggutor (Alolan Exeggutor) - Sunny Day - TM34
  (103, 10301, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Exeggutor (Alolan Exeggutor) - Facade - TM39
  (103, 10301, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Exeggutor (Alolan Exeggutor) - Brick Break - TM43
  (103, 10301, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Exeggutor (Alolan Exeggutor) - Bullet Seed - TM50
  (103, 10301, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 36),
  -- Exeggutor (Alolan Exeggutor) - Power Swap - TM60
  (103, 10301, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 37),
  -- Exeggutor (Alolan Exeggutor) - Trick Room - TM70
  (103, 10301, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Exeggutor (Alolan Exeggutor) - Round - TM76
  (103, 10301, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Exeggutor (Alolan Exeggutor) - Bulldoze - TM81
  (103, 10301, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Exeggutor (Alolan Exeggutor) - Grassy Terrain - TM88
  (103, 10301, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 41),
  -- Exeggutor (Alolan Exeggutor) - Brutal Swing - TM97
  (103, 10301, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Exeggutor (Alolan Exeggutor) - Stomping Tantrum - TM98
  (103, 10301, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Exeggutor (Alolan Exeggutor) - Breaking Swipe - TM99
  (103, 10301, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 44),
  -- Exeggutor (Alolan Exeggutor) - Swords Dance - TR00
  (103, 10301, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Exeggutor (Alolan Exeggutor) - Flamethrower - TR02
  (103, 10301, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Exeggutor (Alolan Exeggutor) - Low Kick - TR07
  (103, 10301, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 47),
  -- Exeggutor (Alolan Exeggutor) - Earthquake - TR10
  (103, 10301, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Exeggutor (Alolan Exeggutor) - Psychic - TR11
  (103, 10301, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Exeggutor (Alolan Exeggutor) - Substitute - TR20
  (103, 10301, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Exeggutor (Alolan Exeggutor) - Sludge Bomb - TR22
  (103, 10301, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 51),
  -- Exeggutor (Alolan Exeggutor) - Outrage - TR24
  (103, 10301, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 52),
  -- Exeggutor (Alolan Exeggutor) - Psyshock - TR25
  (103, 10301, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 53),
  -- Exeggutor (Alolan Exeggutor) - Endure - TR26
  (103, 10301, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Exeggutor (Alolan Exeggutor) - Sleep Talk - TR27
  (103, 10301, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Exeggutor (Alolan Exeggutor) - Iron Tail - TR31
  (103, 10301, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Exeggutor (Alolan Exeggutor) - Uproar - TR35
  (103, 10301, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Exeggutor (Alolan Exeggutor) - Superpower - TR39
  (103, 10301, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Exeggutor (Alolan Exeggutor) - Skill Swap - TR40
  (103, 10301, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Exeggutor (Alolan Exeggutor) - Seed Bomb - TR59
  (103, 10301, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 60),
  -- Exeggutor (Alolan Exeggutor) - Dragon Pulse - TR62
  (103, 10301, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 61),
  -- Exeggutor (Alolan Exeggutor) - Energy Ball - TR65
  (103, 10301, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 62),
  -- Exeggutor (Alolan Exeggutor) - Zen Headbutt - TR69
  (103, 10301, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 63),
  -- Exeggutor (Alolan Exeggutor) - Leaf Storm - TR71
  (103, 10301, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 64),
  -- Exeggutor (Alolan Exeggutor) - Power Whip - TR72
  (103, 10301, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 65),
  -- Exeggutor (Alolan Exeggutor) - Iron Head - TR74
  (103, 10301, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Exeggutor (Alolan Exeggutor) - Grass Knot - TR77
  (103, 10301, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Exeggutor (Alolan Exeggutor) - Draco Meteor - Tutor
  (103, 10301, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 68),
  -- Marowak (Alolan Marowak) - Headbutt - Level 1
  (105, 10501, 29, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak (Alolan Marowak) - Double-Edge - Level 1
  (105, 10501, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak (Alolan Marowak) - Tail Whip - Level 1
  (105, 10501, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak (Alolan Marowak) - Growl - Level 1
  (105, 10501, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak (Alolan Marowak) - Fire Spin - Level 1
  (105, 10501, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marowak (Alolan Marowak) - Focus Energy - Level 1
  (105, 10501, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marowak (Alolan Marowak) - Mud-Slap - Level 1
  (105, 10501, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marowak (Alolan Marowak) - False Swipe - Level 1
  (105, 10501, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Marowak (Alolan Marowak) - Retaliate - Level 1
  (105, 10501, 514, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Marowak (Alolan Marowak) - Flame Wheel - Level 12
  (105, 10501, 172, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Marowak (Alolan Marowak) - Hex - Level 16
  (105, 10501, 506, 18, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Marowak (Alolan Marowak) - Fling - Level 20
  (105, 10501, 374, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Marowak (Alolan Marowak) - Stomping Tantrum - Level 24
  (105, 10501, 707, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Marowak (Alolan Marowak) - Bone Rush - Level 31
  (105, 10501, 198, 18, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Marowak (Alolan Marowak) - Will-O-Wisp - Level 36
  (105, 10501, 261, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Marowak (Alolan Marowak) - Endeavor - Level 42
  (105, 10501, 283, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Marowak (Alolan Marowak) - Bonemerang - Level 48
  (105, 10501, 155, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Marowak (Alolan Marowak) - Thrash - Level 54
  (105, 10501, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Marowak (Alolan Marowak) - Flare Blitz - Level 60
  (105, 10501, 394, 18, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Marowak (Alolan Marowak) - Shadow Bone - Evolution
  (105, 10501, 708, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Marowak (Alolan Marowak) - Mega Punch - TM00
  (105, 10501, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Marowak (Alolan Marowak) - Mega Kick - TM01
  (105, 10501, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Marowak (Alolan Marowak) - Fire Punch - TM03
  (105, 10501, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Marowak (Alolan Marowak) - Thunder Punch - TM05
  (105, 10501, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Marowak (Alolan Marowak) - Hyper Beam - TM08
  (105, 10501, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Marowak (Alolan Marowak) - Giga Impact - TM09
  (105, 10501, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Marowak (Alolan Marowak) - Fire Spin - TM13
  (105, 10501, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 27),
  -- Marowak (Alolan Marowak) - Dig - TM15
  (105, 10501, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Marowak (Alolan Marowak) - Screech - TM16
  (105, 10501, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 29),
  -- Marowak (Alolan Marowak) - Rest - TM21
  (105, 10501, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Marowak (Alolan Marowak) - Rock Slide - TM22
  (105, 10501, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 31),
  -- Marowak (Alolan Marowak) - Thief - TM23
  (105, 10501, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 32),
  -- Marowak (Alolan Marowak) - Snore - TM24
  (105, 10501, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 33),
  -- Marowak (Alolan Marowak) - Protect - TM25
  (105, 10501, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 34),
  -- Marowak (Alolan Marowak) - Icy Wind - TM27
  (105, 10501, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 35),
  -- Marowak (Alolan Marowak) - Attract - TM31
  (105, 10501, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 36),
  -- Marowak (Alolan Marowak) - Sandstorm - TM32
  (105, 10501, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 37),
  -- Marowak (Alolan Marowak) - Rain Dance - TM33
  (105, 10501, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 38),
  -- Marowak (Alolan Marowak) - Sunny Day - TM34
  (105, 10501, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Marowak (Alolan Marowak) - Will-O-Wisp - TM38
  (105, 10501, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 40),
  -- Marowak (Alolan Marowak) - Facade - TM39
  (105, 10501, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 41),
  -- Marowak (Alolan Marowak) - Swift - TM40
  (105, 10501, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 42),
  -- Marowak (Alolan Marowak) - Brick Break - TM43
  (105, 10501, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 43),
  -- Marowak (Alolan Marowak) - Imprison - TM44
  (105, 10501, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 44),
  -- Marowak (Alolan Marowak) - Rock Tomb - TM48
  (105, 10501, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 45),
  -- Marowak (Alolan Marowak) - Fling - TM59
  (105, 10501, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 46),
  -- Marowak (Alolan Marowak) - Round - TM76
  (105, 10501, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Marowak (Alolan Marowak) - Hex - TM77
  (105, 10501, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 48),
  -- Marowak (Alolan Marowak) - Retaliate - TM79
  (105, 10501, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Marowak (Alolan Marowak) - Bulldoze - TM81
  (105, 10501, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Marowak (Alolan Marowak) - False Swipe - TM94
  (105, 10501, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 51),
  -- Marowak (Alolan Marowak) - Brutal Swing - TM97
  (105, 10501, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 52),
  -- Marowak (Alolan Marowak) - Stomping Tantrum - TM98
  (105, 10501, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 53),
  -- Marowak (Alolan Marowak) - Swords Dance - TR00
  (105, 10501, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 54),
  -- Marowak (Alolan Marowak) - Body Slam - TR01
  (105, 10501, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 55),
  -- Marowak (Alolan Marowak) - Flamethrower - TR02
  (105, 10501, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 56),
  -- Marowak (Alolan Marowak) - Ice Beam - TR05
  (105, 10501, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 57),
  -- Marowak (Alolan Marowak) - Blizzard - TR06
  (105, 10501, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 58),
  -- Marowak (Alolan Marowak) - Low Kick - TR07
  (105, 10501, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 59),
  -- Marowak (Alolan Marowak) - Thunderbolt - TR08
  (105, 10501, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 60),
  -- Marowak (Alolan Marowak) - Thunder - TR09
  (105, 10501, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 61),
  -- Marowak (Alolan Marowak) - Earthquake - TR10
  (105, 10501, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 62),
  -- Marowak (Alolan Marowak) - Focus Energy - TR13
  (105, 10501, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 63),
  -- Marowak (Alolan Marowak) - Fire Blast - TR15
  (105, 10501, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 64),
  -- Marowak (Alolan Marowak) - Substitute - TR20
  (105, 10501, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 65),
  -- Marowak (Alolan Marowak) - Outrage - TR24
  (105, 10501, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 66),
  -- Marowak (Alolan Marowak) - Endure - TR26
  (105, 10501, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 67),
  -- Marowak (Alolan Marowak) - Sleep Talk - TR27
  (105, 10501, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 68),
  -- Marowak (Alolan Marowak) - Iron Tail - TR31
  (105, 10501, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 69),
  -- Marowak (Alolan Marowak) - Shadow Ball - TR33
  (105, 10501, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Marowak (Alolan Marowak) - Uproar - TR35
  (105, 10501, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 71),
  -- Marowak (Alolan Marowak) - Heat Wave - TR36
  (105, 10501, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 72),
  -- Marowak (Alolan Marowak) - Iron Defense - TR46
  (105, 10501, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 73),
  -- Marowak (Alolan Marowak) - Flare Blitz - TR55
  (105, 10501, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 74),
  -- Marowak (Alolan Marowak) - Dark Pulse - TR58
  (105, 10501, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 75),
  -- Marowak (Alolan Marowak) - Focus Blast - TR64
  (105, 10501, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 76),
  -- Marowak (Alolan Marowak) - Earth Power - TR67
  (105, 10501, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 77),
  -- Marowak (Alolan Marowak) - Iron Head - TR74
  (105, 10501, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 78),
  -- Marowak (Alolan Marowak) - Stone Edge - TR75
  (105, 10501, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 79),
  -- Marowak (Alolan Marowak) - Stealth Rock - TR76
  (105, 10501, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 80),
  -- Marowak (Alolan Marowak) - Ally Switch - TR83
  (105, 10501, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 81),
  -- Marowak (Alolan Marowak) - Throat Chop - TR95
  (105, 10501, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 82),
  -- Weezing (Galarian Weezing) - Tackle - Level 1
  (110, 11001, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing (Galarian Weezing) - Smokescreen - Level 1
  (110, 11001, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing (Galarian Weezing) - Haze - Level 1
  (110, 11001, 114, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing (Galarian Weezing) - Smog - Level 1
  (110, 11001, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing (Galarian Weezing) - Poison Gas - Level 1
  (110, 11001, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weezing (Galarian Weezing) - Heat Wave - Level 1
  (110, 11001, 257, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weezing (Galarian Weezing) - Defog - Level 1
  (110, 11001, 432, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weezing (Galarian Weezing) - Double Hit - Level 1
  (110, 11001, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Weezing (Galarian Weezing) - Fairy Wind - Level 1
  (110, 11001, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Weezing (Galarian Weezing) - Aromatic Mist - Level 1
  (110, 11001, 597, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Weezing (Galarian Weezing) - Strange Steam - Level 1
  (110, 11001, 790, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Weezing (Galarian Weezing) - Clear Smog - Level 12
  (110, 11001, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Weezing (Galarian Weezing) - Assurance - Level 16
  (110, 11001, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Weezing (Galarian Weezing) - Sludge - Level 20
  (110, 11001, 124, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Weezing (Galarian Weezing) - Aromatherapy - Level 24
  (110, 11001, 312, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Weezing (Galarian Weezing) - Self-Destruct - Level 28
  (110, 11001, 120, 18, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Weezing (Galarian Weezing) - Sludge Bomb - Level 32
  (110, 11001, 188, 18, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Weezing (Galarian Weezing) - Toxic - Level 38
  (110, 11001, 92, 18, NULL, 1, 38, NULL, NULL, NULL, 18),
  -- Weezing (Galarian Weezing) - Belch - Level 44
  (110, 11001, 562, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Weezing (Galarian Weezing) - Explosion - Level 50
  (110, 11001, 153, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Weezing (Galarian Weezing) - Memento - Level 56
  (110, 11001, 262, 18, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Weezing (Galarian Weezing) - Destiny Bond - Level 62
  (110, 11001, 194, 18, NULL, 1, 62, NULL, NULL, NULL, 22),
  -- Weezing (Galarian Weezing) - Misty Terrain - Level 68
  (110, 11001, 581, 18, NULL, 1, 68, NULL, NULL, NULL, 23),
  -- Weezing (Galarian Weezing) - Double Hit - Evolution
  (110, 11001, 458, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Weezing (Galarian Weezing) - Hyper Beam - TM08
  (110, 11001, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Weezing (Galarian Weezing) - Giga Impact - TM09
  (110, 11001, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Weezing (Galarian Weezing) - Screech - TM16
  (110, 11001, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 27),
  -- Weezing (Galarian Weezing) - Self-Destruct - TM20
  (110, 11001, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 28),
  -- Weezing (Galarian Weezing) - Rest - TM21
  (110, 11001, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Weezing (Galarian Weezing) - Thief - TM23
  (110, 11001, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Weezing (Galarian Weezing) - Snore - TM24
  (110, 11001, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Weezing (Galarian Weezing) - Protect - TM25
  (110, 11001, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Weezing (Galarian Weezing) - Attract - TM31
  (110, 11001, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Weezing (Galarian Weezing) - Rain Dance - TM33
  (110, 11001, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Weezing (Galarian Weezing) - Sunny Day - TM34
  (110, 11001, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Weezing (Galarian Weezing) - Will-O-Wisp - TM38
  (110, 11001, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 36),
  -- Weezing (Galarian Weezing) - Facade - TM39
  (110, 11001, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Weezing (Galarian Weezing) - Payback - TM57
  (110, 11001, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Weezing (Galarian Weezing) - Assurance - TM58
  (110, 11001, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Weezing (Galarian Weezing) - Wonder Room - TM71
  (110, 11001, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Weezing (Galarian Weezing) - Venoshock - TM74
  (110, 11001, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 41),
  -- Weezing (Galarian Weezing) - Round - TM76
  (110, 11001, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Weezing (Galarian Weezing) - Misty Terrain - TM89
  (110, 11001, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 43),
  -- Weezing (Galarian Weezing) - Brutal Swing - TM97
  (110, 11001, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Weezing (Galarian Weezing) - Flamethrower - TR02
  (110, 11001, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Weezing (Galarian Weezing) - Thunderbolt - TR08
  (110, 11001, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 46),
  -- Weezing (Galarian Weezing) - Thunder - TR09
  (110, 11001, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 47),
  -- Weezing (Galarian Weezing) - Fire Blast - TR15
  (110, 11001, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Weezing (Galarian Weezing) - Substitute - TR20
  (110, 11001, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Weezing (Galarian Weezing) - Sludge Bomb - TR22
  (110, 11001, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 50),
  -- Weezing (Galarian Weezing) - Endure - TR26
  (110, 11001, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Weezing (Galarian Weezing) - Sleep Talk - TR27
  (110, 11001, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Weezing (Galarian Weezing) - Shadow Ball - TR33
  (110, 11001, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Weezing (Galarian Weezing) - Uproar - TR35
  (110, 11001, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Weezing (Galarian Weezing) - Heat Wave - TR36
  (110, 11001, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 55),
  -- Weezing (Galarian Weezing) - Taunt - TR37
  (110, 11001, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 56),
  -- Weezing (Galarian Weezing) - Overheat - TR43
  (110, 11001, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 57),
  -- Weezing (Galarian Weezing) - Gyro Ball - TR52
  (110, 11001, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 58),
  -- Weezing (Galarian Weezing) - Toxic Spikes - TR54
  (110, 11001, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 59),
  -- Weezing (Galarian Weezing) - Dark Pulse - TR58
  (110, 11001, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Weezing (Galarian Weezing) - Sludge Wave - TR78
  (110, 11001, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 61),
  -- Weezing (Galarian Weezing) - Play Rough - TR90
  (110, 11001, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 62),
  -- Weezing (Galarian Weezing) - Venom Drench - TR91
  (110, 11001, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 63),
  -- Weezing (Galarian Weezing) - Dazzling Gleam - TR92
  (110, 11001, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 64),
  -- Mr. Mime (Galarian Mr. Mime) - Pound - Level 1
  (122, 12201, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime (Galarian Mr. Mime) - Mimic - Level 1
  (122, 12201, 102, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime (Galarian Mr. Mime) - Light Screen - Level 1
  (122, 12201, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime (Galarian Mr. Mime) - Reflect - Level 1
  (122, 12201, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime (Galarian Mr. Mime) - Protect - Level 1
  (122, 12201, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Mime (Galarian Mr. Mime) - Safeguard - Level 1
  (122, 12201, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mr. Mime (Galarian Mr. Mime) - Baton Pass - Level 1
  (122, 12201, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mr. Mime (Galarian Mr. Mime) - Encore - Level 1
  (122, 12201, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mr. Mime (Galarian Mr. Mime) - Rapid Spin - Level 1
  (122, 12201, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Mr. Mime (Galarian Mr. Mime) - Role Play - Level 1
  (122, 12201, 272, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Mr. Mime (Galarian Mr. Mime) - Recycle - Level 1
  (122, 12201, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Mr. Mime (Galarian Mr. Mime) - Copycat - Level 1
  (122, 12201, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Mr. Mime (Galarian Mr. Mime) - Ice Shard - Level 1
  (122, 12201, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Mr. Mime (Galarian Mr. Mime) - Misty Terrain - Level 1
  (122, 12201, 581, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Mr. Mime (Galarian Mr. Mime) - Dazzling Gleam - Level 1
  (122, 12201, 605, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Mr. Mime (Galarian Mr. Mime) - Confusion - Level 12
  (122, 12201, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 16),
  -- Mr. Mime (Galarian Mr. Mime) - Ally Switch - Level 16
  (122, 12201, 502, 18, NULL, 1, 16, NULL, NULL, NULL, 17),
  -- Mr. Mime (Galarian Mr. Mime) - Icy Wind - Level 20
  (122, 12201, 196, 18, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Mr. Mime (Galarian Mr. Mime) - Double Kick - Level 24
  (122, 12201, 24, 18, NULL, 1, 24, NULL, NULL, NULL, 19),
  -- Mr. Mime (Galarian Mr. Mime) - Psybeam - Level 28
  (122, 12201, 60, 18, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Mr. Mime (Galarian Mr. Mime) - Hypnosis - Level 32
  (122, 12201, 95, 18, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Mr. Mime (Galarian Mr. Mime) - Mirror Coat - Level 36
  (122, 12201, 243, 18, NULL, 1, 36, NULL, NULL, NULL, 22),
  -- Mr. Mime (Galarian Mr. Mime) - Sucker Punch - Level 40
  (122, 12201, 389, 18, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Mr. Mime (Galarian Mr. Mime) - Freeze-Dry - Level 44
  (122, 12201, 573, 18, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Mr. Mime (Galarian Mr. Mime) - Psychic - Level 48
  (122, 12201, 94, 18, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Mr. Mime (Galarian Mr. Mime) - Teeter Dance - Level 52
  (122, 12201, 298, 18, NULL, 1, 52, NULL, NULL, NULL, 26),
  -- Mr. Mime (Galarian Mr. Mime) - Mega Punch - TM00
  (122, 12201, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 27),
  -- Mr. Mime (Galarian Mr. Mime) - Mega Kick - TM01
  (122, 12201, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 28),
  -- Mr. Mime (Galarian Mr. Mime) - Ice Punch - TM04
  (122, 12201, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 29),
  -- Mr. Mime (Galarian Mr. Mime) - Hyper Beam - TM08
  (122, 12201, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 30),
  -- Mr. Mime (Galarian Mr. Mime) - Giga Impact - TM09
  (122, 12201, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 31),
  -- Mr. Mime (Galarian Mr. Mime) - Solar Beam - TM11
  (122, 12201, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 32),
  -- Mr. Mime (Galarian Mr. Mime) - Thunder Wave - TM14
  (122, 12201, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 33),
  -- Mr. Mime (Galarian Mr. Mime) - Screech - TM16
  (122, 12201, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 34),
  -- Mr. Mime (Galarian Mr. Mime) - Light Screen - TM17
  (122, 12201, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 35),
  -- Mr. Mime (Galarian Mr. Mime) - Reflect - TM18
  (122, 12201, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 36),
  -- Mr. Mime (Galarian Mr. Mime) - Safeguard - TM19
  (122, 12201, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 37),
  -- Mr. Mime (Galarian Mr. Mime) - Rest - TM21
  (122, 12201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 38),
  -- Mr. Mime (Galarian Mr. Mime) - Thief - TM23
  (122, 12201, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 39),
  -- Mr. Mime (Galarian Mr. Mime) - Snore - TM24
  (122, 12201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 40),
  -- Mr. Mime (Galarian Mr. Mime) - Protect - TM25
  (122, 12201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 41),
  -- Mr. Mime (Galarian Mr. Mime) - Icy Wind - TM27
  (122, 12201, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 42),
  -- Mr. Mime (Galarian Mr. Mime) - Charm - TM29
  (122, 12201, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 43),
  -- Mr. Mime (Galarian Mr. Mime) - Attract - TM31
  (122, 12201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 44),
  -- Mr. Mime (Galarian Mr. Mime) - Rain Dance - TM33
  (122, 12201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 45),
  -- Mr. Mime (Galarian Mr. Mime) - Sunny Day - TM34
  (122, 12201, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 46),
  -- Mr. Mime (Galarian Mr. Mime) - Hail - TM35
  (122, 12201, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 47),
  -- Mr. Mime (Galarian Mr. Mime) - Facade - TM39
  (122, 12201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 48),
  -- Mr. Mime (Galarian Mr. Mime) - Helping Hand - TM41
  (122, 12201, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 49),
  -- Mr. Mime (Galarian Mr. Mime) - Brick Break - TM43
  (122, 12201, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 50),
  -- Mr. Mime (Galarian Mr. Mime) - Icicle Spear - TM51
  (122, 12201, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 51),
  -- Mr. Mime (Galarian Mr. Mime) - Payback - TM57
  (122, 12201, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 52),
  -- Mr. Mime (Galarian Mr. Mime) - Fling - TM59
  (122, 12201, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 53),
  -- Mr. Mime (Galarian Mr. Mime) - Power Swap - TM60
  (122, 12201, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 54),
  -- Mr. Mime (Galarian Mr. Mime) - Guard Swap - TM61
  (122, 12201, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 55),
  -- Mr. Mime (Galarian Mr. Mime) - Drain Punch - TM63
  (122, 12201, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 56),
  -- Mr. Mime (Galarian Mr. Mime) - Avalanche - TM64
  (122, 12201, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 57),
  -- Mr. Mime (Galarian Mr. Mime) - Trick Room - TM70
  (122, 12201, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 58),
  -- Mr. Mime (Galarian Mr. Mime) - Wonder Room - TM71
  (122, 12201, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 59),
  -- Mr. Mime (Galarian Mr. Mime) - Magic Room - TM72
  (122, 12201, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 60),
  -- Mr. Mime (Galarian Mr. Mime) - Round - TM76
  (122, 12201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 61),
  -- Mr. Mime (Galarian Mr. Mime) - Misty Terrain - TM89
  (122, 12201, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 62),
  -- Mr. Mime (Galarian Mr. Mime) - Psychic Terrain - TM91
  (122, 12201, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 63),
  -- Mr. Mime (Galarian Mr. Mime) - Stomping Tantrum - TM98
  (122, 12201, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 64),
  -- Mr. Mime (Galarian Mr. Mime) - Body Slam - TR01
  (122, 12201, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 65),
  -- Mr. Mime (Galarian Mr. Mime) - Ice Beam - TR05
  (122, 12201, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 66),
  -- Mr. Mime (Galarian Mr. Mime) - Blizzard - TR06
  (122, 12201, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 67),
  -- Mr. Mime (Galarian Mr. Mime) - Thunderbolt - TR08
  (122, 12201, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 68),
  -- Mr. Mime (Galarian Mr. Mime) - Thunder - TR09
  (122, 12201, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 69),
  -- Mr. Mime (Galarian Mr. Mime) - Psychic - TR11
  (122, 12201, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 70),
  -- Mr. Mime (Galarian Mr. Mime) - Metronome - TR14
  (122, 12201, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 71),
  -- Mr. Mime (Galarian Mr. Mime) - Substitute - TR20
  (122, 12201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 72),
  -- Mr. Mime (Galarian Mr. Mime) - Psyshock - TR25
  (122, 12201, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 73),
  -- Mr. Mime (Galarian Mr. Mime) - Endure - TR26
  (122, 12201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 74),
  -- Mr. Mime (Galarian Mr. Mime) - Sleep Talk - TR27
  (122, 12201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 75),
  -- Mr. Mime (Galarian Mr. Mime) - Baton Pass - TR29
  (122, 12201, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 76),
  -- Mr. Mime (Galarian Mr. Mime) - Encore - TR30
  (122, 12201, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 77),
  -- Mr. Mime (Galarian Mr. Mime) - Shadow Ball - TR33
  (122, 12201, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 78),
  -- Mr. Mime (Galarian Mr. Mime) - Future Sight - TR34
  (122, 12201, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 79),
  -- Mr. Mime (Galarian Mr. Mime) - Uproar - TR35
  (122, 12201, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 80),
  -- Mr. Mime (Galarian Mr. Mime) - Taunt - TR37
  (122, 12201, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 81),
  -- Mr. Mime (Galarian Mr. Mime) - Trick - TR38
  (122, 12201, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 82),
  -- Mr. Mime (Galarian Mr. Mime) - Skill Swap - TR40
  (122, 12201, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 83),
  -- Mr. Mime (Galarian Mr. Mime) - Iron Defense - TR46
  (122, 12201, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 84),
  -- Mr. Mime (Galarian Mr. Mime) - Calm Mind - TR49
  (122, 12201, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 85),
  -- Mr. Mime (Galarian Mr. Mime) - Focus Blast - TR64
  (122, 12201, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 86),
  -- Mr. Mime (Galarian Mr. Mime) - Energy Ball - TR65
  (122, 12201, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 87),
  -- Mr. Mime (Galarian Mr. Mime) - Nasty Plot - TR68
  (122, 12201, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 88),
  -- Mr. Mime (Galarian Mr. Mime) - Zen Headbutt - TR69
  (122, 12201, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 89),
  -- Mr. Mime (Galarian Mr. Mime) - Grass Knot - TR77
  (122, 12201, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 90),
  -- Mr. Mime (Galarian Mr. Mime) - Foul Play - TR81
  (122, 12201, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 91),
  -- Mr. Mime (Galarian Mr. Mime) - Stored Power - TR82
  (122, 12201, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 92),
  -- Mr. Mime (Galarian Mr. Mime) - Ally Switch - TR83
  (122, 12201, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 93),
  -- Mr. Mime (Galarian Mr. Mime) - Dazzling Gleam - TR92
  (122, 12201, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 94),
  -- Mr. Mime (Galarian Mr. Mime) - Hypnosis - Egg
  (122, 12201, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Mr. Mime (Galarian Mr. Mime) - Confuse Ray - Egg
  (122, 12201, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Mr. Mime (Galarian Mr. Mime) - Fake Out - Egg
  (122, 12201, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Mr. Mime (Galarian Mr. Mime) - Tickle - Egg
  (122, 12201, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Mr. Mime (Galarian Mr. Mime) - Power Split - Egg
  (122, 12201, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 99),
  -- Articuno (Galarian Articuno) - Gust - Level 1
  (144, 14401, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno (Galarian Articuno) - Psycho Shift - Level 1
  (144, 14401, 375, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno (Galarian Articuno) - Confusion - Level 5
  (144, 14401, 93, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Articuno (Galarian Articuno) - Reflect - Level 10
  (144, 14401, 115, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Articuno (Galarian Articuno) - Hypnosis - Level 15
  (144, 14401, 95, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Articuno (Galarian Articuno) - Agility - Level 20
  (144, 14401, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Articuno (Galarian Articuno) - Ancient Power - Level 25
  (144, 14401, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Articuno (Galarian Articuno) - Tailwind - Level 30
  (144, 14401, 366, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Articuno (Galarian Articuno) - Psycho Cut - Level 35
  (144, 14401, 427, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Articuno (Galarian Articuno) - Recover - Level 40
  (144, 14401, 105, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Articuno (Galarian Articuno) - Freezing Glare - Level 45
  (144, 14401, 821, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Articuno (Galarian Articuno) - Dream Eater - Level 50
  (144, 14401, 138, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Articuno (Galarian Articuno) - Hurricane - Level 55
  (144, 14401, 542, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Articuno (Galarian Articuno) - Mind Reader - Level 60
  (144, 14401, 170, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Articuno (Galarian Articuno) - Future Sight - Level 65
  (144, 14401, 248, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Articuno (Galarian Articuno) - Trick Room - Level 70
  (144, 14401, 433, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Articuno (Galarian Articuno) - Fly - TM06
  (144, 14401, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Articuno (Galarian Articuno) - Hyper Beam - TM08
  (144, 14401, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Articuno (Galarian Articuno) - Giga Impact - TM09
  (144, 14401, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Articuno (Galarian Articuno) - Light Screen - TM17
  (144, 14401, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Articuno (Galarian Articuno) - Reflect - TM18
  (144, 14401, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Articuno (Galarian Articuno) - Rest - TM21
  (144, 14401, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Articuno (Galarian Articuno) - Snore - TM24
  (144, 14401, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Articuno (Galarian Articuno) - Protect - TM25
  (144, 14401, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Articuno (Galarian Articuno) - Scary Face - TM26
  (144, 14401, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Articuno (Galarian Articuno) - Steel Wing - TM30
  (144, 14401, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Articuno (Galarian Articuno) - Facade - TM39
  (144, 14401, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Articuno (Galarian Articuno) - Swift - TM40
  (144, 14401, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Articuno (Galarian Articuno) - Imprison - TM44
  (144, 14401, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Articuno (Galarian Articuno) - U-turn - TM56
  (144, 14401, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Articuno (Galarian Articuno) - Power Swap - TM60
  (144, 14401, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Articuno (Galarian Articuno) - Guard Swap - TM61
  (144, 14401, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Articuno (Galarian Articuno) - Psycho Cut - TM69
  (144, 14401, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 33),
  -- Articuno (Galarian Articuno) - Trick Room - TM70
  (144, 14401, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Articuno (Galarian Articuno) - Round - TM76
  (144, 14401, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Articuno (Galarian Articuno) - Air Slash - TM95
  (144, 14401, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 36),
  -- Articuno (Galarian Articuno) - Psychic - TR11
  (144, 14401, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 37),
  -- Articuno (Galarian Articuno) - Agility - TR12
  (144, 14401, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Articuno (Galarian Articuno) - Substitute - TR20
  (144, 14401, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Articuno (Galarian Articuno) - Psyshock - TR25
  (144, 14401, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Articuno (Galarian Articuno) - Endure - TR26
  (144, 14401, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Articuno (Galarian Articuno) - Sleep Talk - TR27
  (144, 14401, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Articuno (Galarian Articuno) - Shadow Ball - TR33
  (144, 14401, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Articuno (Galarian Articuno) - Future Sight - TR34
  (144, 14401, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 44),
  -- Articuno (Galarian Articuno) - Skill Swap - TR40
  (144, 14401, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 45),
  -- Articuno (Galarian Articuno) - Hyper Voice - TR42
  (144, 14401, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 46),
  -- Articuno (Galarian Articuno) - Calm Mind - TR49
  (144, 14401, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 47),
  -- Articuno (Galarian Articuno) - Brave Bird - TR66
  (144, 14401, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 48),
  -- Articuno (Galarian Articuno) - Stored Power - TR82
  (144, 14401, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 49),
  -- Articuno (Galarian Articuno) - Ally Switch - TR83
  (144, 14401, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 50),
  -- Articuno (Galarian Articuno) - Hurricane - TR89
  (144, 14401, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Zapdos (Galarian Zapdos) - Peck - Level 1
  (145, 14501, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos (Galarian Zapdos) - Focus Energy - Level 1
  (145, 14501, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos (Galarian Zapdos) - Rock Smash - Level 5
  (145, 14501, 249, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zapdos (Galarian Zapdos) - Light Screen - Level 10
  (145, 14501, 113, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zapdos (Galarian Zapdos) - Pluck - Level 15
  (145, 14501, 365, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zapdos (Galarian Zapdos) - Agility - Level 20
  (145, 14501, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zapdos (Galarian Zapdos) - Ancient Power - Level 25
  (145, 14501, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zapdos (Galarian Zapdos) - Brick Break - Level 30
  (145, 14501, 280, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zapdos (Galarian Zapdos) - Drill Peck - Level 35
  (145, 14501, 65, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zapdos (Galarian Zapdos) - Quick Guard - Level 40
  (145, 14501, 501, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zapdos (Galarian Zapdos) - Thunderous Kick - Level 45
  (145, 14501, 823, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zapdos (Galarian Zapdos) - Bulk Up - Level 50
  (145, 14501, 339, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos (Galarian Zapdos) - Counter - Level 55
  (145, 14501, 68, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zapdos (Galarian Zapdos) - Detect - Level 60
  (145, 14501, 197, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Zapdos (Galarian Zapdos) - Close Combat - Level 65
  (145, 14501, 370, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Zapdos (Galarian Zapdos) - Reversal - Level 70
  (145, 14501, 179, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zapdos (Galarian Zapdos) - Mega Kick - TM01
  (145, 14501, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Zapdos (Galarian Zapdos) - Fly - TM06
  (145, 14501, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Zapdos (Galarian Zapdos) - Hyper Beam - TM08
  (145, 14501, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Zapdos (Galarian Zapdos) - Giga Impact - TM09
  (145, 14501, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Zapdos (Galarian Zapdos) - Screech - TM16
  (145, 14501, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Zapdos (Galarian Zapdos) - Light Screen - TM17
  (145, 14501, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Zapdos (Galarian Zapdos) - Rest - TM21
  (145, 14501, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Zapdos (Galarian Zapdos) - Snore - TM24
  (145, 14501, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Zapdos (Galarian Zapdos) - Protect - TM25
  (145, 14501, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Zapdos (Galarian Zapdos) - Scary Face - TM26
  (145, 14501, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Zapdos (Galarian Zapdos) - Steel Wing - TM30
  (145, 14501, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Zapdos (Galarian Zapdos) - Facade - TM39
  (145, 14501, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Zapdos (Galarian Zapdos) - Swift - TM40
  (145, 14501, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Zapdos (Galarian Zapdos) - Revenge - TM42
  (145, 14501, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Zapdos (Galarian Zapdos) - Brick Break - TM43
  (145, 14501, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Zapdos (Galarian Zapdos) - Bounce - TM52
  (145, 14501, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 32),
  -- Zapdos (Galarian Zapdos) - U-turn - TM56
  (145, 14501, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Zapdos (Galarian Zapdos) - Payback - TM57
  (145, 14501, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Zapdos (Galarian Zapdos) - Assurance - TM58
  (145, 14501, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Zapdos (Galarian Zapdos) - Low Sweep - TM75
  (145, 14501, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 36),
  -- Zapdos (Galarian Zapdos) - Round - TM76
  (145, 14501, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Zapdos (Galarian Zapdos) - Acrobatics - TM78
  (145, 14501, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Zapdos (Galarian Zapdos) - Retaliate - TM79
  (145, 14501, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Zapdos (Galarian Zapdos) - Stomping Tantrum - TM98
  (145, 14501, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Zapdos (Galarian Zapdos) - Low Kick - TR07
  (145, 14501, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Zapdos (Galarian Zapdos) - Agility - TR12
  (145, 14501, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Zapdos (Galarian Zapdos) - Focus Energy - TR13
  (145, 14501, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 43),
  -- Zapdos (Galarian Zapdos) - Substitute - TR20
  (145, 14501, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Zapdos (Galarian Zapdos) - Reversal - TR21
  (145, 14501, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 45),
  -- Zapdos (Galarian Zapdos) - Endure - TR26
  (145, 14501, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Zapdos (Galarian Zapdos) - Sleep Talk - TR27
  (145, 14501, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Zapdos (Galarian Zapdos) - Taunt - TR37
  (145, 14501, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Zapdos (Galarian Zapdos) - Superpower - TR39
  (145, 14501, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 49),
  -- Zapdos (Galarian Zapdos) - Blaze Kick - TR41
  (145, 14501, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 50),
  -- Zapdos (Galarian Zapdos) - Bulk Up - TR48
  (145, 14501, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 51),
  -- Zapdos (Galarian Zapdos) - Close Combat - TR53
  (145, 14501, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 52),
  -- Zapdos (Galarian Zapdos) - Brave Bird - TR66
  (145, 14501, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 53),
  -- Zapdos (Galarian Zapdos) - Hurricane - TR89
  (145, 14501, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 54),
  -- Zapdos (Galarian Zapdos) - Throat Chop - TR95
  (145, 14501, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 55),
  -- Moltres (Galarian Moltres) - Gust - Level 1
  (146, 14601, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres (Galarian Moltres) - Leer - Level 1
  (146, 14601, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres (Galarian Moltres) - Payback - Level 5
  (146, 14601, 371, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Moltres (Galarian Moltres) - Safeguard - Level 10
  (146, 14601, 219, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Moltres (Galarian Moltres) - Wing Attack - Level 15
  (146, 14601, 17, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Moltres (Galarian Moltres) - Agility - Level 20
  (146, 14601, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Moltres (Galarian Moltres) - Ancient Power - Level 25
  (146, 14601, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Moltres (Galarian Moltres) - Sucker Punch - Level 30
  (146, 14601, 389, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Moltres (Galarian Moltres) - Air Slash - Level 35
  (146, 14601, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Moltres (Galarian Moltres) - After You - Level 40
  (146, 14601, 495, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Moltres (Galarian Moltres) - Fiery Wrath - Level 45
  (146, 14601, 822, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Moltres (Galarian Moltres) - Nasty Plot - Level 50
  (146, 14601, 417, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Moltres (Galarian Moltres) - Hurricane - Level 55
  (146, 14601, 542, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Moltres (Galarian Moltres) - Endure - Level 60
  (146, 14601, 203, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Moltres (Galarian Moltres) - Memento - Level 65
  (146, 14601, 262, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Moltres (Galarian Moltres) - Sky Attack - Level 70
  (146, 14601, 143, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Moltres (Galarian Moltres) - Fly - TM06
  (146, 14601, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Moltres (Galarian Moltres) - Hyper Beam - TM08
  (146, 14601, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Moltres (Galarian Moltres) - Giga Impact - TM09
  (146, 14601, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Moltres (Galarian Moltres) - Safeguard - TM19
  (146, 14601, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Moltres (Galarian Moltres) - Rest - TM21
  (146, 14601, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Moltres (Galarian Moltres) - Snore - TM24
  (146, 14601, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Moltres (Galarian Moltres) - Protect - TM25
  (146, 14601, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Moltres (Galarian Moltres) - Scary Face - TM26
  (146, 14601, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Moltres (Galarian Moltres) - Steel Wing - TM30
  (146, 14601, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Moltres (Galarian Moltres) - Facade - TM39
  (146, 14601, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Moltres (Galarian Moltres) - Swift - TM40
  (146, 14601, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Moltres (Galarian Moltres) - Imprison - TM44
  (146, 14601, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Moltres (Galarian Moltres) - U-turn - TM56
  (146, 14601, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Moltres (Galarian Moltres) - Payback - TM57
  (146, 14601, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Moltres (Galarian Moltres) - Assurance - TM58
  (146, 14601, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Moltres (Galarian Moltres) - Round - TM76
  (146, 14601, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Moltres (Galarian Moltres) - Hex - TM77
  (146, 14601, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 33),
  -- Moltres (Galarian Moltres) - Snarl - TM85
  (146, 14601, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Moltres (Galarian Moltres) - Air Slash - TM95
  (146, 14601, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Moltres (Galarian Moltres) - Agility - TR12
  (146, 14601, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Moltres (Galarian Moltres) - Substitute - TR20
  (146, 14601, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Moltres (Galarian Moltres) - Endure - TR26
  (146, 14601, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Moltres (Galarian Moltres) - Sleep Talk - TR27
  (146, 14601, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Moltres (Galarian Moltres) - Shadow Ball - TR33
  (146, 14601, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Moltres (Galarian Moltres) - Taunt - TR37
  (146, 14601, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 41),
  -- Moltres (Galarian Moltres) - Hyper Voice - TR42
  (146, 14601, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 42),
  -- Moltres (Galarian Moltres) - Dark Pulse - TR58
  (146, 14601, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 43),
  -- Moltres (Galarian Moltres) - Brave Bird - TR66
  (146, 14601, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 44),
  -- Moltres (Galarian Moltres) - Nasty Plot - TR68
  (146, 14601, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Moltres (Galarian Moltres) - Foul Play - TR81
  (146, 14601, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 46),
  -- Moltres (Galarian Moltres) - Hurricane - TR89
  (146, 14601, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 47),
  -- Slowking (Galarian Slowking) - Tackle - Level 1
  (199, 19901, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking (Galarian Slowking) - Growl - Level 1
  (199, 19901, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking (Galarian Slowking) - Acid - Level 1
  (199, 19901, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking (Galarian Slowking) - Curse - Level 1
  (199, 19901, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking (Galarian Slowking) - Swagger - Level 1
  (199, 19901, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking (Galarian Slowking) - Power Gem - Level 1
  (199, 19901, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowking (Galarian Slowking) - Nasty Plot - Level 1
  (199, 19901, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slowking (Galarian Slowking) - Eerie Spell - Level 1
  (199, 19901, 826, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Slowking (Galarian Slowking) - Yawn - Level 9
  (199, 19901, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Slowking (Galarian Slowking) - Confusion - Level 12
  (199, 19901, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Slowking (Galarian Slowking) - Disable - Level 15
  (199, 19901, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Slowking (Galarian Slowking) - Water Pulse - Level 18
  (199, 19901, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Slowking (Galarian Slowking) - Headbutt - Level 21
  (199, 19901, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Slowking (Galarian Slowking) - Zen Headbutt - Level 24
  (199, 19901, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Slowking (Galarian Slowking) - Amnesia - Level 27
  (199, 19901, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Slowking (Galarian Slowking) - Surf - Level 30
  (199, 19901, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Slowking (Galarian Slowking) - Slack Off - Level 33
  (199, 19901, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Slowking (Galarian Slowking) - Psychic - Level 36
  (199, 19901, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Slowking (Galarian Slowking) - Psych Up - Level 39
  (199, 19901, 244, 18, NULL, 1, 39, NULL, NULL, NULL, 19),
  -- Slowking (Galarian Slowking) - Rain Dance - Level 42
  (199, 19901, 240, 18, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Slowking (Galarian Slowking) - Heal Pulse - Level 45
  (199, 19901, 505, 18, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Slowking (Galarian Slowking) - Eerie Spell - Evolution
  (199, 19901, 826, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Slowking (Galarian Slowking) - Mega Punch - TM00
  (199, 19901, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Slowking (Galarian Slowking) - Mega Kick - TM01
  (199, 19901, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Slowking (Galarian Slowking) - Pay Day - TM02
  (199, 19901, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Slowking (Galarian Slowking) - Ice Punch - TM04
  (199, 19901, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 26),
  -- Slowking (Galarian Slowking) - Hyper Beam - TM08
  (199, 19901, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Slowking (Galarian Slowking) - Giga Impact - TM09
  (199, 19901, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Slowking (Galarian Slowking) - Thunder Wave - TM14
  (199, 19901, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 29),
  -- Slowking (Galarian Slowking) - Dig - TM15
  (199, 19901, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Slowking (Galarian Slowking) - Light Screen - TM17
  (199, 19901, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Slowking (Galarian Slowking) - Safeguard - TM19
  (199, 19901, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Slowking (Galarian Slowking) - Rest - TM21
  (199, 19901, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Slowking (Galarian Slowking) - Snore - TM24
  (199, 19901, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Slowking (Galarian Slowking) - Protect - TM25
  (199, 19901, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Slowking (Galarian Slowking) - Icy Wind - TM27
  (199, 19901, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 36),
  -- Slowking (Galarian Slowking) - Attract - TM31
  (199, 19901, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 37),
  -- Slowking (Galarian Slowking) - Rain Dance - TM33
  (199, 19901, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 38),
  -- Slowking (Galarian Slowking) - Sunny Day - TM34
  (199, 19901, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Slowking (Galarian Slowking) - Hail - TM35
  (199, 19901, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 40),
  -- Slowking (Galarian Slowking) - Whirlpool - TM36
  (199, 19901, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 41),
  -- Slowking (Galarian Slowking) - Facade - TM39
  (199, 19901, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 42),
  -- Slowking (Galarian Slowking) - Swift - TM40
  (199, 19901, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 43),
  -- Slowking (Galarian Slowking) - Brick Break - TM43
  (199, 19901, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 44),
  -- Slowking (Galarian Slowking) - Imprison - TM44
  (199, 19901, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 45),
  -- Slowking (Galarian Slowking) - Dive - TM45
  (199, 19901, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 46),
  -- Slowking (Galarian Slowking) - Weather Ball - TM46
  (199, 19901, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 47),
  -- Slowking (Galarian Slowking) - Mud Shot - TM53
  (199, 19901, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 48),
  -- Slowking (Galarian Slowking) - Brine - TM55
  (199, 19901, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 49),
  -- Slowking (Galarian Slowking) - Fling - TM59
  (199, 19901, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 50),
  -- Slowking (Galarian Slowking) - Drain Punch - TM63
  (199, 19901, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 51),
  -- Slowking (Galarian Slowking) - Avalanche - TM64
  (199, 19901, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 52),
  -- Slowking (Galarian Slowking) - Trick Room - TM70
  (199, 19901, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 53),
  -- Slowking (Galarian Slowking) - Wonder Room - TM71
  (199, 19901, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 54),
  -- Slowking (Galarian Slowking) - Venoshock - TM74
  (199, 19901, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 55),
  -- Slowking (Galarian Slowking) - Round - TM76
  (199, 19901, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 56),
  -- Slowking (Galarian Slowking) - Hex - TM77
  (199, 19901, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 57),
  -- Slowking (Galarian Slowking) - Bulldoze - TM81
  (199, 19901, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 58),
  -- Slowking (Galarian Slowking) - Razor Shell - TM83
  (199, 19901, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 59),
  -- Slowking (Galarian Slowking) - Psychic Terrain - TM91
  (199, 19901, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 60),
  -- Slowking (Galarian Slowking) - Body Slam - TR01
  (199, 19901, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 61),
  -- Slowking (Galarian Slowking) - Flamethrower - TR02
  (199, 19901, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 62),
  -- Slowking (Galarian Slowking) - Hydro Pump - TR03
  (199, 19901, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 63),
  -- Slowking (Galarian Slowking) - Surf - TR04
  (199, 19901, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 64),
  -- Slowking (Galarian Slowking) - Ice Beam - TR05
  (199, 19901, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 65),
  -- Slowking (Galarian Slowking) - Blizzard - TR06
  (199, 19901, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 66),
  -- Slowking (Galarian Slowking) - Earthquake - TR10
  (199, 19901, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 67),
  -- Slowking (Galarian Slowking) - Psychic - TR11
  (199, 19901, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 68),
  -- Slowking (Galarian Slowking) - Fire Blast - TR15
  (199, 19901, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 69),
  -- Slowking (Galarian Slowking) - Amnesia - TR17
  (199, 19901, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 70),
  -- Slowking (Galarian Slowking) - Tri Attack - TR19
  (199, 19901, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 71),
  -- Slowking (Galarian Slowking) - Substitute - TR20
  (199, 19901, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 72),
  -- Slowking (Galarian Slowking) - Sludge Bomb - TR22
  (199, 19901, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 73),
  -- Slowking (Galarian Slowking) - Psyshock - TR25
  (199, 19901, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 74),
  -- Slowking (Galarian Slowking) - Endure - TR26
  (199, 19901, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 75),
  -- Slowking (Galarian Slowking) - Sleep Talk - TR27
  (199, 19901, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 76),
  -- Slowking (Galarian Slowking) - Iron Tail - TR31
  (199, 19901, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 77),
  -- Slowking (Galarian Slowking) - Shadow Ball - TR33
  (199, 19901, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 78),
  -- Slowking (Galarian Slowking) - Future Sight - TR34
  (199, 19901, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 79),
  -- Slowking (Galarian Slowking) - Trick - TR38
  (199, 19901, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 80),
  -- Slowking (Galarian Slowking) - Skill Swap - TR40
  (199, 19901, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 81),
  -- Slowking (Galarian Slowking) - Muddy Water - TR45
  (199, 19901, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 82),
  -- Slowking (Galarian Slowking) - Iron Defense - TR46
  (199, 19901, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 83),
  -- Slowking (Galarian Slowking) - Calm Mind - TR49
  (199, 19901, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 84),
  -- Slowking (Galarian Slowking) - Power Gem - TR63
  (199, 19901, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 85),
  -- Slowking (Galarian Slowking) - Focus Blast - TR64
  (199, 19901, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 86),
  -- Slowking (Galarian Slowking) - Nasty Plot - TR68
  (199, 19901, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 87),
  -- Slowking (Galarian Slowking) - Zen Headbutt - TR69
  (199, 19901, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 88),
  -- Slowking (Galarian Slowking) - Grass Knot - TR77
  (199, 19901, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 89),
  -- Slowking (Galarian Slowking) - Sludge Wave - TR78
  (199, 19901, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 90),
  -- Slowking (Galarian Slowking) - Foul Play - TR81
  (199, 19901, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 91),
  -- Slowking (Galarian Slowking) - Stored Power - TR82
  (199, 19901, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 92),
  -- Slowking (Galarian Slowking) - Scald - TR84
  (199, 19901, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 93),
  -- Slowking (Galarian Slowking) - Venom Drench - TR91
  (199, 19901, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 94),
  -- Slowking (Galarian Slowking) - Liquidation - TR98
  (199, 19901, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 95),
  -- Corsola (Galarian Corsola) - Tackle - Level 1
  (222, 22201, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola (Galarian Corsola) - Harden - Level 1
  (222, 22201, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corsola (Galarian Corsola) - Astonish - Level 5
  (222, 22201, 310, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Corsola (Galarian Corsola) - Disable - Level 10
  (222, 22201, 50, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Corsola (Galarian Corsola) - Spite - Level 15
  (222, 22201, 180, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Corsola (Galarian Corsola) - Ancient Power - Level 20
  (222, 22201, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Corsola (Galarian Corsola) - Hex - Level 25
  (222, 22201, 506, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Corsola (Galarian Corsola) - Curse - Level 30
  (222, 22201, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Corsola (Galarian Corsola) - Strength Sap - Level 35
  (222, 22201, 668, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corsola (Galarian Corsola) - Power Gem - Level 40
  (222, 22201, 408, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Corsola (Galarian Corsola) - Night Shade - Level 45
  (222, 22201, 101, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Corsola (Galarian Corsola) - Grudge - Level 50
  (222, 22201, 288, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Corsola (Galarian Corsola) - Mirror Coat - Level 55
  (222, 22201, 243, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Corsola (Galarian Corsola) - Dig - TM15
  (222, 22201, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Corsola (Galarian Corsola) - Screech - TM16
  (222, 22201, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Corsola (Galarian Corsola) - Light Screen - TM17
  (222, 22201, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Corsola (Galarian Corsola) - Reflect - TM18
  (222, 22201, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Corsola (Galarian Corsola) - Safeguard - TM19
  (222, 22201, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Corsola (Galarian Corsola) - Self-Destruct - TM20
  (222, 22201, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 19),
  -- Corsola (Galarian Corsola) - Rest - TM21
  (222, 22201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Corsola (Galarian Corsola) - Rock Slide - TM22
  (222, 22201, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Corsola (Galarian Corsola) - Snore - TM24
  (222, 22201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Corsola (Galarian Corsola) - Protect - TM25
  (222, 22201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Corsola (Galarian Corsola) - Icy Wind - TM27
  (222, 22201, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Corsola (Galarian Corsola) - Giga Drain - TM28
  (222, 22201, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Corsola (Galarian Corsola) - Attract - TM31
  (222, 22201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Corsola (Galarian Corsola) - Sandstorm - TM32
  (222, 22201, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Corsola (Galarian Corsola) - Rain Dance - TM33
  (222, 22201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Corsola (Galarian Corsola) - Sunny Day - TM34
  (222, 22201, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Corsola (Galarian Corsola) - Hail - TM35
  (222, 22201, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Corsola (Galarian Corsola) - Whirlpool - TM36
  (222, 22201, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Corsola (Galarian Corsola) - Will-O-Wisp - TM38
  (222, 22201, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Corsola (Galarian Corsola) - Facade - TM39
  (222, 22201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Corsola (Galarian Corsola) - Rock Tomb - TM48
  (222, 22201, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Corsola (Galarian Corsola) - Icicle Spear - TM51
  (222, 22201, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 35),
  -- Corsola (Galarian Corsola) - Rock Blast - TM54
  (222, 22201, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Corsola (Galarian Corsola) - Brine - TM55
  (222, 22201, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 37),
  -- Corsola (Galarian Corsola) - Round - TM76
  (222, 22201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Corsola (Galarian Corsola) - Hex - TM77
  (222, 22201, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 39),
  -- Corsola (Galarian Corsola) - Bulldoze - TM81
  (222, 22201, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Corsola (Galarian Corsola) - Stomping Tantrum - TM98
  (222, 22201, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Corsola (Galarian Corsola) - Body Slam - TR01
  (222, 22201, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Corsola (Galarian Corsola) - Hydro Pump - TR03
  (222, 22201, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 43),
  -- Corsola (Galarian Corsola) - Surf - TR04
  (222, 22201, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 44),
  -- Corsola (Galarian Corsola) - Ice Beam - TR05
  (222, 22201, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Corsola (Galarian Corsola) - Blizzard - TR06
  (222, 22201, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Corsola (Galarian Corsola) - Earthquake - TR10
  (222, 22201, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Corsola (Galarian Corsola) - Psychic - TR11
  (222, 22201, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Corsola (Galarian Corsola) - Amnesia - TR17
  (222, 22201, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 49),
  -- Corsola (Galarian Corsola) - Substitute - TR20
  (222, 22201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Corsola (Galarian Corsola) - Endure - TR26
  (222, 22201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Corsola (Galarian Corsola) - Sleep Talk - TR27
  (222, 22201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Corsola (Galarian Corsola) - Shadow Ball - TR33
  (222, 22201, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Corsola (Galarian Corsola) - Iron Defense - TR46
  (222, 22201, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Corsola (Galarian Corsola) - Calm Mind - TR49
  (222, 22201, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Corsola (Galarian Corsola) - Power Gem - TR63
  (222, 22201, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 56),
  -- Corsola (Galarian Corsola) - Earth Power - TR67
  (222, 22201, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Corsola (Galarian Corsola) - Stone Edge - TR75
  (222, 22201, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Corsola (Galarian Corsola) - Stealth Rock - TR76
  (222, 22201, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Corsola (Galarian Corsola) - Scald - TR84
  (222, 22201, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 60),
  -- Corsola (Galarian Corsola) - Throat Chop - TR95
  (222, 22201, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 61),
  -- Corsola (Galarian Corsola) - Liquidation - TR98
  (222, 22201, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 62),
  -- Corsola (Galarian Corsola) - Confuse Ray - Egg
  (222, 22201, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Corsola (Galarian Corsola) - Haze - Egg
  (222, 22201, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Corsola (Galarian Corsola) - Destiny Bond - Egg
  (222, 22201, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Corsola (Galarian Corsola) - Nature Power - Egg
  (222, 22201, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Corsola (Galarian Corsola) - Water Pulse - Egg
  (222, 22201, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Corsola (Galarian Corsola) - Head Smash - Egg
  (222, 22201, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zigzagoon (Galarian Zigzagoon) - Tackle - Level 1
  (263, 26301, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon (Galarian Zigzagoon) - Leer - Level 1
  (263, 26301, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon (Galarian Zigzagoon) - Sand Attack - Level 3
  (263, 26301, 28, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Zigzagoon (Galarian Zigzagoon) - Lick - Level 6
  (263, 26301, 122, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Zigzagoon (Galarian Zigzagoon) - Snarl - Level 9
  (263, 26301, 555, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Zigzagoon (Galarian Zigzagoon) - Headbutt - Level 12
  (263, 26301, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zigzagoon (Galarian Zigzagoon) - Baby-Doll Eyes - Level 15
  (263, 26301, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Zigzagoon (Galarian Zigzagoon) - Pin Missile - Level 18
  (263, 26301, 42, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Zigzagoon (Galarian Zigzagoon) - Rest - Level 21
  (263, 26301, 156, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Zigzagoon (Galarian Zigzagoon) - Take Down - Level 24
  (263, 26301, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zigzagoon (Galarian Zigzagoon) - Scary Face - Level 27
  (263, 26301, 184, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Zigzagoon (Galarian Zigzagoon) - Counter - Level 30
  (263, 26301, 68, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Zigzagoon (Galarian Zigzagoon) - Taunt - Level 33
  (263, 26301, 269, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Zigzagoon (Galarian Zigzagoon) - Double-Edge - Level 36
  (263, 26301, 38, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Zigzagoon (Galarian Zigzagoon) - Pin Missile - TM07
  (263, 26301, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Zigzagoon (Galarian Zigzagoon) - Thunder Wave - TM14
  (263, 26301, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Zigzagoon (Galarian Zigzagoon) - Dig - TM15
  (263, 26301, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Zigzagoon (Galarian Zigzagoon) - Screech - TM16
  (263, 26301, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Zigzagoon (Galarian Zigzagoon) - Rest - TM21
  (263, 26301, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Zigzagoon (Galarian Zigzagoon) - Thief - TM23
  (263, 26301, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Zigzagoon (Galarian Zigzagoon) - Snore - TM24
  (263, 26301, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Zigzagoon (Galarian Zigzagoon) - Protect - TM25
  (263, 26301, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Zigzagoon (Galarian Zigzagoon) - Scary Face - TM26
  (263, 26301, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Zigzagoon (Galarian Zigzagoon) - Icy Wind - TM27
  (263, 26301, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Zigzagoon (Galarian Zigzagoon) - Attract - TM31
  (263, 26301, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Zigzagoon (Galarian Zigzagoon) - Rain Dance - TM33
  (263, 26301, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Zigzagoon (Galarian Zigzagoon) - Sunny Day - TM34
  (263, 26301, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Zigzagoon (Galarian Zigzagoon) - Whirlpool - TM36
  (263, 26301, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Zigzagoon (Galarian Zigzagoon) - Facade - TM39
  (263, 26301, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Zigzagoon (Galarian Zigzagoon) - Swift - TM40
  (263, 26301, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Zigzagoon (Galarian Zigzagoon) - Helping Hand - TM41
  (263, 26301, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Zigzagoon (Galarian Zigzagoon) - Fake Tears - TM47
  (263, 26301, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 32),
  -- Zigzagoon (Galarian Zigzagoon) - Mud Shot - TM53
  (263, 26301, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 33),
  -- Zigzagoon (Galarian Zigzagoon) - Payback - TM57
  (263, 26301, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Zigzagoon (Galarian Zigzagoon) - Assurance - TM58
  (263, 26301, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Zigzagoon (Galarian Zigzagoon) - Fling - TM59
  (263, 26301, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Zigzagoon (Galarian Zigzagoon) - Round - TM76
  (263, 26301, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Zigzagoon (Galarian Zigzagoon) - Retaliate - TM79
  (263, 26301, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Zigzagoon (Galarian Zigzagoon) - Snarl - TM85
  (263, 26301, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 39),
  -- Zigzagoon (Galarian Zigzagoon) - Body Slam - TR01
  (263, 26301, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Zigzagoon (Galarian Zigzagoon) - Surf - TR04
  (263, 26301, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Zigzagoon (Galarian Zigzagoon) - Ice Beam - TR05
  (263, 26301, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Zigzagoon (Galarian Zigzagoon) - Blizzard - TR06
  (263, 26301, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Zigzagoon (Galarian Zigzagoon) - Thunderbolt - TR08
  (263, 26301, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Zigzagoon (Galarian Zigzagoon) - Thunder - TR09
  (263, 26301, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Zigzagoon (Galarian Zigzagoon) - Substitute - TR20
  (263, 26301, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Zigzagoon (Galarian Zigzagoon) - Endure - TR26
  (263, 26301, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Zigzagoon (Galarian Zigzagoon) - Sleep Talk - TR27
  (263, 26301, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Zigzagoon (Galarian Zigzagoon) - Iron Tail - TR31
  (263, 26301, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Zigzagoon (Galarian Zigzagoon) - Shadow Ball - TR33
  (263, 26301, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Zigzagoon (Galarian Zigzagoon) - Taunt - TR37
  (263, 26301, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Zigzagoon (Galarian Zigzagoon) - Trick - TR38
  (263, 26301, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Zigzagoon (Galarian Zigzagoon) - Hyper Voice - TR42
  (263, 26301, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Zigzagoon (Galarian Zigzagoon) - Seed Bomb - TR59
  (263, 26301, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 54),
  -- Zigzagoon (Galarian Zigzagoon) - Gunk Shot - TR73
  (263, 26301, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 55),
  -- Zigzagoon (Galarian Zigzagoon) - Grass Knot - TR77
  (263, 26301, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Zigzagoon (Galarian Zigzagoon) - Work Up - TR85
  (263, 26301, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Zigzagoon (Galarian Zigzagoon) - Knock Off - Egg
  (263, 26301, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zigzagoon (Galarian Zigzagoon) - Quick Guard - Egg
  (263, 26301, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zigzagoon (Galarian Zigzagoon) - Parting Shot - Egg
  (263, 26301, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Linoone (Galarian Linoone) - Sand Attack - Level 1
  (264, 26401, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone (Galarian Linoone) - Tackle - Level 1
  (264, 26401, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone (Galarian Linoone) - Pin Missile - Level 1
  (264, 26401, 42, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone (Galarian Linoone) - Leer - Level 1
  (264, 26401, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone (Galarian Linoone) - Lick - Level 1
  (264, 26401, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone (Galarian Linoone) - Night Slash - Level 1
  (264, 26401, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Linoone (Galarian Linoone) - Switcheroo - Level 1
  (264, 26401, 415, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Linoone (Galarian Linoone) - Baby-Doll Eyes - Level 1
  (264, 26401, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Linoone (Galarian Linoone) - Snarl - Level 9
  (264, 26401, 555, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Linoone (Galarian Linoone) - Headbutt - Level 12
  (264, 26401, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Linoone (Galarian Linoone) - Hone Claws - Level 15
  (264, 26401, 468, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Linoone (Galarian Linoone) - Fury Swipes - Level 18
  (264, 26401, 154, 18, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Linoone (Galarian Linoone) - Rest - Level 23
  (264, 26401, 156, 18, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Linoone (Galarian Linoone) - Take Down - Level 28
  (264, 26401, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Linoone (Galarian Linoone) - Scary Face - Level 33
  (264, 26401, 184, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Linoone (Galarian Linoone) - Counter - Level 38
  (264, 26401, 68, 18, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Linoone (Galarian Linoone) - Taunt - Level 43
  (264, 26401, 269, 18, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Linoone (Galarian Linoone) - Double-Edge - Level 48
  (264, 26401, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Linoone (Galarian Linoone) - Night Slash - Evolution
  (264, 26401, 400, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Linoone (Galarian Linoone) - Pin Missile - TM07
  (264, 26401, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Linoone (Galarian Linoone) - Hyper Beam - TM08
  (264, 26401, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Linoone (Galarian Linoone) - Giga Impact - TM09
  (264, 26401, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Linoone (Galarian Linoone) - Thunder Wave - TM14
  (264, 26401, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Linoone (Galarian Linoone) - Dig - TM15
  (264, 26401, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Linoone (Galarian Linoone) - Screech - TM16
  (264, 26401, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 25),
  -- Linoone (Galarian Linoone) - Rest - TM21
  (264, 26401, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Linoone (Galarian Linoone) - Thief - TM23
  (264, 26401, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Linoone (Galarian Linoone) - Snore - TM24
  (264, 26401, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Linoone (Galarian Linoone) - Protect - TM25
  (264, 26401, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Linoone (Galarian Linoone) - Scary Face - TM26
  (264, 26401, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Linoone (Galarian Linoone) - Icy Wind - TM27
  (264, 26401, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Linoone (Galarian Linoone) - Attract - TM31
  (264, 26401, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Linoone (Galarian Linoone) - Rain Dance - TM33
  (264, 26401, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Linoone (Galarian Linoone) - Sunny Day - TM34
  (264, 26401, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Linoone (Galarian Linoone) - Whirlpool - TM36
  (264, 26401, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Linoone (Galarian Linoone) - Facade - TM39
  (264, 26401, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Linoone (Galarian Linoone) - Swift - TM40
  (264, 26401, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Linoone (Galarian Linoone) - Helping Hand - TM41
  (264, 26401, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Linoone (Galarian Linoone) - Fake Tears - TM47
  (264, 26401, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Linoone (Galarian Linoone) - Mud Shot - TM53
  (264, 26401, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 40),
  -- Linoone (Galarian Linoone) - Payback - TM57
  (264, 26401, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 41),
  -- Linoone (Galarian Linoone) - Assurance - TM58
  (264, 26401, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 42),
  -- Linoone (Galarian Linoone) - Fling - TM59
  (264, 26401, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Linoone (Galarian Linoone) - Shadow Claw - TM65
  (264, 26401, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Linoone (Galarian Linoone) - Round - TM76
  (264, 26401, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Linoone (Galarian Linoone) - Retaliate - TM79
  (264, 26401, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 46),
  -- Linoone (Galarian Linoone) - Snarl - TM85
  (264, 26401, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 47),
  -- Linoone (Galarian Linoone) - Stomping Tantrum - TM98
  (264, 26401, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 48),
  -- Linoone (Galarian Linoone) - Body Slam - TR01
  (264, 26401, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Linoone (Galarian Linoone) - Surf - TR04
  (264, 26401, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Linoone (Galarian Linoone) - Ice Beam - TR05
  (264, 26401, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Linoone (Galarian Linoone) - Blizzard - TR06
  (264, 26401, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Linoone (Galarian Linoone) - Thunderbolt - TR08
  (264, 26401, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 53),
  -- Linoone (Galarian Linoone) - Thunder - TR09
  (264, 26401, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 54),
  -- Linoone (Galarian Linoone) - Substitute - TR20
  (264, 26401, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Linoone (Galarian Linoone) - Endure - TR26
  (264, 26401, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Linoone (Galarian Linoone) - Sleep Talk - TR27
  (264, 26401, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Linoone (Galarian Linoone) - Iron Tail - TR31
  (264, 26401, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Linoone (Galarian Linoone) - Shadow Ball - TR33
  (264, 26401, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Linoone (Galarian Linoone) - Taunt - TR37
  (264, 26401, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Linoone (Galarian Linoone) - Trick - TR38
  (264, 26401, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 61),
  -- Linoone (Galarian Linoone) - Hyper Voice - TR42
  (264, 26401, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 62),
  -- Linoone (Galarian Linoone) - Seed Bomb - TR59
  (264, 26401, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 63),
  -- Linoone (Galarian Linoone) - Gunk Shot - TR73
  (264, 26401, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 64),
  -- Linoone (Galarian Linoone) - Grass Knot - TR77
  (264, 26401, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Linoone (Galarian Linoone) - Work Up - TR85
  (264, 26401, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Linoone (Galarian Linoone) - Throat Chop - TR95
  (264, 26401, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Linoone (Galarian Linoone) - Body Press - TR99
  (264, 26401, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 68),
  -- Rotom (Heat) - Double Team - Level 1
  (479, 47901, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Thunder Shock - Level 5
  (479, 47901, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Confuse Ray - Level 10
  (479, 47901, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Charge - Level 15
  (479, 47901, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Electro Ball - Level 20
  (479, 47901, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Thunder Wave - Level 25
  (479, 47901, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Shock Wave - Level 30
  (479, 47901, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Hex - Level 35
  (479, 47901, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Substitute - Level 40
  (479, 47901, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Trick - Level 45
  (479, 47901, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Discharge - Level 50
  (479, 47901, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Uproar - Level 55
  (479, 47901, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Thunder Wave - TM14
  (479, 47901, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom (Heat) - Light Screen - TM17
  (479, 47901, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom (Heat) - Reflect - TM18
  (479, 47901, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom (Heat) - Rest - TM21
  (479, 47901, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom (Heat) - Thief - TM23
  (479, 47901, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom (Heat) - Snore - TM24
  (479, 47901, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom (Heat) - Protect - TM25
  (479, 47901, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom (Heat) - Rain Dance - TM33
  (479, 47901, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom (Heat) - Sunny Day - TM34
  (479, 47901, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom (Heat) - Will-O-Wisp - TM38
  (479, 47901, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom (Heat) - Facade - TM39
  (479, 47901, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom (Heat) - Swift - TM40
  (479, 47901, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom (Heat) - Helping Hand - TM41
  (479, 47901, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom (Heat) - Round - TM76
  (479, 47901, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom (Heat) - Hex - TM77
  (479, 47901, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom (Heat) - Volt Switch - TM80
  (479, 47901, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom (Heat) - Electroweb - TM82
  (479, 47901, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom (Heat) - Electric Terrain - TM90
  (479, 47901, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom (Heat) - Eerie Impulse - TM93
  (479, 47901, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom (Heat) - Thunderbolt - TR08
  (479, 47901, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom (Heat) - Thunder - TR09
  (479, 47901, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom (Heat) - Substitute - TR20
  (479, 47901, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom (Heat) - Endure - TR26
  (479, 47901, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom (Heat) - Sleep Talk - TR27
  (479, 47901, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom (Heat) - Shadow Ball - TR33
  (479, 47901, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom (Heat) - Uproar - TR35
  (479, 47901, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom (Heat) - Trick - TR38
  (479, 47901, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom (Heat) - Hyper Voice - TR42
  (479, 47901, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom (Heat) - Dark Pulse - TR58
  (479, 47901, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom (Heat) - Nasty Plot - TR68
  (479, 47901, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom (Heat) - Electro Ball - TR80
  (479, 47901, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom (Heat) - Foul Play - TR81
  (479, 47901, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom (Heat) - Stored Power - TR82
  (479, 47901, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom (Heat) - Ally Switch - TR83
  (479, 47901, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Rotom (Wash) - Double Team - Level 1
  (479, 47902, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Thunder Shock - Level 5
  (479, 47902, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Confuse Ray - Level 10
  (479, 47902, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Charge - Level 15
  (479, 47902, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Electro Ball - Level 20
  (479, 47902, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Thunder Wave - Level 25
  (479, 47902, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Shock Wave - Level 30
  (479, 47902, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Hex - Level 35
  (479, 47902, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Substitute - Level 40
  (479, 47902, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Trick - Level 45
  (479, 47902, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Discharge - Level 50
  (479, 47902, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Uproar - Level 55
  (479, 47902, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Thunder Wave - TM14
  (479, 47902, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom (Wash) - Light Screen - TM17
  (479, 47902, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom (Wash) - Reflect - TM18
  (479, 47902, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom (Wash) - Rest - TM21
  (479, 47902, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom (Wash) - Thief - TM23
  (479, 47902, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom (Wash) - Snore - TM24
  (479, 47902, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom (Wash) - Protect - TM25
  (479, 47902, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom (Wash) - Rain Dance - TM33
  (479, 47902, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom (Wash) - Sunny Day - TM34
  (479, 47902, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom (Wash) - Will-O-Wisp - TM38
  (479, 47902, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom (Wash) - Facade - TM39
  (479, 47902, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom (Wash) - Swift - TM40
  (479, 47902, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom (Wash) - Helping Hand - TM41
  (479, 47902, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom (Wash) - Round - TM76
  (479, 47902, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom (Wash) - Hex - TM77
  (479, 47902, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom (Wash) - Volt Switch - TM80
  (479, 47902, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom (Wash) - Electroweb - TM82
  (479, 47902, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom (Wash) - Electric Terrain - TM90
  (479, 47902, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom (Wash) - Eerie Impulse - TM93
  (479, 47902, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom (Wash) - Thunderbolt - TR08
  (479, 47902, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom (Wash) - Thunder - TR09
  (479, 47902, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom (Wash) - Substitute - TR20
  (479, 47902, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom (Wash) - Endure - TR26
  (479, 47902, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom (Wash) - Sleep Talk - TR27
  (479, 47902, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom (Wash) - Shadow Ball - TR33
  (479, 47902, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom (Wash) - Uproar - TR35
  (479, 47902, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom (Wash) - Trick - TR38
  (479, 47902, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom (Wash) - Hyper Voice - TR42
  (479, 47902, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom (Wash) - Dark Pulse - TR58
  (479, 47902, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom (Wash) - Nasty Plot - TR68
  (479, 47902, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom (Wash) - Electro Ball - TR80
  (479, 47902, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom (Wash) - Foul Play - TR81
  (479, 47902, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom (Wash) - Stored Power - TR82
  (479, 47902, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom (Wash) - Ally Switch - TR83
  (479, 47902, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Rotom (Frost) - Double Team - Level 1
  (479, 47903, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Thunder Shock - Level 5
  (479, 47903, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Confuse Ray - Level 10
  (479, 47903, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Charge - Level 15
  (479, 47903, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Electro Ball - Level 20
  (479, 47903, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Thunder Wave - Level 25
  (479, 47903, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Shock Wave - Level 30
  (479, 47903, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Hex - Level 35
  (479, 47903, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Substitute - Level 40
  (479, 47903, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Trick - Level 45
  (479, 47903, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Discharge - Level 50
  (479, 47903, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Uproar - Level 55
  (479, 47903, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Thunder Wave - TM14
  (479, 47903, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom (Frost) - Light Screen - TM17
  (479, 47903, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom (Frost) - Reflect - TM18
  (479, 47903, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom (Frost) - Rest - TM21
  (479, 47903, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom (Frost) - Thief - TM23
  (479, 47903, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom (Frost) - Snore - TM24
  (479, 47903, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom (Frost) - Protect - TM25
  (479, 47903, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom (Frost) - Rain Dance - TM33
  (479, 47903, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom (Frost) - Sunny Day - TM34
  (479, 47903, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom (Frost) - Will-O-Wisp - TM38
  (479, 47903, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom (Frost) - Facade - TM39
  (479, 47903, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom (Frost) - Swift - TM40
  (479, 47903, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom (Frost) - Helping Hand - TM41
  (479, 47903, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom (Frost) - Round - TM76
  (479, 47903, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom (Frost) - Hex - TM77
  (479, 47903, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom (Frost) - Volt Switch - TM80
  (479, 47903, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom (Frost) - Electroweb - TM82
  (479, 47903, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom (Frost) - Electric Terrain - TM90
  (479, 47903, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom (Frost) - Eerie Impulse - TM93
  (479, 47903, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom (Frost) - Thunderbolt - TR08
  (479, 47903, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom (Frost) - Thunder - TR09
  (479, 47903, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom (Frost) - Substitute - TR20
  (479, 47903, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom (Frost) - Endure - TR26
  (479, 47903, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom (Frost) - Sleep Talk - TR27
  (479, 47903, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom (Frost) - Shadow Ball - TR33
  (479, 47903, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom (Frost) - Uproar - TR35
  (479, 47903, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom (Frost) - Trick - TR38
  (479, 47903, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom (Frost) - Hyper Voice - TR42
  (479, 47903, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom (Frost) - Dark Pulse - TR58
  (479, 47903, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom (Frost) - Nasty Plot - TR68
  (479, 47903, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom (Frost) - Electro Ball - TR80
  (479, 47903, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom (Frost) - Foul Play - TR81
  (479, 47903, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom (Frost) - Stored Power - TR82
  (479, 47903, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom (Frost) - Ally Switch - TR83
  (479, 47903, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Rotom (Fan) - Double Team - Level 1
  (479, 47904, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Thunder Shock - Level 5
  (479, 47904, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Confuse Ray - Level 10
  (479, 47904, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Charge - Level 15
  (479, 47904, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Electro Ball - Level 20
  (479, 47904, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Thunder Wave - Level 25
  (479, 47904, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Shock Wave - Level 30
  (479, 47904, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Hex - Level 35
  (479, 47904, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Substitute - Level 40
  (479, 47904, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Trick - Level 45
  (479, 47904, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Discharge - Level 50
  (479, 47904, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Uproar - Level 55
  (479, 47904, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Thunder Wave - TM14
  (479, 47904, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom (Fan) - Light Screen - TM17
  (479, 47904, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom (Fan) - Reflect - TM18
  (479, 47904, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom (Fan) - Rest - TM21
  (479, 47904, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom (Fan) - Thief - TM23
  (479, 47904, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom (Fan) - Snore - TM24
  (479, 47904, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom (Fan) - Protect - TM25
  (479, 47904, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom (Fan) - Rain Dance - TM33
  (479, 47904, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom (Fan) - Sunny Day - TM34
  (479, 47904, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom (Fan) - Will-O-Wisp - TM38
  (479, 47904, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom (Fan) - Facade - TM39
  (479, 47904, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom (Fan) - Swift - TM40
  (479, 47904, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom (Fan) - Helping Hand - TM41
  (479, 47904, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom (Fan) - Round - TM76
  (479, 47904, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom (Fan) - Hex - TM77
  (479, 47904, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom (Fan) - Volt Switch - TM80
  (479, 47904, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom (Fan) - Electroweb - TM82
  (479, 47904, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom (Fan) - Electric Terrain - TM90
  (479, 47904, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom (Fan) - Eerie Impulse - TM93
  (479, 47904, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom (Fan) - Thunderbolt - TR08
  (479, 47904, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom (Fan) - Thunder - TR09
  (479, 47904, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom (Fan) - Substitute - TR20
  (479, 47904, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom (Fan) - Endure - TR26
  (479, 47904, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom (Fan) - Sleep Talk - TR27
  (479, 47904, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom (Fan) - Shadow Ball - TR33
  (479, 47904, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom (Fan) - Uproar - TR35
  (479, 47904, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom (Fan) - Trick - TR38
  (479, 47904, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom (Fan) - Hyper Voice - TR42
  (479, 47904, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom (Fan) - Dark Pulse - TR58
  (479, 47904, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom (Fan) - Nasty Plot - TR68
  (479, 47904, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom (Fan) - Electro Ball - TR80
  (479, 47904, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom (Fan) - Foul Play - TR81
  (479, 47904, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom (Fan) - Stored Power - TR82
  (479, 47904, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom (Fan) - Ally Switch - TR83
  (479, 47904, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Rotom (Mow) - Double Team - Level 1
  (479, 47905, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Thunder Shock - Level 5
  (479, 47905, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Confuse Ray - Level 10
  (479, 47905, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Charge - Level 15
  (479, 47905, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Electro Ball - Level 20
  (479, 47905, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Thunder Wave - Level 25
  (479, 47905, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Shock Wave - Level 30
  (479, 47905, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Hex - Level 35
  (479, 47905, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Substitute - Level 40
  (479, 47905, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Trick - Level 45
  (479, 47905, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Discharge - Level 50
  (479, 47905, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Uproar - Level 55
  (479, 47905, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Thunder Wave - TM14
  (479, 47905, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom (Mow) - Light Screen - TM17
  (479, 47905, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom (Mow) - Reflect - TM18
  (479, 47905, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom (Mow) - Rest - TM21
  (479, 47905, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom (Mow) - Thief - TM23
  (479, 47905, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom (Mow) - Snore - TM24
  (479, 47905, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom (Mow) - Protect - TM25
  (479, 47905, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom (Mow) - Rain Dance - TM33
  (479, 47905, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom (Mow) - Sunny Day - TM34
  (479, 47905, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom (Mow) - Will-O-Wisp - TM38
  (479, 47905, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom (Mow) - Facade - TM39
  (479, 47905, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom (Mow) - Swift - TM40
  (479, 47905, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom (Mow) - Helping Hand - TM41
  (479, 47905, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom (Mow) - Round - TM76
  (479, 47905, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom (Mow) - Hex - TM77
  (479, 47905, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom (Mow) - Volt Switch - TM80
  (479, 47905, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom (Mow) - Electroweb - TM82
  (479, 47905, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom (Mow) - Electric Terrain - TM90
  (479, 47905, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom (Mow) - Eerie Impulse - TM93
  (479, 47905, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom (Mow) - Thunderbolt - TR08
  (479, 47905, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom (Mow) - Thunder - TR09
  (479, 47905, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom (Mow) - Substitute - TR20
  (479, 47905, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom (Mow) - Endure - TR26
  (479, 47905, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom (Mow) - Sleep Talk - TR27
  (479, 47905, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom (Mow) - Shadow Ball - TR33
  (479, 47905, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom (Mow) - Uproar - TR35
  (479, 47905, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom (Mow) - Trick - TR38
  (479, 47905, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom (Mow) - Hyper Voice - TR42
  (479, 47905, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom (Mow) - Dark Pulse - TR58
  (479, 47905, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom (Mow) - Nasty Plot - TR68
  (479, 47905, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom (Mow) - Electro Ball - TR80
  (479, 47905, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom (Mow) - Foul Play - TR81
  (479, 47905, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom (Mow) - Stored Power - TR82
  (479, 47905, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom (Mow) - Ally Switch - TR83
  (479, 47905, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Giratina (Origin) - Shadow Sneak - Level 1
  (487, 48701, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Defog - Level 1
  (487, 48701, 432, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Dragon Breath - Level 7
  (487, 48701, 225, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 14
  (487, 48701, 246, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Hex - Level 21
  (487, 48701, 506, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Slash - Level 28
  (487, 48701, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Scary Face - Level 35
  (487, 48701, 184, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Pain Split - Level 49
  (487, 48701, 220, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 56
  (487, 48701, 396, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Dragon Claw - Level 63
  (487, 48701, 337, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Earth Power - Level 70
  (487, 48701, 414, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Shadow Force - Level 77
  (487, 48701, 467, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Destiny Bond - Level 84
  (487, 48701, 194, 18, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Giratina (Origin) - Fly - TM06
  (487, 48701, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Giratina (Origin) - Hyper Beam - TM08
  (487, 48701, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Giratina (Origin) - Giga Impact - TM09
  (487, 48701, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Giratina (Origin) - Thunder Wave - TM14
  (487, 48701, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Giratina (Origin) - Safeguard - TM19
  (487, 48701, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Giratina (Origin) - Rest - TM21
  (487, 48701, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Giratina (Origin) - Snore - TM24
  (487, 48701, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Giratina (Origin) - Protect - TM25
  (487, 48701, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Giratina (Origin) - Scary Face - TM26
  (487, 48701, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Giratina (Origin) - Icy Wind - TM27
  (487, 48701, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Giratina (Origin) - Steel Wing - TM30
  (487, 48701, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Giratina (Origin) - Rain Dance - TM33
  (487, 48701, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Giratina (Origin) - Sunny Day - TM34
  (487, 48701, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Giratina (Origin) - Will-O-Wisp - TM38
  (487, 48701, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Giratina (Origin) - Facade - TM39
  (487, 48701, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Giratina (Origin) - Swift - TM40
  (487, 48701, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Giratina (Origin) - Payback - TM57
  (487, 48701, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Giratina (Origin) - Round - TM76
  (487, 48701, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Giratina (Origin) - Hex - TM77
  (487, 48701, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 34),
  -- Giratina (Origin) - Bulldoze - TM81
  (487, 48701, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Giratina (Origin) - Phantom Force - TM86
  (487, 48701, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 36),
  -- Giratina (Origin) - Brutal Swing - TM97
  (487, 48701, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Giratina (Origin) - Breaking Swipe - TM99
  (487, 48701, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 38),
  -- Giratina (Origin) - Body Slam - TR01
  (487, 48701, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Giratina (Origin) - Thunderbolt - TR08
  (487, 48701, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Giratina (Origin) - Thunder - TR09
  (487, 48701, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Giratina (Origin) - Earthquake - TR10
  (487, 48701, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Giratina (Origin) - Psychic - TR11
  (487, 48701, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Giratina (Origin) - Substitute - TR20
  (487, 48701, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Giratina (Origin) - Outrage - TR24
  (487, 48701, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Giratina (Origin) - Endure - TR26
  (487, 48701, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Giratina (Origin) - Sleep Talk - TR27
  (487, 48701, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Giratina (Origin) - Iron Tail - TR31
  (487, 48701, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Giratina (Origin) - Shadow Ball - TR33
  (487, 48701, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Giratina (Origin) - Hyper Voice - TR42
  (487, 48701, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Giratina (Origin) - Dragon Claw - TR47
  (487, 48701, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 51),
  -- Giratina (Origin) - Calm Mind - TR49
  (487, 48701, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Giratina (Origin) - Aura Sphere - TR56
  (487, 48701, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 53),
  -- Giratina (Origin) - Dark Pulse - TR58
  (487, 48701, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Giratina (Origin) - Dragon Pulse - TR62
  (487, 48701, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Giratina (Origin) - Energy Ball - TR65
  (487, 48701, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Giratina (Origin) - Earth Power - TR67
  (487, 48701, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Giratina (Origin) - Iron Head - TR74
  (487, 48701, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Giratina (Origin) - Stone Edge - TR75
  (487, 48701, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Giratina (Origin) - Draco Meteor - Tutor
  (487, 48701, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Basculin (Blue-Striped) - Tail Whip - Level 1
  (550, 55001, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Tackle - Level 4
  (550, 55001, 33, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Flail - Level 8
  (550, 55001, 175, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 12
  (550, 55001, 453, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Bite - Level 16
  (550, 55001, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Scary Face - Level 20
  (550, 55001, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Headbutt - Level 24
  (550, 55001, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Soak - Level 28
  (550, 55001, 487, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Crunch - Level 32
  (550, 55001, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Take Down - Level 36
  (550, 55001, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Final Gambit - Level 40
  (550, 55001, 515, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Aqua Tail - Level 44
  (550, 55001, 401, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Thrash - Level 48
  (550, 55001, 37, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Double-Edge - Level 52
  (550, 55001, 38, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Head Smash - Level 56
  (550, 55001, 457, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Rest - TM21
  (550, 55001, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Basculin (Blue-Striped) - Snore - TM24
  (550, 55001, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Basculin (Blue-Striped) - Protect - TM25
  (550, 55001, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Basculin (Blue-Striped) - Scary Face - TM26
  (550, 55001, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Basculin (Blue-Striped) - Icy Wind - TM27
  (550, 55001, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Basculin (Blue-Striped) - Attract - TM31
  (550, 55001, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Basculin (Blue-Striped) - Rain Dance - TM33
  (550, 55001, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Basculin (Blue-Striped) - Hail - TM35
  (550, 55001, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Basculin (Blue-Striped) - Whirlpool - TM36
  (550, 55001, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Basculin (Blue-Striped) - Facade - TM39
  (550, 55001, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Basculin (Blue-Striped) - Swift - TM40
  (550, 55001, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Basculin (Blue-Striped) - Revenge - TM42
  (550, 55001, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Basculin (Blue-Striped) - Dive - TM45
  (550, 55001, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 29),
  -- Basculin (Blue-Striped) - Bounce - TM52
  (550, 55001, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Basculin (Blue-Striped) - Mud Shot - TM53
  (550, 55001, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Basculin (Blue-Striped) - Brine - TM55
  (550, 55001, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Basculin (Blue-Striped) - Assurance - TM58
  (550, 55001, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Basculin (Blue-Striped) - Ice Fang - TM67
  (550, 55001, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 34),
  -- Basculin (Blue-Striped) - Round - TM76
  (550, 55001, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Basculin (Blue-Striped) - Hydro Pump - TR03
  (550, 55001, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Basculin (Blue-Striped) - Surf - TR04
  (550, 55001, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Basculin (Blue-Striped) - Ice Beam - TR05
  (550, 55001, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Basculin (Blue-Striped) - Agility - TR12
  (550, 55001, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Basculin (Blue-Striped) - Waterfall - TR16
  (550, 55001, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 40),
  -- Basculin (Blue-Striped) - Substitute - TR20
  (550, 55001, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Basculin (Blue-Striped) - Reversal - TR21
  (550, 55001, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Basculin (Blue-Striped) - Endure - TR26
  (550, 55001, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Basculin (Blue-Striped) - Sleep Talk - TR27
  (550, 55001, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Basculin (Blue-Striped) - Crunch - TR32
  (550, 55001, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 45),
  -- Basculin (Blue-Striped) - Uproar - TR35
  (550, 55001, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 46),
  -- Basculin (Blue-Striped) - Taunt - TR37
  (550, 55001, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Basculin (Blue-Striped) - Superpower - TR39
  (550, 55001, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Basculin (Blue-Striped) - Muddy Water - TR45
  (550, 55001, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Basculin (Blue-Striped) - Zen Headbutt - TR69
  (550, 55001, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Basculin (Blue-Striped) - Scald - TR84
  (550, 55001, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Basculin (Blue-Striped) - Psychic Fangs - TR97
  (550, 55001, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Basculin (Blue-Striped) - Liquidation - TR98
  (550, 55001, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 53),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg
  (550, 55001, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Basculin (Blue-Striped) - Endeavor - Egg
  (550, 55001, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Darumaka (Galarian Darumaka) - Tackle - Level 1
  (554, 55401, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darumaka (Galarian Darumaka) - Powder Snow - Level 1
  (554, 55401, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darumaka (Galarian Darumaka) - Taunt - Level 4
  (554, 55401, 269, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Darumaka (Galarian Darumaka) - Bite - Level 8
  (554, 55401, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Darumaka (Galarian Darumaka) - Avalanche - Level 12
  (554, 55401, 419, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Darumaka (Galarian Darumaka) - Work Up - Level 16
  (554, 55401, 526, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Darumaka (Galarian Darumaka) - Ice Fang - Level 20
  (554, 55401, 423, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Darumaka (Galarian Darumaka) - Headbutt - Level 24
  (554, 55401, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Darumaka (Galarian Darumaka) - Ice Punch - Level 28
  (554, 55401, 8, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Darumaka (Galarian Darumaka) - Uproar - Level 32
  (554, 55401, 253, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Darumaka (Galarian Darumaka) - Belly Drum - Level 36
  (554, 55401, 187, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Darumaka (Galarian Darumaka) - Blizzard - Level 40
  (554, 55401, 59, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Darumaka (Galarian Darumaka) - Thrash - Level 44
  (554, 55401, 37, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Darumaka (Galarian Darumaka) - Superpower - Level 48
  (554, 55401, 276, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Darumaka (Galarian Darumaka) - Mega Punch - TM00
  (554, 55401, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Darumaka (Galarian Darumaka) - Mega Kick - TM01
  (554, 55401, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Darumaka (Galarian Darumaka) - Fire Punch - TM03
  (554, 55401, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Darumaka (Galarian Darumaka) - Ice Punch - TM04
  (554, 55401, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Darumaka (Galarian Darumaka) - Solar Beam - TM11
  (554, 55401, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Darumaka (Galarian Darumaka) - Fire Spin - TM13
  (554, 55401, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Darumaka (Galarian Darumaka) - Dig - TM15
  (554, 55401, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Darumaka (Galarian Darumaka) - Rest - TM21
  (554, 55401, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Darumaka (Galarian Darumaka) - Rock Slide - TM22
  (554, 55401, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Darumaka (Galarian Darumaka) - Thief - TM23
  (554, 55401, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Darumaka (Galarian Darumaka) - Snore - TM24
  (554, 55401, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Darumaka (Galarian Darumaka) - Protect - TM25
  (554, 55401, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Darumaka (Galarian Darumaka) - Attract - TM31
  (554, 55401, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Darumaka (Galarian Darumaka) - Sunny Day - TM34
  (554, 55401, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Darumaka (Galarian Darumaka) - Will-O-Wisp - TM38
  (554, 55401, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Darumaka (Galarian Darumaka) - Facade - TM39
  (554, 55401, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Darumaka (Galarian Darumaka) - Brick Break - TM43
  (554, 55401, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Darumaka (Galarian Darumaka) - Rock Tomb - TM48
  (554, 55401, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Darumaka (Galarian Darumaka) - U-turn - TM56
  (554, 55401, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Darumaka (Galarian Darumaka) - Fling - TM59
  (554, 55401, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Darumaka (Galarian Darumaka) - Avalanche - TM64
  (554, 55401, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 35),
  -- Darumaka (Galarian Darumaka) - Ice Fang - TM67
  (554, 55401, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Darumaka (Galarian Darumaka) - Fire Fang - TM68
  (554, 55401, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 37),
  -- Darumaka (Galarian Darumaka) - Round - TM76
  (554, 55401, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Darumaka (Galarian Darumaka) - Flamethrower - TR02
  (554, 55401, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 39),
  -- Darumaka (Galarian Darumaka) - Ice Beam - TR05
  (554, 55401, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Darumaka (Galarian Darumaka) - Blizzard - TR06
  (554, 55401, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Darumaka (Galarian Darumaka) - Focus Energy - TR13
  (554, 55401, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Darumaka (Galarian Darumaka) - Fire Blast - TR15
  (554, 55401, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Darumaka (Galarian Darumaka) - Substitute - TR20
  (554, 55401, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Darumaka (Galarian Darumaka) - Endure - TR26
  (554, 55401, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Darumaka (Galarian Darumaka) - Sleep Talk - TR27
  (554, 55401, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Darumaka (Galarian Darumaka) - Encore - TR30
  (554, 55401, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 47),
  -- Darumaka (Galarian Darumaka) - Uproar - TR35
  (554, 55401, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 48),
  -- Darumaka (Galarian Darumaka) - Heat Wave - TR36
  (554, 55401, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 49),
  -- Darumaka (Galarian Darumaka) - Taunt - TR37
  (554, 55401, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Darumaka (Galarian Darumaka) - Superpower - TR39
  (554, 55401, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Darumaka (Galarian Darumaka) - Overheat - TR43
  (554, 55401, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 52),
  -- Darumaka (Galarian Darumaka) - Gyro Ball - TR52
  (554, 55401, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 53),
  -- Darumaka (Galarian Darumaka) - Flare Blitz - TR55
  (554, 55401, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 54),
  -- Darumaka (Galarian Darumaka) - Zen Headbutt - TR69
  (554, 55401, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 55),
  -- Darumaka (Galarian Darumaka) - Grass Knot - TR77
  (554, 55401, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Darumaka (Galarian Darumaka) - Work Up - TR85
  (554, 55401, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Darumaka (Galarian Darumaka) - Take Down - Egg
  (554, 55401, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Darumaka (Galarian Darumaka) - Flame Wheel - Egg
  (554, 55401, 172, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Darumaka (Galarian Darumaka) - Focus Punch - Egg
  (554, 55401, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Darumaka (Galarian Darumaka) - Yawn - Egg
  (554, 55401, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Darumaka (Galarian Darumaka) - Hammer Arm - Egg
  (554, 55401, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Darumaka (Galarian Darumaka) - Incinerate - Egg
  (554, 55401, 510, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Darumaka (Galarian Darumaka) - Freeze-Dry - Egg
  (554, 55401, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Darumaka (Galarian Darumaka) - Power-Up Punch - Egg
  (554, 55401, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Darmanitan (Galarian Darmanitan) - Tackle - Level 1
  (555, 55502, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darmanitan (Galarian Darmanitan) - Bite - Level 1
  (555, 55502, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darmanitan (Galarian Darmanitan) - Powder Snow - Level 1
  (555, 55502, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darmanitan (Galarian Darmanitan) - Taunt - Level 1
  (555, 55502, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Darmanitan (Galarian Darmanitan) - Icicle Crash - Level 1
  (555, 55502, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Darmanitan (Galarian Darmanitan) - Avalanche - Level 12
  (555, 55502, 419, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Darmanitan (Galarian Darmanitan) - Work Up - Level 16
  (555, 55502, 526, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Darmanitan (Galarian Darmanitan) - Ice Fang - Level 20
  (555, 55502, 423, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Darmanitan (Galarian Darmanitan) - Headbutt - Level 24
  (555, 55502, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Darmanitan (Galarian Darmanitan) - Ice Punch - Level 28
  (555, 55502, 8, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Darmanitan (Galarian Darmanitan) - Uproar - Level 32
  (555, 55502, 253, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Darmanitan (Galarian Darmanitan) - Belly Drum - Level 38
  (555, 55502, 187, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Darmanitan (Galarian Darmanitan) - Blizzard - Level 44
  (555, 55502, 59, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Darmanitan (Galarian Darmanitan) - Thrash - Level 50
  (555, 55502, 37, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Darmanitan (Galarian Darmanitan) - Superpower - Level 56
  (555, 55502, 276, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Darmanitan (Galarian Darmanitan) - Icicle Crash - Evolution
  (555, 55502, 556, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Darmanitan (Galarian Darmanitan) - Mega Punch - TM00
  (555, 55502, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Darmanitan (Galarian Darmanitan) - Mega Kick - TM01
  (555, 55502, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Darmanitan (Galarian Darmanitan) - Fire Punch - TM03
  (555, 55502, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Darmanitan (Galarian Darmanitan) - Ice Punch - TM04
  (555, 55502, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Darmanitan (Galarian Darmanitan) - Hyper Beam - TM08
  (555, 55502, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Darmanitan (Galarian Darmanitan) - Giga Impact - TM09
  (555, 55502, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Darmanitan (Galarian Darmanitan) - Solar Beam - TM11
  (555, 55502, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Darmanitan (Galarian Darmanitan) - Fire Spin - TM13
  (555, 55502, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 24),
  -- Darmanitan (Galarian Darmanitan) - Dig - TM15
  (555, 55502, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Darmanitan (Galarian Darmanitan) - Rest - TM21
  (555, 55502, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Darmanitan (Galarian Darmanitan) - Rock Slide - TM22
  (555, 55502, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Darmanitan (Galarian Darmanitan) - Thief - TM23
  (555, 55502, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Darmanitan (Galarian Darmanitan) - Snore - TM24
  (555, 55502, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Darmanitan (Galarian Darmanitan) - Protect - TM25
  (555, 55502, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Darmanitan (Galarian Darmanitan) - Attract - TM31
  (555, 55502, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Darmanitan (Galarian Darmanitan) - Sunny Day - TM34
  (555, 55502, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Darmanitan (Galarian Darmanitan) - Will-O-Wisp - TM38
  (555, 55502, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Darmanitan (Galarian Darmanitan) - Facade - TM39
  (555, 55502, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Darmanitan (Galarian Darmanitan) - Brick Break - TM43
  (555, 55502, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Darmanitan (Galarian Darmanitan) - Rock Tomb - TM48
  (555, 55502, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Darmanitan (Galarian Darmanitan) - U-turn - TM56
  (555, 55502, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Darmanitan (Galarian Darmanitan) - Payback - TM57
  (555, 55502, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Darmanitan (Galarian Darmanitan) - Fling - TM59
  (555, 55502, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Darmanitan (Galarian Darmanitan) - Avalanche - TM64
  (555, 55502, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 40),
  -- Darmanitan (Galarian Darmanitan) - Ice Fang - TM67
  (555, 55502, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 41),
  -- Darmanitan (Galarian Darmanitan) - Fire Fang - TM68
  (555, 55502, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 42),
  -- Darmanitan (Galarian Darmanitan) - Round - TM76
  (555, 55502, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Darmanitan (Galarian Darmanitan) - Bulldoze - TM81
  (555, 55502, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Darmanitan (Galarian Darmanitan) - Body Slam - TR01
  (555, 55502, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Darmanitan (Galarian Darmanitan) - Flamethrower - TR02
  (555, 55502, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Darmanitan (Galarian Darmanitan) - Ice Beam - TR05
  (555, 55502, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Darmanitan (Galarian Darmanitan) - Blizzard - TR06
  (555, 55502, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Darmanitan (Galarian Darmanitan) - Earthquake - TR10
  (555, 55502, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Darmanitan (Galarian Darmanitan) - Psychic - TR11
  (555, 55502, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 50),
  -- Darmanitan (Galarian Darmanitan) - Focus Energy - TR13
  (555, 55502, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Darmanitan (Galarian Darmanitan) - Fire Blast - TR15
  (555, 55502, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 52),
  -- Darmanitan (Galarian Darmanitan) - Substitute - TR20
  (555, 55502, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Darmanitan (Galarian Darmanitan) - Reversal - TR21
  (555, 55502, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 54),
  -- Darmanitan (Galarian Darmanitan) - Endure - TR26
  (555, 55502, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Darmanitan (Galarian Darmanitan) - Sleep Talk - TR27
  (555, 55502, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Darmanitan (Galarian Darmanitan) - Encore - TR30
  (555, 55502, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Darmanitan (Galarian Darmanitan) - Uproar - TR35
  (555, 55502, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Darmanitan (Galarian Darmanitan) - Heat Wave - TR36
  (555, 55502, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 59),
  -- Darmanitan (Galarian Darmanitan) - Taunt - TR37
  (555, 55502, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Darmanitan (Galarian Darmanitan) - Superpower - TR39
  (555, 55502, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 61),
  -- Darmanitan (Galarian Darmanitan) - Overheat - TR43
  (555, 55502, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 62),
  -- Darmanitan (Galarian Darmanitan) - Iron Defense - TR46
  (555, 55502, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 63),
  -- Darmanitan (Galarian Darmanitan) - Bulk Up - TR48
  (555, 55502, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 64),
  -- Darmanitan (Galarian Darmanitan) - Gyro Ball - TR52
  (555, 55502, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 65),
  -- Darmanitan (Galarian Darmanitan) - Flare Blitz - TR55
  (555, 55502, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 66),
  -- Darmanitan (Galarian Darmanitan) - Focus Blast - TR64
  (555, 55502, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 67),
  -- Darmanitan (Galarian Darmanitan) - Zen Headbutt - TR69
  (555, 55502, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Darmanitan (Galarian Darmanitan) - Iron Head - TR74
  (555, 55502, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 69),
  -- Darmanitan (Galarian Darmanitan) - Stone Edge - TR75
  (555, 55502, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 70),
  -- Darmanitan (Galarian Darmanitan) - Grass Knot - TR77
  (555, 55502, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Darmanitan (Galarian Darmanitan) - Work Up - TR85
  (555, 55502, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 72),
  -- Darmanitan (Galarian Darmanitan) - Body Press - TR99
  (555, 55502, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 73),
  -- Yamask (Galarian Yamask) - Protect - Level 1
  (562, 56201, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask (Galarian Yamask) - Astonish - Level 1
  (562, 56201, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask (Galarian Yamask) - Haze - Level 4
  (562, 56201, 114, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Yamask (Galarian Yamask) - Night Shade - Level 8
  (562, 56201, 101, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Yamask (Galarian Yamask) - Disable - Level 12
  (562, 56201, 50, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Yamask (Galarian Yamask) - Brutal Swing - Level 16
  (562, 56201, 693, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Yamask (Galarian Yamask) - Crafty Shield - Level 20
  (562, 56201, 578, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Yamask (Galarian Yamask) - Hex - Level 24
  (562, 56201, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Yamask (Galarian Yamask) - Mean Look - Level 28
  (562, 56201, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Yamask (Galarian Yamask) - Slam - Level 32
  (562, 56201, 21, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Yamask (Galarian Yamask) - Curse - Level 36
  (562, 56201, 174, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Yamask (Galarian Yamask) - Shadow Ball - Level 40
  (562, 56201, 247, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Yamask (Galarian Yamask) - Earthquake - Level 44
  (562, 56201, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Yamask (Galarian Yamask) - Guard Split - Level 48
  (562, 56201, 470, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Yamask (Galarian Yamask) - Power Split - Level 48
  (562, 56201, 471, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Yamask (Galarian Yamask) - Destiny Bond - Level 52
  (562, 56201, 194, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Yamask (Galarian Yamask) - Safeguard - TM19
  (562, 56201, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Yamask (Galarian Yamask) - Rest - TM21
  (562, 56201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Yamask (Galarian Yamask) - Rock Slide - TM22
  (562, 56201, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Yamask (Galarian Yamask) - Thief - TM23
  (562, 56201, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Yamask (Galarian Yamask) - Snore - TM24
  (562, 56201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Yamask (Galarian Yamask) - Protect - TM25
  (562, 56201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Yamask (Galarian Yamask) - Attract - TM31
  (562, 56201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Yamask (Galarian Yamask) - Sandstorm - TM32
  (562, 56201, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Yamask (Galarian Yamask) - Rain Dance - TM33
  (562, 56201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Yamask (Galarian Yamask) - Will-O-Wisp - TM38
  (562, 56201, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Yamask (Galarian Yamask) - Facade - TM39
  (562, 56201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Yamask (Galarian Yamask) - Imprison - TM44
  (562, 56201, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Yamask (Galarian Yamask) - Fake Tears - TM47
  (562, 56201, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 29),
  -- Yamask (Galarian Yamask) - Rock Tomb - TM48
  (562, 56201, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Yamask (Galarian Yamask) - Payback - TM57
  (562, 56201, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Yamask (Galarian Yamask) - Trick Room - TM70
  (562, 56201, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Yamask (Galarian Yamask) - Wonder Room - TM71
  (562, 56201, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 33),
  -- Yamask (Galarian Yamask) - Round - TM76
  (562, 56201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Yamask (Galarian Yamask) - Hex - TM77
  (562, 56201, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Yamask (Galarian Yamask) - Brutal Swing - TM97
  (562, 56201, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Yamask (Galarian Yamask) - Earthquake - TR10
  (562, 56201, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Yamask (Galarian Yamask) - Psychic - TR11
  (562, 56201, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Yamask (Galarian Yamask) - Substitute - TR20
  (562, 56201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Yamask (Galarian Yamask) - Endure - TR26
  (562, 56201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Yamask (Galarian Yamask) - Sleep Talk - TR27
  (562, 56201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Yamask (Galarian Yamask) - Shadow Ball - TR33
  (562, 56201, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Yamask (Galarian Yamask) - Trick - TR38
  (562, 56201, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Yamask (Galarian Yamask) - Skill Swap - TR40
  (562, 56201, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 44),
  -- Yamask (Galarian Yamask) - Iron Defense - TR46
  (562, 56201, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Yamask (Galarian Yamask) - Calm Mind - TR49
  (562, 56201, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 46),
  -- Yamask (Galarian Yamask) - Toxic Spikes - TR54
  (562, 56201, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 47),
  -- Yamask (Galarian Yamask) - Dark Pulse - TR58
  (562, 56201, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Yamask (Galarian Yamask) - Energy Ball - TR65
  (562, 56201, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 49),
  -- Yamask (Galarian Yamask) - Earth Power - TR67
  (562, 56201, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 50),
  -- Yamask (Galarian Yamask) - Nasty Plot - TR68
  (562, 56201, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 51),
  -- Yamask (Galarian Yamask) - Zen Headbutt - TR69
  (562, 56201, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Yamask (Galarian Yamask) - Ally Switch - TR83
  (562, 56201, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Yamask (Galarian Yamask) - Memento - Egg
  (562, 56201, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunfisk (Galarian Stunfisk) - Tackle - Level 1
  (618, 61801, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunfisk (Galarian Stunfisk) - Water Gun - Level 1
  (618, 61801, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunfisk (Galarian Stunfisk) - Mud-Slap - Level 1
  (618, 61801, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stunfisk (Galarian Stunfisk) - Metal Claw - Level 1
  (618, 61801, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stunfisk (Galarian Stunfisk) - Endure - Level 5
  (618, 61801, 203, 18, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Stunfisk (Galarian Stunfisk) - Mud Shot - Level 10
  (618, 61801, 341, 18, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Stunfisk (Galarian Stunfisk) - Revenge - Level 15
  (618, 61801, 279, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunfisk (Galarian Stunfisk) - Metal Sound - Level 20
  (618, 61801, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Stunfisk (Galarian Stunfisk) - Sucker Punch - Level 25
  (618, 61801, 389, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Stunfisk (Galarian Stunfisk) - Iron Defense - Level 30
  (618, 61801, 334, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Stunfisk (Galarian Stunfisk) - Bounce - Level 35
  (618, 61801, 340, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Stunfisk (Galarian Stunfisk) - Muddy Water - Level 40
  (618, 61801, 330, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Stunfisk (Galarian Stunfisk) - Snap Trap - Level 45
  (618, 61801, 779, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Stunfisk (Galarian Stunfisk) - Flail - Level 50
  (618, 61801, 175, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Stunfisk (Galarian Stunfisk) - Fissure - Level 55
  (618, 61801, 90, 18, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Stunfisk (Galarian Stunfisk) - Thunder Wave - TM14
  (618, 61801, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Stunfisk (Galarian Stunfisk) - Dig - TM15
  (618, 61801, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Stunfisk (Galarian Stunfisk) - Screech - TM16
  (618, 61801, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Stunfisk (Galarian Stunfisk) - Rest - TM21
  (618, 61801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Stunfisk (Galarian Stunfisk) - Rock Slide - TM22
  (618, 61801, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Stunfisk (Galarian Stunfisk) - Snore - TM24
  (618, 61801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Stunfisk (Galarian Stunfisk) - Protect - TM25
  (618, 61801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Stunfisk (Galarian Stunfisk) - Attract - TM31
  (618, 61801, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Stunfisk (Galarian Stunfisk) - Sandstorm - TM32
  (618, 61801, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Stunfisk (Galarian Stunfisk) - Rain Dance - TM33
  (618, 61801, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Stunfisk (Galarian Stunfisk) - Facade - TM39
  (618, 61801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Stunfisk (Galarian Stunfisk) - Revenge - TM42
  (618, 61801, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 27),
  -- Stunfisk (Galarian Stunfisk) - Rock Tomb - TM48
  (618, 61801, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Stunfisk (Galarian Stunfisk) - Bounce - TM52
  (618, 61801, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Stunfisk (Galarian Stunfisk) - Mud Shot - TM53
  (618, 61801, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Stunfisk (Galarian Stunfisk) - Payback - TM57
  (618, 61801, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Stunfisk (Galarian Stunfisk) - Ice Fang - TM67
  (618, 61801, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 32),
  -- Stunfisk (Galarian Stunfisk) - Round - TM76
  (618, 61801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Stunfisk (Galarian Stunfisk) - Bulldoze - TM81
  (618, 61801, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Stunfisk (Galarian Stunfisk) - Stomping Tantrum - TM98
  (618, 61801, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Stunfisk (Galarian Stunfisk) - Surf - TR04
  (618, 61801, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 36),
  -- Stunfisk (Galarian Stunfisk) - Earthquake - TR10
  (618, 61801, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Stunfisk (Galarian Stunfisk) - Substitute - TR20
  (618, 61801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Stunfisk (Galarian Stunfisk) - Sludge Bomb - TR22
  (618, 61801, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Stunfisk (Galarian Stunfisk) - Endure - TR26
  (618, 61801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Stunfisk (Galarian Stunfisk) - Sleep Talk - TR27
  (618, 61801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Stunfisk (Galarian Stunfisk) - Crunch - TR32
  (618, 61801, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 42),
  -- Stunfisk (Galarian Stunfisk) - Uproar - TR35
  (618, 61801, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Stunfisk (Galarian Stunfisk) - Muddy Water - TR45
  (618, 61801, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 44),
  -- Stunfisk (Galarian Stunfisk) - Iron Defense - TR46
  (618, 61801, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Stunfisk (Galarian Stunfisk) - Earth Power - TR67
  (618, 61801, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 46),
  -- Stunfisk (Galarian Stunfisk) - Flash Cannon - TR70
  (618, 61801, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Stunfisk (Galarian Stunfisk) - Stone Edge - TR75
  (618, 61801, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 48),
  -- Stunfisk (Galarian Stunfisk) - Stealth Rock - TR76
  (618, 61801, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 49),
  -- Stunfisk (Galarian Stunfisk) - Sludge Wave - TR78
  (618, 61801, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 50),
  -- Stunfisk (Galarian Stunfisk) - Foul Play - TR81
  (618, 61801, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Stunfisk (Galarian Stunfisk) - Scald - TR84
  (618, 61801, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 52),
  -- Stunfisk (Galarian Stunfisk) - Bind - Egg
  (618, 61801, 20, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunfisk (Galarian Stunfisk) - Counter - Egg
  (618, 61801, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunfisk (Galarian Stunfisk) - Curse - Egg
  (618, 61801, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunfisk (Galarian Stunfisk) - Spite - Egg
  (618, 61801, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunfisk (Galarian Stunfisk) - Pain Split - Egg
  (618, 61801, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunfisk (Galarian Stunfisk) - Yawn - Egg
  (618, 61801, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunfisk (Galarian Stunfisk) - Astonish - Egg
  (618, 61801, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stunfisk (Galarian Stunfisk) - Reflect Type - Egg
  (618, 61801, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stunfisk (Galarian Stunfisk) - Steel Beam - Tutor
  (618, 61801, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 61),
  -- Tornadus (Therian) - Gust - Level 1
  (641, 64101, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Astonish - Level 1
  (641, 64101, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Leer - Level 5
  (641, 64101, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Swagger - Level 10
  (641, 64101, 207, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Bite - Level 15
  (641, 64101, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Air Cutter - Level 20
  (641, 64101, 314, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Agility - Level 25
  (641, 64101, 97, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Tailwind - Level 30
  (641, 64101, 366, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Air Slash - Level 35
  (641, 64101, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Crunch - Level 40
  (641, 64101, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tornadus (Therian) - Extrasensory - Level 45
  (641, 64101, 326, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tornadus (Therian) - Uproar - Level 50
  (641, 64101, 253, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tornadus (Therian) - Hammer Arm - Level 55
  (641, 64101, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tornadus (Therian) - Rain Dance - Level 60
  (641, 64101, 240, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tornadus (Therian) - Hurricane - Level 65
  (641, 64101, 542, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tornadus (Therian) - Thrash - Level 70
  (641, 64101, 37, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tornadus (Therian) - Fly - TM06
  (641, 64101, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Tornadus (Therian) - Hyper Beam - TM08
  (641, 64101, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Tornadus (Therian) - Giga Impact - TM09
  (641, 64101, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Tornadus (Therian) - Rest - TM21
  (641, 64101, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Tornadus (Therian) - Thief - TM23
  (641, 64101, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Tornadus (Therian) - Snore - TM24
  (641, 64101, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Tornadus (Therian) - Protect - TM25
  (641, 64101, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Tornadus (Therian) - Scary Face - TM26
  (641, 64101, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Tornadus (Therian) - Icy Wind - TM27
  (641, 64101, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Tornadus (Therian) - Attract - TM31
  (641, 64101, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Tornadus (Therian) - Rain Dance - TM33
  (641, 64101, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Tornadus (Therian) - Facade - TM39
  (641, 64101, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Tornadus (Therian) - Revenge - TM42
  (641, 64101, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Tornadus (Therian) - Brick Break - TM43
  (641, 64101, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Tornadus (Therian) - Weather Ball - TM46
  (641, 64101, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Tornadus (Therian) - U-turn - TM56
  (641, 64101, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Tornadus (Therian) - Payback - TM57
  (641, 64101, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Tornadus (Therian) - Assurance - TM58
  (641, 64101, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Tornadus (Therian) - Fling - TM59
  (641, 64101, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Tornadus (Therian) - Round - TM76
  (641, 64101, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Tornadus (Therian) - Acrobatics - TM78
  (641, 64101, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Tornadus (Therian) - Air Slash - TM95
  (641, 64101, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 38),
  -- Tornadus (Therian) - Brutal Swing - TM97
  (641, 64101, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 39),
  -- Tornadus (Therian) - Body Slam - TR01
  (641, 64101, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Tornadus (Therian) - Psychic - TR11
  (641, 64101, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Tornadus (Therian) - Agility - TR12
  (641, 64101, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Tornadus (Therian) - Substitute - TR20
  (641, 64101, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Tornadus (Therian) - Sludge Bomb - TR22
  (641, 64101, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Tornadus (Therian) - Endure - TR26
  (641, 64101, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Tornadus (Therian) - Sleep Talk - TR27
  (641, 64101, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Tornadus (Therian) - Iron Tail - TR31
  (641, 64101, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Tornadus (Therian) - Crunch - TR32
  (641, 64101, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Tornadus (Therian) - Uproar - TR35
  (641, 64101, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Tornadus (Therian) - Heat Wave - TR36
  (641, 64101, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Tornadus (Therian) - Taunt - TR37
  (641, 64101, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Tornadus (Therian) - Superpower - TR39
  (641, 64101, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 52),
  -- Tornadus (Therian) - Bulk Up - TR48
  (641, 64101, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Tornadus (Therian) - Dark Pulse - TR58
  (641, 64101, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Tornadus (Therian) - Focus Blast - TR64
  (641, 64101, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Tornadus (Therian) - Nasty Plot - TR68
  (641, 64101, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Tornadus (Therian) - Grass Knot - TR77
  (641, 64101, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Tornadus (Therian) - Sludge Wave - TR78
  (641, 64101, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 58),
  -- Tornadus (Therian) - Foul Play - TR81
  (641, 64101, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 59),
  -- Tornadus (Therian) - Hurricane - TR89
  (641, 64101, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 60),
  -- Thundurus (Therian) - Thunder Shock - Level 1
  (642, 64201, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Astonish - Level 1
  (642, 64201, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Leer - Level 5
  (642, 64201, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Swagger - Level 10
  (642, 64201, 207, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Bite - Level 15
  (642, 64201, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Shock Wave - Level 20
  (642, 64201, 351, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Agility - Level 25
  (642, 64201, 97, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Charge - Level 30
  (642, 64201, 268, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Volt Switch - Level 35
  (642, 64201, 521, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Crunch - Level 40
  (642, 64201, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Thundurus (Therian) - Discharge - Level 45
  (642, 64201, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Thundurus (Therian) - Uproar - Level 50
  (642, 64201, 253, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Thundurus (Therian) - Hammer Arm - Level 55
  (642, 64201, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Thundurus (Therian) - Rain Dance - Level 60
  (642, 64201, 240, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Thundurus (Therian) - Thunder - Level 65
  (642, 64201, 87, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Thundurus (Therian) - Thrash - Level 70
  (642, 64201, 37, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Thundurus (Therian) - Thunder Punch - TM05
  (642, 64201, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Thundurus (Therian) - Fly - TM06
  (642, 64201, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Thundurus (Therian) - Hyper Beam - TM08
  (642, 64201, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Thundurus (Therian) - Giga Impact - TM09
  (642, 64201, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Thundurus (Therian) - Thunder Wave - TM14
  (642, 64201, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Thundurus (Therian) - Rest - TM21
  (642, 64201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Thundurus (Therian) - Thief - TM23
  (642, 64201, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Thundurus (Therian) - Snore - TM24
  (642, 64201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Thundurus (Therian) - Protect - TM25
  (642, 64201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Thundurus (Therian) - Scary Face - TM26
  (642, 64201, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Thundurus (Therian) - Attract - TM31
  (642, 64201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Thundurus (Therian) - Rain Dance - TM33
  (642, 64201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Thundurus (Therian) - Facade - TM39
  (642, 64201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Thundurus (Therian) - Revenge - TM42
  (642, 64201, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Thundurus (Therian) - Brick Break - TM43
  (642, 64201, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Thundurus (Therian) - Weather Ball - TM46
  (642, 64201, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Thundurus (Therian) - U-turn - TM56
  (642, 64201, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Thundurus (Therian) - Payback - TM57
  (642, 64201, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Thundurus (Therian) - Assurance - TM58
  (642, 64201, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Thundurus (Therian) - Fling - TM59
  (642, 64201, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Thundurus (Therian) - Round - TM76
  (642, 64201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Thundurus (Therian) - Volt Switch - TM80
  (642, 64201, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 38),
  -- Thundurus (Therian) - Electroweb - TM82
  (642, 64201, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 39),
  -- Thundurus (Therian) - Eerie Impulse - TM93
  (642, 64201, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 40),
  -- Thundurus (Therian) - Smart Strike - TM96
  (642, 64201, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Thundurus (Therian) - Brutal Swing - TM97
  (642, 64201, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Thundurus (Therian) - Body Slam - TR01
  (642, 64201, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Thundurus (Therian) - Thunderbolt - TR08
  (642, 64201, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Thundurus (Therian) - Thunder - TR09
  (642, 64201, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Thundurus (Therian) - Psychic - TR11
  (642, 64201, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Thundurus (Therian) - Agility - TR12
  (642, 64201, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 47),
  -- Thundurus (Therian) - Substitute - TR20
  (642, 64201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Thundurus (Therian) - Sludge Bomb - TR22
  (642, 64201, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 49),
  -- Thundurus (Therian) - Endure - TR26
  (642, 64201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Thundurus (Therian) - Sleep Talk - TR27
  (642, 64201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Thundurus (Therian) - Iron Tail - TR31
  (642, 64201, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Thundurus (Therian) - Crunch - TR32
  (642, 64201, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Thundurus (Therian) - Uproar - TR35
  (642, 64201, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Thundurus (Therian) - Taunt - TR37
  (642, 64201, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 55),
  -- Thundurus (Therian) - Superpower - TR39
  (642, 64201, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 56),
  -- Thundurus (Therian) - Bulk Up - TR48
  (642, 64201, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 57),
  -- Thundurus (Therian) - Dark Pulse - TR58
  (642, 64201, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 58),
  -- Thundurus (Therian) - Focus Blast - TR64
  (642, 64201, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Thundurus (Therian) - Nasty Plot - TR68
  (642, 64201, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 60),
  -- Thundurus (Therian) - Flash Cannon - TR70
  (642, 64201, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 61),
  -- Thundurus (Therian) - Grass Knot - TR77
  (642, 64201, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 62),
  -- Thundurus (Therian) - Sludge Wave - TR78
  (642, 64201, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 63),
  -- Thundurus (Therian) - Electro Ball - TR80
  (642, 64201, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 64),
  -- Thundurus (Therian) - Foul Play - TR81
  (642, 64201, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 65),
  -- Thundurus (Therian) - Wild Charge - TR86
  (642, 64201, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 66),
  -- Landorus (Therian) - Rock Throw - Level 1
  (645, 64501, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Sand Tomb - Level 1
  (645, 64501, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Leer - Level 5
  (645, 64501, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Block - Level 10
  (645, 64501, 335, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Bulldoze - Level 15
  (645, 64501, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Rock Tomb - Level 20
  (645, 64501, 317, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Swords Dance - Level 25
  (645, 64501, 14, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Imprison - Level 30
  (645, 64501, 286, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Rock Slide - Level 35
  (645, 64501, 157, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Earth Power - Level 40
  (645, 64501, 414, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Landorus (Therian) - Extrasensory - Level 45
  (645, 64501, 326, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Landorus (Therian) - Stone Edge - Level 50
  (645, 64501, 444, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Landorus (Therian) - Hammer Arm - Level 55
  (645, 64501, 359, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Landorus (Therian) - Sandstorm - Level 60
  (645, 64501, 201, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Landorus (Therian) - Earthquake - Level 65
  (645, 64501, 89, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Landorus (Therian) - Outrage - Level 70
  (645, 64501, 200, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Landorus (Therian) - Fissure - Level 75
  (645, 64501, 90, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Landorus (Therian) - Fly - TM06
  (645, 64501, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Landorus (Therian) - Hyper Beam - TM08
  (645, 64501, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Landorus (Therian) - Giga Impact - TM09
  (645, 64501, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Landorus (Therian) - Dig - TM15
  (645, 64501, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Landorus (Therian) - Self-Destruct - TM20
  (645, 64501, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Landorus (Therian) - Rest - TM21
  (645, 64501, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Landorus (Therian) - Rock Slide - TM22
  (645, 64501, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Landorus (Therian) - Snore - TM24
  (645, 64501, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Landorus (Therian) - Protect - TM25
  (645, 64501, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Landorus (Therian) - Scary Face - TM26
  (645, 64501, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Landorus (Therian) - Attract - TM31
  (645, 64501, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Landorus (Therian) - Sandstorm - TM32
  (645, 64501, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Landorus (Therian) - Facade - TM39
  (645, 64501, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Landorus (Therian) - Brick Break - TM43
  (645, 64501, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Landorus (Therian) - Imprison - TM44
  (645, 64501, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Landorus (Therian) - Weather Ball - TM46
  (645, 64501, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Landorus (Therian) - Rock Tomb - TM48
  (645, 64501, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Landorus (Therian) - Sand Tomb - TM49
  (645, 64501, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 35),
  -- Landorus (Therian) - Mud Shot - TM53
  (645, 64501, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Landorus (Therian) - U-turn - TM56
  (645, 64501, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Landorus (Therian) - Payback - TM57
  (645, 64501, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Landorus (Therian) - Fling - TM59
  (645, 64501, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Landorus (Therian) - Round - TM76
  (645, 64501, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Landorus (Therian) - Bulldoze - TM81
  (645, 64501, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Landorus (Therian) - Brutal Swing - TM97
  (645, 64501, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Landorus (Therian) - Swords Dance - TR00
  (645, 64501, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Landorus (Therian) - Body Slam - TR01
  (645, 64501, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Landorus (Therian) - Earthquake - TR10
  (645, 64501, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Landorus (Therian) - Psychic - TR11
  (645, 64501, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Landorus (Therian) - Substitute - TR20
  (645, 64501, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Landorus (Therian) - Sludge Bomb - TR22
  (645, 64501, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Landorus (Therian) - Outrage - TR24
  (645, 64501, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Landorus (Therian) - Endure - TR26
  (645, 64501, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Landorus (Therian) - Sleep Talk - TR27
  (645, 64501, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Landorus (Therian) - Iron Tail - TR31
  (645, 64501, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Landorus (Therian) - Superpower - TR39
  (645, 64501, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Landorus (Therian) - Bulk Up - TR48
  (645, 64501, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 54),
  -- Landorus (Therian) - Calm Mind - TR49
  (645, 64501, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Landorus (Therian) - Focus Blast - TR64
  (645, 64501, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Landorus (Therian) - Earth Power - TR67
  (645, 64501, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Landorus (Therian) - Stone Edge - TR75
  (645, 64501, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Landorus (Therian) - Stealth Rock - TR76
  (645, 64501, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Landorus (Therian) - Grass Knot - TR77
  (645, 64501, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Landorus (Therian) - Sludge Wave - TR78
  (645, 64501, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 61),
  -- Kyurem (White) - Dragon Breath - Level 1
  (646, 64601, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (White) - Ancient Power - Level 1
  (646, 64601, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (White) - Noble Roar - Level 1
  (646, 64601, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem (White) - Freeze-Dry - Level 1
  (646, 64601, 573, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem (White) - Slash - Level 8
  (646, 64601, 163, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem (White) - Endeavor - Level 16
  (646, 64601, 283, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem (White) - Dragon Pulse - Level 24
  (646, 64601, 406, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem (White) - Ice Beam - Level 32
  (646, 64601, 58, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem (White) - Hyper Voice - Level 40
  (646, 64601, 304, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem (White) - Fusion Flare - Level 48
  (646, 64601, 558, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem (White) - Blizzard - Level 56
  (646, 64601, 59, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem (White) - Imprison - Level 64
  (646, 64601, 286, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem (White) - Outrage - Level 72
  (646, 64601, 200, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem (White) - Ice Burn - Level 80
  (646, 64601, 554, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem (White) - Sheer Cold - Level 88
  (646, 64601, 329, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem (White) - Fly - TM06
  (646, 64601, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Kyurem (White) - Hyper Beam - TM08
  (646, 64601, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Kyurem (White) - Giga Impact - TM09
  (646, 64601, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Kyurem (White) - Light Screen - TM17
  (646, 64601, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Kyurem (White) - Reflect - TM18
  (646, 64601, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Kyurem (White) - Safeguard - TM19
  (646, 64601, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Kyurem (White) - Rest - TM21
  (646, 64601, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Kyurem (White) - Rock Slide - TM22
  (646, 64601, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Kyurem (White) - Snore - TM24
  (646, 64601, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Kyurem (White) - Protect - TM25
  (646, 64601, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Kyurem (White) - Scary Face - TM26
  (646, 64601, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Kyurem (White) - Icy Wind - TM27
  (646, 64601, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Kyurem (White) - Steel Wing - TM30
  (646, 64601, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Kyurem (White) - Rain Dance - TM33
  (646, 64601, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Kyurem (White) - Sunny Day - TM34
  (646, 64601, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Kyurem (White) - Hail - TM35
  (646, 64601, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Kyurem (White) - Facade - TM39
  (646, 64601, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Kyurem (White) - Swift - TM40
  (646, 64601, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Kyurem (White) - Helping Hand - TM41
  (646, 64601, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Kyurem (White) - Imprison - TM44
  (646, 64601, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Kyurem (White) - Weather Ball - TM46
  (646, 64601, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Kyurem (White) - Rock Tomb - TM48
  (646, 64601, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Kyurem (White) - Icicle Spear - TM51
  (646, 64601, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 38),
  -- Kyurem (White) - Payback - TM57
  (646, 64601, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Kyurem (White) - Fling - TM59
  (646, 64601, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Kyurem (White) - Shadow Claw - TM65
  (646, 64601, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 41),
  -- Kyurem (White) - Round - TM76
  (646, 64601, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Kyurem (White) - Brutal Swing - TM97
  (646, 64601, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Kyurem (White) - Breaking Swipe - TM99
  (646, 64601, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 44),
  -- Kyurem (White) - Ice Beam - TR05
  (646, 64601, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Kyurem (White) - Blizzard - TR06
  (646, 64601, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Kyurem (White) - Psychic - TR11
  (646, 64601, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Kyurem (White) - Substitute - TR20
  (646, 64601, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Kyurem (White) - Outrage - TR24
  (646, 64601, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Kyurem (White) - Endure - TR26
  (646, 64601, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Kyurem (White) - Sleep Talk - TR27
  (646, 64601, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Kyurem (White) - Shadow Ball - TR33
  (646, 64601, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Kyurem (White) - Hyper Voice - TR42
  (646, 64601, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Kyurem (White) - Dragon Claw - TR47
  (646, 64601, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Kyurem (White) - Dragon Dance - TR51
  (646, 64601, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Kyurem (White) - Dragon Pulse - TR62
  (646, 64601, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 56),
  -- Kyurem (White) - Focus Blast - TR64
  (646, 64601, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Kyurem (White) - Earth Power - TR67
  (646, 64601, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Kyurem (White) - Zen Headbutt - TR69
  (646, 64601, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Kyurem (White) - Flash Cannon - TR70
  (646, 64601, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Kyurem (White) - Iron Head - TR74
  (646, 64601, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Kyurem (White) - Stone Edge - TR75
  (646, 64601, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Kyurem (White) - Body Press - TR99
  (646, 64601, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 63),
  -- Kyurem (White) - Draco Meteor - Tutor
  (646, 64601, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Kyurem (Black) - Dragon Breath - Level 1
  (646, 64602, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (Black) - Ancient Power - Level 1
  (646, 64602, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (Black) - Noble Roar - Level 1
  (646, 64602, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem (Black) - Freeze-Dry - Level 1
  (646, 64602, 573, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem (Black) - Slash - Level 8
  (646, 64602, 163, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem (Black) - Endeavor - Level 16
  (646, 64602, 283, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem (Black) - Dragon Pulse - Level 24
  (646, 64602, 406, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem (Black) - Ice Beam - Level 32
  (646, 64602, 58, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem (Black) - Hyper Voice - Level 40
  (646, 64602, 304, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem (Black) - Fusion Bolt - Level 48
  (646, 64602, 559, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem (Black) - Blizzard - Level 56
  (646, 64602, 59, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem (Black) - Imprison - Level 64
  (646, 64602, 286, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem (Black) - Outrage - Level 72
  (646, 64602, 200, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem (Black) - Freeze Shock - Level 80
  (646, 64602, 553, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem (Black) - Sheer Cold - Level 88
  (646, 64602, 329, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem (Black) - Fly - TM06
  (646, 64602, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Kyurem (Black) - Hyper Beam - TM08
  (646, 64602, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Kyurem (Black) - Giga Impact - TM09
  (646, 64602, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Kyurem (Black) - Light Screen - TM17
  (646, 64602, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Kyurem (Black) - Reflect - TM18
  (646, 64602, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Kyurem (Black) - Safeguard - TM19
  (646, 64602, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Kyurem (Black) - Rest - TM21
  (646, 64602, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Kyurem (Black) - Rock Slide - TM22
  (646, 64602, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Kyurem (Black) - Snore - TM24
  (646, 64602, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Kyurem (Black) - Protect - TM25
  (646, 64602, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Kyurem (Black) - Scary Face - TM26
  (646, 64602, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Kyurem (Black) - Icy Wind - TM27
  (646, 64602, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Kyurem (Black) - Steel Wing - TM30
  (646, 64602, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Kyurem (Black) - Rain Dance - TM33
  (646, 64602, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Kyurem (Black) - Sunny Day - TM34
  (646, 64602, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Kyurem (Black) - Hail - TM35
  (646, 64602, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Kyurem (Black) - Facade - TM39
  (646, 64602, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Kyurem (Black) - Swift - TM40
  (646, 64602, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Kyurem (Black) - Helping Hand - TM41
  (646, 64602, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Kyurem (Black) - Imprison - TM44
  (646, 64602, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Kyurem (Black) - Weather Ball - TM46
  (646, 64602, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Kyurem (Black) - Rock Tomb - TM48
  (646, 64602, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Kyurem (Black) - Icicle Spear - TM51
  (646, 64602, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 38),
  -- Kyurem (Black) - Payback - TM57
  (646, 64602, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Kyurem (Black) - Fling - TM59
  (646, 64602, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Kyurem (Black) - Shadow Claw - TM65
  (646, 64602, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 41),
  -- Kyurem (Black) - Round - TM76
  (646, 64602, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Kyurem (Black) - Brutal Swing - TM97
  (646, 64602, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Kyurem (Black) - Breaking Swipe - TM99
  (646, 64602, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 44),
  -- Kyurem (Black) - Ice Beam - TR05
  (646, 64602, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Kyurem (Black) - Blizzard - TR06
  (646, 64602, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Kyurem (Black) - Psychic - TR11
  (646, 64602, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Kyurem (Black) - Substitute - TR20
  (646, 64602, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Kyurem (Black) - Outrage - TR24
  (646, 64602, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Kyurem (Black) - Endure - TR26
  (646, 64602, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Kyurem (Black) - Sleep Talk - TR27
  (646, 64602, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Kyurem (Black) - Shadow Ball - TR33
  (646, 64602, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Kyurem (Black) - Hyper Voice - TR42
  (646, 64602, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Kyurem (Black) - Dragon Claw - TR47
  (646, 64602, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Kyurem (Black) - Dragon Dance - TR51
  (646, 64602, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Kyurem (Black) - Dragon Pulse - TR62
  (646, 64602, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 56),
  -- Kyurem (Black) - Focus Blast - TR64
  (646, 64602, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Kyurem (Black) - Earth Power - TR67
  (646, 64602, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Kyurem (Black) - Zen Headbutt - TR69
  (646, 64602, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Kyurem (Black) - Flash Cannon - TR70
  (646, 64602, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Kyurem (Black) - Iron Head - TR74
  (646, 64602, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Kyurem (Black) - Stone Edge - TR75
  (646, 64602, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Kyurem (Black) - Body Press - TR99
  (646, 64602, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 63),
  -- Kyurem (Black) - Draco Meteor - Tutor
  (646, 64602, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Meowstic (Female) - Scratch - Level 1
  (678, 67801, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic (Female) - Leer - Level 1
  (678, 67801, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic (Female) - Fake Out - Level 1
  (678, 67801, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic (Female) - Magical Leaf - Level 1
  (678, 67801, 345, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic (Female) - Disarming Voice - Level 1
  (678, 67801, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic (Female) - Confusion - Level 9
  (678, 67801, 93, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Meowstic (Female) - Stored Power - Level 12
  (678, 67801, 500, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Meowstic (Female) - Charge Beam - Level 15
  (678, 67801, 451, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Meowstic (Female) - Covet - Level 18
  (678, 67801, 343, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Meowstic (Female) - Psybeam - Level 21
  (678, 67801, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Meowstic (Female) - Sucker Punch - Level 24
  (678, 67801, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Meowstic (Female) - Role Play - Level 29
  (678, 67801, 272, 18, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Meowstic (Female) - Light Screen - Level 34
  (678, 67801, 113, 18, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Meowstic (Female) - Reflect - Level 34
  (678, 67801, 115, 18, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Meowstic (Female) - Psyshock - Level 39
  (678, 67801, 473, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Meowstic (Female) - Extrasensory - Level 44
  (678, 67801, 326, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Meowstic (Female) - Shadow Ball - Level 49
  (678, 67801, 247, 18, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Meowstic (Female) - Psychic - Level 54
  (678, 67801, 94, 18, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Meowstic (Female) - Future Sight - Level 59
  (678, 67801, 248, 18, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Meowstic (Female) - Pay Day - TM02
  (678, 67801, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 20),
  -- Meowstic (Female) - Hyper Beam - TM08
  (678, 67801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Meowstic (Female) - Giga Impact - TM09
  (678, 67801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Meowstic (Female) - Magical Leaf - TM10
  (678, 67801, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 23),
  -- Meowstic (Female) - Thunder Wave - TM14
  (678, 67801, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 24),
  -- Meowstic (Female) - Dig - TM15
  (678, 67801, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Meowstic (Female) - Light Screen - TM17
  (678, 67801, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 26),
  -- Meowstic (Female) - Reflect - TM18
  (678, 67801, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 27),
  -- Meowstic (Female) - Safeguard - TM19
  (678, 67801, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 28),
  -- Meowstic (Female) - Rest - TM21
  (678, 67801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Meowstic (Female) - Snore - TM24
  (678, 67801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Meowstic (Female) - Protect - TM25
  (678, 67801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Meowstic (Female) - Charm - TM29
  (678, 67801, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 32),
  -- Meowstic (Female) - Attract - TM31
  (678, 67801, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Meowstic (Female) - Rain Dance - TM33
  (678, 67801, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Meowstic (Female) - Sunny Day - TM34
  (678, 67801, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Meowstic (Female) - Facade - TM39
  (678, 67801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Meowstic (Female) - Swift - TM40
  (678, 67801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Meowstic (Female) - Helping Hand - TM41
  (678, 67801, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Meowstic (Female) - Fake Tears - TM47
  (678, 67801, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Meowstic (Female) - Payback - TM57
  (678, 67801, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Meowstic (Female) - Trick Room - TM70
  (678, 67801, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 41),
  -- Meowstic (Female) - Wonder Room - TM71
  (678, 67801, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Meowstic (Female) - Magic Room - TM72
  (678, 67801, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 43),
  -- Meowstic (Female) - Round - TM76
  (678, 67801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Meowstic (Female) - Tail Slap - TM84
  (678, 67801, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 45),
  -- Meowstic (Female) - Psychic Terrain - TM91
  (678, 67801, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 46),
  -- Meowstic (Female) - Thunderbolt - TR08
  (678, 67801, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 47),
  -- Meowstic (Female) - Psychic - TR11
  (678, 67801, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Meowstic (Female) - Substitute - TR20
  (678, 67801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Meowstic (Female) - Psyshock - TR25
  (678, 67801, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 50),
  -- Meowstic (Female) - Endure - TR26
  (678, 67801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Meowstic (Female) - Sleep Talk - TR27
  (678, 67801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Meowstic (Female) - Iron Tail - TR31
  (678, 67801, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Meowstic (Female) - Shadow Ball - TR33
  (678, 67801, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Meowstic (Female) - Future Sight - TR34
  (678, 67801, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 55),
  -- Meowstic (Female) - Trick - TR38
  (678, 67801, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Meowstic (Female) - Skill Swap - TR40
  (678, 67801, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 57),
  -- Meowstic (Female) - Calm Mind - TR49
  (678, 67801, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Meowstic (Female) - Dark Pulse - TR58
  (678, 67801, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 59),
  -- Meowstic (Female) - Energy Ball - TR65
  (678, 67801, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 60),
  -- Meowstic (Female) - Nasty Plot - TR68
  (678, 67801, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 61),
  -- Meowstic (Female) - Zen Headbutt - TR69
  (678, 67801, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Meowstic (Female) - Stored Power - TR82
  (678, 67801, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 63),
  -- Meowstic (Female) - Ally Switch - TR83
  (678, 67801, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 64),
  -- Meowstic (Female) - Work Up - TR85
  (678, 67801, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 65),
  -- Meowstic (Female) - Play Rough - TR90
  (678, 67801, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 66),
  -- Meowstic (Female) - Tickle - Egg
  (678, 67801, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Meowstic (Female) - Yawn - Egg
  (678, 67801, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Pumpkaboo (Small) - Astonish - Level 1
  (710, 71001, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 1
  (710, 71001, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Small) - Shadow Sneak - Level 4
  (710, 71001, 425, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Small) - Confuse Ray - Level 8
  (710, 71001, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Small) - Razor Leaf - Level 12
  (710, 71001, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 12
  (710, 71001, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Small) - Leech Seed - Level 16
  (710, 71001, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Small) - Bullet Seed - Level 20
  (710, 71001, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Small) - Scary Face - Level 24
  (710, 71001, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 24
  (710, 71001, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Small) - Worry Seed - Level 28
  (710, 71001, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Small) - Seed Bomb - Level 32
  (710, 71001, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Small) - Shadow Ball - Level 36
  (710, 71001, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Small) - Trick-or-Treat - Level 36
  (710, 71001, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Small) - Trick - Level 40
  (710, 71001, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Small) - Pain Split - Level 44
  (710, 71001, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Pumpkaboo (Small) - Solar Beam - TM11
  (710, 71001, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Pumpkaboo (Small) - Light Screen - TM17
  (710, 71001, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Pumpkaboo (Small) - Safeguard - TM19
  (710, 71001, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Pumpkaboo (Small) - Rest - TM21
  (710, 71001, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Pumpkaboo (Small) - Rock Slide - TM22
  (710, 71001, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Pumpkaboo (Small) - Thief - TM23
  (710, 71001, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Pumpkaboo (Small) - Snore - TM24
  (710, 71001, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Pumpkaboo (Small) - Protect - TM25
  (710, 71001, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Pumpkaboo (Small) - Scary Face - TM26
  (710, 71001, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Pumpkaboo (Small) - Giga Drain - TM28
  (710, 71001, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Pumpkaboo (Small) - Attract - TM31
  (710, 71001, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Pumpkaboo (Small) - Sunny Day - TM34
  (710, 71001, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Pumpkaboo (Small) - Will-O-Wisp - TM38
  (710, 71001, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Pumpkaboo (Small) - Facade - TM39
  (710, 71001, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Pumpkaboo (Small) - Imprison - TM44
  (710, 71001, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Pumpkaboo (Small) - Bullet Seed - TM50
  (710, 71001, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Pumpkaboo (Small) - Trick Room - TM70
  (710, 71001, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Pumpkaboo (Small) - Round - TM76
  (710, 71001, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Pumpkaboo (Small) - Hex - TM77
  (710, 71001, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Pumpkaboo (Small) - Mystical Fire - TM92
  (710, 71001, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Pumpkaboo (Small) - Flamethrower - TR02
  (710, 71001, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Pumpkaboo (Small) - Psychic - TR11
  (710, 71001, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Pumpkaboo (Small) - Fire Blast - TR15
  (710, 71001, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Pumpkaboo (Small) - Substitute - TR20
  (710, 71001, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Pumpkaboo (Small) - Sludge Bomb - TR22
  (710, 71001, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Pumpkaboo (Small) - Endure - TR26
  (710, 71001, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Pumpkaboo (Small) - Sleep Talk - TR27
  (710, 71001, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Pumpkaboo (Small) - Shadow Ball - TR33
  (710, 71001, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Pumpkaboo (Small) - Trick - TR38
  (710, 71001, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Pumpkaboo (Small) - Skill Swap - TR40
  (710, 71001, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Pumpkaboo (Small) - Gyro Ball - TR52
  (710, 71001, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Pumpkaboo (Small) - Dark Pulse - TR58
  (710, 71001, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Pumpkaboo (Small) - Seed Bomb - TR59
  (710, 71001, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Pumpkaboo (Small) - Energy Ball - TR65
  (710, 71001, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Pumpkaboo (Small) - Grass Knot - TR77
  (710, 71001, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Pumpkaboo (Small) - Foul Play - TR81
  (710, 71001, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Pumpkaboo (Small) - Ally Switch - TR83
  (710, 71001, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Pumpkaboo (Small) - Disable - Egg
  (710, 71001, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Small) - Curse - Egg
  (710, 71001, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pumpkaboo (Small) - Destiny Bond - Egg
  (710, 71001, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo (Large) - Astonish - Level 1
  (710, 71002, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 1
  (710, 71002, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Large) - Shadow Sneak - Level 4
  (710, 71002, 425, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Large) - Confuse Ray - Level 8
  (710, 71002, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Large) - Razor Leaf - Level 12
  (710, 71002, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 12
  (710, 71002, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Large) - Leech Seed - Level 16
  (710, 71002, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Large) - Bullet Seed - Level 20
  (710, 71002, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Large) - Scary Face - Level 24
  (710, 71002, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 24
  (710, 71002, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Large) - Worry Seed - Level 28
  (710, 71002, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Large) - Seed Bomb - Level 32
  (710, 71002, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Large) - Shadow Ball - Level 36
  (710, 71002, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Large) - Trick-or-Treat - Level 36
  (710, 71002, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Large) - Trick - Level 40
  (710, 71002, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Large) - Pain Split - Level 44
  (710, 71002, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Pumpkaboo (Large) - Solar Beam - TM11
  (710, 71002, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Pumpkaboo (Large) - Light Screen - TM17
  (710, 71002, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Pumpkaboo (Large) - Safeguard - TM19
  (710, 71002, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Pumpkaboo (Large) - Rest - TM21
  (710, 71002, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Pumpkaboo (Large) - Rock Slide - TM22
  (710, 71002, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Pumpkaboo (Large) - Thief - TM23
  (710, 71002, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Pumpkaboo (Large) - Snore - TM24
  (710, 71002, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Pumpkaboo (Large) - Protect - TM25
  (710, 71002, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Pumpkaboo (Large) - Scary Face - TM26
  (710, 71002, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Pumpkaboo (Large) - Giga Drain - TM28
  (710, 71002, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Pumpkaboo (Large) - Attract - TM31
  (710, 71002, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Pumpkaboo (Large) - Sunny Day - TM34
  (710, 71002, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Pumpkaboo (Large) - Will-O-Wisp - TM38
  (710, 71002, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Pumpkaboo (Large) - Facade - TM39
  (710, 71002, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Pumpkaboo (Large) - Imprison - TM44
  (710, 71002, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Pumpkaboo (Large) - Bullet Seed - TM50
  (710, 71002, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Pumpkaboo (Large) - Trick Room - TM70
  (710, 71002, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Pumpkaboo (Large) - Round - TM76
  (710, 71002, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Pumpkaboo (Large) - Hex - TM77
  (710, 71002, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Pumpkaboo (Large) - Mystical Fire - TM92
  (710, 71002, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Pumpkaboo (Large) - Flamethrower - TR02
  (710, 71002, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Pumpkaboo (Large) - Psychic - TR11
  (710, 71002, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Pumpkaboo (Large) - Fire Blast - TR15
  (710, 71002, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Pumpkaboo (Large) - Substitute - TR20
  (710, 71002, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Pumpkaboo (Large) - Sludge Bomb - TR22
  (710, 71002, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Pumpkaboo (Large) - Endure - TR26
  (710, 71002, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Pumpkaboo (Large) - Sleep Talk - TR27
  (710, 71002, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Pumpkaboo (Large) - Shadow Ball - TR33
  (710, 71002, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Pumpkaboo (Large) - Trick - TR38
  (710, 71002, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Pumpkaboo (Large) - Skill Swap - TR40
  (710, 71002, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Pumpkaboo (Large) - Gyro Ball - TR52
  (710, 71002, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Pumpkaboo (Large) - Dark Pulse - TR58
  (710, 71002, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Pumpkaboo (Large) - Seed Bomb - TR59
  (710, 71002, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Pumpkaboo (Large) - Energy Ball - TR65
  (710, 71002, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Pumpkaboo (Large) - Grass Knot - TR77
  (710, 71002, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Pumpkaboo (Large) - Foul Play - TR81
  (710, 71002, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Pumpkaboo (Large) - Ally Switch - TR83
  (710, 71002, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Pumpkaboo (Large) - Disable - Egg
  (710, 71002, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Large) - Curse - Egg
  (710, 71002, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pumpkaboo (Large) - Destiny Bond - Egg
  (710, 71002, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pumpkaboo (Super) - Astonish - Level 1
  (710, 71003, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 1
  (710, 71003, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo (Super) - Shadow Sneak - Level 4
  (710, 71003, 425, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pumpkaboo (Super) - Confuse Ray - Level 8
  (710, 71003, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pumpkaboo (Super) - Razor Leaf - Level 12
  (710, 71003, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 12
  (710, 71003, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pumpkaboo (Super) - Leech Seed - Level 16
  (710, 71003, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo (Super) - Bullet Seed - Level 20
  (710, 71003, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo (Super) - Scary Face - Level 24
  (710, 71003, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 24
  (710, 71003, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pumpkaboo (Super) - Worry Seed - Level 28
  (710, 71003, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pumpkaboo (Super) - Seed Bomb - Level 32
  (710, 71003, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pumpkaboo (Super) - Shadow Ball - Level 36
  (710, 71003, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Pumpkaboo (Super) - Trick-or-Treat - Level 36
  (710, 71003, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Pumpkaboo (Super) - Trick - Level 40
  (710, 71003, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pumpkaboo (Super) - Pain Split - Level 44
  (710, 71003, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Pumpkaboo (Super) - Solar Beam - TM11
  (710, 71003, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Pumpkaboo (Super) - Light Screen - TM17
  (710, 71003, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Pumpkaboo (Super) - Safeguard - TM19
  (710, 71003, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Pumpkaboo (Super) - Rest - TM21
  (710, 71003, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Pumpkaboo (Super) - Rock Slide - TM22
  (710, 71003, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Pumpkaboo (Super) - Thief - TM23
  (710, 71003, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Pumpkaboo (Super) - Snore - TM24
  (710, 71003, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Pumpkaboo (Super) - Protect - TM25
  (710, 71003, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Pumpkaboo (Super) - Scary Face - TM26
  (710, 71003, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Pumpkaboo (Super) - Giga Drain - TM28
  (710, 71003, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Pumpkaboo (Super) - Attract - TM31
  (710, 71003, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Pumpkaboo (Super) - Sunny Day - TM34
  (710, 71003, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Pumpkaboo (Super) - Will-O-Wisp - TM38
  (710, 71003, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Pumpkaboo (Super) - Facade - TM39
  (710, 71003, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Pumpkaboo (Super) - Imprison - TM44
  (710, 71003, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Pumpkaboo (Super) - Bullet Seed - TM50
  (710, 71003, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Pumpkaboo (Super) - Trick Room - TM70
  (710, 71003, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Pumpkaboo (Super) - Round - TM76
  (710, 71003, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Pumpkaboo (Super) - Hex - TM77
  (710, 71003, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Pumpkaboo (Super) - Mystical Fire - TM92
  (710, 71003, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Pumpkaboo (Super) - Flamethrower - TR02
  (710, 71003, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Pumpkaboo (Super) - Psychic - TR11
  (710, 71003, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Pumpkaboo (Super) - Fire Blast - TR15
  (710, 71003, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Pumpkaboo (Super) - Substitute - TR20
  (710, 71003, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Pumpkaboo (Super) - Sludge Bomb - TR22
  (710, 71003, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Pumpkaboo (Super) - Endure - TR26
  (710, 71003, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Pumpkaboo (Super) - Sleep Talk - TR27
  (710, 71003, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Pumpkaboo (Super) - Shadow Ball - TR33
  (710, 71003, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Pumpkaboo (Super) - Trick - TR38
  (710, 71003, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Pumpkaboo (Super) - Skill Swap - TR40
  (710, 71003, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Pumpkaboo (Super) - Gyro Ball - TR52
  (710, 71003, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Pumpkaboo (Super) - Dark Pulse - TR58
  (710, 71003, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Pumpkaboo (Super) - Seed Bomb - TR59
  (710, 71003, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Pumpkaboo (Super) - Energy Ball - TR65
  (710, 71003, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Pumpkaboo (Super) - Grass Knot - TR77
  (710, 71003, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Pumpkaboo (Super) - Foul Play - TR81
  (710, 71003, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Pumpkaboo (Super) - Ally Switch - TR83
  (710, 71003, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Pumpkaboo (Super) - Disable - Egg
  (710, 71003, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo (Super) - Curse - Egg
  (710, 71003, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pumpkaboo (Super) - Destiny Bond - Egg
  (710, 71003, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gourgeist (Small) - Confuse Ray - Level 1
  (711, 71101, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Small) - Explosion - Level 1
  (711, 71101, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Small) - Astonish - Level 1
  (711, 71101, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Small) - Shadow Sneak - Level 1
  (711, 71101, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Small) - Trick-or-Treat - Level 1
  (711, 71101, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Small) - Moonblast - Level 1
  (711, 71101, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Small) - Razor Leaf - Level 12
  (711, 71101, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gourgeist (Small) - Trick-or-Treat - Level 12
  (711, 71101, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gourgeist (Small) - Leech Seed - Level 16
  (711, 71101, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Small) - Bullet Seed - Level 20
  (711, 71101, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Small) - Scary Face - Level 24
  (711, 71101, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gourgeist (Small) - Trick-or-Treat - Level 24
  (711, 71101, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Gourgeist (Small) - Worry Seed - Level 28
  (711, 71101, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gourgeist (Small) - Seed Bomb - Level 32
  (711, 71101, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Gourgeist (Small) - Shadow Ball - Level 36
  (711, 71101, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Small) - Trick-or-Treat - Level 36
  (711, 71101, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gourgeist (Small) - Trick - Level 40
  (711, 71101, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Gourgeist (Small) - Pain Split - Level 44
  (711, 71101, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Gourgeist (Small) - Phantom Force - Level 48
  (711, 71101, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Gourgeist (Small) - Hyper Beam - TM08
  (711, 71101, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Gourgeist (Small) - Giga Impact - TM09
  (711, 71101, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Gourgeist (Small) - Solar Beam - TM11
  (711, 71101, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Gourgeist (Small) - Light Screen - TM17
  (711, 71101, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Gourgeist (Small) - Safeguard - TM19
  (711, 71101, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Gourgeist (Small) - Rest - TM21
  (711, 71101, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Gourgeist (Small) - Rock Slide - TM22
  (711, 71101, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Gourgeist (Small) - Thief - TM23
  (711, 71101, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Gourgeist (Small) - Snore - TM24
  (711, 71101, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Gourgeist (Small) - Protect - TM25
  (711, 71101, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Gourgeist (Small) - Scary Face - TM26
  (711, 71101, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Gourgeist (Small) - Giga Drain - TM28
  (711, 71101, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Gourgeist (Small) - Attract - TM31
  (711, 71101, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Gourgeist (Small) - Sunny Day - TM34
  (711, 71101, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Gourgeist (Small) - Will-O-Wisp - TM38
  (711, 71101, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Gourgeist (Small) - Facade - TM39
  (711, 71101, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Gourgeist (Small) - Imprison - TM44
  (711, 71101, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Gourgeist (Small) - Bullet Seed - TM50
  (711, 71101, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 37),
  -- Gourgeist (Small) - Trick Room - TM70
  (711, 71101, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Gourgeist (Small) - Round - TM76
  (711, 71101, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Gourgeist (Small) - Hex - TM77
  (711, 71101, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Gourgeist (Small) - Phantom Force - TM86
  (711, 71101, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 41),
  -- Gourgeist (Small) - Mystical Fire - TM92
  (711, 71101, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 42),
  -- Gourgeist (Small) - Brutal Swing - TM97
  (711, 71101, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Gourgeist (Small) - Flamethrower - TR02
  (711, 71101, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Gourgeist (Small) - Psychic - TR11
  (711, 71101, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Gourgeist (Small) - Fire Blast - TR15
  (711, 71101, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Gourgeist (Small) - Substitute - TR20
  (711, 71101, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Gourgeist (Small) - Sludge Bomb - TR22
  (711, 71101, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Gourgeist (Small) - Endure - TR26
  (711, 71101, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Gourgeist (Small) - Sleep Talk - TR27
  (711, 71101, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Gourgeist (Small) - Shadow Ball - TR33
  (711, 71101, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Gourgeist (Small) - Trick - TR38
  (711, 71101, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Gourgeist (Small) - Skill Swap - TR40
  (711, 71101, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Gourgeist (Small) - Gyro Ball - TR52
  (711, 71101, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Gourgeist (Small) - Dark Pulse - TR58
  (711, 71101, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Gourgeist (Small) - Seed Bomb - TR59
  (711, 71101, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 56),
  -- Gourgeist (Small) - Focus Blast - TR64
  (711, 71101, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Gourgeist (Small) - Energy Ball - TR65
  (711, 71101, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Gourgeist (Small) - Nasty Plot - TR68
  (711, 71101, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Gourgeist (Small) - Power Whip - TR72
  (711, 71101, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 60),
  -- Gourgeist (Small) - Grass Knot - TR77
  (711, 71101, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Gourgeist (Small) - Foul Play - TR81
  (711, 71101, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Gourgeist (Small) - Ally Switch - TR83
  (711, 71101, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Gourgeist (Large) - Confuse Ray - Level 1
  (711, 71102, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Large) - Explosion - Level 1
  (711, 71102, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Large) - Astonish - Level 1
  (711, 71102, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Large) - Shadow Sneak - Level 1
  (711, 71102, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Large) - Trick-or-Treat - Level 1
  (711, 71102, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Large) - Moonblast - Level 1
  (711, 71102, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Large) - Razor Leaf - Level 12
  (711, 71102, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gourgeist (Large) - Trick-or-Treat - Level 12
  (711, 71102, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gourgeist (Large) - Leech Seed - Level 16
  (711, 71102, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Large) - Bullet Seed - Level 20
  (711, 71102, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Large) - Scary Face - Level 24
  (711, 71102, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gourgeist (Large) - Trick-or-Treat - Level 24
  (711, 71102, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Gourgeist (Large) - Worry Seed - Level 28
  (711, 71102, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gourgeist (Large) - Seed Bomb - Level 32
  (711, 71102, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Gourgeist (Large) - Shadow Ball - Level 36
  (711, 71102, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Large) - Trick-or-Treat - Level 36
  (711, 71102, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gourgeist (Large) - Trick - Level 40
  (711, 71102, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Gourgeist (Large) - Pain Split - Level 44
  (711, 71102, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Gourgeist (Large) - Phantom Force - Level 48
  (711, 71102, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Gourgeist (Large) - Hyper Beam - TM08
  (711, 71102, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Gourgeist (Large) - Giga Impact - TM09
  (711, 71102, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Gourgeist (Large) - Solar Beam - TM11
  (711, 71102, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Gourgeist (Large) - Light Screen - TM17
  (711, 71102, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Gourgeist (Large) - Safeguard - TM19
  (711, 71102, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Gourgeist (Large) - Rest - TM21
  (711, 71102, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Gourgeist (Large) - Rock Slide - TM22
  (711, 71102, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Gourgeist (Large) - Thief - TM23
  (711, 71102, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Gourgeist (Large) - Snore - TM24
  (711, 71102, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Gourgeist (Large) - Protect - TM25
  (711, 71102, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Gourgeist (Large) - Scary Face - TM26
  (711, 71102, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Gourgeist (Large) - Giga Drain - TM28
  (711, 71102, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Gourgeist (Large) - Attract - TM31
  (711, 71102, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Gourgeist (Large) - Sunny Day - TM34
  (711, 71102, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Gourgeist (Large) - Will-O-Wisp - TM38
  (711, 71102, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Gourgeist (Large) - Facade - TM39
  (711, 71102, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Gourgeist (Large) - Imprison - TM44
  (711, 71102, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Gourgeist (Large) - Bullet Seed - TM50
  (711, 71102, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 37),
  -- Gourgeist (Large) - Trick Room - TM70
  (711, 71102, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Gourgeist (Large) - Round - TM76
  (711, 71102, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Gourgeist (Large) - Hex - TM77
  (711, 71102, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Gourgeist (Large) - Phantom Force - TM86
  (711, 71102, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 41),
  -- Gourgeist (Large) - Mystical Fire - TM92
  (711, 71102, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 42),
  -- Gourgeist (Large) - Brutal Swing - TM97
  (711, 71102, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Gourgeist (Large) - Flamethrower - TR02
  (711, 71102, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Gourgeist (Large) - Psychic - TR11
  (711, 71102, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Gourgeist (Large) - Fire Blast - TR15
  (711, 71102, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Gourgeist (Large) - Substitute - TR20
  (711, 71102, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Gourgeist (Large) - Sludge Bomb - TR22
  (711, 71102, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Gourgeist (Large) - Endure - TR26
  (711, 71102, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Gourgeist (Large) - Sleep Talk - TR27
  (711, 71102, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Gourgeist (Large) - Shadow Ball - TR33
  (711, 71102, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Gourgeist (Large) - Trick - TR38
  (711, 71102, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Gourgeist (Large) - Skill Swap - TR40
  (711, 71102, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Gourgeist (Large) - Gyro Ball - TR52
  (711, 71102, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Gourgeist (Large) - Dark Pulse - TR58
  (711, 71102, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Gourgeist (Large) - Seed Bomb - TR59
  (711, 71102, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 56),
  -- Gourgeist (Large) - Focus Blast - TR64
  (711, 71102, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Gourgeist (Large) - Energy Ball - TR65
  (711, 71102, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Gourgeist (Large) - Nasty Plot - TR68
  (711, 71102, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Gourgeist (Large) - Power Whip - TR72
  (711, 71102, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 60),
  -- Gourgeist (Large) - Grass Knot - TR77
  (711, 71102, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Gourgeist (Large) - Foul Play - TR81
  (711, 71102, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Gourgeist (Large) - Ally Switch - TR83
  (711, 71102, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Gourgeist (Super) - Confuse Ray - Level 1
  (711, 71103, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist (Super) - Explosion - Level 1
  (711, 71103, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist (Super) - Astonish - Level 1
  (711, 71103, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist (Super) - Shadow Sneak - Level 1
  (711, 71103, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist (Super) - Trick-or-Treat - Level 1
  (711, 71103, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist (Super) - Moonblast - Level 1
  (711, 71103, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist (Super) - Razor Leaf - Level 12
  (711, 71103, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gourgeist (Super) - Trick-or-Treat - Level 12
  (711, 71103, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gourgeist (Super) - Leech Seed - Level 16
  (711, 71103, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist (Super) - Bullet Seed - Level 20
  (711, 71103, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist (Super) - Scary Face - Level 24
  (711, 71103, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gourgeist (Super) - Trick-or-Treat - Level 24
  (711, 71103, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Gourgeist (Super) - Worry Seed - Level 28
  (711, 71103, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gourgeist (Super) - Seed Bomb - Level 32
  (711, 71103, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Gourgeist (Super) - Shadow Ball - Level 36
  (711, 71103, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist (Super) - Trick-or-Treat - Level 36
  (711, 71103, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gourgeist (Super) - Trick - Level 40
  (711, 71103, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Gourgeist (Super) - Pain Split - Level 44
  (711, 71103, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Gourgeist (Super) - Phantom Force - Level 48
  (711, 71103, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Gourgeist (Super) - Hyper Beam - TM08
  (711, 71103, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Gourgeist (Super) - Giga Impact - TM09
  (711, 71103, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Gourgeist (Super) - Solar Beam - TM11
  (711, 71103, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Gourgeist (Super) - Light Screen - TM17
  (711, 71103, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Gourgeist (Super) - Safeguard - TM19
  (711, 71103, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Gourgeist (Super) - Rest - TM21
  (711, 71103, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Gourgeist (Super) - Rock Slide - TM22
  (711, 71103, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Gourgeist (Super) - Thief - TM23
  (711, 71103, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Gourgeist (Super) - Snore - TM24
  (711, 71103, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Gourgeist (Super) - Protect - TM25
  (711, 71103, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Gourgeist (Super) - Scary Face - TM26
  (711, 71103, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Gourgeist (Super) - Giga Drain - TM28
  (711, 71103, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Gourgeist (Super) - Attract - TM31
  (711, 71103, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Gourgeist (Super) - Sunny Day - TM34
  (711, 71103, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Gourgeist (Super) - Will-O-Wisp - TM38
  (711, 71103, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Gourgeist (Super) - Facade - TM39
  (711, 71103, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Gourgeist (Super) - Imprison - TM44
  (711, 71103, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Gourgeist (Super) - Bullet Seed - TM50
  (711, 71103, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 37),
  -- Gourgeist (Super) - Trick Room - TM70
  (711, 71103, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Gourgeist (Super) - Round - TM76
  (711, 71103, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Gourgeist (Super) - Hex - TM77
  (711, 71103, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Gourgeist (Super) - Phantom Force - TM86
  (711, 71103, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 41),
  -- Gourgeist (Super) - Mystical Fire - TM92
  (711, 71103, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 42),
  -- Gourgeist (Super) - Brutal Swing - TM97
  (711, 71103, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Gourgeist (Super) - Flamethrower - TR02
  (711, 71103, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Gourgeist (Super) - Psychic - TR11
  (711, 71103, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Gourgeist (Super) - Fire Blast - TR15
  (711, 71103, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Gourgeist (Super) - Substitute - TR20
  (711, 71103, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Gourgeist (Super) - Sludge Bomb - TR22
  (711, 71103, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Gourgeist (Super) - Endure - TR26
  (711, 71103, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Gourgeist (Super) - Sleep Talk - TR27
  (711, 71103, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Gourgeist (Super) - Shadow Ball - TR33
  (711, 71103, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Gourgeist (Super) - Trick - TR38
  (711, 71103, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Gourgeist (Super) - Skill Swap - TR40
  (711, 71103, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Gourgeist (Super) - Gyro Ball - TR52
  (711, 71103, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Gourgeist (Super) - Dark Pulse - TR58
  (711, 71103, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Gourgeist (Super) - Seed Bomb - TR59
  (711, 71103, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 56),
  -- Gourgeist (Super) - Focus Blast - TR64
  (711, 71103, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Gourgeist (Super) - Energy Ball - TR65
  (711, 71103, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Gourgeist (Super) - Nasty Plot - TR68
  (711, 71103, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Gourgeist (Super) - Power Whip - TR72
  (711, 71103, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 60),
  -- Gourgeist (Super) - Grass Knot - TR77
  (711, 71103, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Gourgeist (Super) - Foul Play - TR81
  (711, 71103, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Gourgeist (Super) - Ally Switch - TR83
  (711, 71103, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Zygarde (10% Forme) - Bind - Level 1
  (718, 71801, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zygarde (10% Forme) - Bite - Level 1
  (718, 71801, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zygarde (10% Forme) - Dragon Breath - Level 1
  (718, 71801, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zygarde (10% Forme) - Bulldoze - Level 1
  (718, 71801, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zygarde (10% Forme) - Thousand Arrows - Level 1
  (718, 71801, 614, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zygarde (10% Forme) - Thousand Waves - Level 1
  (718, 71801, 615, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zygarde (10% Forme) - Core Enforcer - Level 1
  (718, 71801, 687, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Zygarde (10% Forme) - Haze - Level 8
  (718, 71801, 114, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Zygarde (10% Forme) - Dig - Level 16
  (718, 71801, 91, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Zygarde (10% Forme) - Safeguard - Level 24
  (718, 71801, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zygarde (10% Forme) - Crunch - Level 32
  (718, 71801, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Zygarde (10% Forme) - Dragon Pulse - Level 40
  (718, 71801, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zygarde (10% Forme) - Land's Wrath - Level 48
  (718, 71801, 616, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Zygarde (10% Forme) - Glare - Level 56
  (718, 71801, 137, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Zygarde (10% Forme) - Sandstorm - Level 64
  (718, 71801, 201, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Zygarde (10% Forme) - Coil - Level 72
  (718, 71801, 489, 18, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Zygarde (10% Forme) - Earthquake - Level 80
  (718, 71801, 89, 18, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Zygarde (10% Forme) - Outrage - Level 88
  (718, 71801, 200, 18, NULL, 1, 88, NULL, NULL, NULL, 18),
  -- Zygarde (10% Forme) - Hyper Beam - TM08
  (718, 71801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Zygarde (10% Forme) - Giga Impact - TM09
  (718, 71801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Zygarde (10% Forme) - Dig - TM15
  (718, 71801, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Zygarde (10% Forme) - Safeguard - TM19
  (718, 71801, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Zygarde (10% Forme) - Rest - TM21
  (718, 71801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Zygarde (10% Forme) - Rock Slide - TM22
  (718, 71801, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Zygarde (10% Forme) - Snore - TM24
  (718, 71801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Zygarde (10% Forme) - Protect - TM25
  (718, 71801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Zygarde (10% Forme) - Sandstorm - TM32
  (718, 71801, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Zygarde (10% Forme) - Sunny Day - TM34
  (718, 71801, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Zygarde (10% Forme) - Facade - TM39
  (718, 71801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Zygarde (10% Forme) - Swift - TM40
  (718, 71801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Zygarde (10% Forme) - Brick Break - TM43
  (718, 71801, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Zygarde (10% Forme) - Payback - TM57
  (718, 71801, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Zygarde (10% Forme) - Round - TM76
  (718, 71801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Zygarde (10% Forme) - Retaliate - TM79
  (718, 71801, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Zygarde (10% Forme) - Bulldoze - TM81
  (718, 71801, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Zygarde (10% Forme) - Stomping Tantrum - TM98
  (718, 71801, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Zygarde (10% Forme) - Breaking Swipe - TM99
  (718, 71801, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 37),
  -- Zygarde (10% Forme) - Body Slam - TR01
  (718, 71801, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Zygarde (10% Forme) - Earthquake - TR10
  (718, 71801, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Zygarde (10% Forme) - Substitute - TR20
  (718, 71801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Zygarde (10% Forme) - Reversal - TR21
  (718, 71801, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 41),
  -- Zygarde (10% Forme) - Outrage - TR24
  (718, 71801, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 42),
  -- Zygarde (10% Forme) - Endure - TR26
  (718, 71801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Zygarde (10% Forme) - Sleep Talk - TR27
  (718, 71801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Zygarde (10% Forme) - Iron Tail - TR31
  (718, 71801, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Zygarde (10% Forme) - Crunch - TR32
  (718, 71801, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Zygarde (10% Forme) - Superpower - TR39
  (718, 71801, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Zygarde (10% Forme) - Hyper Voice - TR42
  (718, 71801, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Zygarde (10% Forme) - Dragon Dance - TR51
  (718, 71801, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 49),
  -- Zygarde (10% Forme) - Dragon Pulse - TR62
  (718, 71801, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 50),
  -- Zygarde (10% Forme) - Focus Blast - TR64
  (718, 71801, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 51),
  -- Zygarde (10% Forme) - Earth Power - TR67
  (718, 71801, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Zygarde (10% Forme) - Zen Headbutt - TR69
  (718, 71801, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Zygarde (10% Forme) - Stone Edge - TR75
  (718, 71801, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Zygarde (10% Forme) - Grass Knot - TR77
  (718, 71801, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Zygarde (10% Forme) - Sludge Wave - TR78
  (718, 71801, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 56),
  -- Zygarde (10% Forme) - High Horsepower - TR94
  (718, 71801, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Zygarde (10% Forme) - Draco Meteor - Tutor
  (718, 71801, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Lycanroc (Midnight) - Sand Attack - Level 1
  (745, 74501, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc (Midnight) - Tackle - Level 1
  (745, 74501, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc (Midnight) - Leer - Level 1
  (745, 74501, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc (Midnight) - Counter - Level 1
  (745, 74501, 68, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc (Midnight) - Double Team - Level 1
  (745, 74501, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc (Midnight) - Reversal - Level 1
  (745, 74501, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc (Midnight) - Endure - Level 1
  (745, 74501, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc (Midnight) - Taunt - Level 1
  (745, 74501, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc (Midnight) - Rock Throw - Level 12
  (745, 74501, 88, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Lycanroc (Midnight) - Howl - Level 16
  (745, 74501, 336, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Lycanroc (Midnight) - Bite - Level 20
  (745, 74501, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Lycanroc (Midnight) - Rock Tomb - Level 24
  (745, 74501, 317, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lycanroc (Midnight) - Roar - Level 30
  (745, 74501, 46, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lycanroc (Midnight) - Rock Slide - Level 36
  (745, 74501, 157, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lycanroc (Midnight) - Crunch - Level 42
  (745, 74501, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Lycanroc (Midnight) - Scary Face - Level 48
  (745, 74501, 184, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Lycanroc (Midnight) - Stealth Rock - Level 54
  (745, 74501, 446, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Lycanroc (Midnight) - Stone Edge - Level 60
  (745, 74501, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Lycanroc (Midnight) - Counter - Evolution
  (745, 74501, 68, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Lycanroc (Midnight) - Mega Punch - TM00
  (745, 74501, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Lycanroc (Midnight) - Mega Kick - TM01
  (745, 74501, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Lycanroc (Midnight) - Fire Punch - TM03
  (745, 74501, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Lycanroc (Midnight) - Thunder Punch - TM05
  (745, 74501, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Lycanroc (Midnight) - Giga Impact - TM09
  (745, 74501, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Lycanroc (Midnight) - Rest - TM21
  (745, 74501, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Lycanroc (Midnight) - Rock Slide - TM22
  (745, 74501, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Lycanroc (Midnight) - Snore - TM24
  (745, 74501, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Lycanroc (Midnight) - Protect - TM25
  (745, 74501, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Lycanroc (Midnight) - Scary Face - TM26
  (745, 74501, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Lycanroc (Midnight) - Attract - TM31
  (745, 74501, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Lycanroc (Midnight) - Sandstorm - TM32
  (745, 74501, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Lycanroc (Midnight) - Facade - TM39
  (745, 74501, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Lycanroc (Midnight) - Revenge - TM42
  (745, 74501, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Lycanroc (Midnight) - Brick Break - TM43
  (745, 74501, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Lycanroc (Midnight) - Rock Tomb - TM48
  (745, 74501, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Lycanroc (Midnight) - Rock Blast - TM54
  (745, 74501, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Lycanroc (Midnight) - Payback - TM57
  (745, 74501, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Lycanroc (Midnight) - Thunder Fang - TM66
  (745, 74501, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 38),
  -- Lycanroc (Midnight) - Fire Fang - TM68
  (745, 74501, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 39),
  -- Lycanroc (Midnight) - Low Sweep - TM75
  (745, 74501, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Lycanroc (Midnight) - Round - TM76
  (745, 74501, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Lycanroc (Midnight) - Snarl - TM85
  (745, 74501, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Lycanroc (Midnight) - Stomping Tantrum - TM98
  (745, 74501, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Lycanroc (Midnight) - Swords Dance - TR00
  (745, 74501, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Lycanroc (Midnight) - Substitute - TR20
  (745, 74501, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Lycanroc (Midnight) - Reversal - TR21
  (745, 74501, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 46),
  -- Lycanroc (Midnight) - Outrage - TR24
  (745, 74501, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Lycanroc (Midnight) - Endure - TR26
  (745, 74501, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Lycanroc (Midnight) - Sleep Talk - TR27
  (745, 74501, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Lycanroc (Midnight) - Iron Tail - TR31
  (745, 74501, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Lycanroc (Midnight) - Crunch - TR32
  (745, 74501, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 51),
  -- Lycanroc (Midnight) - Uproar - TR35
  (745, 74501, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Lycanroc (Midnight) - Taunt - TR37
  (745, 74501, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Lycanroc (Midnight) - Hyper Voice - TR42
  (745, 74501, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Lycanroc (Midnight) - Iron Defense - TR46
  (745, 74501, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Lycanroc (Midnight) - Bulk Up - TR48
  (745, 74501, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Lycanroc (Midnight) - Close Combat - TR53
  (745, 74501, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 57),
  -- Lycanroc (Midnight) - Earth Power - TR67
  (745, 74501, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Lycanroc (Midnight) - Zen Headbutt - TR69
  (745, 74501, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Lycanroc (Midnight) - Iron Head - TR74
  (745, 74501, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Lycanroc (Midnight) - Stone Edge - TR75
  (745, 74501, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Lycanroc (Midnight) - Stealth Rock - TR76
  (745, 74501, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Lycanroc (Midnight) - Foul Play - TR81
  (745, 74501, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 63),
  -- Lycanroc (Midnight) - Play Rough - TR90
  (745, 74501, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 64),
  -- Lycanroc (Midnight) - Throat Chop - TR95
  (745, 74501, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 65),
  -- Lycanroc (Midnight) - Psychic Fangs - TR97
  (745, 74501, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 66),
  -- Lycanroc (Midnight) - Endeavor - Egg
  (745, 74501, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lycanroc (Midnight) - Last Resort - Egg
  (745, 74501, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lycanroc (Midnight) - Thrash - Egg
  (745, 74501, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lycanroc (Dusk) - Sand Attack - Level 1
  (745, 74502, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc (Dusk) - Tackle - Level 1
  (745, 74502, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc (Dusk) - Leer - Level 1
  (745, 74502, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc (Dusk) - Counter - Level 1
  (745, 74502, 68, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc (Dusk) - Quick Attack - Level 1
  (745, 74502, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc (Dusk) - Double Team - Level 1
  (745, 74502, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc (Dusk) - Reversal - Level 1
  (745, 74502, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc (Dusk) - Endure - Level 1
  (745, 74502, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc (Dusk) - Taunt - Level 1
  (745, 74502, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lycanroc (Dusk) - Crush Claw - Level 1
  (745, 74502, 306, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lycanroc (Dusk) - Sucker Punch - Level 1
  (745, 74502, 389, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lycanroc (Dusk) - Quick Guard - Level 1
  (745, 74502, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lycanroc (Dusk) - Accelerock - Level 1
  (745, 74502, 709, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Lycanroc (Dusk) - Rock Throw - Level 12
  (745, 74502, 88, 18, NULL, 1, 12, NULL, NULL, NULL, 14),
  -- Lycanroc (Dusk) - Howl - Level 16
  (745, 74502, 336, 18, NULL, 1, 16, NULL, NULL, NULL, 15),
  -- Lycanroc (Dusk) - Bite - Level 20
  (745, 74502, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Lycanroc (Dusk) - Rock Tomb - Level 24
  (745, 74502, 317, 18, NULL, 1, 24, NULL, NULL, NULL, 17),
  -- Lycanroc (Dusk) - Roar - Level 30
  (745, 74502, 46, 18, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Lycanroc (Dusk) - Rock Slide - Level 36
  (745, 74502, 157, 18, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Lycanroc (Dusk) - Crunch - Level 42
  (745, 74502, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Lycanroc (Dusk) - Scary Face - Level 48
  (745, 74502, 184, 18, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Lycanroc (Dusk) - Stealth Rock - Level 54
  (745, 74502, 446, 18, NULL, 1, 54, NULL, NULL, NULL, 22),
  -- Lycanroc (Dusk) - Stone Edge - Level 60
  (745, 74502, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 23),
  -- Lycanroc (Dusk) - Crush Claw - Evolution
  (745, 74502, 306, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Lycanroc (Dusk) - Giga Impact - TM09
  (745, 74502, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Lycanroc (Dusk) - Rest - TM21
  (745, 74502, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Lycanroc (Dusk) - Rock Slide - TM22
  (745, 74502, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Lycanroc (Dusk) - Snore - TM24
  (745, 74502, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Lycanroc (Dusk) - Protect - TM25
  (745, 74502, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Lycanroc (Dusk) - Scary Face - TM26
  (745, 74502, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Lycanroc (Dusk) - Attract - TM31
  (745, 74502, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Lycanroc (Dusk) - Sandstorm - TM32
  (745, 74502, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 32),
  -- Lycanroc (Dusk) - Facade - TM39
  (745, 74502, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Lycanroc (Dusk) - Brick Break - TM43
  (745, 74502, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Lycanroc (Dusk) - Rock Tomb - TM48
  (745, 74502, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Lycanroc (Dusk) - Rock Blast - TM54
  (745, 74502, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Lycanroc (Dusk) - Thunder Fang - TM66
  (745, 74502, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 37),
  -- Lycanroc (Dusk) - Fire Fang - TM68
  (745, 74502, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 38),
  -- Lycanroc (Dusk) - Round - TM76
  (745, 74502, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Lycanroc (Dusk) - Tail Slap - TM84
  (745, 74502, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 40),
  -- Lycanroc (Dusk) - Snarl - TM85
  (745, 74502, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 41),
  -- Lycanroc (Dusk) - Stomping Tantrum - TM98
  (745, 74502, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Lycanroc (Dusk) - Swords Dance - TR00
  (745, 74502, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Lycanroc (Dusk) - Focus Energy - TR13
  (745, 74502, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 44),
  -- Lycanroc (Dusk) - Substitute - TR20
  (745, 74502, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Lycanroc (Dusk) - Reversal - TR21
  (745, 74502, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 46),
  -- Lycanroc (Dusk) - Outrage - TR24
  (745, 74502, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Lycanroc (Dusk) - Endure - TR26
  (745, 74502, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Lycanroc (Dusk) - Sleep Talk - TR27
  (745, 74502, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Lycanroc (Dusk) - Iron Tail - TR31
  (745, 74502, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Lycanroc (Dusk) - Crunch - TR32
  (745, 74502, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 51),
  -- Lycanroc (Dusk) - Taunt - TR37
  (745, 74502, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Lycanroc (Dusk) - Hyper Voice - TR42
  (745, 74502, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Lycanroc (Dusk) - Iron Defense - TR46
  (745, 74502, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Lycanroc (Dusk) - Bulk Up - TR48
  (745, 74502, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Lycanroc (Dusk) - Close Combat - TR53
  (745, 74502, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 56),
  -- Lycanroc (Dusk) - Earth Power - TR67
  (745, 74502, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Lycanroc (Dusk) - Zen Headbutt - TR69
  (745, 74502, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Lycanroc (Dusk) - Iron Head - TR74
  (745, 74502, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Lycanroc (Dusk) - Stone Edge - TR75
  (745, 74502, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Lycanroc (Dusk) - Stealth Rock - TR76
  (745, 74502, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Lycanroc (Dusk) - Work Up - TR85
  (745, 74502, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 62),
  -- Lycanroc (Dusk) - Drill Run - TR87
  (745, 74502, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 63),
  -- Lycanroc (Dusk) - Play Rough - TR90
  (745, 74502, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 64),
  -- Lycanroc (Dusk) - Psychic Fangs - TR97
  (745, 74502, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 65),
  -- Lycanroc (Dusk) - Endeavor - Egg
  (745, 74502, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lycanroc (Dusk) - Last Resort - Egg
  (745, 74502, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lycanroc (Dusk) - Thrash - Egg
  (745, 74502, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Necrozma (Dusk Mane) - Confusion - Level 1
  (800, 80001, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma (Dusk Mane) - Metal Claw - Level 1
  (800, 80001, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma (Dusk Mane) - Morning Sun - Level 1
  (800, 80001, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma (Dusk Mane) - Moonlight - Level 1
  (800, 80001, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma (Dusk Mane) - Gravity - Level 1
  (800, 80001, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma (Dusk Mane) - Charge Beam - Level 1
  (800, 80001, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Necrozma (Dusk Mane) - Stealth Rock - Level 8
  (800, 80001, 446, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Necrozma (Dusk Mane) - Slash - Level 16
  (800, 80001, 163, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Necrozma (Dusk Mane) - Night Slash - Level 24
  (800, 80001, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Necrozma (Dusk Mane) - Psycho Cut - Level 32
  (800, 80001, 427, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Necrozma (Dusk Mane) - Stored Power - Level 40
  (800, 80001, 500, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Necrozma (Dusk Mane) - Rock Blast - Level 48
  (800, 80001, 350, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Necrozma (Dusk Mane) - Iron Defense - Level 56
  (800, 80001, 334, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Necrozma (Dusk Mane) - Power Gem - Level 64
  (800, 80001, 408, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Necrozma (Dusk Mane) - Photon Geyser - Level 72
  (800, 80001, 722, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Necrozma (Dusk Mane) - Autotomize - Level 80
  (800, 80001, 475, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Necrozma (Dusk Mane) - Prismatic Laser - Level 88
  (800, 80001, 711, 18, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Necrozma (Dusk Mane) - Hyper Beam - TM08
  (800, 80001, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Necrozma (Dusk Mane) - Giga Impact - TM09
  (800, 80001, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Necrozma (Dusk Mane) - Solar Beam - TM11
  (800, 80001, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Necrozma (Dusk Mane) - Thunder Wave - TM14
  (800, 80001, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Necrozma (Dusk Mane) - Light Screen - TM17
  (800, 80001, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Necrozma (Dusk Mane) - Reflect - TM18
  (800, 80001, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Necrozma (Dusk Mane) - Rest - TM21
  (800, 80001, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Necrozma (Dusk Mane) - Rock Slide - TM22
  (800, 80001, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Necrozma (Dusk Mane) - Thief - TM23
  (800, 80001, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Necrozma (Dusk Mane) - Snore - TM24
  (800, 80001, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Necrozma (Dusk Mane) - Protect - TM25
  (800, 80001, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Necrozma (Dusk Mane) - Scary Face - TM26
  (800, 80001, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Necrozma (Dusk Mane) - Facade - TM39
  (800, 80001, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Necrozma (Dusk Mane) - Brick Break - TM43
  (800, 80001, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Necrozma (Dusk Mane) - Imprison - TM44
  (800, 80001, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Necrozma (Dusk Mane) - Rock Tomb - TM48
  (800, 80001, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Necrozma (Dusk Mane) - Rock Blast - TM54
  (800, 80001, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Necrozma (Dusk Mane) - Fling - TM59
  (800, 80001, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Necrozma (Dusk Mane) - Shadow Claw - TM65
  (800, 80001, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Necrozma (Dusk Mane) - Psycho Cut - TM69
  (800, 80001, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Necrozma (Dusk Mane) - Trick Room - TM70
  (800, 80001, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Necrozma (Dusk Mane) - Round - TM76
  (800, 80001, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Necrozma (Dusk Mane) - Bulldoze - TM81
  (800, 80001, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Necrozma (Dusk Mane) - Smart Strike - TM96
  (800, 80001, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Necrozma (Dusk Mane) - Brutal Swing - TM97
  (800, 80001, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Necrozma (Dusk Mane) - Breaking Swipe - TM99
  (800, 80001, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Necrozma (Dusk Mane) - Swords Dance - TR00
  (800, 80001, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Necrozma (Dusk Mane) - Earthquake - TR10
  (800, 80001, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Necrozma (Dusk Mane) - Psychic - TR11
  (800, 80001, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Necrozma (Dusk Mane) - Substitute - TR20
  (800, 80001, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Necrozma (Dusk Mane) - Outrage - TR24
  (800, 80001, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Necrozma (Dusk Mane) - Psyshock - TR25
  (800, 80001, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Necrozma (Dusk Mane) - Endure - TR26
  (800, 80001, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Necrozma (Dusk Mane) - Sleep Talk - TR27
  (800, 80001, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Necrozma (Dusk Mane) - Future Sight - TR34
  (800, 80001, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 52),
  -- Necrozma (Dusk Mane) - Heat Wave - TR36
  (800, 80001, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 53),
  -- Necrozma (Dusk Mane) - Hyper Voice - TR42
  (800, 80001, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Necrozma (Dusk Mane) - Cosmic Power - TR44
  (800, 80001, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 55),
  -- Necrozma (Dusk Mane) - Iron Defense - TR46
  (800, 80001, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Necrozma (Dusk Mane) - Calm Mind - TR49
  (800, 80001, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Necrozma (Dusk Mane) - Dragon Dance - TR51
  (800, 80001, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 58),
  -- Necrozma (Dusk Mane) - Gyro Ball - TR52
  (800, 80001, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 59),
  -- Necrozma (Dusk Mane) - Dark Pulse - TR58
  (800, 80001, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Necrozma (Dusk Mane) - X-Scissor - TR60
  (800, 80001, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Necrozma (Dusk Mane) - Dragon Pulse - TR62
  (800, 80001, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Necrozma (Dusk Mane) - Power Gem - TR63
  (800, 80001, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 63),
  -- Necrozma (Dusk Mane) - Earth Power - TR67
  (800, 80001, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 64),
  -- Necrozma (Dusk Mane) - Flash Cannon - TR70
  (800, 80001, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Necrozma (Dusk Mane) - Iron Head - TR74
  (800, 80001, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Necrozma (Dusk Mane) - Stone Edge - TR75
  (800, 80001, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Necrozma (Dusk Mane) - Stealth Rock - TR76
  (800, 80001, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Necrozma (Dusk Mane) - Stored Power - TR82
  (800, 80001, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 69),
  -- Necrozma (Dusk Mane) - Ally Switch - TR83
  (800, 80001, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Necrozma (Dusk Mane) - Psychic Fangs - TR97
  (800, 80001, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 71),
  -- Necrozma (Dawn Wings) - Moonlight - Level 1
  (800, 80002, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma (Dawn Wings) - Morning Sun - Level 1
  (800, 80002, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma (Dawn Wings) - Charge Beam - Level 1
  (800, 80002, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma (Dawn Wings) - Gravity - Level 1
  (800, 80002, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma (Dawn Wings) - Metal Claw - Level 1
  (800, 80002, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma (Dawn Wings) - Confusion - Level 1
  (800, 80002, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Necrozma (Dawn Wings) - Stealth Rock - Level 8
  (800, 80002, 446, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Necrozma (Dawn Wings) - Slash - Level 16
  (800, 80002, 163, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Necrozma (Dawn Wings) - Night Slash - Level 24
  (800, 80002, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Necrozma (Dawn Wings) - Psycho Cut - Level 32
  (800, 80002, 427, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Necrozma (Dawn Wings) - Stored Power - Level 40
  (800, 80002, 500, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Necrozma (Dawn Wings) - Rock Blast - Level 48
  (800, 80002, 350, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Necrozma (Dawn Wings) - Iron Defense - Level 56
  (800, 80002, 334, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Necrozma (Dawn Wings) - Power Gem - Level 64
  (800, 80002, 408, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Necrozma (Dawn Wings) - Photon Geyser - Level 72
  (800, 80002, 722, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Necrozma (Dawn Wings) - Autotomize - Level 60
  (800, 80002, 475, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Necrozma (Dawn Wings) - Prismatic Laser - Level 66
  (800, 80002, 711, 18, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Necrozma (Dawn Wings) - Hyper Beam - TM08
  (800, 80002, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Necrozma (Dawn Wings) - Giga Impact - TM09
  (800, 80002, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Necrozma (Dawn Wings) - Solar Beam - TM11
  (800, 80002, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Necrozma (Dawn Wings) - Thunder Wave - TM14
  (800, 80002, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Necrozma (Dawn Wings) - Light Screen - TM17
  (800, 80002, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Necrozma (Dawn Wings) - Reflect - TM18
  (800, 80002, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Necrozma (Dawn Wings) - Rest - TM21
  (800, 80002, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Necrozma (Dawn Wings) - Rock Slide - TM22
  (800, 80002, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Necrozma (Dawn Wings) - Thief - TM23
  (800, 80002, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Necrozma (Dawn Wings) - Snore - TM24
  (800, 80002, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Necrozma (Dawn Wings) - Protect - TM25
  (800, 80002, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Necrozma (Dawn Wings) - Scary Face - TM26
  (800, 80002, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Necrozma (Dawn Wings) - Facade - TM39
  (800, 80002, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Necrozma (Dawn Wings) - Brick Break - TM43
  (800, 80002, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Necrozma (Dawn Wings) - Imprison - TM44
  (800, 80002, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Necrozma (Dawn Wings) - Rock Tomb - TM48
  (800, 80002, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Necrozma (Dawn Wings) - Rock Blast - TM54
  (800, 80002, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Necrozma (Dawn Wings) - Fling - TM59
  (800, 80002, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Necrozma (Dawn Wings) - Shadow Claw - TM65
  (800, 80002, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Necrozma (Dawn Wings) - Psycho Cut - TM69
  (800, 80002, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Necrozma (Dawn Wings) - Trick Room - TM70
  (800, 80002, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Necrozma (Dawn Wings) - Round - TM76
  (800, 80002, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Necrozma (Dawn Wings) - Bulldoze - TM81
  (800, 80002, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Necrozma (Dawn Wings) - Smart Strike - TM96
  (800, 80002, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Necrozma (Dawn Wings) - Brutal Swing - TM97
  (800, 80002, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Necrozma (Dawn Wings) - Breaking Swipe - TM99
  (800, 80002, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Necrozma (Dawn Wings) - Swords Dance - TR00
  (800, 80002, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Necrozma (Dawn Wings) - Earthquake - TR10
  (800, 80002, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Necrozma (Dawn Wings) - Psychic - TR11
  (800, 80002, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Necrozma (Dawn Wings) - Substitute - TR20
  (800, 80002, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Necrozma (Dawn Wings) - Outrage - TR24
  (800, 80002, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Necrozma (Dawn Wings) - Psyshock - TR25
  (800, 80002, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Necrozma (Dawn Wings) - Endure - TR26
  (800, 80002, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Necrozma (Dawn Wings) - Sleep Talk - TR27
  (800, 80002, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Necrozma (Dawn Wings) - Future Sight - TR34
  (800, 80002, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 52),
  -- Necrozma (Dawn Wings) - Heat Wave - TR36
  (800, 80002, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 53),
  -- Necrozma (Dawn Wings) - Hyper Voice - TR42
  (800, 80002, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Necrozma (Dawn Wings) - Cosmic Power - TR44
  (800, 80002, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 55),
  -- Necrozma (Dawn Wings) - Iron Defense - TR46
  (800, 80002, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Necrozma (Dawn Wings) - Calm Mind - TR49
  (800, 80002, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Necrozma (Dawn Wings) - Dragon Dance - TR51
  (800, 80002, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 58),
  -- Necrozma (Dawn Wings) - Gyro Ball - TR52
  (800, 80002, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 59),
  -- Necrozma (Dawn Wings) - Dark Pulse - TR58
  (800, 80002, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Necrozma (Dawn Wings) - X-Scissor - TR60
  (800, 80002, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Necrozma (Dawn Wings) - Dragon Pulse - TR62
  (800, 80002, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Necrozma (Dawn Wings) - Power Gem - TR63
  (800, 80002, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 63),
  -- Necrozma (Dawn Wings) - Earth Power - TR67
  (800, 80002, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 64),
  -- Necrozma (Dawn Wings) - Flash Cannon - TR70
  (800, 80002, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Necrozma (Dawn Wings) - Iron Head - TR74
  (800, 80002, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Necrozma (Dawn Wings) - Stone Edge - TR75
  (800, 80002, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Necrozma (Dawn Wings) - Stealth Rock - TR76
  (800, 80002, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Necrozma (Dawn Wings) - Stored Power - TR82
  (800, 80002, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 69),
  -- Necrozma (Dawn Wings) - Ally Switch - TR83
  (800, 80002, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Necrozma (Dawn Wings) - Psychic Fangs - TR97
  (800, 80002, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 71),
  -- Toxtricity (Low Key) - Leer - Level 1
  (849, 84901, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxtricity (Low Key) - Growl - Level 1
  (849, 84901, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxtricity (Low Key) - Acid - Level 1
  (849, 84901, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxtricity (Low Key) - Thunder Shock - Level 1
  (849, 84901, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxtricity (Low Key) - Flail - Level 1
  (849, 84901, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxtricity (Low Key) - Spark - Level 1
  (849, 84901, 209, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxtricity (Low Key) - Acid Spray - Level 1
  (849, 84901, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Toxtricity (Low Key) - Belch - Level 1
  (849, 84901, 562, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Toxtricity (Low Key) - Noble Roar - Level 1
  (849, 84901, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Toxtricity (Low Key) - Eerie Impulse - Level 1
  (849, 84901, 598, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Toxtricity (Low Key) - Nuzzle - Level 1
  (849, 84901, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Toxtricity (Low Key) - Tearful Look - Level 1
  (849, 84901, 715, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Toxtricity (Low Key) - Charge - Level 4
  (849, 84901, 268, 18, NULL, 1, 4, NULL, NULL, NULL, 13),
  -- Toxtricity (Low Key) - Shock Wave - Level 8
  (849, 84901, 351, 18, NULL, 1, 8, NULL, NULL, NULL, 14),
  -- Toxtricity (Low Key) - Scary Face - Level 12
  (849, 84901, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 15),
  -- Toxtricity (Low Key) - Taunt - Level 16
  (849, 84901, 269, 18, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Toxtricity (Low Key) - Venom Drench - Level 20
  (849, 84901, 599, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Toxtricity (Low Key) - Screech - Level 24
  (849, 84901, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 18),
  -- Toxtricity (Low Key) - Swagger - Level 28
  (849, 84901, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 19),
  -- Toxtricity (Low Key) - Toxic - Level 32
  (849, 84901, 92, 18, NULL, 1, 32, NULL, NULL, NULL, 20),
  -- Toxtricity (Low Key) - Discharge - Level 36
  (849, 84901, 435, 18, NULL, 1, 36, NULL, NULL, NULL, 21),
  -- Toxtricity (Low Key) - Poison Jab - Level 40
  (849, 84901, 398, 18, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Toxtricity (Low Key) - Overdrive - Level 44
  (849, 84901, 786, 18, NULL, 1, 44, NULL, NULL, NULL, 23),
  -- Toxtricity (Low Key) - Boomburst - Level 48
  (849, 84901, 586, 18, NULL, 1, 48, NULL, NULL, NULL, 24),
  -- Toxtricity (Low Key) - Magnetic Flux - Level 52
  (849, 84901, 602, 18, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Toxtricity (Low Key) - Spark - Evolution
  (849, 84901, 209, 18, NULL, 7, NULL, NULL, NULL, NULL, 26),
  -- Toxtricity (Low Key) - Mega Punch - TM00
  (849, 84901, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 27),
  -- Toxtricity (Low Key) - Mega Kick - TM01
  (849, 84901, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 28),
  -- Toxtricity (Low Key) - Fire Punch - TM03
  (849, 84901, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 29),
  -- Toxtricity (Low Key) - Thunder Punch - TM05
  (849, 84901, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 30),
  -- Toxtricity (Low Key) - Hyper Beam - TM08
  (849, 84901, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 31),
  -- Toxtricity (Low Key) - Giga Impact - TM09
  (849, 84901, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 32),
  -- Toxtricity (Low Key) - Thunder Wave - TM14
  (849, 84901, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 33),
  -- Toxtricity (Low Key) - Screech - TM16
  (849, 84901, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 34),
  -- Toxtricity (Low Key) - Rest - TM21
  (849, 84901, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 35),
  -- Toxtricity (Low Key) - Snore - TM24
  (849, 84901, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Toxtricity (Low Key) - Protect - TM25
  (849, 84901, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Toxtricity (Low Key) - Scary Face - TM26
  (849, 84901, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 38),
  -- Toxtricity (Low Key) - Attract - TM31
  (849, 84901, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Toxtricity (Low Key) - Facade - TM39
  (849, 84901, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Toxtricity (Low Key) - Swift - TM40
  (849, 84901, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Toxtricity (Low Key) - Payback - TM57
  (849, 84901, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Toxtricity (Low Key) - Fling - TM59
  (849, 84901, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Toxtricity (Low Key) - Drain Punch - TM63
  (849, 84901, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 44),
  -- Toxtricity (Low Key) - Round - TM76
  (849, 84901, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Toxtricity (Low Key) - Hex - TM77
  (849, 84901, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 46),
  -- Toxtricity (Low Key) - Volt Switch - TM80
  (849, 84901, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 47),
  -- Toxtricity (Low Key) - Snarl - TM85
  (849, 84901, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Toxtricity (Low Key) - Eerie Impulse - TM93
  (849, 84901, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 49),
  -- Toxtricity (Low Key) - Thunderbolt - TR08
  (849, 84901, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 50),
  -- Toxtricity (Low Key) - Thunder - TR09
  (849, 84901, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 51),
  -- Toxtricity (Low Key) - Substitute - TR20
  (849, 84901, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Toxtricity (Low Key) - Sludge Bomb - TR22
  (849, 84901, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 53),
  -- Toxtricity (Low Key) - Endure - TR26
  (849, 84901, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Toxtricity (Low Key) - Sleep Talk - TR27
  (849, 84901, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Toxtricity (Low Key) - Encore - TR30
  (849, 84901, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Toxtricity (Low Key) - Uproar - TR35
  (849, 84901, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Toxtricity (Low Key) - Taunt - TR37
  (849, 84901, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Toxtricity (Low Key) - Hyper Voice - TR42
  (849, 84901, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 59),
  -- Toxtricity (Low Key) - Poison Jab - TR57
  (849, 84901, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 60),
  -- Toxtricity (Low Key) - Gunk Shot - TR73
  (849, 84901, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 61),
  -- Toxtricity (Low Key) - Sludge Wave - TR78
  (849, 84901, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 62),
  -- Toxtricity (Low Key) - Electro Ball - TR80
  (849, 84901, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 63),
  -- Toxtricity (Low Key) - Stored Power - TR82
  (849, 84901, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Toxtricity (Low Key) - Wild Charge - TR86
  (849, 84901, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 65),
  -- Toxtricity (Low Key) - Venom Drench - TR91
  (849, 84901, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 66),
  -- Toxtricity (Low Key) - Throat Chop - TR95
  (849, 84901, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Toxtricity (Low Key) - Endeavor - Egg
  (849, 84901, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Toxtricity (Low Key) - Metal Sound - Egg
  (849, 84901, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Toxtricity (Low Key) - Power-Up Punch - Egg
  (849, 84901, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Indeedee (Female) - Stored Power - Level 1
  (876, 87601, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee (Female) - Play Nice - Level 1
  (876, 87601, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee (Female) - Baton Pass - Level 5
  (876, 87601, 226, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Indeedee (Female) - Disarming Voice - Level 10
  (876, 87601, 574, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Indeedee (Female) - Psybeam - Level 15
  (876, 87601, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Indeedee (Female) - Helping Hand - Level 20
  (876, 87601, 270, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Indeedee (Female) - Follow Me - Level 25
  (876, 87601, 266, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Indeedee (Female) - Aromatherapy - Level 30
  (876, 87601, 312, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Indeedee (Female) - Psychic - Level 35
  (876, 87601, 94, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Indeedee (Female) - Calm Mind - Level 40
  (876, 87601, 347, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Indeedee (Female) - Guard Split - Level 45
  (876, 87601, 470, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Indeedee (Female) - Psychic Terrain - Level 50
  (876, 87601, 678, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Indeedee (Female) - Healing Wish - Level 55
  (876, 87601, 361, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Indeedee (Female) - Pay Day - TM02
  (876, 87601, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 14),
  -- Indeedee (Female) - Magical Leaf - TM10
  (876, 87601, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 15),
  -- Indeedee (Female) - Light Screen - TM17
  (876, 87601, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Indeedee (Female) - Reflect - TM18
  (876, 87601, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Indeedee (Female) - Safeguard - TM19
  (876, 87601, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Indeedee (Female) - Rest - TM21
  (876, 87601, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Indeedee (Female) - Snore - TM24
  (876, 87601, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Indeedee (Female) - Protect - TM25
  (876, 87601, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Indeedee (Female) - Attract - TM31
  (876, 87601, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Indeedee (Female) - Facade - TM39
  (876, 87601, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Indeedee (Female) - Swift - TM40
  (876, 87601, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Indeedee (Female) - Helping Hand - TM41
  (876, 87601, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Indeedee (Female) - Imprison - TM44
  (876, 87601, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Indeedee (Female) - Guard Swap - TM61
  (876, 87601, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 27),
  -- Indeedee (Female) - Drain Punch - TM63
  (876, 87601, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 28),
  -- Indeedee (Female) - Round - TM76
  (876, 87601, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Indeedee (Female) - Draining Kiss - TM87
  (876, 87601, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 30),
  -- Indeedee (Female) - Psychic Terrain - TM91
  (876, 87601, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 31),
  -- Indeedee (Female) - Mystical Fire - TM92
  (876, 87601, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 32),
  -- Indeedee (Female) - Psychic - TR11
  (876, 87601, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 33),
  -- Indeedee (Female) - Metronome - TR14
  (876, 87601, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 34),
  -- Indeedee (Female) - Substitute - TR20
  (876, 87601, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Indeedee (Female) - Psyshock - TR25
  (876, 87601, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 36),
  -- Indeedee (Female) - Endure - TR26
  (876, 87601, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Indeedee (Female) - Sleep Talk - TR27
  (876, 87601, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Indeedee (Female) - Baton Pass - TR29
  (876, 87601, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 39),
  -- Indeedee (Female) - Shadow Ball - TR33
  (876, 87601, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Indeedee (Female) - Future Sight - TR34
  (876, 87601, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 41),
  -- Indeedee (Female) - Trick - TR38
  (876, 87601, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 42),
  -- Indeedee (Female) - Hyper Voice - TR42
  (876, 87601, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 43),
  -- Indeedee (Female) - Calm Mind - TR49
  (876, 87601, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 44),
  -- Indeedee (Female) - Energy Ball - TR65
  (876, 87601, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 45),
  -- Indeedee (Female) - Zen Headbutt - TR69
  (876, 87601, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Indeedee (Female) - Stored Power - TR82
  (876, 87601, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 47),
  -- Indeedee (Female) - Ally Switch - TR83
  (876, 87601, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 48),
  -- Indeedee (Female) - Play Rough - TR90
  (876, 87601, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 49),
  -- Indeedee (Female) - Dazzling Gleam - TR92
  (876, 87601, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 50),
  -- Indeedee (Female) - Psych Up - Egg
  (876, 87601, 244, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Indeedee (Female) - Fake Out - Egg
  (876, 87601, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Indeedee (Female) - Psycho Shift - Egg
  (876, 87601, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Indeedee (Female) - Heal Pulse - Egg
  (876, 87601, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Urshifu (Rapid Strike) - Leer - Level 1
  (892, 89201, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Urshifu (Rapid Strike) - Focus Energy - Level 1
  (892, 89201, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Urshifu (Rapid Strike) - Endure - Level 1
  (892, 89201, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Urshifu (Rapid Strike) - Rock Smash - Level 1
  (892, 89201, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Urshifu (Rapid Strike) - Aqua Jet - Level 1
  (892, 89201, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Urshifu (Rapid Strike) - Surging Strikes - Level 1
  (892, 89201, 818, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Urshifu (Rapid Strike) - Aerial Ace - Level 12
  (892, 89201, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Urshifu (Rapid Strike) - Scary Face - Level 16
  (892, 89201, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Urshifu (Rapid Strike) - Headbutt - Level 20
  (892, 89201, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Urshifu (Rapid Strike) - Brick Break - Level 24
  (892, 89201, 280, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Urshifu (Rapid Strike) - Detect - Level 28
  (892, 89201, 197, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Urshifu (Rapid Strike) - Bulk Up - Level 32
  (892, 89201, 339, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Urshifu (Rapid Strike) - Iron Head - Level 36
  (892, 89201, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Urshifu (Rapid Strike) - Dynamic Punch - Level 40
  (892, 89201, 223, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Urshifu (Rapid Strike) - Counter - Level 44
  (892, 89201, 68, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Urshifu (Rapid Strike) - Close Combat - Level 48
  (892, 89201, 370, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Urshifu (Rapid Strike) - Focus Punch - Level 52
  (892, 89201, 264, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Urshifu (Rapid Strike) - Surging Strikes - Evolution
  (892, 89201, 818, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Urshifu (Rapid Strike) - Mega Punch - TM00
  (892, 89201, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Urshifu (Rapid Strike) - Mega Kick - TM01
  (892, 89201, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Urshifu (Rapid Strike) - Fire Punch - TM03
  (892, 89201, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Urshifu (Rapid Strike) - Ice Punch - TM04
  (892, 89201, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Urshifu (Rapid Strike) - Thunder Punch - TM05
  (892, 89201, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Urshifu (Rapid Strike) - Giga Impact - TM09
  (892, 89201, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Urshifu (Rapid Strike) - Dig - TM15
  (892, 89201, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Urshifu (Rapid Strike) - Rest - TM21
  (892, 89201, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Urshifu (Rapid Strike) - Rock Slide - TM22
  (892, 89201, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Urshifu (Rapid Strike) - Snore - TM24
  (892, 89201, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Urshifu (Rapid Strike) - Protect - TM25
  (892, 89201, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Urshifu (Rapid Strike) - Scary Face - TM26
  (892, 89201, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Urshifu (Rapid Strike) - Attract - TM31
  (892, 89201, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Urshifu (Rapid Strike) - Rain Dance - TM33
  (892, 89201, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Urshifu (Rapid Strike) - Whirlpool - TM36
  (892, 89201, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Urshifu (Rapid Strike) - Facade - TM39
  (892, 89201, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Urshifu (Rapid Strike) - Swift - TM40
  (892, 89201, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Urshifu (Rapid Strike) - Helping Hand - TM41
  (892, 89201, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Urshifu (Rapid Strike) - Revenge - TM42
  (892, 89201, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 37),
  -- Urshifu (Rapid Strike) - Brick Break - TM43
  (892, 89201, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Urshifu (Rapid Strike) - Dive - TM45
  (892, 89201, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 39),
  -- Urshifu (Rapid Strike) - Rock Tomb - TM48
  (892, 89201, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Urshifu (Rapid Strike) - Brine - TM55
  (892, 89201, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 41),
  -- Urshifu (Rapid Strike) - U-turn - TM56
  (892, 89201, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 42),
  -- Urshifu (Rapid Strike) - Drain Punch - TM63
  (892, 89201, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Urshifu (Rapid Strike) - Low Sweep - TM75
  (892, 89201, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Urshifu (Rapid Strike) - Round - TM76
  (892, 89201, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Urshifu (Rapid Strike) - Acrobatics - TM78
  (892, 89201, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Urshifu (Rapid Strike) - Retaliate - TM79
  (892, 89201, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Urshifu (Rapid Strike) - False Swipe - TM94
  (892, 89201, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 48),
  -- Urshifu (Rapid Strike) - Body Slam - TR01
  (892, 89201, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Urshifu (Rapid Strike) - Low Kick - TR07
  (892, 89201, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 50),
  -- Urshifu (Rapid Strike) - Focus Energy - TR13
  (892, 89201, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Urshifu (Rapid Strike) - Waterfall - TR16
  (892, 89201, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 52),
  -- Urshifu (Rapid Strike) - Substitute - TR20
  (892, 89201, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Urshifu (Rapid Strike) - Reversal - TR21
  (892, 89201, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 54),
  -- Urshifu (Rapid Strike) - Endure - TR26
  (892, 89201, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Urshifu (Rapid Strike) - Sleep Talk - TR27
  (892, 89201, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Urshifu (Rapid Strike) - Taunt - TR37
  (892, 89201, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Urshifu (Rapid Strike) - Superpower - TR39
  (892, 89201, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Urshifu (Rapid Strike) - Iron Defense - TR46
  (892, 89201, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 59),
  -- Urshifu (Rapid Strike) - Bulk Up - TR48
  (892, 89201, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 60),
  -- Urshifu (Rapid Strike) - Close Combat - TR53
  (892, 89201, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 61),
  -- Urshifu (Rapid Strike) - Aura Sphere - TR56
  (892, 89201, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 62),
  -- Urshifu (Rapid Strike) - Poison Jab - TR57
  (892, 89201, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 63),
  -- Urshifu (Rapid Strike) - Focus Blast - TR64
  (892, 89201, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Urshifu (Rapid Strike) - Zen Headbutt - TR69
  (892, 89201, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Urshifu (Rapid Strike) - Iron Head - TR74
  (892, 89201, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Urshifu (Rapid Strike) - Stone Edge - TR75
  (892, 89201, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Urshifu (Rapid Strike) - Scald - TR84
  (892, 89201, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 68),
  -- Urshifu (Rapid Strike) - Work Up - TR85
  (892, 89201, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 69),
  -- Urshifu (Rapid Strike) - Liquidation - TR98
  (892, 89201, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 70),
  -- Urshifu (Rapid Strike) - Body Press - TR99
  (892, 89201, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 71),
  -- Calyrex (Ice Rider) - Glacial Lance - Level 1
  (898, 89801, 824, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex (Ice Rider) - Tackle - Level 1
  (898, 89801, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex (Ice Rider) - Tail Whip - Level 1
  (898, 89801, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex (Ice Rider) - Double Kick - Level 1
  (898, 89801, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex (Ice Rider) - Avalanche - Level 1
  (898, 89801, 419, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Calyrex (Ice Rider) - Stomp - Level 1
  (898, 89801, 23, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Calyrex (Ice Rider) - Torment - Level 1
  (898, 89801, 259, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Calyrex (Ice Rider) - Mist - Level 1
  (898, 89801, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Calyrex (Ice Rider) - Icicle Crash - Level 1
  (898, 89801, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Calyrex (Ice Rider) - Take Down - Level 1
  (898, 89801, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Calyrex (Ice Rider) - Iron Defense - Level 1
  (898, 89801, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Calyrex (Ice Rider) - Thrash - Level 1
  (898, 89801, 37, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Calyrex (Ice Rider) - Taunt - Level 1
  (898, 89801, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Calyrex (Ice Rider) - Double-Edge - Level 1
  (898, 89801, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Calyrex (Ice Rider) - Swords Dance - Level 1
  (898, 89801, 14, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Calyrex (Ice Rider) - Pound - Level 1
  (898, 89801, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Calyrex (Ice Rider) - Mega Drain - Level 1
  (898, 89801, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Calyrex (Ice Rider) - Confusion - Level 1
  (898, 89801, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Calyrex (Ice Rider) - Growth - Level 1
  (898, 89801, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Calyrex (Ice Rider) - Life Dew - Level 8
  (898, 89801, 791, 18, NULL, 1, 8, NULL, NULL, NULL, 20),
  -- Calyrex (Ice Rider) - Giga Drain - Level 16
  (898, 89801, 202, 18, NULL, 1, 16, NULL, NULL, NULL, 21),
  -- Calyrex (Ice Rider) - Psyshock - Level 24
  (898, 89801, 473, 18, NULL, 1, 24, NULL, NULL, NULL, 22),
  -- Calyrex (Ice Rider) - Helping Hand - Level 32
  (898, 89801, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 23),
  -- Calyrex (Ice Rider) - Aromatherapy - Level 40
  (898, 89801, 312, 18, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Calyrex (Ice Rider) - Energy Ball - Level 48
  (898, 89801, 412, 18, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Calyrex (Ice Rider) - Psychic - Level 56
  (898, 89801, 94, 18, NULL, 1, 56, NULL, NULL, NULL, 26),
  -- Calyrex (Ice Rider) - Leech Seed - Level 64
  (898, 89801, 73, 18, NULL, 1, 64, NULL, NULL, NULL, 27),
  -- Calyrex (Ice Rider) - Heal Pulse - Level 72
  (898, 89801, 505, 18, NULL, 1, 72, NULL, NULL, NULL, 28),
  -- Calyrex (Ice Rider) - Solar Beam - Level 80
  (898, 89801, 76, 18, NULL, 1, 80, NULL, NULL, NULL, 29),
  -- Calyrex (Ice Rider) - Future Sight - Level 88
  (898, 89801, 248, 18, NULL, 1, 88, NULL, NULL, NULL, 30),
  -- Calyrex (Ice Rider) - Pay Day - TM02
  (898, 89801, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 31),
  -- Calyrex (Ice Rider) - Hyper Beam - TM08
  (898, 89801, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 32),
  -- Calyrex (Ice Rider) - Giga Impact - TM09
  (898, 89801, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 33),
  -- Calyrex (Ice Rider) - Magical Leaf - TM10
  (898, 89801, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 34),
  -- Calyrex (Ice Rider) - Solar Beam - TM11
  (898, 89801, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 35),
  -- Calyrex (Ice Rider) - Solar Blade - TM12
  (898, 89801, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 36),
  -- Calyrex (Ice Rider) - Light Screen - TM17
  (898, 89801, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 37),
  -- Calyrex (Ice Rider) - Reflect - TM18
  (898, 89801, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 38),
  -- Calyrex (Ice Rider) - Safeguard - TM19
  (898, 89801, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 39),
  -- Calyrex (Ice Rider) - Rest - TM21
  (898, 89801, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 40),
  -- Calyrex (Ice Rider) - Snore - TM24
  (898, 89801, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 41),
  -- Calyrex (Ice Rider) - Protect - TM25
  (898, 89801, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 42),
  -- Calyrex (Ice Rider) - Scary Face - TM26
  (898, 89801, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 43),
  -- Calyrex (Ice Rider) - Icy Wind - TM27
  (898, 89801, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 44),
  -- Calyrex (Ice Rider) - Giga Drain - TM28
  (898, 89801, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 45),
  -- Calyrex (Ice Rider) - Sunny Day - TM34
  (898, 89801, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 46),
  -- Calyrex (Ice Rider) - Hail - TM35
  (898, 89801, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 47),
  -- Calyrex (Ice Rider) - Facade - TM39
  (898, 89801, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 48),
  -- Calyrex (Ice Rider) - Swift - TM40
  (898, 89801, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 49),
  -- Calyrex (Ice Rider) - Helping Hand - TM41
  (898, 89801, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 50),
  -- Calyrex (Ice Rider) - Imprison - TM44
  (898, 89801, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 51),
  -- Calyrex (Ice Rider) - Bullet Seed - TM50
  (898, 89801, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 52),
  -- Calyrex (Ice Rider) - Icicle Spear - TM51
  (898, 89801, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 53),
  -- Calyrex (Ice Rider) - Mud Shot - TM53
  (898, 89801, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 54),
  -- Calyrex (Ice Rider) - Payback - TM57
  (898, 89801, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 55),
  -- Calyrex (Ice Rider) - Assurance - TM58
  (898, 89801, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 56),
  -- Calyrex (Ice Rider) - Power Swap - TM60
  (898, 89801, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 57),
  -- Calyrex (Ice Rider) - Guard Swap - TM61
  (898, 89801, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 58),
  -- Calyrex (Ice Rider) - Speed Swap - TM62
  (898, 89801, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 59),
  -- Calyrex (Ice Rider) - Avalanche - TM64
  (898, 89801, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 60),
  -- Calyrex (Ice Rider) - Trick Room - TM70
  (898, 89801, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 61),
  -- Calyrex (Ice Rider) - Wonder Room - TM71
  (898, 89801, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 62),
  -- Calyrex (Ice Rider) - Magic Room - TM72
  (898, 89801, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 63),
  -- Calyrex (Ice Rider) - Round - TM76
  (898, 89801, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 64),
  -- Calyrex (Ice Rider) - Bulldoze - TM81
  (898, 89801, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 65),
  -- Calyrex (Ice Rider) - Snarl - TM85
  (898, 89801, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 66),
  -- Calyrex (Ice Rider) - Draining Kiss - TM87
  (898, 89801, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 67),
  -- Calyrex (Ice Rider) - Grassy Terrain - TM88
  (898, 89801, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 68),
  -- Calyrex (Ice Rider) - Psychic Terrain - TM91
  (898, 89801, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 69),
  -- Calyrex (Ice Rider) - Smart Strike - TM96
  (898, 89801, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 70),
  -- Calyrex (Ice Rider) - Stomping Tantrum - TM98
  (898, 89801, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 71),
  -- Calyrex (Ice Rider) - Swords Dance - TR00
  (898, 89801, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 72),
  -- Calyrex (Ice Rider) - Body Slam - TR01
  (898, 89801, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 73),
  -- Calyrex (Ice Rider) - Ice Beam - TR05
  (898, 89801, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 74),
  -- Calyrex (Ice Rider) - Blizzard - TR06
  (898, 89801, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 75),
  -- Calyrex (Ice Rider) - Psychic - TR11
  (898, 89801, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 76),
  -- Calyrex (Ice Rider) - Agility - TR12
  (898, 89801, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 77),
  -- Calyrex (Ice Rider) - Metronome - TR14
  (898, 89801, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 78),
  -- Calyrex (Ice Rider) - Tri Attack - TR19
  (898, 89801, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 79),
  -- Calyrex (Ice Rider) - Substitute - TR20
  (898, 89801, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 80),
  -- Calyrex (Ice Rider) - Outrage - TR24
  (898, 89801, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 81),
  -- Calyrex (Ice Rider) - Psyshock - TR25
  (898, 89801, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 82),
  -- Calyrex (Ice Rider) - Endure - TR26
  (898, 89801, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 83),
  -- Calyrex (Ice Rider) - Sleep Talk - TR27
  (898, 89801, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 84),
  -- Calyrex (Ice Rider) - Megahorn - TR28
  (898, 89801, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 85),
  -- Calyrex (Ice Rider) - Baton Pass - TR29
  (898, 89801, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 86),
  -- Calyrex (Ice Rider) - Encore - TR30
  (898, 89801, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 87),
  -- Calyrex (Ice Rider) - Crunch - TR32
  (898, 89801, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 88),
  -- Calyrex (Ice Rider) - Future Sight - TR34
  (898, 89801, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 89),
  -- Calyrex (Ice Rider) - Uproar - TR35
  (898, 89801, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 90),
  -- Calyrex (Ice Rider) - Taunt - TR37
  (898, 89801, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 91),
  -- Calyrex (Ice Rider) - Trick - TR38
  (898, 89801, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 92),
  -- Calyrex (Ice Rider) - Superpower - TR39
  (898, 89801, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 93),
  -- Calyrex (Ice Rider) - Skill Swap - TR40
  (898, 89801, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 94),
  -- Calyrex (Ice Rider) - Iron Defense - TR46
  (898, 89801, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 95),
  -- Calyrex (Ice Rider) - Calm Mind - TR49
  (898, 89801, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 96),
  -- Calyrex (Ice Rider) - Close Combat - TR53
  (898, 89801, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 97),
  -- Calyrex (Ice Rider) - Seed Bomb - TR59
  (898, 89801, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 98),
  -- Calyrex (Ice Rider) - Energy Ball - TR65
  (898, 89801, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 99),
  -- Calyrex (Ice Rider) - Zen Headbutt - TR69
  (898, 89801, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 100),
  -- Calyrex (Ice Rider) - Leaf Storm - TR71
  (898, 89801, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 101),
  -- Calyrex (Ice Rider) - Grass Knot - TR77
  (898, 89801, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 102),
  -- Calyrex (Ice Rider) - Heavy Slam - TR79
  (898, 89801, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 103),
  -- Calyrex (Ice Rider) - Stored Power - TR82
  (898, 89801, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 104),
  -- Calyrex (Ice Rider) - Ally Switch - TR83
  (898, 89801, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 105),
  -- Calyrex (Ice Rider) - High Horsepower - TR94
  (898, 89801, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 106),
  -- Calyrex (Ice Rider) - Throat Chop - TR95
  (898, 89801, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 107),
  -- Calyrex (Ice Rider) - Pollen Puff - TR96
  (898, 89801, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 108),
  -- Calyrex (Ice Rider) - Body Press - TR99
  (898, 89801, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 109),
  -- Calyrex (Shadow Rider) - Astral Barrage - Level 1
  (898, 89802, 825, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex (Shadow Rider) - Tackle - Level 1
  (898, 89802, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex (Shadow Rider) - Tail Whip - Level 1
  (898, 89802, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex (Shadow Rider) - Double Kick - Level 1
  (898, 89802, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex (Shadow Rider) - Hex - Level 1
  (898, 89802, 506, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Calyrex (Shadow Rider) - Stomp - Level 1
  (898, 89802, 23, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Calyrex (Shadow Rider) - Confuse Ray - Level 1
  (898, 89802, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Calyrex (Shadow Rider) - Haze - Level 1
  (898, 89802, 114, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Calyrex (Shadow Rider) - Shadow Ball - Level 1
  (898, 89802, 247, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Calyrex (Shadow Rider) - Take Down - Level 1
  (898, 89802, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Calyrex (Shadow Rider) - Agility - Level 1
  (898, 89802, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Calyrex (Shadow Rider) - Thrash - Level 1
  (898, 89802, 37, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Calyrex (Shadow Rider) - Disable - Level 1
  (898, 89802, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Calyrex (Shadow Rider) - Double-Edge - Level 1
  (898, 89802, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Calyrex (Shadow Rider) - Nasty Plot - Level 1
  (898, 89802, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Calyrex (Shadow Rider) - Pound - Level 1
  (898, 89802, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Calyrex (Shadow Rider) - Mega Drain - Level 1
  (898, 89802, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Calyrex (Shadow Rider) - Confusion - Level 1
  (898, 89802, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Calyrex (Shadow Rider) - Growth - Level 1
  (898, 89802, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Calyrex (Shadow Rider) - Life Dew - Level 8
  (898, 89802, 791, 18, NULL, 1, 8, NULL, NULL, NULL, 20),
  -- Calyrex (Shadow Rider) - Giga Drain - Level 16
  (898, 89802, 202, 18, NULL, 1, 16, NULL, NULL, NULL, 21),
  -- Calyrex (Shadow Rider) - Psyshock - Level 24
  (898, 89802, 473, 18, NULL, 1, 24, NULL, NULL, NULL, 22),
  -- Calyrex (Shadow Rider) - Helping Hand - Level 32
  (898, 89802, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 23),
  -- Calyrex (Shadow Rider) - Aromatherapy - Level 40
  (898, 89802, 312, 18, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Calyrex (Shadow Rider) - Energy Ball - Level 48
  (898, 89802, 412, 18, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Calyrex (Shadow Rider) - Psychic - Level 56
  (898, 89802, 94, 18, NULL, 1, 56, NULL, NULL, NULL, 26),
  -- Calyrex (Shadow Rider) - Leech Seed - Level 64
  (898, 89802, 73, 18, NULL, 1, 64, NULL, NULL, NULL, 27),
  -- Calyrex (Shadow Rider) - Heal Pulse - Level 72
  (898, 89802, 505, 18, NULL, 1, 72, NULL, NULL, NULL, 28),
  -- Calyrex (Shadow Rider) - Solar Beam - Level 80
  (898, 89802, 76, 18, NULL, 1, 80, NULL, NULL, NULL, 29),
  -- Calyrex (Shadow Rider) - Future Sight - Level 88
  (898, 89802, 248, 18, NULL, 1, 88, NULL, NULL, NULL, 30),
  -- Calyrex (Shadow Rider) - Pay Day - TM02
  (898, 89802, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 31),
  -- Calyrex (Shadow Rider) - Hyper Beam - TM08
  (898, 89802, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 32),
  -- Calyrex (Shadow Rider) - Giga Impact - TM09
  (898, 89802, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 33),
  -- Calyrex (Shadow Rider) - Magical Leaf - TM10
  (898, 89802, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 34),
  -- Calyrex (Shadow Rider) - Solar Beam - TM11
  (898, 89802, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 35),
  -- Calyrex (Shadow Rider) - Solar Blade - TM12
  (898, 89802, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 36),
  -- Calyrex (Shadow Rider) - Light Screen - TM17
  (898, 89802, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 37),
  -- Calyrex (Shadow Rider) - Reflect - TM18
  (898, 89802, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 38),
  -- Calyrex (Shadow Rider) - Safeguard - TM19
  (898, 89802, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 39),
  -- Calyrex (Shadow Rider) - Rest - TM21
  (898, 89802, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 40),
  -- Calyrex (Shadow Rider) - Snore - TM24
  (898, 89802, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 41),
  -- Calyrex (Shadow Rider) - Protect - TM25
  (898, 89802, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 42),
  -- Calyrex (Shadow Rider) - Scary Face - TM26
  (898, 89802, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 43),
  -- Calyrex (Shadow Rider) - Giga Drain - TM28
  (898, 89802, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 44),
  -- Calyrex (Shadow Rider) - Sunny Day - TM34
  (898, 89802, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 45),
  -- Calyrex (Shadow Rider) - Will-O-Wisp - TM38
  (898, 89802, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 46),
  -- Calyrex (Shadow Rider) - Facade - TM39
  (898, 89802, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 47),
  -- Calyrex (Shadow Rider) - Swift - TM40
  (898, 89802, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 48),
  -- Calyrex (Shadow Rider) - Helping Hand - TM41
  (898, 89802, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 49),
  -- Calyrex (Shadow Rider) - Imprison - TM44
  (898, 89802, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 50),
  -- Calyrex (Shadow Rider) - Bullet Seed - TM50
  (898, 89802, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 51),
  -- Calyrex (Shadow Rider) - Mud Shot - TM53
  (898, 89802, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 52),
  -- Calyrex (Shadow Rider) - Payback - TM57
  (898, 89802, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 53),
  -- Calyrex (Shadow Rider) - Assurance - TM58
  (898, 89802, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 54),
  -- Calyrex (Shadow Rider) - Power Swap - TM60
  (898, 89802, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 55),
  -- Calyrex (Shadow Rider) - Guard Swap - TM61
  (898, 89802, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 56),
  -- Calyrex (Shadow Rider) - Speed Swap - TM62
  (898, 89802, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 57),
  -- Calyrex (Shadow Rider) - Psycho Cut - TM69
  (898, 89802, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 58),
  -- Calyrex (Shadow Rider) - Trick Room - TM70
  (898, 89802, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 59),
  -- Calyrex (Shadow Rider) - Wonder Room - TM71
  (898, 89802, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 60),
  -- Calyrex (Shadow Rider) - Magic Room - TM72
  (898, 89802, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 61),
  -- Calyrex (Shadow Rider) - Round - TM76
  (898, 89802, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 62),
  -- Calyrex (Shadow Rider) - Hex - TM77
  (898, 89802, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 63),
  -- Calyrex (Shadow Rider) - Bulldoze - TM81
  (898, 89802, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 64),
  -- Calyrex (Shadow Rider) - Snarl - TM85
  (898, 89802, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 65),
  -- Calyrex (Shadow Rider) - Phantom Force - TM86
  (898, 89802, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 66),
  -- Calyrex (Shadow Rider) - Draining Kiss - TM87
  (898, 89802, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 67),
  -- Calyrex (Shadow Rider) - Grassy Terrain - TM88
  (898, 89802, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 68),
  -- Calyrex (Shadow Rider) - Psychic Terrain - TM91
  (898, 89802, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 69),
  -- Calyrex (Shadow Rider) - Stomping Tantrum - TM98
  (898, 89802, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 70),
  -- Calyrex (Shadow Rider) - Body Slam - TR01
  (898, 89802, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 71),
  -- Calyrex (Shadow Rider) - Psychic - TR11
  (898, 89802, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 72),
  -- Calyrex (Shadow Rider) - Agility - TR12
  (898, 89802, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 73),
  -- Calyrex (Shadow Rider) - Metronome - TR14
  (898, 89802, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 74),
  -- Calyrex (Shadow Rider) - Tri Attack - TR19
  (898, 89802, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 75),
  -- Calyrex (Shadow Rider) - Substitute - TR20
  (898, 89802, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 76),
  -- Calyrex (Shadow Rider) - Psyshock - TR25
  (898, 89802, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 77),
  -- Calyrex (Shadow Rider) - Endure - TR26
  (898, 89802, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 78),
  -- Calyrex (Shadow Rider) - Sleep Talk - TR27
  (898, 89802, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 79),
  -- Calyrex (Shadow Rider) - Baton Pass - TR29
  (898, 89802, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 80),
  -- Calyrex (Shadow Rider) - Encore - TR30
  (898, 89802, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 81),
  -- Calyrex (Shadow Rider) - Crunch - TR32
  (898, 89802, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 82),
  -- Calyrex (Shadow Rider) - Shadow Ball - TR33
  (898, 89802, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 83),
  -- Calyrex (Shadow Rider) - Future Sight - TR34
  (898, 89802, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 84),
  -- Calyrex (Shadow Rider) - Uproar - TR35
  (898, 89802, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 85),
  -- Calyrex (Shadow Rider) - Taunt - TR37
  (898, 89802, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 86),
  -- Calyrex (Shadow Rider) - Trick - TR38
  (898, 89802, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 87),
  -- Calyrex (Shadow Rider) - Skill Swap - TR40
  (898, 89802, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 88),
  -- Calyrex (Shadow Rider) - Calm Mind - TR49
  (898, 89802, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 89),
  -- Calyrex (Shadow Rider) - Dark Pulse - TR58
  (898, 89802, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 90),
  -- Calyrex (Shadow Rider) - Seed Bomb - TR59
  (898, 89802, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 91),
  -- Calyrex (Shadow Rider) - Energy Ball - TR65
  (898, 89802, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 92),
  -- Calyrex (Shadow Rider) - Nasty Plot - TR68
  (898, 89802, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 93),
  -- Calyrex (Shadow Rider) - Zen Headbutt - TR69
  (898, 89802, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 94),
  -- Calyrex (Shadow Rider) - Leaf Storm - TR71
  (898, 89802, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 95),
  -- Calyrex (Shadow Rider) - Grass Knot - TR77
  (898, 89802, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 96),
  -- Calyrex (Shadow Rider) - Foul Play - TR81
  (898, 89802, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 97),
  -- Calyrex (Shadow Rider) - Stored Power - TR82
  (898, 89802, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 98),
  -- Calyrex (Shadow Rider) - Ally Switch - TR83
  (898, 89802, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 99),
  -- Calyrex (Shadow Rider) - Pollen Puff - TR96
  (898, 89802, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 100);

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
  -- Raichu (Alolan Raichu) - Flail - Egg
  (26, 2601, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Raichu (Alolan Raichu) - Present - Egg
  (26, 2601, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Raichu (Alolan Raichu) - Fake Out - Egg
  (26, 2601, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Raichu (Alolan Raichu) - Charge - Egg
  (26, 2601, 268, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Raichu (Alolan Raichu) - Wish - Egg
  (26, 2601, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Raichu (Alolan Raichu) - Tickle - Egg
  (26, 2601, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Raichu (Alolan Raichu) - Volt Tackle - Egg
  (26, 2601, 344, 18, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 83),
  -- Raichu (Alolan Raichu) - Disarming Voice - Egg
  (26, 2601, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Sandslash (Alolan Sandslash) - Counter - Egg
  (28, 2801, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sandslash (Alolan Sandslash) - Curse - Egg
  (28, 2801, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sandslash (Alolan Sandslash) - Flail - Egg
  (28, 2801, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sandslash (Alolan Sandslash) - Crush Claw - Egg
  (28, 2801, 306, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sandslash (Alolan Sandslash) - Night Slash - Egg
  (28, 2801, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sandslash (Alolan Sandslash) - Hone Claws - Egg
  (28, 2801, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Ninetales (Alolan Ninetales) - Roar - Egg
  (38, 3801, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ninetales (Alolan Ninetales) - Hypnosis - Egg
  (38, 3801, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ninetales (Alolan Ninetales) - Flail - Egg
  (38, 3801, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ninetales (Alolan Ninetales) - Howl - Egg
  (38, 3801, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ninetales (Alolan Ninetales) - Freeze-Dry - Egg
  (38, 3801, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ninetales (Alolan Ninetales) - Moonblast - Egg
  (38, 3801, 585, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ninetales (Alolan Ninetales) - Baby-Doll Eyes - Egg
  (38, 3801, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dugtrio (Alolan Dugtrio) - Headbutt - Egg
  (51, 5101, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dugtrio (Alolan Dugtrio) - Thrash - Egg
  (51, 5101, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dugtrio (Alolan Dugtrio) - Ancient Power - Egg
  (51, 5101, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dugtrio (Alolan Dugtrio) - Memento - Egg
  (51, 5101, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dugtrio (Alolan Dugtrio) - Metal Sound - Egg
  (51, 5101, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dugtrio (Alolan Dugtrio) - Hone Claws - Egg
  (51, 5101, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dugtrio (Alolan Dugtrio) - Final Gambit - Egg
  (51, 5101, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Persian (Alolan Persian) - Hypnosis - Egg
  (53, 5301, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Persian (Alolan Persian) - Flail - Egg
  (53, 5301, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Persian (Alolan Persian) - Spite - Egg
  (53, 5301, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Persian (Alolan Persian) - Flatter - Egg
  (53, 5301, 260, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Persian (Alolan Persian) - Covet - Egg
  (53, 5301, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Persian (Alolan Persian) - Parting Shot - Egg
  (53, 5301, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rapidash (Galarian Rapidash) - Double Kick - Egg
  (78, 7801, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rapidash (Galarian Rapidash) - Horn Drill - Egg
  (78, 7801, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rapidash (Galarian Rapidash) - Thrash - Egg
  (78, 7801, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rapidash (Galarian Rapidash) - Double-Edge - Egg
  (78, 7801, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rapidash (Galarian Rapidash) - Hypnosis - Egg
  (78, 7801, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rapidash (Galarian Rapidash) - Morning Sun - Egg
  (78, 7801, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowbro (Galarian Slowbro) - Stomp - Egg
  (80, 8002, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Slowbro (Galarian Slowbro) - Belly Drum - Egg
  (80, 8002, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Slowbro (Galarian Slowbro) - Block - Egg
  (80, 8002, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Slowbro (Galarian Slowbro) - Belch - Egg
  (80, 8002, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Weezing (Galarian Weezing) - Psybeam - Egg
  (110, 11001, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Weezing (Galarian Weezing) - Curse - Egg
  (110, 11001, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Weezing (Galarian Weezing) - Spite - Egg
  (110, 11001, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Weezing (Galarian Weezing) - Pain Split - Egg
  (110, 11001, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Weezing (Galarian Weezing) - Stockpile - Egg
  (110, 11001, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Weezing (Galarian Weezing) - Spit Up - Egg
  (110, 11001, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Weezing (Galarian Weezing) - Swallow - Egg
  (110, 11001, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Weezing (Galarian Weezing) - Grudge - Egg
  (110, 11001, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slowking (Galarian Slowking) - Stomp - Egg
  (199, 19901, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Slowking (Galarian Slowking) - Belly Drum - Egg
  (199, 19901, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Slowking (Galarian Slowking) - Block - Egg
  (199, 19901, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Slowking (Galarian Slowking) - Belch - Egg
  (199, 19901, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 99),
  -- Linoone (Galarian Linoone) - Knock Off - Egg
  (264, 26401, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Linoone (Galarian Linoone) - Quick Guard - Egg
  (264, 26401, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Linoone (Galarian Linoone) - Parting Shot - Egg
  (264, 26401, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Darmanitan (Galarian Darmanitan) - Take Down - Egg
  (555, 55502, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Darmanitan (Galarian Darmanitan) - Flame Wheel - Egg
  (555, 55502, 172, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Darmanitan (Galarian Darmanitan) - Focus Punch - Egg
  (555, 55502, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Darmanitan (Galarian Darmanitan) - Yawn - Egg
  (555, 55502, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Darmanitan (Galarian Darmanitan) - Hammer Arm - Egg
  (555, 55502, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Darmanitan (Galarian Darmanitan) - Incinerate - Egg
  (555, 55502, 510, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Darmanitan (Galarian Darmanitan) - Freeze-Dry - Egg
  (555, 55502, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Darmanitan (Galarian Darmanitan) - Power-Up Punch - Egg
  (555, 55502, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Silvally (Fighting) - Tackle - Level 1
  (773, 77301, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Fighting) - Bite - Level 1
  (773, 77301, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Fighting) - Explosion - Level 1
  (773, 77301, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Fighting) - Scary Face - Level 1
  (773, 77301, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Fighting) - Imprison - Level 1
  (773, 77301, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Fighting) - Poison Fang - Level 1
  (773, 77301, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Fighting) - Aerial Ace - Level 1
  (773, 77301, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Fighting) - Thunder Fang - Level 1
  (773, 77301, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Fighting) - Ice Fang - Level 1
  (773, 77301, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Fighting) - Fire Fang - Level 1
  (773, 77301, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Fighting) - Iron Head - Level 1
  (773, 77301, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Fighting) - Multi-Attack - Level 1
  (773, 77301, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Fighting) - Double Hit - Level 15
  (773, 77301, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Fighting) - Metal Sound - Level 20
  (773, 77301, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Fighting) - Crush Claw - Level 25
  (773, 77301, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Fighting) - Air Slash - Level 30
  (773, 77301, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Fighting) - Tri Attack - Level 35
  (773, 77301, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Fighting) - X-Scissor - Level 40
  (773, 77301, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Fighting) - Crunch - Level 45
  (773, 77301, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Fighting) - Take Down - Level 50
  (773, 77301, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Fighting) - Double-Edge - Level 55
  (773, 77301, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Fighting) - Parting Shot - Level 60
  (773, 77301, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Fighting) - Hyper Beam - TM08
  (773, 77301, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Fighting) - Giga Impact - TM09
  (773, 77301, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Fighting) - Thunder Wave - TM14
  (773, 77301, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Fighting) - Self-Destruct - TM20
  (773, 77301, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Fighting) - Rest - TM21
  (773, 77301, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Fighting) - Rock Slide - TM22
  (773, 77301, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Fighting) - Snore - TM24
  (773, 77301, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Fighting) - Protect - TM25
  (773, 77301, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Fighting) - Scary Face - TM26
  (773, 77301, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Fighting) - Icy Wind - TM27
  (773, 77301, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Fighting) - Steel Wing - TM30
  (773, 77301, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Fighting) - Sandstorm - TM32
  (773, 77301, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Fighting) - Rain Dance - TM33
  (773, 77301, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Fighting) - Sunny Day - TM34
  (773, 77301, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Fighting) - Hail - TM35
  (773, 77301, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Fighting) - Facade - TM39
  (773, 77301, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Fighting) - Swift - TM40
  (773, 77301, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Fighting) - Imprison - TM44
  (773, 77301, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Fighting) - U-turn - TM56
  (773, 77301, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Fighting) - Payback - TM57
  (773, 77301, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Fighting) - Shadow Claw - TM65
  (773, 77301, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Fighting) - Thunder Fang - TM66
  (773, 77301, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Fighting) - Ice Fang - TM67
  (773, 77301, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Fighting) - Fire Fang - TM68
  (773, 77301, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Fighting) - Round - TM76
  (773, 77301, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Fighting) - Snarl - TM85
  (773, 77301, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Fighting) - Air Slash - TM95
  (773, 77301, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Fighting) - Swords Dance - TR00
  (773, 77301, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Fighting) - Flamethrower - TR02
  (773, 77301, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Fighting) - Surf - TR04
  (773, 77301, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Fighting) - Ice Beam - TR05
  (773, 77301, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Fighting) - Thunderbolt - TR08
  (773, 77301, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Fighting) - Tri Attack - TR19
  (773, 77301, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Fighting) - Substitute - TR20
  (773, 77301, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Fighting) - Reversal - TR21
  (773, 77301, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Fighting) - Outrage - TR24
  (773, 77301, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Fighting) - Endure - TR26
  (773, 77301, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Fighting) - Sleep Talk - TR27
  (773, 77301, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Fighting) - Crunch - TR32
  (773, 77301, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Fighting) - Shadow Ball - TR33
  (773, 77301, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Fighting) - Heat Wave - TR36
  (773, 77301, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Fighting) - Hyper Voice - TR42
  (773, 77301, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Fighting) - Iron Defense - TR46
  (773, 77301, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Fighting) - Dragon Claw - TR47
  (773, 77301, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Fighting) - X-Scissor - TR60
  (773, 77301, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Fighting) - Zen Headbutt - TR69
  (773, 77301, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Fighting) - Flash Cannon - TR70
  (773, 77301, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Fighting) - Iron Head - TR74
  (773, 77301, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Fighting) - Work Up - TR85
  (773, 77301, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Fighting) - Psychic Fangs - TR97
  (773, 77301, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Fighting) - Draco Meteor - Tutor
  (773, 77301, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Fighting) - Grass Pledge - Tutor
  (773, 77301, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Fighting) - Steel Beam - Tutor
  (773, 77301, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Fighting) - Multi-Attack - Evolution
  (773, 77301, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Flying) - Tackle - Level 1
  (773, 77302, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Flying) - Bite - Level 1
  (773, 77302, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Flying) - Explosion - Level 1
  (773, 77302, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Flying) - Scary Face - Level 1
  (773, 77302, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Flying) - Imprison - Level 1
  (773, 77302, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Flying) - Poison Fang - Level 1
  (773, 77302, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Flying) - Aerial Ace - Level 1
  (773, 77302, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Flying) - Thunder Fang - Level 1
  (773, 77302, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Flying) - Ice Fang - Level 1
  (773, 77302, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Flying) - Fire Fang - Level 1
  (773, 77302, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Flying) - Iron Head - Level 1
  (773, 77302, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Flying) - Multi-Attack - Level 1
  (773, 77302, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Flying) - Double Hit - Level 15
  (773, 77302, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Flying) - Metal Sound - Level 20
  (773, 77302, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Flying) - Crush Claw - Level 25
  (773, 77302, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Flying) - Air Slash - Level 30
  (773, 77302, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Flying) - Tri Attack - Level 35
  (773, 77302, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Flying) - X-Scissor - Level 40
  (773, 77302, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Flying) - Crunch - Level 45
  (773, 77302, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Flying) - Take Down - Level 50
  (773, 77302, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Flying) - Double-Edge - Level 55
  (773, 77302, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Flying) - Parting Shot - Level 60
  (773, 77302, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Flying) - Hyper Beam - TM08
  (773, 77302, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Flying) - Giga Impact - TM09
  (773, 77302, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Flying) - Thunder Wave - TM14
  (773, 77302, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Flying) - Self-Destruct - TM20
  (773, 77302, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Flying) - Rest - TM21
  (773, 77302, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Flying) - Rock Slide - TM22
  (773, 77302, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Flying) - Snore - TM24
  (773, 77302, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Flying) - Protect - TM25
  (773, 77302, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Flying) - Scary Face - TM26
  (773, 77302, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Flying) - Icy Wind - TM27
  (773, 77302, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Flying) - Steel Wing - TM30
  (773, 77302, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Flying) - Sandstorm - TM32
  (773, 77302, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Flying) - Rain Dance - TM33
  (773, 77302, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Flying) - Sunny Day - TM34
  (773, 77302, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Flying) - Hail - TM35
  (773, 77302, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Flying) - Facade - TM39
  (773, 77302, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Flying) - Swift - TM40
  (773, 77302, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Flying) - Imprison - TM44
  (773, 77302, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Flying) - U-turn - TM56
  (773, 77302, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Flying) - Payback - TM57
  (773, 77302, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Flying) - Shadow Claw - TM65
  (773, 77302, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Flying) - Thunder Fang - TM66
  (773, 77302, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Flying) - Ice Fang - TM67
  (773, 77302, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Flying) - Fire Fang - TM68
  (773, 77302, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Flying) - Round - TM76
  (773, 77302, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Flying) - Snarl - TM85
  (773, 77302, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Flying) - Air Slash - TM95
  (773, 77302, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Flying) - Swords Dance - TR00
  (773, 77302, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Flying) - Flamethrower - TR02
  (773, 77302, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Flying) - Surf - TR04
  (773, 77302, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Flying) - Ice Beam - TR05
  (773, 77302, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Flying) - Thunderbolt - TR08
  (773, 77302, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Flying) - Tri Attack - TR19
  (773, 77302, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Flying) - Substitute - TR20
  (773, 77302, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Flying) - Reversal - TR21
  (773, 77302, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Flying) - Outrage - TR24
  (773, 77302, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Flying) - Endure - TR26
  (773, 77302, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Flying) - Sleep Talk - TR27
  (773, 77302, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Flying) - Crunch - TR32
  (773, 77302, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Flying) - Shadow Ball - TR33
  (773, 77302, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Flying) - Heat Wave - TR36
  (773, 77302, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Flying) - Hyper Voice - TR42
  (773, 77302, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Flying) - Iron Defense - TR46
  (773, 77302, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Flying) - Dragon Claw - TR47
  (773, 77302, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Flying) - X-Scissor - TR60
  (773, 77302, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Flying) - Zen Headbutt - TR69
  (773, 77302, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Flying) - Flash Cannon - TR70
  (773, 77302, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Flying) - Iron Head - TR74
  (773, 77302, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Flying) - Work Up - TR85
  (773, 77302, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Flying) - Psychic Fangs - TR97
  (773, 77302, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Flying) - Draco Meteor - Tutor
  (773, 77302, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Flying) - Grass Pledge - Tutor
  (773, 77302, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Flying) - Steel Beam - Tutor
  (773, 77302, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Flying) - Multi-Attack - Evolution
  (773, 77302, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Poison) - Tackle - Level 1
  (773, 77303, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Poison) - Bite - Level 1
  (773, 77303, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Poison) - Explosion - Level 1
  (773, 77303, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Poison) - Scary Face - Level 1
  (773, 77303, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Poison) - Imprison - Level 1
  (773, 77303, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Poison) - Poison Fang - Level 1
  (773, 77303, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Poison) - Aerial Ace - Level 1
  (773, 77303, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Poison) - Thunder Fang - Level 1
  (773, 77303, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Poison) - Ice Fang - Level 1
  (773, 77303, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Poison) - Fire Fang - Level 1
  (773, 77303, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Poison) - Iron Head - Level 1
  (773, 77303, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Poison) - Multi-Attack - Level 1
  (773, 77303, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Poison) - Double Hit - Level 15
  (773, 77303, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Poison) - Metal Sound - Level 20
  (773, 77303, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Poison) - Crush Claw - Level 25
  (773, 77303, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Poison) - Air Slash - Level 30
  (773, 77303, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Poison) - Tri Attack - Level 35
  (773, 77303, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Poison) - X-Scissor - Level 40
  (773, 77303, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Poison) - Crunch - Level 45
  (773, 77303, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Poison) - Take Down - Level 50
  (773, 77303, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Poison) - Double-Edge - Level 55
  (773, 77303, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Poison) - Parting Shot - Level 60
  (773, 77303, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Poison) - Hyper Beam - TM08
  (773, 77303, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Poison) - Giga Impact - TM09
  (773, 77303, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Poison) - Thunder Wave - TM14
  (773, 77303, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Poison) - Self-Destruct - TM20
  (773, 77303, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Poison) - Rest - TM21
  (773, 77303, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Poison) - Rock Slide - TM22
  (773, 77303, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Poison) - Snore - TM24
  (773, 77303, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Poison) - Protect - TM25
  (773, 77303, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Poison) - Scary Face - TM26
  (773, 77303, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Poison) - Icy Wind - TM27
  (773, 77303, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Poison) - Steel Wing - TM30
  (773, 77303, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Poison) - Sandstorm - TM32
  (773, 77303, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Poison) - Rain Dance - TM33
  (773, 77303, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Poison) - Sunny Day - TM34
  (773, 77303, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Poison) - Hail - TM35
  (773, 77303, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Poison) - Facade - TM39
  (773, 77303, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Poison) - Swift - TM40
  (773, 77303, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Poison) - Imprison - TM44
  (773, 77303, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Poison) - U-turn - TM56
  (773, 77303, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Poison) - Payback - TM57
  (773, 77303, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Poison) - Shadow Claw - TM65
  (773, 77303, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Poison) - Thunder Fang - TM66
  (773, 77303, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Poison) - Ice Fang - TM67
  (773, 77303, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Poison) - Fire Fang - TM68
  (773, 77303, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Poison) - Round - TM76
  (773, 77303, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Poison) - Snarl - TM85
  (773, 77303, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Poison) - Air Slash - TM95
  (773, 77303, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Poison) - Swords Dance - TR00
  (773, 77303, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Poison) - Flamethrower - TR02
  (773, 77303, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Poison) - Surf - TR04
  (773, 77303, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Poison) - Ice Beam - TR05
  (773, 77303, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Poison) - Thunderbolt - TR08
  (773, 77303, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Poison) - Tri Attack - TR19
  (773, 77303, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Poison) - Substitute - TR20
  (773, 77303, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Poison) - Reversal - TR21
  (773, 77303, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Poison) - Outrage - TR24
  (773, 77303, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Poison) - Endure - TR26
  (773, 77303, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Poison) - Sleep Talk - TR27
  (773, 77303, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Poison) - Crunch - TR32
  (773, 77303, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Poison) - Shadow Ball - TR33
  (773, 77303, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Poison) - Heat Wave - TR36
  (773, 77303, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Poison) - Hyper Voice - TR42
  (773, 77303, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Poison) - Iron Defense - TR46
  (773, 77303, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Poison) - Dragon Claw - TR47
  (773, 77303, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Poison) - X-Scissor - TR60
  (773, 77303, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Poison) - Zen Headbutt - TR69
  (773, 77303, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Poison) - Flash Cannon - TR70
  (773, 77303, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Poison) - Iron Head - TR74
  (773, 77303, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Poison) - Work Up - TR85
  (773, 77303, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Poison) - Psychic Fangs - TR97
  (773, 77303, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Poison) - Draco Meteor - Tutor
  (773, 77303, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Poison) - Grass Pledge - Tutor
  (773, 77303, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Poison) - Steel Beam - Tutor
  (773, 77303, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Poison) - Multi-Attack - Evolution
  (773, 77303, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Ground) - Tackle - Level 1
  (773, 77304, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Ground) - Bite - Level 1
  (773, 77304, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Ground) - Explosion - Level 1
  (773, 77304, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Ground) - Scary Face - Level 1
  (773, 77304, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Ground) - Imprison - Level 1
  (773, 77304, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Ground) - Poison Fang - Level 1
  (773, 77304, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Ground) - Aerial Ace - Level 1
  (773, 77304, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Ground) - Thunder Fang - Level 1
  (773, 77304, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Ground) - Ice Fang - Level 1
  (773, 77304, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Ground) - Fire Fang - Level 1
  (773, 77304, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Ground) - Iron Head - Level 1
  (773, 77304, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Ground) - Multi-Attack - Level 1
  (773, 77304, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Ground) - Double Hit - Level 15
  (773, 77304, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Ground) - Metal Sound - Level 20
  (773, 77304, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Ground) - Crush Claw - Level 25
  (773, 77304, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Ground) - Air Slash - Level 30
  (773, 77304, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Ground) - Tri Attack - Level 35
  (773, 77304, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Ground) - X-Scissor - Level 40
  (773, 77304, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Ground) - Crunch - Level 45
  (773, 77304, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Ground) - Take Down - Level 50
  (773, 77304, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Ground) - Double-Edge - Level 55
  (773, 77304, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Ground) - Parting Shot - Level 60
  (773, 77304, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Ground) - Hyper Beam - TM08
  (773, 77304, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Ground) - Giga Impact - TM09
  (773, 77304, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Ground) - Thunder Wave - TM14
  (773, 77304, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Ground) - Self-Destruct - TM20
  (773, 77304, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Ground) - Rest - TM21
  (773, 77304, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Ground) - Rock Slide - TM22
  (773, 77304, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Ground) - Snore - TM24
  (773, 77304, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Ground) - Protect - TM25
  (773, 77304, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Ground) - Scary Face - TM26
  (773, 77304, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Ground) - Icy Wind - TM27
  (773, 77304, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Ground) - Steel Wing - TM30
  (773, 77304, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Ground) - Sandstorm - TM32
  (773, 77304, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Ground) - Rain Dance - TM33
  (773, 77304, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Ground) - Sunny Day - TM34
  (773, 77304, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Ground) - Hail - TM35
  (773, 77304, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Ground) - Facade - TM39
  (773, 77304, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Ground) - Swift - TM40
  (773, 77304, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Ground) - Imprison - TM44
  (773, 77304, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Ground) - U-turn - TM56
  (773, 77304, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Ground) - Payback - TM57
  (773, 77304, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Ground) - Shadow Claw - TM65
  (773, 77304, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Ground) - Thunder Fang - TM66
  (773, 77304, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Ground) - Ice Fang - TM67
  (773, 77304, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Ground) - Fire Fang - TM68
  (773, 77304, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Ground) - Round - TM76
  (773, 77304, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Ground) - Snarl - TM85
  (773, 77304, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Ground) - Air Slash - TM95
  (773, 77304, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Ground) - Swords Dance - TR00
  (773, 77304, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Ground) - Flamethrower - TR02
  (773, 77304, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Ground) - Surf - TR04
  (773, 77304, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Ground) - Ice Beam - TR05
  (773, 77304, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Ground) - Thunderbolt - TR08
  (773, 77304, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Ground) - Tri Attack - TR19
  (773, 77304, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Ground) - Substitute - TR20
  (773, 77304, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Ground) - Reversal - TR21
  (773, 77304, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Ground) - Outrage - TR24
  (773, 77304, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Ground) - Endure - TR26
  (773, 77304, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Ground) - Sleep Talk - TR27
  (773, 77304, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Ground) - Crunch - TR32
  (773, 77304, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Ground) - Shadow Ball - TR33
  (773, 77304, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Ground) - Heat Wave - TR36
  (773, 77304, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Ground) - Hyper Voice - TR42
  (773, 77304, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Ground) - Iron Defense - TR46
  (773, 77304, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Ground) - Dragon Claw - TR47
  (773, 77304, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Ground) - X-Scissor - TR60
  (773, 77304, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Ground) - Zen Headbutt - TR69
  (773, 77304, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Ground) - Flash Cannon - TR70
  (773, 77304, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Ground) - Iron Head - TR74
  (773, 77304, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Ground) - Work Up - TR85
  (773, 77304, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Ground) - Psychic Fangs - TR97
  (773, 77304, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Ground) - Draco Meteor - Tutor
  (773, 77304, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Ground) - Grass Pledge - Tutor
  (773, 77304, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Ground) - Steel Beam - Tutor
  (773, 77304, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Ground) - Multi-Attack - Evolution
  (773, 77304, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Rock) - Tackle - Level 1
  (773, 77305, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Rock) - Bite - Level 1
  (773, 77305, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Rock) - Explosion - Level 1
  (773, 77305, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Rock) - Scary Face - Level 1
  (773, 77305, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Rock) - Imprison - Level 1
  (773, 77305, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Rock) - Poison Fang - Level 1
  (773, 77305, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Rock) - Aerial Ace - Level 1
  (773, 77305, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Rock) - Thunder Fang - Level 1
  (773, 77305, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Rock) - Ice Fang - Level 1
  (773, 77305, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Rock) - Fire Fang - Level 1
  (773, 77305, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Rock) - Iron Head - Level 1
  (773, 77305, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Rock) - Multi-Attack - Level 1
  (773, 77305, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Rock) - Double Hit - Level 15
  (773, 77305, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Rock) - Metal Sound - Level 20
  (773, 77305, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Rock) - Crush Claw - Level 25
  (773, 77305, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Rock) - Air Slash - Level 30
  (773, 77305, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Rock) - Tri Attack - Level 35
  (773, 77305, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Rock) - X-Scissor - Level 40
  (773, 77305, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Rock) - Crunch - Level 45
  (773, 77305, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Rock) - Take Down - Level 50
  (773, 77305, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Rock) - Double-Edge - Level 55
  (773, 77305, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Rock) - Parting Shot - Level 60
  (773, 77305, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Rock) - Hyper Beam - TM08
  (773, 77305, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Rock) - Giga Impact - TM09
  (773, 77305, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Rock) - Thunder Wave - TM14
  (773, 77305, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Rock) - Self-Destruct - TM20
  (773, 77305, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Rock) - Rest - TM21
  (773, 77305, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Rock) - Rock Slide - TM22
  (773, 77305, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Rock) - Snore - TM24
  (773, 77305, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Rock) - Protect - TM25
  (773, 77305, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Rock) - Scary Face - TM26
  (773, 77305, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Rock) - Icy Wind - TM27
  (773, 77305, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Rock) - Steel Wing - TM30
  (773, 77305, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Rock) - Sandstorm - TM32
  (773, 77305, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Rock) - Rain Dance - TM33
  (773, 77305, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Rock) - Sunny Day - TM34
  (773, 77305, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Rock) - Hail - TM35
  (773, 77305, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Rock) - Facade - TM39
  (773, 77305, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Rock) - Swift - TM40
  (773, 77305, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Rock) - Imprison - TM44
  (773, 77305, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Rock) - U-turn - TM56
  (773, 77305, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Rock) - Payback - TM57
  (773, 77305, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Rock) - Shadow Claw - TM65
  (773, 77305, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Rock) - Thunder Fang - TM66
  (773, 77305, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Rock) - Ice Fang - TM67
  (773, 77305, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Rock) - Fire Fang - TM68
  (773, 77305, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Rock) - Round - TM76
  (773, 77305, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Rock) - Snarl - TM85
  (773, 77305, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Rock) - Air Slash - TM95
  (773, 77305, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Rock) - Swords Dance - TR00
  (773, 77305, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Rock) - Flamethrower - TR02
  (773, 77305, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Rock) - Surf - TR04
  (773, 77305, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Rock) - Ice Beam - TR05
  (773, 77305, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Rock) - Thunderbolt - TR08
  (773, 77305, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Rock) - Tri Attack - TR19
  (773, 77305, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Rock) - Substitute - TR20
  (773, 77305, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Rock) - Reversal - TR21
  (773, 77305, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Rock) - Outrage - TR24
  (773, 77305, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Rock) - Endure - TR26
  (773, 77305, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Rock) - Sleep Talk - TR27
  (773, 77305, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Rock) - Crunch - TR32
  (773, 77305, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Rock) - Shadow Ball - TR33
  (773, 77305, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Rock) - Heat Wave - TR36
  (773, 77305, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Rock) - Hyper Voice - TR42
  (773, 77305, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Rock) - Iron Defense - TR46
  (773, 77305, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Rock) - Dragon Claw - TR47
  (773, 77305, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Rock) - X-Scissor - TR60
  (773, 77305, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Rock) - Zen Headbutt - TR69
  (773, 77305, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Rock) - Flash Cannon - TR70
  (773, 77305, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Rock) - Iron Head - TR74
  (773, 77305, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Rock) - Work Up - TR85
  (773, 77305, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Rock) - Psychic Fangs - TR97
  (773, 77305, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Rock) - Draco Meteor - Tutor
  (773, 77305, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Rock) - Grass Pledge - Tutor
  (773, 77305, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Rock) - Steel Beam - Tutor
  (773, 77305, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Rock) - Multi-Attack - Evolution
  (773, 77305, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Bug) - Tackle - Level 1
  (773, 77306, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Bug) - Bite - Level 1
  (773, 77306, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Bug) - Explosion - Level 1
  (773, 77306, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Bug) - Scary Face - Level 1
  (773, 77306, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Bug) - Imprison - Level 1
  (773, 77306, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Bug) - Poison Fang - Level 1
  (773, 77306, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Bug) - Aerial Ace - Level 1
  (773, 77306, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Bug) - Thunder Fang - Level 1
  (773, 77306, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Bug) - Ice Fang - Level 1
  (773, 77306, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Bug) - Fire Fang - Level 1
  (773, 77306, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Bug) - Iron Head - Level 1
  (773, 77306, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Bug) - Multi-Attack - Level 1
  (773, 77306, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Bug) - Double Hit - Level 15
  (773, 77306, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Bug) - Metal Sound - Level 20
  (773, 77306, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Bug) - Crush Claw - Level 25
  (773, 77306, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Bug) - Air Slash - Level 30
  (773, 77306, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Bug) - Tri Attack - Level 35
  (773, 77306, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Bug) - X-Scissor - Level 40
  (773, 77306, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Bug) - Crunch - Level 45
  (773, 77306, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Bug) - Take Down - Level 50
  (773, 77306, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Bug) - Double-Edge - Level 55
  (773, 77306, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Bug) - Parting Shot - Level 60
  (773, 77306, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Bug) - Hyper Beam - TM08
  (773, 77306, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Bug) - Giga Impact - TM09
  (773, 77306, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Bug) - Thunder Wave - TM14
  (773, 77306, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Bug) - Self-Destruct - TM20
  (773, 77306, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Bug) - Rest - TM21
  (773, 77306, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Bug) - Rock Slide - TM22
  (773, 77306, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Bug) - Snore - TM24
  (773, 77306, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Bug) - Protect - TM25
  (773, 77306, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Bug) - Scary Face - TM26
  (773, 77306, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Bug) - Icy Wind - TM27
  (773, 77306, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Bug) - Steel Wing - TM30
  (773, 77306, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Bug) - Sandstorm - TM32
  (773, 77306, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Bug) - Rain Dance - TM33
  (773, 77306, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Bug) - Sunny Day - TM34
  (773, 77306, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Bug) - Hail - TM35
  (773, 77306, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Bug) - Facade - TM39
  (773, 77306, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Bug) - Swift - TM40
  (773, 77306, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Bug) - Imprison - TM44
  (773, 77306, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Bug) - U-turn - TM56
  (773, 77306, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Bug) - Payback - TM57
  (773, 77306, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Bug) - Shadow Claw - TM65
  (773, 77306, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Bug) - Thunder Fang - TM66
  (773, 77306, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Bug) - Ice Fang - TM67
  (773, 77306, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Bug) - Fire Fang - TM68
  (773, 77306, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Bug) - Round - TM76
  (773, 77306, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Bug) - Snarl - TM85
  (773, 77306, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Bug) - Air Slash - TM95
  (773, 77306, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Bug) - Swords Dance - TR00
  (773, 77306, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Bug) - Flamethrower - TR02
  (773, 77306, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Bug) - Surf - TR04
  (773, 77306, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Bug) - Ice Beam - TR05
  (773, 77306, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Bug) - Thunderbolt - TR08
  (773, 77306, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Bug) - Tri Attack - TR19
  (773, 77306, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Bug) - Substitute - TR20
  (773, 77306, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Bug) - Reversal - TR21
  (773, 77306, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Bug) - Outrage - TR24
  (773, 77306, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Bug) - Endure - TR26
  (773, 77306, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Bug) - Sleep Talk - TR27
  (773, 77306, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Bug) - Crunch - TR32
  (773, 77306, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Bug) - Shadow Ball - TR33
  (773, 77306, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Bug) - Heat Wave - TR36
  (773, 77306, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Bug) - Hyper Voice - TR42
  (773, 77306, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Bug) - Iron Defense - TR46
  (773, 77306, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Bug) - Dragon Claw - TR47
  (773, 77306, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Bug) - X-Scissor - TR60
  (773, 77306, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Bug) - Zen Headbutt - TR69
  (773, 77306, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Bug) - Flash Cannon - TR70
  (773, 77306, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Bug) - Iron Head - TR74
  (773, 77306, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Bug) - Work Up - TR85
  (773, 77306, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Bug) - Psychic Fangs - TR97
  (773, 77306, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Bug) - Draco Meteor - Tutor
  (773, 77306, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Bug) - Grass Pledge - Tutor
  (773, 77306, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Bug) - Steel Beam - Tutor
  (773, 77306, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Bug) - Multi-Attack - Evolution
  (773, 77306, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Ghost) - Tackle - Level 1
  (773, 77307, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Ghost) - Bite - Level 1
  (773, 77307, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Ghost) - Explosion - Level 1
  (773, 77307, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Ghost) - Scary Face - Level 1
  (773, 77307, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Ghost) - Imprison - Level 1
  (773, 77307, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Ghost) - Poison Fang - Level 1
  (773, 77307, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Ghost) - Aerial Ace - Level 1
  (773, 77307, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Ghost) - Thunder Fang - Level 1
  (773, 77307, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Ghost) - Ice Fang - Level 1
  (773, 77307, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Ghost) - Fire Fang - Level 1
  (773, 77307, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Ghost) - Iron Head - Level 1
  (773, 77307, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Ghost) - Multi-Attack - Level 1
  (773, 77307, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Ghost) - Double Hit - Level 15
  (773, 77307, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Ghost) - Metal Sound - Level 20
  (773, 77307, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Ghost) - Crush Claw - Level 25
  (773, 77307, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Ghost) - Air Slash - Level 30
  (773, 77307, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Ghost) - Tri Attack - Level 35
  (773, 77307, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Ghost) - X-Scissor - Level 40
  (773, 77307, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Ghost) - Crunch - Level 45
  (773, 77307, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Ghost) - Take Down - Level 50
  (773, 77307, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Ghost) - Double-Edge - Level 55
  (773, 77307, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Ghost) - Parting Shot - Level 60
  (773, 77307, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Ghost) - Hyper Beam - TM08
  (773, 77307, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Ghost) - Giga Impact - TM09
  (773, 77307, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Ghost) - Thunder Wave - TM14
  (773, 77307, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Ghost) - Self-Destruct - TM20
  (773, 77307, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Ghost) - Rest - TM21
  (773, 77307, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Ghost) - Rock Slide - TM22
  (773, 77307, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Ghost) - Snore - TM24
  (773, 77307, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Ghost) - Protect - TM25
  (773, 77307, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Ghost) - Scary Face - TM26
  (773, 77307, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Ghost) - Icy Wind - TM27
  (773, 77307, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Ghost) - Steel Wing - TM30
  (773, 77307, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Ghost) - Sandstorm - TM32
  (773, 77307, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Ghost) - Rain Dance - TM33
  (773, 77307, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Ghost) - Sunny Day - TM34
  (773, 77307, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Ghost) - Hail - TM35
  (773, 77307, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Ghost) - Facade - TM39
  (773, 77307, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Ghost) - Swift - TM40
  (773, 77307, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Ghost) - Imprison - TM44
  (773, 77307, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Ghost) - U-turn - TM56
  (773, 77307, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Ghost) - Payback - TM57
  (773, 77307, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Ghost) - Shadow Claw - TM65
  (773, 77307, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Ghost) - Thunder Fang - TM66
  (773, 77307, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Ghost) - Ice Fang - TM67
  (773, 77307, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Ghost) - Fire Fang - TM68
  (773, 77307, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Ghost) - Round - TM76
  (773, 77307, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Ghost) - Snarl - TM85
  (773, 77307, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Ghost) - Air Slash - TM95
  (773, 77307, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Ghost) - Swords Dance - TR00
  (773, 77307, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Ghost) - Flamethrower - TR02
  (773, 77307, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Ghost) - Surf - TR04
  (773, 77307, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Ghost) - Ice Beam - TR05
  (773, 77307, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Ghost) - Thunderbolt - TR08
  (773, 77307, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Ghost) - Tri Attack - TR19
  (773, 77307, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Ghost) - Substitute - TR20
  (773, 77307, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Ghost) - Reversal - TR21
  (773, 77307, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Ghost) - Outrage - TR24
  (773, 77307, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Ghost) - Endure - TR26
  (773, 77307, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Ghost) - Sleep Talk - TR27
  (773, 77307, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Ghost) - Crunch - TR32
  (773, 77307, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Ghost) - Shadow Ball - TR33
  (773, 77307, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Ghost) - Heat Wave - TR36
  (773, 77307, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Ghost) - Hyper Voice - TR42
  (773, 77307, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Ghost) - Iron Defense - TR46
  (773, 77307, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Ghost) - Dragon Claw - TR47
  (773, 77307, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Ghost) - X-Scissor - TR60
  (773, 77307, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Ghost) - Zen Headbutt - TR69
  (773, 77307, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Ghost) - Flash Cannon - TR70
  (773, 77307, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Ghost) - Iron Head - TR74
  (773, 77307, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Ghost) - Work Up - TR85
  (773, 77307, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Ghost) - Psychic Fangs - TR97
  (773, 77307, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Ghost) - Draco Meteor - Tutor
  (773, 77307, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Ghost) - Grass Pledge - Tutor
  (773, 77307, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Ghost) - Steel Beam - Tutor
  (773, 77307, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Ghost) - Multi-Attack - Evolution
  (773, 77307, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Steel) - Tackle - Level 1
  (773, 77308, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Steel) - Bite - Level 1
  (773, 77308, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Steel) - Explosion - Level 1
  (773, 77308, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Steel) - Scary Face - Level 1
  (773, 77308, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Steel) - Imprison - Level 1
  (773, 77308, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Steel) - Poison Fang - Level 1
  (773, 77308, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Steel) - Aerial Ace - Level 1
  (773, 77308, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Steel) - Thunder Fang - Level 1
  (773, 77308, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Steel) - Ice Fang - Level 1
  (773, 77308, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Steel) - Fire Fang - Level 1
  (773, 77308, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Steel) - Iron Head - Level 1
  (773, 77308, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Steel) - Multi-Attack - Level 1
  (773, 77308, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Steel) - Double Hit - Level 15
  (773, 77308, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Steel) - Metal Sound - Level 20
  (773, 77308, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Steel) - Crush Claw - Level 25
  (773, 77308, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Steel) - Air Slash - Level 30
  (773, 77308, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Steel) - Tri Attack - Level 35
  (773, 77308, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Steel) - X-Scissor - Level 40
  (773, 77308, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Steel) - Crunch - Level 45
  (773, 77308, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Steel) - Take Down - Level 50
  (773, 77308, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Steel) - Double-Edge - Level 55
  (773, 77308, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Steel) - Parting Shot - Level 60
  (773, 77308, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Steel) - Hyper Beam - TM08
  (773, 77308, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Steel) - Giga Impact - TM09
  (773, 77308, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Steel) - Thunder Wave - TM14
  (773, 77308, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Steel) - Self-Destruct - TM20
  (773, 77308, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Steel) - Rest - TM21
  (773, 77308, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Steel) - Rock Slide - TM22
  (773, 77308, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Steel) - Snore - TM24
  (773, 77308, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Steel) - Protect - TM25
  (773, 77308, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Steel) - Scary Face - TM26
  (773, 77308, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Steel) - Icy Wind - TM27
  (773, 77308, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Steel) - Steel Wing - TM30
  (773, 77308, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Steel) - Sandstorm - TM32
  (773, 77308, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Steel) - Rain Dance - TM33
  (773, 77308, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Steel) - Sunny Day - TM34
  (773, 77308, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Steel) - Hail - TM35
  (773, 77308, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Steel) - Facade - TM39
  (773, 77308, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Steel) - Swift - TM40
  (773, 77308, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Steel) - Imprison - TM44
  (773, 77308, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Steel) - U-turn - TM56
  (773, 77308, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Steel) - Payback - TM57
  (773, 77308, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Steel) - Shadow Claw - TM65
  (773, 77308, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Steel) - Thunder Fang - TM66
  (773, 77308, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Steel) - Ice Fang - TM67
  (773, 77308, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Steel) - Fire Fang - TM68
  (773, 77308, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Steel) - Round - TM76
  (773, 77308, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Steel) - Snarl - TM85
  (773, 77308, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Steel) - Air Slash - TM95
  (773, 77308, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Steel) - Swords Dance - TR00
  (773, 77308, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Steel) - Flamethrower - TR02
  (773, 77308, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Steel) - Surf - TR04
  (773, 77308, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Steel) - Ice Beam - TR05
  (773, 77308, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Steel) - Thunderbolt - TR08
  (773, 77308, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Steel) - Tri Attack - TR19
  (773, 77308, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Steel) - Substitute - TR20
  (773, 77308, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Steel) - Reversal - TR21
  (773, 77308, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Steel) - Outrage - TR24
  (773, 77308, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Steel) - Endure - TR26
  (773, 77308, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Steel) - Sleep Talk - TR27
  (773, 77308, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Steel) - Crunch - TR32
  (773, 77308, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Steel) - Shadow Ball - TR33
  (773, 77308, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Steel) - Heat Wave - TR36
  (773, 77308, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Steel) - Hyper Voice - TR42
  (773, 77308, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Steel) - Iron Defense - TR46
  (773, 77308, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Steel) - Dragon Claw - TR47
  (773, 77308, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Steel) - X-Scissor - TR60
  (773, 77308, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Steel) - Zen Headbutt - TR69
  (773, 77308, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Steel) - Flash Cannon - TR70
  (773, 77308, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Steel) - Iron Head - TR74
  (773, 77308, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Steel) - Work Up - TR85
  (773, 77308, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Steel) - Psychic Fangs - TR97
  (773, 77308, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Steel) - Draco Meteor - Tutor
  (773, 77308, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Steel) - Grass Pledge - Tutor
  (773, 77308, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Steel) - Steel Beam - Tutor
  (773, 77308, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Steel) - Multi-Attack - Evolution
  (773, 77308, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Fire) - Tackle - Level 1
  (773, 77309, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Fire) - Bite - Level 1
  (773, 77309, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Fire) - Explosion - Level 1
  (773, 77309, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Fire) - Scary Face - Level 1
  (773, 77309, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Fire) - Imprison - Level 1
  (773, 77309, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Fire) - Poison Fang - Level 1
  (773, 77309, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Fire) - Aerial Ace - Level 1
  (773, 77309, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Fire) - Thunder Fang - Level 1
  (773, 77309, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Fire) - Ice Fang - Level 1
  (773, 77309, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Fire) - Fire Fang - Level 1
  (773, 77309, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Fire) - Iron Head - Level 1
  (773, 77309, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Fire) - Multi-Attack - Level 1
  (773, 77309, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Fire) - Double Hit - Level 15
  (773, 77309, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Fire) - Metal Sound - Level 20
  (773, 77309, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Fire) - Crush Claw - Level 25
  (773, 77309, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Fire) - Air Slash - Level 30
  (773, 77309, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Fire) - Tri Attack - Level 35
  (773, 77309, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Fire) - X-Scissor - Level 40
  (773, 77309, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Fire) - Crunch - Level 45
  (773, 77309, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Fire) - Take Down - Level 50
  (773, 77309, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Fire) - Double-Edge - Level 55
  (773, 77309, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Fire) - Parting Shot - Level 60
  (773, 77309, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Fire) - Hyper Beam - TM08
  (773, 77309, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Fire) - Giga Impact - TM09
  (773, 77309, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Fire) - Thunder Wave - TM14
  (773, 77309, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Fire) - Self-Destruct - TM20
  (773, 77309, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Fire) - Rest - TM21
  (773, 77309, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Fire) - Rock Slide - TM22
  (773, 77309, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Fire) - Snore - TM24
  (773, 77309, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Fire) - Protect - TM25
  (773, 77309, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Fire) - Scary Face - TM26
  (773, 77309, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Fire) - Icy Wind - TM27
  (773, 77309, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Fire) - Steel Wing - TM30
  (773, 77309, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Fire) - Sandstorm - TM32
  (773, 77309, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Fire) - Rain Dance - TM33
  (773, 77309, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Fire) - Sunny Day - TM34
  (773, 77309, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Fire) - Hail - TM35
  (773, 77309, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Fire) - Facade - TM39
  (773, 77309, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Fire) - Swift - TM40
  (773, 77309, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Fire) - Imprison - TM44
  (773, 77309, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Fire) - U-turn - TM56
  (773, 77309, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Fire) - Payback - TM57
  (773, 77309, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Fire) - Shadow Claw - TM65
  (773, 77309, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Fire) - Thunder Fang - TM66
  (773, 77309, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Fire) - Ice Fang - TM67
  (773, 77309, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Fire) - Fire Fang - TM68
  (773, 77309, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Fire) - Round - TM76
  (773, 77309, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Fire) - Snarl - TM85
  (773, 77309, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Fire) - Air Slash - TM95
  (773, 77309, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Fire) - Swords Dance - TR00
  (773, 77309, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Fire) - Flamethrower - TR02
  (773, 77309, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Fire) - Surf - TR04
  (773, 77309, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Fire) - Ice Beam - TR05
  (773, 77309, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Fire) - Thunderbolt - TR08
  (773, 77309, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Fire) - Tri Attack - TR19
  (773, 77309, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Fire) - Substitute - TR20
  (773, 77309, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Fire) - Reversal - TR21
  (773, 77309, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Fire) - Outrage - TR24
  (773, 77309, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Fire) - Endure - TR26
  (773, 77309, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Fire) - Sleep Talk - TR27
  (773, 77309, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Fire) - Crunch - TR32
  (773, 77309, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Fire) - Shadow Ball - TR33
  (773, 77309, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Fire) - Heat Wave - TR36
  (773, 77309, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Fire) - Hyper Voice - TR42
  (773, 77309, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Fire) - Iron Defense - TR46
  (773, 77309, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Fire) - Dragon Claw - TR47
  (773, 77309, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Fire) - X-Scissor - TR60
  (773, 77309, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Fire) - Zen Headbutt - TR69
  (773, 77309, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Fire) - Flash Cannon - TR70
  (773, 77309, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Fire) - Iron Head - TR74
  (773, 77309, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Fire) - Work Up - TR85
  (773, 77309, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Fire) - Psychic Fangs - TR97
  (773, 77309, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Fire) - Draco Meteor - Tutor
  (773, 77309, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Fire) - Grass Pledge - Tutor
  (773, 77309, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Fire) - Steel Beam - Tutor
  (773, 77309, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Fire) - Multi-Attack - Evolution
  (773, 77309, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Water) - Tackle - Level 1
  (773, 77310, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Water) - Bite - Level 1
  (773, 77310, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Water) - Explosion - Level 1
  (773, 77310, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Water) - Scary Face - Level 1
  (773, 77310, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Water) - Imprison - Level 1
  (773, 77310, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Water) - Poison Fang - Level 1
  (773, 77310, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Water) - Aerial Ace - Level 1
  (773, 77310, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Water) - Thunder Fang - Level 1
  (773, 77310, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Water) - Ice Fang - Level 1
  (773, 77310, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Water) - Fire Fang - Level 1
  (773, 77310, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Water) - Iron Head - Level 1
  (773, 77310, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Water) - Multi-Attack - Level 1
  (773, 77310, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Water) - Double Hit - Level 15
  (773, 77310, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Water) - Metal Sound - Level 20
  (773, 77310, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Water) - Crush Claw - Level 25
  (773, 77310, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Water) - Air Slash - Level 30
  (773, 77310, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Water) - Tri Attack - Level 35
  (773, 77310, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Water) - X-Scissor - Level 40
  (773, 77310, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Water) - Crunch - Level 45
  (773, 77310, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Water) - Take Down - Level 50
  (773, 77310, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Water) - Double-Edge - Level 55
  (773, 77310, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Water) - Parting Shot - Level 60
  (773, 77310, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Water) - Hyper Beam - TM08
  (773, 77310, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Water) - Giga Impact - TM09
  (773, 77310, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Water) - Thunder Wave - TM14
  (773, 77310, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Water) - Self-Destruct - TM20
  (773, 77310, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Water) - Rest - TM21
  (773, 77310, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Water) - Rock Slide - TM22
  (773, 77310, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Water) - Snore - TM24
  (773, 77310, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Water) - Protect - TM25
  (773, 77310, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Water) - Scary Face - TM26
  (773, 77310, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Water) - Icy Wind - TM27
  (773, 77310, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Water) - Steel Wing - TM30
  (773, 77310, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Water) - Sandstorm - TM32
  (773, 77310, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Water) - Rain Dance - TM33
  (773, 77310, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Water) - Sunny Day - TM34
  (773, 77310, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Water) - Hail - TM35
  (773, 77310, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Water) - Facade - TM39
  (773, 77310, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Water) - Swift - TM40
  (773, 77310, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Water) - Imprison - TM44
  (773, 77310, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Water) - U-turn - TM56
  (773, 77310, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Water) - Payback - TM57
  (773, 77310, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Water) - Shadow Claw - TM65
  (773, 77310, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Water) - Thunder Fang - TM66
  (773, 77310, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Water) - Ice Fang - TM67
  (773, 77310, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Water) - Fire Fang - TM68
  (773, 77310, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Water) - Round - TM76
  (773, 77310, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Water) - Snarl - TM85
  (773, 77310, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Water) - Air Slash - TM95
  (773, 77310, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Water) - Swords Dance - TR00
  (773, 77310, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Water) - Flamethrower - TR02
  (773, 77310, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Water) - Surf - TR04
  (773, 77310, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Water) - Ice Beam - TR05
  (773, 77310, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Water) - Thunderbolt - TR08
  (773, 77310, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Water) - Tri Attack - TR19
  (773, 77310, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Water) - Substitute - TR20
  (773, 77310, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Water) - Reversal - TR21
  (773, 77310, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Water) - Outrage - TR24
  (773, 77310, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Water) - Endure - TR26
  (773, 77310, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Water) - Sleep Talk - TR27
  (773, 77310, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Water) - Crunch - TR32
  (773, 77310, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Water) - Shadow Ball - TR33
  (773, 77310, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Water) - Heat Wave - TR36
  (773, 77310, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Water) - Hyper Voice - TR42
  (773, 77310, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Water) - Iron Defense - TR46
  (773, 77310, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Water) - Dragon Claw - TR47
  (773, 77310, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Water) - X-Scissor - TR60
  (773, 77310, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Water) - Zen Headbutt - TR69
  (773, 77310, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Water) - Flash Cannon - TR70
  (773, 77310, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Water) - Iron Head - TR74
  (773, 77310, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Water) - Work Up - TR85
  (773, 77310, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Water) - Psychic Fangs - TR97
  (773, 77310, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Water) - Draco Meteor - Tutor
  (773, 77310, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Water) - Grass Pledge - Tutor
  (773, 77310, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Water) - Steel Beam - Tutor
  (773, 77310, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Water) - Multi-Attack - Evolution
  (773, 77310, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Grass) - Tackle - Level 1
  (773, 77311, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Grass) - Bite - Level 1
  (773, 77311, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Grass) - Explosion - Level 1
  (773, 77311, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Grass) - Scary Face - Level 1
  (773, 77311, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Grass) - Imprison - Level 1
  (773, 77311, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Grass) - Poison Fang - Level 1
  (773, 77311, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Grass) - Aerial Ace - Level 1
  (773, 77311, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Grass) - Thunder Fang - Level 1
  (773, 77311, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Grass) - Ice Fang - Level 1
  (773, 77311, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Grass) - Fire Fang - Level 1
  (773, 77311, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Grass) - Iron Head - Level 1
  (773, 77311, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Grass) - Multi-Attack - Level 1
  (773, 77311, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Grass) - Double Hit - Level 15
  (773, 77311, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Grass) - Metal Sound - Level 20
  (773, 77311, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Grass) - Crush Claw - Level 25
  (773, 77311, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Grass) - Air Slash - Level 30
  (773, 77311, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Grass) - Tri Attack - Level 35
  (773, 77311, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Grass) - X-Scissor - Level 40
  (773, 77311, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Grass) - Crunch - Level 45
  (773, 77311, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Grass) - Take Down - Level 50
  (773, 77311, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Grass) - Double-Edge - Level 55
  (773, 77311, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Grass) - Parting Shot - Level 60
  (773, 77311, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Grass) - Hyper Beam - TM08
  (773, 77311, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Grass) - Giga Impact - TM09
  (773, 77311, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Grass) - Thunder Wave - TM14
  (773, 77311, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Grass) - Self-Destruct - TM20
  (773, 77311, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Grass) - Rest - TM21
  (773, 77311, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Grass) - Rock Slide - TM22
  (773, 77311, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Grass) - Snore - TM24
  (773, 77311, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Grass) - Protect - TM25
  (773, 77311, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Grass) - Scary Face - TM26
  (773, 77311, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Grass) - Icy Wind - TM27
  (773, 77311, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Grass) - Steel Wing - TM30
  (773, 77311, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Grass) - Sandstorm - TM32
  (773, 77311, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Grass) - Rain Dance - TM33
  (773, 77311, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Grass) - Sunny Day - TM34
  (773, 77311, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Grass) - Hail - TM35
  (773, 77311, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Grass) - Facade - TM39
  (773, 77311, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Grass) - Swift - TM40
  (773, 77311, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Grass) - Imprison - TM44
  (773, 77311, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Grass) - U-turn - TM56
  (773, 77311, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Grass) - Payback - TM57
  (773, 77311, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Grass) - Shadow Claw - TM65
  (773, 77311, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Grass) - Thunder Fang - TM66
  (773, 77311, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Grass) - Ice Fang - TM67
  (773, 77311, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Grass) - Fire Fang - TM68
  (773, 77311, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Grass) - Round - TM76
  (773, 77311, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Grass) - Snarl - TM85
  (773, 77311, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Grass) - Air Slash - TM95
  (773, 77311, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Grass) - Swords Dance - TR00
  (773, 77311, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Grass) - Flamethrower - TR02
  (773, 77311, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Grass) - Surf - TR04
  (773, 77311, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Grass) - Ice Beam - TR05
  (773, 77311, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Grass) - Thunderbolt - TR08
  (773, 77311, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Grass) - Tri Attack - TR19
  (773, 77311, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Grass) - Substitute - TR20
  (773, 77311, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Grass) - Reversal - TR21
  (773, 77311, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Grass) - Outrage - TR24
  (773, 77311, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Grass) - Endure - TR26
  (773, 77311, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Grass) - Sleep Talk - TR27
  (773, 77311, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Grass) - Crunch - TR32
  (773, 77311, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Grass) - Shadow Ball - TR33
  (773, 77311, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Grass) - Heat Wave - TR36
  (773, 77311, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Grass) - Hyper Voice - TR42
  (773, 77311, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Grass) - Iron Defense - TR46
  (773, 77311, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Grass) - Dragon Claw - TR47
  (773, 77311, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Grass) - X-Scissor - TR60
  (773, 77311, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Grass) - Zen Headbutt - TR69
  (773, 77311, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Grass) - Flash Cannon - TR70
  (773, 77311, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Grass) - Iron Head - TR74
  (773, 77311, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Grass) - Work Up - TR85
  (773, 77311, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Grass) - Psychic Fangs - TR97
  (773, 77311, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Grass) - Draco Meteor - Tutor
  (773, 77311, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Grass) - Grass Pledge - Tutor
  (773, 77311, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Grass) - Steel Beam - Tutor
  (773, 77311, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Grass) - Multi-Attack - Evolution
  (773, 77311, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Electric) - Tackle - Level 1
  (773, 77312, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Electric) - Bite - Level 1
  (773, 77312, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Electric) - Explosion - Level 1
  (773, 77312, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Electric) - Scary Face - Level 1
  (773, 77312, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Electric) - Imprison - Level 1
  (773, 77312, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Electric) - Poison Fang - Level 1
  (773, 77312, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Electric) - Aerial Ace - Level 1
  (773, 77312, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Electric) - Thunder Fang - Level 1
  (773, 77312, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Electric) - Ice Fang - Level 1
  (773, 77312, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Electric) - Fire Fang - Level 1
  (773, 77312, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Electric) - Iron Head - Level 1
  (773, 77312, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Electric) - Multi-Attack - Level 1
  (773, 77312, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Electric) - Double Hit - Level 15
  (773, 77312, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Electric) - Metal Sound - Level 20
  (773, 77312, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Electric) - Crush Claw - Level 25
  (773, 77312, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Electric) - Air Slash - Level 30
  (773, 77312, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Electric) - Tri Attack - Level 35
  (773, 77312, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Electric) - X-Scissor - Level 40
  (773, 77312, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Electric) - Crunch - Level 45
  (773, 77312, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Electric) - Take Down - Level 50
  (773, 77312, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Electric) - Double-Edge - Level 55
  (773, 77312, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Electric) - Parting Shot - Level 60
  (773, 77312, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Electric) - Hyper Beam - TM08
  (773, 77312, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Electric) - Giga Impact - TM09
  (773, 77312, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Electric) - Thunder Wave - TM14
  (773, 77312, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Electric) - Self-Destruct - TM20
  (773, 77312, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Electric) - Rest - TM21
  (773, 77312, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Electric) - Rock Slide - TM22
  (773, 77312, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Electric) - Snore - TM24
  (773, 77312, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Electric) - Protect - TM25
  (773, 77312, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Electric) - Scary Face - TM26
  (773, 77312, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Electric) - Icy Wind - TM27
  (773, 77312, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Electric) - Steel Wing - TM30
  (773, 77312, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Electric) - Sandstorm - TM32
  (773, 77312, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Electric) - Rain Dance - TM33
  (773, 77312, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Electric) - Sunny Day - TM34
  (773, 77312, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Electric) - Hail - TM35
  (773, 77312, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Electric) - Facade - TM39
  (773, 77312, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Electric) - Swift - TM40
  (773, 77312, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Electric) - Imprison - TM44
  (773, 77312, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Electric) - U-turn - TM56
  (773, 77312, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Electric) - Payback - TM57
  (773, 77312, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Electric) - Shadow Claw - TM65
  (773, 77312, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Electric) - Thunder Fang - TM66
  (773, 77312, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Electric) - Ice Fang - TM67
  (773, 77312, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Electric) - Fire Fang - TM68
  (773, 77312, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Electric) - Round - TM76
  (773, 77312, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Electric) - Snarl - TM85
  (773, 77312, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Electric) - Air Slash - TM95
  (773, 77312, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Electric) - Swords Dance - TR00
  (773, 77312, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Electric) - Flamethrower - TR02
  (773, 77312, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Electric) - Surf - TR04
  (773, 77312, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Electric) - Ice Beam - TR05
  (773, 77312, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Electric) - Thunderbolt - TR08
  (773, 77312, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Electric) - Tri Attack - TR19
  (773, 77312, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Electric) - Substitute - TR20
  (773, 77312, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Electric) - Reversal - TR21
  (773, 77312, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Electric) - Outrage - TR24
  (773, 77312, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Electric) - Endure - TR26
  (773, 77312, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Electric) - Sleep Talk - TR27
  (773, 77312, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Electric) - Crunch - TR32
  (773, 77312, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Electric) - Shadow Ball - TR33
  (773, 77312, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Electric) - Heat Wave - TR36
  (773, 77312, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Electric) - Hyper Voice - TR42
  (773, 77312, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Electric) - Iron Defense - TR46
  (773, 77312, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Electric) - Dragon Claw - TR47
  (773, 77312, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Electric) - X-Scissor - TR60
  (773, 77312, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Electric) - Zen Headbutt - TR69
  (773, 77312, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Electric) - Flash Cannon - TR70
  (773, 77312, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Electric) - Iron Head - TR74
  (773, 77312, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Electric) - Work Up - TR85
  (773, 77312, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Electric) - Psychic Fangs - TR97
  (773, 77312, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Electric) - Draco Meteor - Tutor
  (773, 77312, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Electric) - Grass Pledge - Tutor
  (773, 77312, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Electric) - Steel Beam - Tutor
  (773, 77312, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Electric) - Multi-Attack - Evolution
  (773, 77312, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Psychic) - Tackle - Level 1
  (773, 77313, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Psychic) - Bite - Level 1
  (773, 77313, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Psychic) - Explosion - Level 1
  (773, 77313, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Psychic) - Scary Face - Level 1
  (773, 77313, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Psychic) - Imprison - Level 1
  (773, 77313, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Psychic) - Poison Fang - Level 1
  (773, 77313, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Psychic) - Aerial Ace - Level 1
  (773, 77313, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Psychic) - Thunder Fang - Level 1
  (773, 77313, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Psychic) - Ice Fang - Level 1
  (773, 77313, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Psychic) - Fire Fang - Level 1
  (773, 77313, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Psychic) - Iron Head - Level 1
  (773, 77313, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Psychic) - Multi-Attack - Level 1
  (773, 77313, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Psychic) - Double Hit - Level 15
  (773, 77313, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Psychic) - Metal Sound - Level 20
  (773, 77313, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Psychic) - Crush Claw - Level 25
  (773, 77313, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Psychic) - Air Slash - Level 30
  (773, 77313, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Psychic) - Tri Attack - Level 35
  (773, 77313, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Psychic) - X-Scissor - Level 40
  (773, 77313, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Psychic) - Crunch - Level 45
  (773, 77313, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Psychic) - Take Down - Level 50
  (773, 77313, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Psychic) - Double-Edge - Level 55
  (773, 77313, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Psychic) - Parting Shot - Level 60
  (773, 77313, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Psychic) - Hyper Beam - TM08
  (773, 77313, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Psychic) - Giga Impact - TM09
  (773, 77313, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Psychic) - Thunder Wave - TM14
  (773, 77313, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Psychic) - Self-Destruct - TM20
  (773, 77313, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Psychic) - Rest - TM21
  (773, 77313, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Psychic) - Rock Slide - TM22
  (773, 77313, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Psychic) - Snore - TM24
  (773, 77313, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Psychic) - Protect - TM25
  (773, 77313, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Psychic) - Scary Face - TM26
  (773, 77313, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Psychic) - Icy Wind - TM27
  (773, 77313, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Psychic) - Steel Wing - TM30
  (773, 77313, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Psychic) - Sandstorm - TM32
  (773, 77313, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Psychic) - Rain Dance - TM33
  (773, 77313, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Psychic) - Sunny Day - TM34
  (773, 77313, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Psychic) - Hail - TM35
  (773, 77313, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Psychic) - Facade - TM39
  (773, 77313, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Psychic) - Swift - TM40
  (773, 77313, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Psychic) - Imprison - TM44
  (773, 77313, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Psychic) - U-turn - TM56
  (773, 77313, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Psychic) - Payback - TM57
  (773, 77313, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Psychic) - Shadow Claw - TM65
  (773, 77313, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Psychic) - Thunder Fang - TM66
  (773, 77313, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Psychic) - Ice Fang - TM67
  (773, 77313, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Psychic) - Fire Fang - TM68
  (773, 77313, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Psychic) - Round - TM76
  (773, 77313, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Psychic) - Snarl - TM85
  (773, 77313, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Psychic) - Air Slash - TM95
  (773, 77313, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Psychic) - Swords Dance - TR00
  (773, 77313, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Psychic) - Flamethrower - TR02
  (773, 77313, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Psychic) - Surf - TR04
  (773, 77313, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Psychic) - Ice Beam - TR05
  (773, 77313, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Psychic) - Thunderbolt - TR08
  (773, 77313, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Psychic) - Tri Attack - TR19
  (773, 77313, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Psychic) - Substitute - TR20
  (773, 77313, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Psychic) - Reversal - TR21
  (773, 77313, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Psychic) - Outrage - TR24
  (773, 77313, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Psychic) - Endure - TR26
  (773, 77313, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Psychic) - Sleep Talk - TR27
  (773, 77313, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Psychic) - Crunch - TR32
  (773, 77313, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Psychic) - Shadow Ball - TR33
  (773, 77313, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Psychic) - Heat Wave - TR36
  (773, 77313, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Psychic) - Hyper Voice - TR42
  (773, 77313, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Psychic) - Iron Defense - TR46
  (773, 77313, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Psychic) - Dragon Claw - TR47
  (773, 77313, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Psychic) - X-Scissor - TR60
  (773, 77313, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Psychic) - Zen Headbutt - TR69
  (773, 77313, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Psychic) - Flash Cannon - TR70
  (773, 77313, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Psychic) - Iron Head - TR74
  (773, 77313, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Psychic) - Work Up - TR85
  (773, 77313, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Psychic) - Psychic Fangs - TR97
  (773, 77313, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Psychic) - Draco Meteor - Tutor
  (773, 77313, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Psychic) - Grass Pledge - Tutor
  (773, 77313, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Psychic) - Steel Beam - Tutor
  (773, 77313, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Psychic) - Multi-Attack - Evolution
  (773, 77313, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Ice) - Tackle - Level 1
  (773, 77314, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Ice) - Bite - Level 1
  (773, 77314, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Ice) - Explosion - Level 1
  (773, 77314, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Ice) - Scary Face - Level 1
  (773, 77314, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Ice) - Imprison - Level 1
  (773, 77314, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Ice) - Poison Fang - Level 1
  (773, 77314, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Ice) - Aerial Ace - Level 1
  (773, 77314, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Ice) - Thunder Fang - Level 1
  (773, 77314, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Ice) - Ice Fang - Level 1
  (773, 77314, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Ice) - Fire Fang - Level 1
  (773, 77314, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Ice) - Iron Head - Level 1
  (773, 77314, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Ice) - Multi-Attack - Level 1
  (773, 77314, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Ice) - Double Hit - Level 15
  (773, 77314, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Ice) - Metal Sound - Level 20
  (773, 77314, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Ice) - Crush Claw - Level 25
  (773, 77314, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Ice) - Air Slash - Level 30
  (773, 77314, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Ice) - Tri Attack - Level 35
  (773, 77314, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Ice) - X-Scissor - Level 40
  (773, 77314, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Ice) - Crunch - Level 45
  (773, 77314, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Ice) - Take Down - Level 50
  (773, 77314, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Ice) - Double-Edge - Level 55
  (773, 77314, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Ice) - Parting Shot - Level 60
  (773, 77314, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Ice) - Hyper Beam - TM08
  (773, 77314, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Ice) - Giga Impact - TM09
  (773, 77314, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Ice) - Thunder Wave - TM14
  (773, 77314, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Ice) - Self-Destruct - TM20
  (773, 77314, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Ice) - Rest - TM21
  (773, 77314, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Ice) - Rock Slide - TM22
  (773, 77314, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Ice) - Snore - TM24
  (773, 77314, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Ice) - Protect - TM25
  (773, 77314, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Ice) - Scary Face - TM26
  (773, 77314, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Ice) - Icy Wind - TM27
  (773, 77314, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Ice) - Steel Wing - TM30
  (773, 77314, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Ice) - Sandstorm - TM32
  (773, 77314, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Ice) - Rain Dance - TM33
  (773, 77314, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Ice) - Sunny Day - TM34
  (773, 77314, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Ice) - Hail - TM35
  (773, 77314, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Ice) - Facade - TM39
  (773, 77314, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Ice) - Swift - TM40
  (773, 77314, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Ice) - Imprison - TM44
  (773, 77314, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Ice) - U-turn - TM56
  (773, 77314, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Ice) - Payback - TM57
  (773, 77314, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Ice) - Shadow Claw - TM65
  (773, 77314, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Ice) - Thunder Fang - TM66
  (773, 77314, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Ice) - Ice Fang - TM67
  (773, 77314, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Ice) - Fire Fang - TM68
  (773, 77314, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Ice) - Round - TM76
  (773, 77314, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Ice) - Snarl - TM85
  (773, 77314, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Ice) - Air Slash - TM95
  (773, 77314, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Ice) - Swords Dance - TR00
  (773, 77314, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Ice) - Flamethrower - TR02
  (773, 77314, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Ice) - Surf - TR04
  (773, 77314, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Ice) - Ice Beam - TR05
  (773, 77314, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Ice) - Thunderbolt - TR08
  (773, 77314, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Ice) - Tri Attack - TR19
  (773, 77314, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Ice) - Substitute - TR20
  (773, 77314, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Ice) - Reversal - TR21
  (773, 77314, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Ice) - Outrage - TR24
  (773, 77314, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Ice) - Endure - TR26
  (773, 77314, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Ice) - Sleep Talk - TR27
  (773, 77314, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Ice) - Crunch - TR32
  (773, 77314, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Ice) - Shadow Ball - TR33
  (773, 77314, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Ice) - Heat Wave - TR36
  (773, 77314, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Ice) - Hyper Voice - TR42
  (773, 77314, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Ice) - Iron Defense - TR46
  (773, 77314, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Ice) - Dragon Claw - TR47
  (773, 77314, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Ice) - X-Scissor - TR60
  (773, 77314, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Ice) - Zen Headbutt - TR69
  (773, 77314, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Ice) - Flash Cannon - TR70
  (773, 77314, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Ice) - Iron Head - TR74
  (773, 77314, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Ice) - Work Up - TR85
  (773, 77314, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Ice) - Psychic Fangs - TR97
  (773, 77314, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Ice) - Draco Meteor - Tutor
  (773, 77314, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Ice) - Grass Pledge - Tutor
  (773, 77314, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Ice) - Steel Beam - Tutor
  (773, 77314, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Ice) - Multi-Attack - Evolution
  (773, 77314, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Dragon) - Tackle - Level 1
  (773, 77315, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Dragon) - Bite - Level 1
  (773, 77315, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Dragon) - Explosion - Level 1
  (773, 77315, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Dragon) - Scary Face - Level 1
  (773, 77315, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Dragon) - Imprison - Level 1
  (773, 77315, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Dragon) - Poison Fang - Level 1
  (773, 77315, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Dragon) - Aerial Ace - Level 1
  (773, 77315, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Dragon) - Thunder Fang - Level 1
  (773, 77315, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Dragon) - Ice Fang - Level 1
  (773, 77315, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Dragon) - Fire Fang - Level 1
  (773, 77315, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Dragon) - Iron Head - Level 1
  (773, 77315, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Dragon) - Multi-Attack - Level 1
  (773, 77315, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Dragon) - Double Hit - Level 15
  (773, 77315, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Dragon) - Metal Sound - Level 20
  (773, 77315, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Dragon) - Crush Claw - Level 25
  (773, 77315, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Dragon) - Air Slash - Level 30
  (773, 77315, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Dragon) - Tri Attack - Level 35
  (773, 77315, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Dragon) - X-Scissor - Level 40
  (773, 77315, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Dragon) - Crunch - Level 45
  (773, 77315, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Dragon) - Take Down - Level 50
  (773, 77315, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Dragon) - Double-Edge - Level 55
  (773, 77315, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Dragon) - Parting Shot - Level 60
  (773, 77315, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Dragon) - Hyper Beam - TM08
  (773, 77315, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Dragon) - Giga Impact - TM09
  (773, 77315, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Dragon) - Thunder Wave - TM14
  (773, 77315, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Dragon) - Self-Destruct - TM20
  (773, 77315, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Dragon) - Rest - TM21
  (773, 77315, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Dragon) - Rock Slide - TM22
  (773, 77315, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Dragon) - Snore - TM24
  (773, 77315, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Dragon) - Protect - TM25
  (773, 77315, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Dragon) - Scary Face - TM26
  (773, 77315, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Dragon) - Icy Wind - TM27
  (773, 77315, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Dragon) - Steel Wing - TM30
  (773, 77315, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Dragon) - Sandstorm - TM32
  (773, 77315, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Dragon) - Rain Dance - TM33
  (773, 77315, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Dragon) - Sunny Day - TM34
  (773, 77315, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Dragon) - Hail - TM35
  (773, 77315, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Dragon) - Facade - TM39
  (773, 77315, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Dragon) - Swift - TM40
  (773, 77315, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Dragon) - Imprison - TM44
  (773, 77315, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Dragon) - U-turn - TM56
  (773, 77315, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Dragon) - Payback - TM57
  (773, 77315, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Dragon) - Shadow Claw - TM65
  (773, 77315, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Dragon) - Thunder Fang - TM66
  (773, 77315, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Dragon) - Ice Fang - TM67
  (773, 77315, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Dragon) - Fire Fang - TM68
  (773, 77315, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Dragon) - Round - TM76
  (773, 77315, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Dragon) - Snarl - TM85
  (773, 77315, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Dragon) - Air Slash - TM95
  (773, 77315, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Dragon) - Swords Dance - TR00
  (773, 77315, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Dragon) - Flamethrower - TR02
  (773, 77315, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Dragon) - Surf - TR04
  (773, 77315, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Dragon) - Ice Beam - TR05
  (773, 77315, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Dragon) - Thunderbolt - TR08
  (773, 77315, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Dragon) - Tri Attack - TR19
  (773, 77315, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Dragon) - Substitute - TR20
  (773, 77315, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Dragon) - Reversal - TR21
  (773, 77315, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Dragon) - Outrage - TR24
  (773, 77315, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Dragon) - Endure - TR26
  (773, 77315, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Dragon) - Sleep Talk - TR27
  (773, 77315, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Dragon) - Crunch - TR32
  (773, 77315, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Dragon) - Shadow Ball - TR33
  (773, 77315, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Dragon) - Heat Wave - TR36
  (773, 77315, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Dragon) - Hyper Voice - TR42
  (773, 77315, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Dragon) - Iron Defense - TR46
  (773, 77315, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Dragon) - Dragon Claw - TR47
  (773, 77315, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Dragon) - X-Scissor - TR60
  (773, 77315, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Dragon) - Zen Headbutt - TR69
  (773, 77315, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Dragon) - Flash Cannon - TR70
  (773, 77315, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Dragon) - Iron Head - TR74
  (773, 77315, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Dragon) - Work Up - TR85
  (773, 77315, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Dragon) - Psychic Fangs - TR97
  (773, 77315, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Dragon) - Draco Meteor - Tutor
  (773, 77315, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Dragon) - Grass Pledge - Tutor
  (773, 77315, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Dragon) - Steel Beam - Tutor
  (773, 77315, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Dragon) - Multi-Attack - Evolution
  (773, 77315, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Dark) - Tackle - Level 1
  (773, 77316, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Dark) - Bite - Level 1
  (773, 77316, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Dark) - Explosion - Level 1
  (773, 77316, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Dark) - Scary Face - Level 1
  (773, 77316, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Dark) - Imprison - Level 1
  (773, 77316, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Dark) - Poison Fang - Level 1
  (773, 77316, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Dark) - Aerial Ace - Level 1
  (773, 77316, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Dark) - Thunder Fang - Level 1
  (773, 77316, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Dark) - Ice Fang - Level 1
  (773, 77316, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Dark) - Fire Fang - Level 1
  (773, 77316, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Dark) - Iron Head - Level 1
  (773, 77316, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Dark) - Multi-Attack - Level 1
  (773, 77316, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Dark) - Double Hit - Level 15
  (773, 77316, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Dark) - Metal Sound - Level 20
  (773, 77316, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Dark) - Crush Claw - Level 25
  (773, 77316, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Dark) - Air Slash - Level 30
  (773, 77316, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Dark) - Tri Attack - Level 35
  (773, 77316, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Dark) - X-Scissor - Level 40
  (773, 77316, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Dark) - Crunch - Level 45
  (773, 77316, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Dark) - Take Down - Level 50
  (773, 77316, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Dark) - Double-Edge - Level 55
  (773, 77316, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Dark) - Parting Shot - Level 60
  (773, 77316, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Dark) - Hyper Beam - TM08
  (773, 77316, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Dark) - Giga Impact - TM09
  (773, 77316, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Dark) - Thunder Wave - TM14
  (773, 77316, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Dark) - Self-Destruct - TM20
  (773, 77316, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Dark) - Rest - TM21
  (773, 77316, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Dark) - Rock Slide - TM22
  (773, 77316, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Dark) - Snore - TM24
  (773, 77316, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Dark) - Protect - TM25
  (773, 77316, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Dark) - Scary Face - TM26
  (773, 77316, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Dark) - Icy Wind - TM27
  (773, 77316, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Dark) - Steel Wing - TM30
  (773, 77316, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Dark) - Sandstorm - TM32
  (773, 77316, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Dark) - Rain Dance - TM33
  (773, 77316, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Dark) - Sunny Day - TM34
  (773, 77316, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Dark) - Hail - TM35
  (773, 77316, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Dark) - Facade - TM39
  (773, 77316, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Dark) - Swift - TM40
  (773, 77316, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Dark) - Imprison - TM44
  (773, 77316, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Dark) - U-turn - TM56
  (773, 77316, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Dark) - Payback - TM57
  (773, 77316, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Dark) - Shadow Claw - TM65
  (773, 77316, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Dark) - Thunder Fang - TM66
  (773, 77316, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Dark) - Ice Fang - TM67
  (773, 77316, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Dark) - Fire Fang - TM68
  (773, 77316, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Dark) - Round - TM76
  (773, 77316, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Dark) - Snarl - TM85
  (773, 77316, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Dark) - Air Slash - TM95
  (773, 77316, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Dark) - Swords Dance - TR00
  (773, 77316, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Dark) - Flamethrower - TR02
  (773, 77316, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Dark) - Surf - TR04
  (773, 77316, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Dark) - Ice Beam - TR05
  (773, 77316, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Dark) - Thunderbolt - TR08
  (773, 77316, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Dark) - Tri Attack - TR19
  (773, 77316, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Dark) - Substitute - TR20
  (773, 77316, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Dark) - Reversal - TR21
  (773, 77316, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Dark) - Outrage - TR24
  (773, 77316, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Dark) - Endure - TR26
  (773, 77316, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Dark) - Sleep Talk - TR27
  (773, 77316, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Dark) - Crunch - TR32
  (773, 77316, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Dark) - Shadow Ball - TR33
  (773, 77316, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Dark) - Heat Wave - TR36
  (773, 77316, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Dark) - Hyper Voice - TR42
  (773, 77316, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Dark) - Iron Defense - TR46
  (773, 77316, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Dark) - Dragon Claw - TR47
  (773, 77316, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Dark) - X-Scissor - TR60
  (773, 77316, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Dark) - Zen Headbutt - TR69
  (773, 77316, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Dark) - Flash Cannon - TR70
  (773, 77316, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Dark) - Iron Head - TR74
  (773, 77316, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Dark) - Work Up - TR85
  (773, 77316, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Dark) - Psychic Fangs - TR97
  (773, 77316, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Dark) - Draco Meteor - Tutor
  (773, 77316, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Dark) - Grass Pledge - Tutor
  (773, 77316, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Dark) - Steel Beam - Tutor
  (773, 77316, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Dark) - Multi-Attack - Evolution
  (773, 77316, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76),
  -- Silvally (Fairy) - Tackle - Level 1
  (773, 77317, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally (Fairy) - Bite - Level 1
  (773, 77317, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally (Fairy) - Explosion - Level 1
  (773, 77317, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally (Fairy) - Scary Face - Level 1
  (773, 77317, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally (Fairy) - Imprison - Level 1
  (773, 77317, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally (Fairy) - Poison Fang - Level 1
  (773, 77317, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally (Fairy) - Aerial Ace - Level 1
  (773, 77317, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally (Fairy) - Thunder Fang - Level 1
  (773, 77317, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally (Fairy) - Ice Fang - Level 1
  (773, 77317, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally (Fairy) - Fire Fang - Level 1
  (773, 77317, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally (Fairy) - Iron Head - Level 1
  (773, 77317, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally (Fairy) - Multi-Attack - Level 1
  (773, 77317, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally (Fairy) - Double Hit - Level 15
  (773, 77317, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally (Fairy) - Metal Sound - Level 20
  (773, 77317, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally (Fairy) - Crush Claw - Level 25
  (773, 77317, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally (Fairy) - Air Slash - Level 30
  (773, 77317, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally (Fairy) - Tri Attack - Level 35
  (773, 77317, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally (Fairy) - X-Scissor - Level 40
  (773, 77317, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally (Fairy) - Crunch - Level 45
  (773, 77317, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally (Fairy) - Take Down - Level 50
  (773, 77317, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally (Fairy) - Double-Edge - Level 55
  (773, 77317, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally (Fairy) - Parting Shot - Level 60
  (773, 77317, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally (Fairy) - Hyper Beam - TM08
  (773, 77317, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Silvally (Fairy) - Giga Impact - TM09
  (773, 77317, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Silvally (Fairy) - Thunder Wave - TM14
  (773, 77317, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Silvally (Fairy) - Self-Destruct - TM20
  (773, 77317, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Silvally (Fairy) - Rest - TM21
  (773, 77317, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Silvally (Fairy) - Rock Slide - TM22
  (773, 77317, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Silvally (Fairy) - Snore - TM24
  (773, 77317, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Silvally (Fairy) - Protect - TM25
  (773, 77317, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Silvally (Fairy) - Scary Face - TM26
  (773, 77317, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Silvally (Fairy) - Icy Wind - TM27
  (773, 77317, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Silvally (Fairy) - Steel Wing - TM30
  (773, 77317, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 33),
  -- Silvally (Fairy) - Sandstorm - TM32
  (773, 77317, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Silvally (Fairy) - Rain Dance - TM33
  (773, 77317, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Silvally (Fairy) - Sunny Day - TM34
  (773, 77317, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Silvally (Fairy) - Hail - TM35
  (773, 77317, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Silvally (Fairy) - Facade - TM39
  (773, 77317, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Silvally (Fairy) - Swift - TM40
  (773, 77317, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Silvally (Fairy) - Imprison - TM44
  (773, 77317, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Silvally (Fairy) - U-turn - TM56
  (773, 77317, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Silvally (Fairy) - Payback - TM57
  (773, 77317, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Silvally (Fairy) - Shadow Claw - TM65
  (773, 77317, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Silvally (Fairy) - Thunder Fang - TM66
  (773, 77317, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 44),
  -- Silvally (Fairy) - Ice Fang - TM67
  (773, 77317, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Silvally (Fairy) - Fire Fang - TM68
  (773, 77317, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 46),
  -- Silvally (Fairy) - Round - TM76
  (773, 77317, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Silvally (Fairy) - Snarl - TM85
  (773, 77317, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Silvally (Fairy) - Air Slash - TM95
  (773, 77317, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 49),
  -- Silvally (Fairy) - Swords Dance - TR00
  (773, 77317, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Silvally (Fairy) - Flamethrower - TR02
  (773, 77317, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Silvally (Fairy) - Surf - TR04
  (773, 77317, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 52),
  -- Silvally (Fairy) - Ice Beam - TR05
  (773, 77317, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Silvally (Fairy) - Thunderbolt - TR08
  (773, 77317, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Silvally (Fairy) - Tri Attack - TR19
  (773, 77317, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 55),
  -- Silvally (Fairy) - Substitute - TR20
  (773, 77317, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Silvally (Fairy) - Reversal - TR21
  (773, 77317, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 57),
  -- Silvally (Fairy) - Outrage - TR24
  (773, 77317, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Silvally (Fairy) - Endure - TR26
  (773, 77317, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Silvally (Fairy) - Sleep Talk - TR27
  (773, 77317, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Silvally (Fairy) - Crunch - TR32
  (773, 77317, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Silvally (Fairy) - Shadow Ball - TR33
  (773, 77317, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Silvally (Fairy) - Heat Wave - TR36
  (773, 77317, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 63),
  -- Silvally (Fairy) - Hyper Voice - TR42
  (773, 77317, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Silvally (Fairy) - Iron Defense - TR46
  (773, 77317, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Silvally (Fairy) - Dragon Claw - TR47
  (773, 77317, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Silvally (Fairy) - X-Scissor - TR60
  (773, 77317, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 67),
  -- Silvally (Fairy) - Zen Headbutt - TR69
  (773, 77317, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Silvally (Fairy) - Flash Cannon - TR70
  (773, 77317, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Silvally (Fairy) - Iron Head - TR74
  (773, 77317, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Silvally (Fairy) - Work Up - TR85
  (773, 77317, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Silvally (Fairy) - Psychic Fangs - TR97
  (773, 77317, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Silvally (Fairy) - Draco Meteor - Tutor
  (773, 77317, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Silvally (Fairy) - Grass Pledge - Tutor
  (773, 77317, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally (Fairy) - Steel Beam - Tutor
  (773, 77317, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally (Fairy) - Multi-Attack - Evolution
  (773, 77317, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 76);
