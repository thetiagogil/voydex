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
-- Sword / Shield learnsets for default forms, species 850-898.
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
  -- Sizzlipede - Ember - Level 1
  (850, 85000, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sizzlipede - Smokescreen - Level 1
  (850, 85000, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sizzlipede - Wrap - Level 5
  (850, 85000, 35, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sizzlipede - Bite - Level 10
  (850, 85000, 44, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sizzlipede - Flame Wheel - Level 15
  (850, 85000, 172, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sizzlipede - Bug Bite - Level 20
  (850, 85000, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sizzlipede - Coil - Level 25
  (850, 85000, 489, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sizzlipede - Slam - Level 30
  (850, 85000, 21, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sizzlipede - Fire Spin - Level 35
  (850, 85000, 83, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sizzlipede - Crunch - Level 40
  (850, 85000, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sizzlipede - Fire Lash - Level 45
  (850, 85000, 680, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sizzlipede - Lunge - Level 50
  (850, 85000, 679, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sizzlipede - Burn Up - Level 55
  (850, 85000, 682, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Sizzlipede - Fire Spin - TM13
  (850, 85000, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 14),
  -- Sizzlipede - Rest - TM21
  (850, 85000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Sizzlipede - Snore - TM24
  (850, 85000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Sizzlipede - Protect - TM25
  (850, 85000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Sizzlipede - Attract - TM31
  (850, 85000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Sizzlipede - Sunny Day - TM34
  (850, 85000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 19),
  -- Sizzlipede - Facade - TM39
  (850, 85000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Sizzlipede - Venoshock - TM74
  (850, 85000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 21),
  -- Sizzlipede - Round - TM76
  (850, 85000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 22),
  -- Sizzlipede - Brutal Swing - TM97
  (850, 85000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 23),
  -- Sizzlipede - Leech Life - TR18
  (850, 85000, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 24),
  -- Sizzlipede - Substitute - TR20
  (850, 85000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 25),
  -- Sizzlipede - Endure - TR26
  (850, 85000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 26),
  -- Sizzlipede - Sleep Talk - TR27
  (850, 85000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 27),
  -- Sizzlipede - Crunch - TR32
  (850, 85000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 28),
  -- Sizzlipede - Heat Wave - TR36
  (850, 85000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 29),
  -- Sizzlipede - Bug Buzz - TR61
  (850, 85000, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 30),
  -- Sizzlipede - Power Whip - TR72
  (850, 85000, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 31),
  -- Sizzlipede - Scald - TR84
  (850, 85000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 32),
  -- Sizzlipede - Heat Crash - TR88
  (850, 85000, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 33),
  -- Sizzlipede - Defense Curl - Egg
  (850, 85000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sizzlipede - Rollout - Egg
  (850, 85000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sizzlipede - Knock Off - Egg
  (850, 85000, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sizzlipede - Struggle Bug - Egg
  (850, 85000, 522, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Centiskorch - Wrap - Level 1
  (851, 85100, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Centiskorch - Bite - Level 1
  (851, 85100, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Centiskorch - Ember - Level 1
  (851, 85100, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Centiskorch - Smokescreen - Level 1
  (851, 85100, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Centiskorch - Inferno - Level 1
  (851, 85100, 517, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Centiskorch - Flame Wheel - Level 15
  (851, 85100, 172, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Centiskorch - Bug Bite - Level 20
  (851, 85100, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Centiskorch - Coil - Level 25
  (851, 85100, 489, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Centiskorch - Slam - Level 32
  (851, 85100, 21, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Centiskorch - Fire Spin - Level 39
  (851, 85100, 83, 18, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Centiskorch - Crunch - Level 46
  (851, 85100, 242, 18, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Centiskorch - Fire Lash - Level 53
  (851, 85100, 680, 18, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Centiskorch - Lunge - Level 60
  (851, 85100, 679, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Centiskorch - Burn Up - Level 67
  (851, 85100, 682, 18, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Centiskorch - Hyper Beam - TM08
  (851, 85100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Centiskorch - Giga Impact - TM09
  (851, 85100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Centiskorch - Solar Beam - TM11
  (851, 85100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Centiskorch - Fire Spin - TM13
  (851, 85100, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 18),
  -- Centiskorch - Rest - TM21
  (851, 85100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Centiskorch - Snore - TM24
  (851, 85100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Centiskorch - Protect - TM25
  (851, 85100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Centiskorch - Attract - TM31
  (851, 85100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Centiskorch - Sunny Day - TM34
  (851, 85100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Centiskorch - Will-O-Wisp - TM38
  (851, 85100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 24),
  -- Centiskorch - Facade - TM39
  (851, 85100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Centiskorch - Thunder Fang - TM66
  (851, 85100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 26),
  -- Centiskorch - Fire Fang - TM68
  (851, 85100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 27),
  -- Centiskorch - Venoshock - TM74
  (851, 85100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 28),
  -- Centiskorch - Round - TM76
  (851, 85100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Centiskorch - Mystical Fire - TM92
  (851, 85100, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 30),
  -- Centiskorch - Brutal Swing - TM97
  (851, 85100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 31),
  -- Centiskorch - Flamethrower - TR02
  (851, 85100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 32),
  -- Centiskorch - Fire Blast - TR15
  (851, 85100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 33),
  -- Centiskorch - Leech Life - TR18
  (851, 85100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 34),
  -- Centiskorch - Substitute - TR20
  (851, 85100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Centiskorch - Endure - TR26
  (851, 85100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Centiskorch - Sleep Talk - TR27
  (851, 85100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Centiskorch - Crunch - TR32
  (851, 85100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 38),
  -- Centiskorch - Heat Wave - TR36
  (851, 85100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 39),
  -- Centiskorch - Overheat - TR43
  (851, 85100, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 40),
  -- Centiskorch - Flare Blitz - TR55
  (851, 85100, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 41),
  -- Centiskorch - X-Scissor - TR60
  (851, 85100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 42),
  -- Centiskorch - Bug Buzz - TR61
  (851, 85100, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 43),
  -- Centiskorch - Power Whip - TR72
  (851, 85100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 44),
  -- Centiskorch - Scald - TR84
  (851, 85100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 45),
  -- Centiskorch - Heat Crash - TR88
  (851, 85100, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 46),
  -- Clobbopus - Leer - Level 1
  (852, 85200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clobbopus - Rock Smash - Level 1
  (852, 85200, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clobbopus - Feint - Level 5
  (852, 85200, 364, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clobbopus - Bind - Level 10
  (852, 85200, 20, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Clobbopus - Detect - Level 15
  (852, 85200, 197, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Clobbopus - Brick Break - Level 20
  (852, 85200, 280, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Clobbopus - Bulk Up - Level 25
  (852, 85200, 339, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Clobbopus - Submission - Level 30
  (852, 85200, 66, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Clobbopus - Taunt - Level 35
  (852, 85200, 269, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Clobbopus - Reversal - Level 40
  (852, 85200, 179, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Clobbopus - Superpower - Level 45
  (852, 85200, 276, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Clobbopus - Mega Punch - TM00
  (852, 85200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 12),
  -- Clobbopus - Ice Punch - TM04
  (852, 85200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 13),
  -- Clobbopus - Rest - TM21
  (852, 85200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Clobbopus - Snore - TM24
  (852, 85200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Clobbopus - Protect - TM25
  (852, 85200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Clobbopus - Attract - TM31
  (852, 85200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 17),
  -- Clobbopus - Facade - TM39
  (852, 85200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Clobbopus - Revenge - TM42
  (852, 85200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 19),
  -- Clobbopus - Brick Break - TM43
  (852, 85200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 20),
  -- Clobbopus - Dive - TM45
  (852, 85200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 21),
  -- Clobbopus - Mud Shot - TM53
  (852, 85200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 22),
  -- Clobbopus - Brine - TM55
  (852, 85200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 23),
  -- Clobbopus - Payback - TM57
  (852, 85200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Clobbopus - Round - TM76
  (852, 85200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Clobbopus - Retaliate - TM79
  (852, 85200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 26),
  -- Clobbopus - Body Slam - TR01
  (852, 85200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 27),
  -- Clobbopus - Waterfall - TR16
  (852, 85200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 28),
  -- Clobbopus - Substitute - TR20
  (852, 85200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Clobbopus - Reversal - TR21
  (852, 85200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 30),
  -- Clobbopus - Endure - TR26
  (852, 85200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Clobbopus - Sleep Talk - TR27
  (852, 85200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Clobbopus - Taunt - TR37
  (852, 85200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 33),
  -- Clobbopus - Superpower - TR39
  (852, 85200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 34),
  -- Clobbopus - Muddy Water - TR45
  (852, 85200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 35),
  -- Clobbopus - Bulk Up - TR48
  (852, 85200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 36),
  -- Clobbopus - Close Combat - TR53
  (852, 85200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 37),
  -- Clobbopus - Focus Blast - TR64
  (852, 85200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 38),
  -- Clobbopus - Work Up - TR85
  (852, 85200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 39),
  -- Clobbopus - Liquidation - TR98
  (852, 85200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 40),
  -- Clobbopus - Seismic Toss - Egg
  (852, 85200, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Clobbopus - Pain Split - Egg
  (852, 85200, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Clobbopus - Sucker Punch - Egg
  (852, 85200, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Clobbopus - Soak - Egg
  (852, 85200, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Clobbopus - Circle Throw - Egg
  (852, 85200, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Clobbopus - Power-Up Punch - Egg
  (852, 85200, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Grapploct - Bind - Level 1
  (853, 85300, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grapploct - Leer - Level 1
  (853, 85300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grapploct - Octazooka - Level 1
  (853, 85300, 190, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grapploct - Rock Smash - Level 1
  (853, 85300, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grapploct - Feint - Level 1
  (853, 85300, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Grapploct - Octolock - Level 1
  (853, 85300, 753, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Grapploct - Detect - Level 15
  (853, 85300, 197, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Grapploct - Brick Break - Level 20
  (853, 85300, 280, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Grapploct - Bulk Up - Level 25
  (853, 85300, 339, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grapploct - Submission - Level 30
  (853, 85300, 66, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Grapploct - Taunt - Level 35
  (853, 85300, 269, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grapploct - Reversal - Level 40
  (853, 85300, 179, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Grapploct - Superpower - Level 45
  (853, 85300, 276, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Grapploct - Topsy-Turvy - Level 50
  (853, 85300, 576, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Grapploct - Octolock - Evolution
  (853, 85300, 753, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Grapploct - Mega Punch - TM00
  (853, 85300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Grapploct - Ice Punch - TM04
  (853, 85300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Grapploct - Hyper Beam - TM08
  (853, 85300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Grapploct - Giga Impact - TM09
  (853, 85300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Grapploct - Dig - TM15
  (853, 85300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Grapploct - Rest - TM21
  (853, 85300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Grapploct - Snore - TM24
  (853, 85300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Grapploct - Protect - TM25
  (853, 85300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Grapploct - Scary Face - TM26
  (853, 85300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Grapploct - Attract - TM31
  (853, 85300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Grapploct - Whirlpool - TM36
  (853, 85300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Grapploct - Facade - TM39
  (853, 85300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Grapploct - Revenge - TM42
  (853, 85300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Grapploct - Brick Break - TM43
  (853, 85300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Grapploct - Dive - TM45
  (853, 85300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Grapploct - Mud Shot - TM53
  (853, 85300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Grapploct - Brine - TM55
  (853, 85300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Grapploct - Payback - TM57
  (853, 85300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Grapploct - Drain Punch - TM63
  (853, 85300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 34),
  -- Grapploct - Round - TM76
  (853, 85300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Grapploct - Retaliate - TM79
  (853, 85300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Grapploct - Brutal Swing - TM97
  (853, 85300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Grapploct - Stomping Tantrum - TM98
  (853, 85300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Grapploct - Body Slam - TR01
  (853, 85300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Grapploct - Hydro Pump - TR03
  (853, 85300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Grapploct - Surf - TR04
  (853, 85300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Grapploct - Waterfall - TR16
  (853, 85300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 42),
  -- Grapploct - Substitute - TR20
  (853, 85300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Grapploct - Reversal - TR21
  (853, 85300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Grapploct - Endure - TR26
  (853, 85300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Grapploct - Sleep Talk - TR27
  (853, 85300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Grapploct - Taunt - TR37
  (853, 85300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Grapploct - Superpower - TR39
  (853, 85300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Grapploct - Muddy Water - TR45
  (853, 85300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Grapploct - Bulk Up - TR48
  (853, 85300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 50),
  -- Grapploct - Close Combat - TR53
  (853, 85300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Grapploct - Focus Blast - TR64
  (853, 85300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Grapploct - Work Up - TR85
  (853, 85300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Grapploct - Liquidation - TR98
  (853, 85300, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 54),
  -- Sinistea - Withdraw - Level 1
  (854, 85400, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sinistea - Astonish - Level 1
  (854, 85400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sinistea - Aromatic Mist - Level 6
  (854, 85400, 597, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sinistea - Mega Drain - Level 12
  (854, 85400, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sinistea - Protect - Level 18
  (854, 85400, 182, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sinistea - Sucker Punch - Level 24
  (854, 85400, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sinistea - Aromatherapy - Level 30
  (854, 85400, 312, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sinistea - Giga Drain - Level 36
  (854, 85400, 202, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sinistea - Nasty Plot - Level 42
  (854, 85400, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sinistea - Shadow Ball - Level 48
  (854, 85400, 247, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Sinistea - Memento - Level 54
  (854, 85400, 262, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Sinistea - Shell Smash - Level 60
  (854, 85400, 504, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Sinistea - Rest - TM21
  (854, 85400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Sinistea - Snore - TM24
  (854, 85400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Sinistea - Protect - TM25
  (854, 85400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Sinistea - Giga Drain - TM28
  (854, 85400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 16),
  -- Sinistea - Will-O-Wisp - TM38
  (854, 85400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 17),
  -- Sinistea - Facade - TM39
  (854, 85400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Sinistea - Imprison - TM44
  (854, 85400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 19),
  -- Sinistea - Payback - TM57
  (854, 85400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 20),
  -- Sinistea - Wonder Room - TM71
  (854, 85400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 21),
  -- Sinistea - Round - TM76
  (854, 85400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 22),
  -- Sinistea - Hex - TM77
  (854, 85400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 23),
  -- Sinistea - Phantom Force - TM86
  (854, 85400, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 24),
  -- Sinistea - Psychic - TR11
  (854, 85400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 25),
  -- Sinistea - Metronome - TR14
  (854, 85400, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 26),
  -- Sinistea - Substitute - TR20
  (854, 85400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Sinistea - Psyshock - TR25
  (854, 85400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 28),
  -- Sinistea - Endure - TR26
  (854, 85400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 29),
  -- Sinistea - Sleep Talk - TR27
  (854, 85400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 30),
  -- Sinistea - Baton Pass - TR29
  (854, 85400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 31),
  -- Sinistea - Shadow Ball - TR33
  (854, 85400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 32),
  -- Sinistea - Trick - TR38
  (854, 85400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 33),
  -- Sinistea - Dark Pulse - TR58
  (854, 85400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 34),
  -- Sinistea - Nasty Plot - TR68
  (854, 85400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 35),
  -- Sinistea - Foul Play - TR81
  (854, 85400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 36),
  -- Sinistea - Stored Power - TR82
  (854, 85400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 37),
  -- Sinistea - Ally Switch - TR83
  (854, 85400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 38),
  -- Polteageist - Mega Drain - Level 1
  (855, 85500, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Polteageist - Withdraw - Level 1
  (855, 85500, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Polteageist - Astonish - Level 1
  (855, 85500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Polteageist - Aromatic Mist - Level 1
  (855, 85500, 597, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Polteageist - Strength Sap - Level 1
  (855, 85500, 668, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Polteageist - Teatime - Level 1
  (855, 85500, 752, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Polteageist - Protect - Level 18
  (855, 85500, 182, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Polteageist - Sucker Punch - Level 24
  (855, 85500, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Polteageist - Aromatherapy - Level 30
  (855, 85500, 312, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Polteageist - Giga Drain - Level 36
  (855, 85500, 202, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Polteageist - Nasty Plot - Level 42
  (855, 85500, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Polteageist - Shadow Ball - Level 48
  (855, 85500, 247, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Polteageist - Memento - Level 54
  (855, 85500, 262, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Polteageist - Shell Smash - Level 60
  (855, 85500, 504, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Polteageist - Curse - Level 66
  (855, 85500, 174, 18, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Polteageist - Teatime - Evolution
  (855, 85500, 752, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Polteageist - Hyper Beam - TM08
  (855, 85500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Polteageist - Giga Impact - TM09
  (855, 85500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Polteageist - Light Screen - TM17
  (855, 85500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Polteageist - Reflect - TM18
  (855, 85500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Polteageist - Self-Destruct - TM20
  (855, 85500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 21),
  -- Polteageist - Rest - TM21
  (855, 85500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Polteageist - Snore - TM24
  (855, 85500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Polteageist - Protect - TM25
  (855, 85500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Polteageist - Giga Drain - TM28
  (855, 85500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Polteageist - Will-O-Wisp - TM38
  (855, 85500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Polteageist - Facade - TM39
  (855, 85500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Polteageist - Imprison - TM44
  (855, 85500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Polteageist - Payback - TM57
  (855, 85500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Polteageist - Wonder Room - TM71
  (855, 85500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Polteageist - Round - TM76
  (855, 85500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Polteageist - Hex - TM77
  (855, 85500, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Polteageist - Phantom Force - TM86
  (855, 85500, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 33),
  -- Polteageist - Psychic - TR11
  (855, 85500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 34),
  -- Polteageist - Metronome - TR14
  (855, 85500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 35),
  -- Polteageist - Substitute - TR20
  (855, 85500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Polteageist - Psyshock - TR25
  (855, 85500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 37),
  -- Polteageist - Endure - TR26
  (855, 85500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Polteageist - Sleep Talk - TR27
  (855, 85500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Polteageist - Baton Pass - TR29
  (855, 85500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 40),
  -- Polteageist - Shadow Ball - TR33
  (855, 85500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Polteageist - Trick - TR38
  (855, 85500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 42),
  -- Polteageist - Dark Pulse - TR58
  (855, 85500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 43),
  -- Polteageist - Nasty Plot - TR68
  (855, 85500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 44),
  -- Polteageist - Foul Play - TR81
  (855, 85500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Polteageist - Stored Power - TR82
  (855, 85500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Polteageist - Ally Switch - TR83
  (855, 85500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Hatenna - Confusion - Level 1
  (856, 85600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hatenna - Play Nice - Level 1
  (856, 85600, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hatenna - Life Dew - Level 5
  (856, 85600, 791, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hatenna - Disarming Voice - Level 10
  (856, 85600, 574, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hatenna - Aromatherapy - Level 15
  (856, 85600, 312, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Hatenna - Psybeam - Level 20
  (856, 85600, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hatenna - Heal Pulse - Level 25
  (856, 85600, 505, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hatenna - Dazzling Gleam - Level 30
  (856, 85600, 605, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Hatenna - Calm Mind - Level 35
  (856, 85600, 347, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Hatenna - Psychic - Level 40
  (856, 85600, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Hatenna - Healing Wish - Level 45
  (856, 85600, 361, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Hatenna - Magical Leaf - TM10
  (856, 85600, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 12),
  -- Hatenna - Thunder Wave - TM14
  (856, 85600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 13),
  -- Hatenna - Light Screen - TM17
  (856, 85600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 14),
  -- Hatenna - Safeguard - TM19
  (856, 85600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Hatenna - Rest - TM21
  (856, 85600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Hatenna - Snore - TM24
  (856, 85600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Hatenna - Protect - TM25
  (856, 85600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Hatenna - Giga Drain - TM28
  (856, 85600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Hatenna - Charm - TM29
  (856, 85600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Hatenna - Attract - TM31
  (856, 85600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Hatenna - Facade - TM39
  (856, 85600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Hatenna - Helping Hand - TM41
  (856, 85600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 23),
  -- Hatenna - Imprison - TM44
  (856, 85600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 24),
  -- Hatenna - Round - TM76
  (856, 85600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Hatenna - Draining Kiss - TM87
  (856, 85600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 26),
  -- Hatenna - Mystical Fire - TM92
  (856, 85600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 27),
  -- Hatenna - Psychic - TR11
  (856, 85600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 28),
  -- Hatenna - Substitute - TR20
  (856, 85600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Hatenna - Psyshock - TR25
  (856, 85600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 30),
  -- Hatenna - Endure - TR26
  (856, 85600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Hatenna - Sleep Talk - TR27
  (856, 85600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Hatenna - Baton Pass - TR29
  (856, 85600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 33),
  -- Hatenna - Skill Swap - TR40
  (856, 85600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 34),
  -- Hatenna - Calm Mind - TR49
  (856, 85600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 35),
  -- Hatenna - Dark Pulse - TR58
  (856, 85600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 36),
  -- Hatenna - Stored Power - TR82
  (856, 85600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 37),
  -- Hatenna - Play Rough - TR90
  (856, 85600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 38),
  -- Hatenna - Dazzling Gleam - TR92
  (856, 85600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 39),
  -- Hatenna - After You - Egg
  (856, 85600, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hatenna - Quash - Egg
  (856, 85600, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hatenna - Aromatic Mist - Egg
  (856, 85600, 597, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hatenna - Nuzzle - Egg
  (856, 85600, 609, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hattrem - Confusion - Level 1
  (857, 85700, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hattrem - Disarming Voice - Level 1
  (857, 85700, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hattrem - Play Nice - Level 1
  (857, 85700, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hattrem - Brutal Swing - Level 1
  (857, 85700, 693, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hattrem - Life Dew - Level 1
  (857, 85700, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hattrem - Aromatherapy - Level 15
  (857, 85700, 312, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hattrem - Psybeam - Level 20
  (857, 85700, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hattrem - Heal Pulse - Level 25
  (857, 85700, 505, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hattrem - Dazzling Gleam - Level 30
  (857, 85700, 605, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Hattrem - Calm Mind - Level 37
  (857, 85700, 347, 18, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Hattrem - Psychic - Level 44
  (857, 85700, 94, 18, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Hattrem - Healing Wish - Level 51
  (857, 85700, 361, 18, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Hattrem - Brutal Swing - Evolution
  (857, 85700, 693, 18, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Hattrem - Magical Leaf - TM10
  (857, 85700, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 14),
  -- Hattrem - Thunder Wave - TM14
  (857, 85700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Hattrem - Light Screen - TM17
  (857, 85700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Hattrem - Safeguard - TM19
  (857, 85700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Hattrem - Rest - TM21
  (857, 85700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Hattrem - Snore - TM24
  (857, 85700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Hattrem - Protect - TM25
  (857, 85700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Hattrem - Giga Drain - TM28
  (857, 85700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Hattrem - Charm - TM29
  (857, 85700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Hattrem - Attract - TM31
  (857, 85700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Hattrem - Facade - TM39
  (857, 85700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Hattrem - Helping Hand - TM41
  (857, 85700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Hattrem - Imprison - TM44
  (857, 85700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Hattrem - Round - TM76
  (857, 85700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Hattrem - Draining Kiss - TM87
  (857, 85700, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 28),
  -- Hattrem - Mystical Fire - TM92
  (857, 85700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 29),
  -- Hattrem - Brutal Swing - TM97
  (857, 85700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 30),
  -- Hattrem - Psychic - TR11
  (857, 85700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 31),
  -- Hattrem - Substitute - TR20
  (857, 85700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Hattrem - Psyshock - TR25
  (857, 85700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 33),
  -- Hattrem - Endure - TR26
  (857, 85700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Hattrem - Sleep Talk - TR27
  (857, 85700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Hattrem - Baton Pass - TR29
  (857, 85700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 36),
  -- Hattrem - Skill Swap - TR40
  (857, 85700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 37),
  -- Hattrem - Calm Mind - TR49
  (857, 85700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 38),
  -- Hattrem - Dark Pulse - TR58
  (857, 85700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 39),
  -- Hattrem - Stored Power - TR82
  (857, 85700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 40),
  -- Hattrem - Play Rough - TR90
  (857, 85700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 41),
  -- Hattrem - Dazzling Gleam - TR92
  (857, 85700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 42),
  -- Hatterene - Confusion - Level 1
  (858, 85800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hatterene - Psycho Cut - Level 1
  (858, 85800, 427, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hatterene - Disarming Voice - Level 1
  (858, 85800, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hatterene - Play Nice - Level 1
  (858, 85800, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hatterene - Brutal Swing - Level 1
  (858, 85800, 693, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hatterene - Life Dew - Level 1
  (858, 85800, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hatterene - Aromatherapy - Level 15
  (858, 85800, 312, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hatterene - Psybeam - Level 20
  (858, 85800, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Hatterene - Heal Pulse - Level 25
  (858, 85800, 505, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hatterene - Dazzling Gleam - Level 30
  (858, 85800, 605, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Hatterene - Calm Mind - Level 37
  (858, 85800, 347, 18, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Hatterene - Psychic - Level 46
  (858, 85800, 94, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Hatterene - Healing Wish - Level 55
  (858, 85800, 361, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Hatterene - Magic Powder - Level 64
  (858, 85800, 750, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Hatterene - Psycho Cut - Evolution
  (858, 85800, 427, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Hatterene - Hyper Beam - TM08
  (858, 85800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Hatterene - Giga Impact - TM09
  (858, 85800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Hatterene - Magical Leaf - TM10
  (858, 85800, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 18),
  -- Hatterene - Thunder Wave - TM14
  (858, 85800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Hatterene - Light Screen - TM17
  (858, 85800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Hatterene - Safeguard - TM19
  (858, 85800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Hatterene - Rest - TM21
  (858, 85800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Hatterene - Snore - TM24
  (858, 85800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Hatterene - Protect - TM25
  (858, 85800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Hatterene - Giga Drain - TM28
  (858, 85800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Hatterene - Charm - TM29
  (858, 85800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Hatterene - Attract - TM31
  (858, 85800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Hatterene - Facade - TM39
  (858, 85800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Hatterene - Helping Hand - TM41
  (858, 85800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Hatterene - Imprison - TM44
  (858, 85800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Hatterene - Power Swap - TM60
  (858, 85800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Hatterene - Guard Swap - TM61
  (858, 85800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Hatterene - Shadow Claw - TM65
  (858, 85800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Hatterene - Psycho Cut - TM69
  (858, 85800, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 34),
  -- Hatterene - Trick Room - TM70
  (858, 85800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Hatterene - Wonder Room - TM71
  (858, 85800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Hatterene - Magic Room - TM72
  (858, 85800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 37),
  -- Hatterene - Round - TM76
  (858, 85800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Hatterene - Draining Kiss - TM87
  (858, 85800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 39),
  -- Hatterene - Mystical Fire - TM92
  (858, 85800, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 40),
  -- Hatterene - Brutal Swing - TM97
  (858, 85800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 41),
  -- Hatterene - Swords Dance - TR00
  (858, 85800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Hatterene - Psychic - TR11
  (858, 85800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Hatterene - Substitute - TR20
  (858, 85800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Hatterene - Psyshock - TR25
  (858, 85800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Hatterene - Endure - TR26
  (858, 85800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Hatterene - Sleep Talk - TR27
  (858, 85800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Hatterene - Baton Pass - TR29
  (858, 85800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Hatterene - Shadow Ball - TR33
  (858, 85800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Hatterene - Future Sight - TR34
  (858, 85800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 50),
  -- Hatterene - Skill Swap - TR40
  (858, 85800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 51),
  -- Hatterene - Calm Mind - TR49
  (858, 85800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Hatterene - Dark Pulse - TR58
  (858, 85800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 53),
  -- Hatterene - Power Whip - TR72
  (858, 85800, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 54),
  -- Hatterene - Stored Power - TR82
  (858, 85800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 55),
  -- Hatterene - Play Rough - TR90
  (858, 85800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 56),
  -- Hatterene - Dazzling Gleam - TR92
  (858, 85800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 57),
  -- Impidimp - Fake Out - Level 1
  (859, 85900, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Impidimp - Confide - Level 1
  (859, 85900, 590, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Impidimp - Bite - Level 4
  (859, 85900, 44, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Impidimp - Flatter - Level 8
  (859, 85900, 260, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Impidimp - Fake Tears - Level 12
  (859, 85900, 313, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Impidimp - Assurance - Level 16
  (859, 85900, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Impidimp - Swagger - Level 20
  (859, 85900, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Impidimp - Sucker Punch - Level 24
  (859, 85900, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Impidimp - Torment - Level 28
  (859, 85900, 259, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Impidimp - Dark Pulse - Level 33
  (859, 85900, 399, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Impidimp - Nasty Plot - Level 36
  (859, 85900, 417, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Impidimp - Play Rough - Level 40
  (859, 85900, 583, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Impidimp - Foul Play - Level 44
  (859, 85900, 492, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Impidimp - Mega Punch - TM00
  (859, 85900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Impidimp - Mega Kick - TM01
  (859, 85900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Impidimp - Thunder Wave - TM14
  (859, 85900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Impidimp - Rest - TM21
  (859, 85900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Impidimp - Thief - TM23
  (859, 85900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Impidimp - Snore - TM24
  (859, 85900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Impidimp - Protect - TM25
  (859, 85900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Impidimp - Attract - TM31
  (859, 85900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Impidimp - Facade - TM39
  (859, 85900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Impidimp - Revenge - TM42
  (859, 85900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 23),
  -- Impidimp - Fake Tears - TM47
  (859, 85900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 24),
  -- Impidimp - Assurance - TM58
  (859, 85900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 25),
  -- Impidimp - Drain Punch - TM63
  (859, 85900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 26),
  -- Impidimp - Round - TM76
  (859, 85900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Impidimp - Retaliate - TM79
  (859, 85900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 28),
  -- Impidimp - Draining Kiss - TM87
  (859, 85900, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 29),
  -- Impidimp - Low Kick - TR07
  (859, 85900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 30),
  -- Impidimp - Metronome - TR14
  (859, 85900, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 31),
  -- Impidimp - Leech Life - TR18
  (859, 85900, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 32),
  -- Impidimp - Substitute - TR20
  (859, 85900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Impidimp - Endure - TR26
  (859, 85900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Impidimp - Sleep Talk - TR27
  (859, 85900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Impidimp - Uproar - TR35
  (859, 85900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 36),
  -- Impidimp - Taunt - TR37
  (859, 85900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 37),
  -- Impidimp - Trick - TR38
  (859, 85900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 38),
  -- Impidimp - Dark Pulse - TR58
  (859, 85900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 39),
  -- Impidimp - Nasty Plot - TR68
  (859, 85900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 40),
  -- Impidimp - Foul Play - TR81
  (859, 85900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 41),
  -- Impidimp - Play Rough - TR90
  (859, 85900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 42),
  -- Impidimp - Dazzling Gleam - TR92
  (859, 85900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 43),
  -- Morgrem - Bite - Level 1
  (860, 86000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morgrem - Fake Out - Level 1
  (860, 86000, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morgrem - Flatter - Level 1
  (860, 86000, 260, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Morgrem - Confide - Level 1
  (860, 86000, 590, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Morgrem - False Surrender - Level 1
  (860, 86000, 793, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Morgrem - Fake Tears - Level 12
  (860, 86000, 313, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Morgrem - Assurance - Level 16
  (860, 86000, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Morgrem - Swagger - Level 20
  (860, 86000, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Morgrem - Sucker Punch - Level 24
  (860, 86000, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Morgrem - Torment - Level 28
  (860, 86000, 259, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Morgrem - Dark Pulse - Level 35
  (860, 86000, 399, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Morgrem - Nasty Plot - Level 40
  (860, 86000, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Morgrem - Play Rough - Level 46
  (860, 86000, 583, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Morgrem - Foul Play - Level 52
  (860, 86000, 492, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Morgrem - False Surrender - Evolution
  (860, 86000, 793, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Morgrem - Mega Punch - TM00
  (860, 86000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Morgrem - Mega Kick - TM01
  (860, 86000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Morgrem - Thunder Wave - TM14
  (860, 86000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Morgrem - Light Screen - TM17
  (860, 86000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Morgrem - Reflect - TM18
  (860, 86000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Morgrem - Rest - TM21
  (860, 86000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Morgrem - Thief - TM23
  (860, 86000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Morgrem - Snore - TM24
  (860, 86000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Morgrem - Protect - TM25
  (860, 86000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Morgrem - Attract - TM31
  (860, 86000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Morgrem - Facade - TM39
  (860, 86000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Morgrem - Revenge - TM42
  (860, 86000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 27),
  -- Morgrem - Fake Tears - TM47
  (860, 86000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Morgrem - Assurance - TM58
  (860, 86000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Morgrem - Drain Punch - TM63
  (860, 86000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 30),
  -- Morgrem - Shadow Claw - TM65
  (860, 86000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Morgrem - Round - TM76
  (860, 86000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Morgrem - Retaliate - TM79
  (860, 86000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Morgrem - Draining Kiss - TM87
  (860, 86000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 34),
  -- Morgrem - Low Kick - TR07
  (860, 86000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 35),
  -- Morgrem - Metronome - TR14
  (860, 86000, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 36),
  -- Morgrem - Leech Life - TR18
  (860, 86000, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 37),
  -- Morgrem - Substitute - TR20
  (860, 86000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Morgrem - Endure - TR26
  (860, 86000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Morgrem - Sleep Talk - TR27
  (860, 86000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Morgrem - Uproar - TR35
  (860, 86000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Morgrem - Taunt - TR37
  (860, 86000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Morgrem - Trick - TR38
  (860, 86000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Morgrem - Dark Pulse - TR58
  (860, 86000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 44),
  -- Morgrem - Nasty Plot - TR68
  (860, 86000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Morgrem - Foul Play - TR81
  (860, 86000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 46),
  -- Morgrem - Play Rough - TR90
  (860, 86000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Morgrem - Dazzling Gleam - TR92
  (860, 86000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 48),
  -- Morgrem - Throat Chop - TR95
  (860, 86000, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 49),
  -- Grimmsnarl - Bite - Level 1
  (861, 86100, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimmsnarl - Fake Out - Level 1
  (861, 86100, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimmsnarl - Flatter - Level 1
  (861, 86100, 260, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grimmsnarl - Bulk Up - Level 1
  (861, 86100, 339, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grimmsnarl - Confide - Level 1
  (861, 86100, 590, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Grimmsnarl - Power-Up Punch - Level 1
  (861, 86100, 612, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Grimmsnarl - Spirit Break - Level 1
  (861, 86100, 789, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Grimmsnarl - False Surrender - Level 1
  (861, 86100, 793, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Grimmsnarl - Fake Tears - Level 12
  (861, 86100, 313, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Grimmsnarl - Assurance - Level 16
  (861, 86100, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Grimmsnarl - Swagger - Level 20
  (861, 86100, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Grimmsnarl - Sucker Punch - Level 24
  (861, 86100, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Grimmsnarl - Torment - Level 28
  (861, 86100, 259, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Grimmsnarl - Dark Pulse - Level 35
  (861, 86100, 399, 18, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Grimmsnarl - Nasty Plot - Level 40
  (861, 86100, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Grimmsnarl - Play Rough - Level 48
  (861, 86100, 583, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimmsnarl - Foul Play - Level 56
  (861, 86100, 492, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Grimmsnarl - Hammer Arm - Level 64
  (861, 86100, 359, 18, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Grimmsnarl - Spirit Break - Evolution
  (861, 86100, 789, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Grimmsnarl - Mega Punch - TM00
  (861, 86100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Grimmsnarl - Mega Kick - TM01
  (861, 86100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Grimmsnarl - Fire Punch - TM03
  (861, 86100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Grimmsnarl - Ice Punch - TM04
  (861, 86100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 23),
  -- Grimmsnarl - Thunder Punch - TM05
  (861, 86100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Grimmsnarl - Hyper Beam - TM08
  (861, 86100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Grimmsnarl - Giga Impact - TM09
  (861, 86100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Grimmsnarl - Thunder Wave - TM14
  (861, 86100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Grimmsnarl - Light Screen - TM17
  (861, 86100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 28),
  -- Grimmsnarl - Reflect - TM18
  (861, 86100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 29),
  -- Grimmsnarl - Rest - TM21
  (861, 86100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Grimmsnarl - Thief - TM23
  (861, 86100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 31),
  -- Grimmsnarl - Snore - TM24
  (861, 86100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Grimmsnarl - Protect - TM25
  (861, 86100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Grimmsnarl - Scary Face - TM26
  (861, 86100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 34),
  -- Grimmsnarl - Attract - TM31
  (861, 86100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Grimmsnarl - Facade - TM39
  (861, 86100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Grimmsnarl - Revenge - TM42
  (861, 86100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 37),
  -- Grimmsnarl - Brick Break - TM43
  (861, 86100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Grimmsnarl - Fake Tears - TM47
  (861, 86100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Grimmsnarl - Assurance - TM58
  (861, 86100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 40),
  -- Grimmsnarl - Power Swap - TM60
  (861, 86100, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 41),
  -- Grimmsnarl - Drain Punch - TM63
  (861, 86100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Grimmsnarl - Shadow Claw - TM65
  (861, 86100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Grimmsnarl - Wonder Room - TM71
  (861, 86100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 44),
  -- Grimmsnarl - Low Sweep - TM75
  (861, 86100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 45),
  -- Grimmsnarl - Round - TM76
  (861, 86100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Grimmsnarl - Retaliate - TM79
  (861, 86100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Grimmsnarl - Draining Kiss - TM87
  (861, 86100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 48),
  -- Grimmsnarl - Stomping Tantrum - TM98
  (861, 86100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Grimmsnarl - Body Slam - TR01
  (861, 86100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Grimmsnarl - Low Kick - TR07
  (861, 86100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 51),
  -- Grimmsnarl - Focus Energy - TR13
  (861, 86100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Grimmsnarl - Metronome - TR14
  (861, 86100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 53),
  -- Grimmsnarl - Leech Life - TR18
  (861, 86100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 54),
  -- Grimmsnarl - Substitute - TR20
  (861, 86100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Grimmsnarl - Endure - TR26
  (861, 86100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Grimmsnarl - Sleep Talk - TR27
  (861, 86100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Grimmsnarl - Crunch - TR32
  (861, 86100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 58),
  -- Grimmsnarl - Uproar - TR35
  (861, 86100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 59),
  -- Grimmsnarl - Taunt - TR37
  (861, 86100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Grimmsnarl - Trick - TR38
  (861, 86100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 61),
  -- Grimmsnarl - Superpower - TR39
  (861, 86100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Grimmsnarl - Bulk Up - TR48
  (861, 86100, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 63),
  -- Grimmsnarl - Dark Pulse - TR58
  (861, 86100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 64),
  -- Grimmsnarl - Focus Blast - TR64
  (861, 86100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Grimmsnarl - Nasty Plot - TR68
  (861, 86100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 66),
  -- Grimmsnarl - Power Whip - TR72
  (861, 86100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 67),
  -- Grimmsnarl - Foul Play - TR81
  (861, 86100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 68),
  -- Grimmsnarl - Play Rough - TR90
  (861, 86100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 69),
  -- Grimmsnarl - Dazzling Gleam - TR92
  (861, 86100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 70),
  -- Grimmsnarl - Darkest Lariat - TR93
  (861, 86100, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 71),
  -- Grimmsnarl - Throat Chop - TR95
  (861, 86100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72),
  -- Grimmsnarl - Body Press - TR99
  (861, 86100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 73),
  -- Obstagoon - Sand Attack - Level 1
  (862, 86200, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Obstagoon - Tackle - Level 1
  (862, 86200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Obstagoon - Pin Missile - Level 1
  (862, 86200, 42, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Obstagoon - Leer - Level 1
  (862, 86200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Obstagoon - Submission - Level 1
  (862, 86200, 66, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Obstagoon - Lick - Level 1
  (862, 86200, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Obstagoon - Cross Chop - Level 1
  (862, 86200, 238, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Obstagoon - Night Slash - Level 1
  (862, 86200, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Obstagoon - Switcheroo - Level 1
  (862, 86200, 415, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Obstagoon - Baby-Doll Eyes - Level 1
  (862, 86200, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Obstagoon - Obstruct - Level 1
  (862, 86200, 792, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Obstagoon - Snarl - Level 9
  (862, 86200, 555, 18, NULL, 1, 9, NULL, NULL, NULL, 12),
  -- Obstagoon - Headbutt - Level 12
  (862, 86200, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Obstagoon - Hone Claws - Level 15
  (862, 86200, 468, 18, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Obstagoon - Fury Swipes - Level 18
  (862, 86200, 154, 18, NULL, 1, 18, NULL, NULL, NULL, 15),
  -- Obstagoon - Rest - Level 23
  (862, 86200, 156, 18, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Obstagoon - Take Down - Level 28
  (862, 86200, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Obstagoon - Scary Face - Level 35
  (862, 86200, 184, 18, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Obstagoon - Counter - Level 42
  (862, 86200, 68, 18, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Obstagoon - Taunt - Level 49
  (862, 86200, 269, 18, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Obstagoon - Double-Edge - Level 56
  (862, 86200, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Obstagoon - Obstruct - Evolution
  (862, 86200, 792, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Obstagoon - Mega Punch - TM00
  (862, 86200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Obstagoon - Mega Kick - TM01
  (862, 86200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Obstagoon - Fire Punch - TM03
  (862, 86200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 25),
  -- Obstagoon - Ice Punch - TM04
  (862, 86200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 26),
  -- Obstagoon - Thunder Punch - TM05
  (862, 86200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 27),
  -- Obstagoon - Pin Missile - TM07
  (862, 86200, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 28),
  -- Obstagoon - Hyper Beam - TM08
  (862, 86200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 29),
  -- Obstagoon - Giga Impact - TM09
  (862, 86200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 30),
  -- Obstagoon - Thunder Wave - TM14
  (862, 86200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 31),
  -- Obstagoon - Dig - TM15
  (862, 86200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 32),
  -- Obstagoon - Screech - TM16
  (862, 86200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 33),
  -- Obstagoon - Rest - TM21
  (862, 86200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Obstagoon - Thief - TM23
  (862, 86200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 35),
  -- Obstagoon - Snore - TM24
  (862, 86200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Obstagoon - Protect - TM25
  (862, 86200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Obstagoon - Scary Face - TM26
  (862, 86200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 38),
  -- Obstagoon - Icy Wind - TM27
  (862, 86200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 39),
  -- Obstagoon - Attract - TM31
  (862, 86200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Obstagoon - Rain Dance - TM33
  (862, 86200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Obstagoon - Sunny Day - TM34
  (862, 86200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Obstagoon - Whirlpool - TM36
  (862, 86200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 43),
  -- Obstagoon - Facade - TM39
  (862, 86200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 44),
  -- Obstagoon - Swift - TM40
  (862, 86200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 45),
  -- Obstagoon - Helping Hand - TM41
  (862, 86200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 46),
  -- Obstagoon - Revenge - TM42
  (862, 86200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 47),
  -- Obstagoon - Brick Break - TM43
  (862, 86200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 48),
  -- Obstagoon - Fake Tears - TM47
  (862, 86200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 49),
  -- Obstagoon - Mud Shot - TM53
  (862, 86200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 50),
  -- Obstagoon - Payback - TM57
  (862, 86200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 51),
  -- Obstagoon - Assurance - TM58
  (862, 86200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 52),
  -- Obstagoon - Fling - TM59
  (862, 86200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 53),
  -- Obstagoon - Shadow Claw - TM65
  (862, 86200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 54),
  -- Obstagoon - Cross Poison - TM73
  (862, 86200, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 55),
  -- Obstagoon - Round - TM76
  (862, 86200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 56),
  -- Obstagoon - Retaliate - TM79
  (862, 86200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 57),
  -- Obstagoon - Snarl - TM85
  (862, 86200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 58),
  -- Obstagoon - Stomping Tantrum - TM98
  (862, 86200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 59),
  -- Obstagoon - Body Slam - TR01
  (862, 86200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 60),
  -- Obstagoon - Surf - TR04
  (862, 86200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 61),
  -- Obstagoon - Ice Beam - TR05
  (862, 86200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 62),
  -- Obstagoon - Blizzard - TR06
  (862, 86200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 63),
  -- Obstagoon - Low Kick - TR07
  (862, 86200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 64),
  -- Obstagoon - Thunderbolt - TR08
  (862, 86200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 65),
  -- Obstagoon - Thunder - TR09
  (862, 86200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 66),
  -- Obstagoon - Focus Energy - TR13
  (862, 86200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 67),
  -- Obstagoon - Substitute - TR20
  (862, 86200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 68),
  -- Obstagoon - Reversal - TR21
  (862, 86200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 69),
  -- Obstagoon - Endure - TR26
  (862, 86200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 70),
  -- Obstagoon - Sleep Talk - TR27
  (862, 86200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 71),
  -- Obstagoon - Iron Tail - TR31
  (862, 86200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 72),
  -- Obstagoon - Shadow Ball - TR33
  (862, 86200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 73),
  -- Obstagoon - Taunt - TR37
  (862, 86200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 74),
  -- Obstagoon - Trick - TR38
  (862, 86200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 75),
  -- Obstagoon - Hyper Voice - TR42
  (862, 86200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 76),
  -- Obstagoon - Iron Defense - TR46
  (862, 86200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 77),
  -- Obstagoon - Bulk Up - TR48
  (862, 86200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 78),
  -- Obstagoon - Close Combat - TR53
  (862, 86200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 79),
  -- Obstagoon - Seed Bomb - TR59
  (862, 86200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 80),
  -- Obstagoon - X-Scissor - TR60
  (862, 86200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 81),
  -- Obstagoon - Gunk Shot - TR73
  (862, 86200, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 82),
  -- Obstagoon - Grass Knot - TR77
  (862, 86200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 83),
  -- Obstagoon - Work Up - TR85
  (862, 86200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 84),
  -- Obstagoon - Throat Chop - TR95
  (862, 86200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 85),
  -- Obstagoon - Body Press - TR99
  (862, 86200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 86),
  -- Perrserker - Scratch - Level 1
  (863, 86300, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Perrserker - Growl - Level 1
  (863, 86300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Perrserker - Fake Out - Level 1
  (863, 86300, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Perrserker - Iron Defense - Level 1
  (863, 86300, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Perrserker - Metal Burst - Level 1
  (863, 86300, 368, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Perrserker - Iron Head - Level 1
  (863, 86300, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Perrserker - Hone Claws - Level 1
  (863, 86300, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Perrserker - Pay Day - Level 12
  (863, 86300, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Perrserker - Metal Claw - Level 16
  (863, 86300, 232, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Perrserker - Taunt - Level 20
  (863, 86300, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Perrserker - Swagger - Level 24
  (863, 86300, 207, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Perrserker - Fury Swipes - Level 31
  (863, 86300, 154, 18, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Perrserker - Screech - Level 36
  (863, 86300, 103, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Perrserker - Slash - Level 42
  (863, 86300, 163, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Perrserker - Metal Sound - Level 48
  (863, 86300, 319, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Perrserker - Thrash - Level 54
  (863, 86300, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Perrserker - Iron Head - Evolution
  (863, 86300, 442, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Perrserker - Pay Day - TM02
  (863, 86300, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Perrserker - Hyper Beam - TM08
  (863, 86300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Perrserker - Giga Impact - TM09
  (863, 86300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Perrserker - Dig - TM15
  (863, 86300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Perrserker - Screech - TM16
  (863, 86300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Perrserker - Rest - TM21
  (863, 86300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Perrserker - Thief - TM23
  (863, 86300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Perrserker - Snore - TM24
  (863, 86300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Perrserker - Protect - TM25
  (863, 86300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Perrserker - Attract - TM31
  (863, 86300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Perrserker - Rain Dance - TM33
  (863, 86300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Perrserker - Sunny Day - TM34
  (863, 86300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Perrserker - Facade - TM39
  (863, 86300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Perrserker - U-turn - TM56
  (863, 86300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 31),
  -- Perrserker - Payback - TM57
  (863, 86300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Perrserker - Assurance - TM58
  (863, 86300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Perrserker - Fling - TM59
  (863, 86300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Perrserker - Shadow Claw - TM65
  (863, 86300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Perrserker - Round - TM76
  (863, 86300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Perrserker - Retaliate - TM79
  (863, 86300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Perrserker - Swords Dance - TR00
  (863, 86300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Perrserker - Body Slam - TR01
  (863, 86300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Perrserker - Thunderbolt - TR08
  (863, 86300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Perrserker - Thunder - TR09
  (863, 86300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Perrserker - Amnesia - TR17
  (863, 86300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Perrserker - Substitute - TR20
  (863, 86300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Perrserker - Endure - TR26
  (863, 86300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Perrserker - Sleep Talk - TR27
  (863, 86300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Perrserker - Baton Pass - TR29
  (863, 86300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 46),
  -- Perrserker - Iron Tail - TR31
  (863, 86300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Perrserker - Crunch - TR32
  (863, 86300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Perrserker - Shadow Ball - TR33
  (863, 86300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Perrserker - Uproar - TR35
  (863, 86300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Perrserker - Taunt - TR37
  (863, 86300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Perrserker - Hyper Voice - TR42
  (863, 86300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 52),
  -- Perrserker - Iron Defense - TR46
  (863, 86300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Perrserker - Gyro Ball - TR52
  (863, 86300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Perrserker - Close Combat - TR53
  (863, 86300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 55),
  -- Perrserker - Dark Pulse - TR58
  (863, 86300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Perrserker - Seed Bomb - TR59
  (863, 86300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 57),
  -- Perrserker - Nasty Plot - TR68
  (863, 86300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Perrserker - Gunk Shot - TR73
  (863, 86300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 59),
  -- Perrserker - Iron Head - TR74
  (863, 86300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Perrserker - Heavy Slam - TR79
  (863, 86300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 61),
  -- Perrserker - Foul Play - TR81
  (863, 86300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Perrserker - Work Up - TR85
  (863, 86300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 63),
  -- Perrserker - Play Rough - TR90
  (863, 86300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 64),
  -- Perrserker - Throat Chop - TR95
  (863, 86300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 65),
  -- Perrserker - Steel Beam - Tutor
  (863, 86300, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 66),
  -- Cursola - Tackle - Level 1
  (864, 86400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cursola - Disable - Level 1
  (864, 86400, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cursola - Harden - Level 1
  (864, 86400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cursola - Perish Song - Level 1
  (864, 86400, 195, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cursola - Astonish - Level 1
  (864, 86400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cursola - Spite - Level 15
  (864, 86400, 180, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cursola - Ancient Power - Level 20
  (864, 86400, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Cursola - Hex - Level 25
  (864, 86400, 506, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cursola - Curse - Level 30
  (864, 86400, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Cursola - Strength Sap - Level 35
  (864, 86400, 668, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Cursola - Power Gem - Level 40
  (864, 86400, 408, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cursola - Night Shade - Level 45
  (864, 86400, 101, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Cursola - Grudge - Level 50
  (864, 86400, 288, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Cursola - Mirror Coat - Level 55
  (864, 86400, 243, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cursola - Pin Missile - TM07
  (864, 86400, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Cursola - Hyper Beam - TM08
  (864, 86400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Cursola - Giga Impact - TM09
  (864, 86400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Cursola - Dig - TM15
  (864, 86400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Cursola - Screech - TM16
  (864, 86400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Cursola - Light Screen - TM17
  (864, 86400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Cursola - Reflect - TM18
  (864, 86400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Cursola - Safeguard - TM19
  (864, 86400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Cursola - Self-Destruct - TM20
  (864, 86400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Cursola - Rest - TM21
  (864, 86400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Cursola - Rock Slide - TM22
  (864, 86400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Cursola - Snore - TM24
  (864, 86400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Cursola - Protect - TM25
  (864, 86400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Cursola - Icy Wind - TM27
  (864, 86400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Cursola - Giga Drain - TM28
  (864, 86400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 29),
  -- Cursola - Attract - TM31
  (864, 86400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Cursola - Sandstorm - TM32
  (864, 86400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Cursola - Rain Dance - TM33
  (864, 86400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Cursola - Sunny Day - TM34
  (864, 86400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Cursola - Hail - TM35
  (864, 86400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 34),
  -- Cursola - Whirlpool - TM36
  (864, 86400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Cursola - Will-O-Wisp - TM38
  (864, 86400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 36),
  -- Cursola - Facade - TM39
  (864, 86400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Cursola - Revenge - TM42
  (864, 86400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 38),
  -- Cursola - Rock Tomb - TM48
  (864, 86400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Cursola - Icicle Spear - TM51
  (864, 86400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 40),
  -- Cursola - Rock Blast - TM54
  (864, 86400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 41),
  -- Cursola - Brine - TM55
  (864, 86400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 42),
  -- Cursola - Round - TM76
  (864, 86400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Cursola - Hex - TM77
  (864, 86400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 44),
  -- Cursola - Bulldoze - TM81
  (864, 86400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Cursola - Stomping Tantrum - TM98
  (864, 86400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 46),
  -- Cursola - Body Slam - TR01
  (864, 86400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Cursola - Hydro Pump - TR03
  (864, 86400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 48),
  -- Cursola - Surf - TR04
  (864, 86400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 49),
  -- Cursola - Ice Beam - TR05
  (864, 86400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 50),
  -- Cursola - Blizzard - TR06
  (864, 86400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 51),
  -- Cursola - Earthquake - TR10
  (864, 86400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 52),
  -- Cursola - Psychic - TR11
  (864, 86400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 53),
  -- Cursola - Amnesia - TR17
  (864, 86400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 54),
  -- Cursola - Leech Life - TR18
  (864, 86400, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 55),
  -- Cursola - Substitute - TR20
  (864, 86400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Cursola - Endure - TR26
  (864, 86400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Cursola - Sleep Talk - TR27
  (864, 86400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Cursola - Shadow Ball - TR33
  (864, 86400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Cursola - Iron Defense - TR46
  (864, 86400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Cursola - Calm Mind - TR49
  (864, 86400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Cursola - Power Gem - TR63
  (864, 86400, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 62),
  -- Cursola - Earth Power - TR67
  (864, 86400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 63),
  -- Cursola - Stone Edge - TR75
  (864, 86400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 64),
  -- Cursola - Stealth Rock - TR76
  (864, 86400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 65),
  -- Cursola - Scald - TR84
  (864, 86400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 66),
  -- Cursola - Throat Chop - TR95
  (864, 86400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Cursola - Liquidation - TR98
  (864, 86400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 68),
  -- Sirfetch'd - Sand Attack - Level 1
  (865, 86500, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sirfetch'd - Leer - Level 1
  (865, 86500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sirfetch'd - Peck - Level 1
  (865, 86500, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sirfetch'd - Fury Cutter - Level 1
  (865, 86500, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sirfetch'd - Iron Defense - Level 1
  (865, 86500, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sirfetch'd - First Impression - Level 1
  (865, 86500, 660, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sirfetch'd - Rock Smash - Level 15
  (865, 86500, 249, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sirfetch'd - Brutal Swing - Level 20
  (865, 86500, 693, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sirfetch'd - Detect - Level 25
  (865, 86500, 197, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sirfetch'd - Knock Off - Level 30
  (865, 86500, 282, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Sirfetch'd - Defog - Level 35
  (865, 86500, 432, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Sirfetch'd - Brick Break - Level 40
  (865, 86500, 280, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Sirfetch'd - Swords Dance - Level 45
  (865, 86500, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sirfetch'd - Slam - Level 50
  (865, 86500, 21, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Sirfetch'd - Leaf Blade - Level 55
  (865, 86500, 348, 18, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Sirfetch'd - Final Gambit - Level 60
  (865, 86500, 515, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Sirfetch'd - Brave Bird - Level 65
  (865, 86500, 413, 18, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Sirfetch'd - Meteor Assault - Level 70
  (865, 86500, 794, 18, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Sirfetch'd - Iron Defense - Evolution
  (865, 86500, 334, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Sirfetch'd - Solar Blade - TM12
  (865, 86500, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 20),
  -- Sirfetch'd - Rest - TM21
  (865, 86500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Sirfetch'd - Snore - TM24
  (865, 86500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Sirfetch'd - Protect - TM25
  (865, 86500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Sirfetch'd - Steel Wing - TM30
  (865, 86500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Sirfetch'd - Attract - TM31
  (865, 86500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Sirfetch'd - Sunny Day - TM34
  (865, 86500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Sirfetch'd - Facade - TM39
  (865, 86500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Sirfetch'd - Helping Hand - TM41
  (865, 86500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Sirfetch'd - Revenge - TM42
  (865, 86500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Sirfetch'd - Brick Break - TM43
  (865, 86500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Sirfetch'd - Assurance - TM58
  (865, 86500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Sirfetch'd - Round - TM76
  (865, 86500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Sirfetch'd - Retaliate - TM79
  (865, 86500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Sirfetch'd - Brutal Swing - TM97
  (865, 86500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Sirfetch'd - Swords Dance - TR00
  (865, 86500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Sirfetch'd - Body Slam - TR01
  (865, 86500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Sirfetch'd - Focus Energy - TR13
  (865, 86500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 37),
  -- Sirfetch'd - Substitute - TR20
  (865, 86500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Sirfetch'd - Endure - TR26
  (865, 86500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Sirfetch'd - Sleep Talk - TR27
  (865, 86500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Sirfetch'd - Superpower - TR39
  (865, 86500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 41),
  -- Sirfetch'd - Iron Defense - TR46
  (865, 86500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Sirfetch'd - Leaf Blade - TR50
  (865, 86500, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 43),
  -- Sirfetch'd - Close Combat - TR53
  (865, 86500, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 44),
  -- Sirfetch'd - Poison Jab - TR57
  (865, 86500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Sirfetch'd - Brave Bird - TR66
  (865, 86500, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 46),
  -- Sirfetch'd - Work Up - TR85
  (865, 86500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Sirfetch'd - Throat Chop - TR95
  (865, 86500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 48),
  -- Mr. Rime - Pound - Level 1
  (866, 86600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Rime - Mimic - Level 1
  (866, 86600, 102, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Rime - Light Screen - Level 1
  (866, 86600, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Rime - Reflect - Level 1
  (866, 86600, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Rime - Protect - Level 1
  (866, 86600, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Rime - Safeguard - Level 1
  (866, 86600, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mr. Rime - Baton Pass - Level 1
  (866, 86600, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mr. Rime - Encore - Level 1
  (866, 86600, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mr. Rime - Rapid Spin - Level 1
  (866, 86600, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Mr. Rime - Role Play - Level 1
  (866, 86600, 272, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Mr. Rime - Recycle - Level 1
  (866, 86600, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Mr. Rime - Slack Off - Level 1
  (866, 86600, 303, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Mr. Rime - Fake Tears - Level 1
  (866, 86600, 313, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Mr. Rime - Block - Level 1
  (866, 86600, 335, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Mr. Rime - Copycat - Level 1
  (866, 86600, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Mr. Rime - Ice Shard - Level 1
  (866, 86600, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Mr. Rime - After You - Level 1
  (866, 86600, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Mr. Rime - Misty Terrain - Level 1
  (866, 86600, 581, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Mr. Rime - Dazzling Gleam - Level 1
  (866, 86600, 605, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Mr. Rime - Confusion - Level 12
  (866, 86600, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 20),
  -- Mr. Rime - Ally Switch - Level 16
  (866, 86600, 502, 18, NULL, 1, 16, NULL, NULL, NULL, 21),
  -- Mr. Rime - Icy Wind - Level 20
  (866, 86600, 196, 18, NULL, 1, 20, NULL, NULL, NULL, 22),
  -- Mr. Rime - Double Kick - Level 24
  (866, 86600, 24, 18, NULL, 1, 24, NULL, NULL, NULL, 23),
  -- Mr. Rime - Psybeam - Level 28
  (866, 86600, 60, 18, NULL, 1, 28, NULL, NULL, NULL, 24),
  -- Mr. Rime - Hypnosis - Level 32
  (866, 86600, 95, 18, NULL, 1, 32, NULL, NULL, NULL, 25),
  -- Mr. Rime - Mirror Coat - Level 36
  (866, 86600, 243, 18, NULL, 1, 36, NULL, NULL, NULL, 26),
  -- Mr. Rime - Sucker Punch - Level 40
  (866, 86600, 389, 18, NULL, 1, 40, NULL, NULL, NULL, 27),
  -- Mr. Rime - Freeze-Dry - Level 44
  (866, 86600, 573, 18, NULL, 1, 44, NULL, NULL, NULL, 28),
  -- Mr. Rime - Psychic - Level 48
  (866, 86600, 94, 18, NULL, 1, 48, NULL, NULL, NULL, 29),
  -- Mr. Rime - Teeter Dance - Level 52
  (866, 86600, 298, 18, NULL, 1, 52, NULL, NULL, NULL, 30),
  -- Mr. Rime - Mega Punch - TM00
  (866, 86600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 31),
  -- Mr. Rime - Mega Kick - TM01
  (866, 86600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 32),
  -- Mr. Rime - Ice Punch - TM04
  (866, 86600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 33),
  -- Mr. Rime - Hyper Beam - TM08
  (866, 86600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 34),
  -- Mr. Rime - Giga Impact - TM09
  (866, 86600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 35),
  -- Mr. Rime - Solar Beam - TM11
  (866, 86600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 36),
  -- Mr. Rime - Thunder Wave - TM14
  (866, 86600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 37),
  -- Mr. Rime - Screech - TM16
  (866, 86600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 38),
  -- Mr. Rime - Light Screen - TM17
  (866, 86600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 39),
  -- Mr. Rime - Reflect - TM18
  (866, 86600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 40),
  -- Mr. Rime - Safeguard - TM19
  (866, 86600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 41),
  -- Mr. Rime - Rest - TM21
  (866, 86600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 42),
  -- Mr. Rime - Thief - TM23
  (866, 86600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 43),
  -- Mr. Rime - Snore - TM24
  (866, 86600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 44),
  -- Mr. Rime - Protect - TM25
  (866, 86600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 45),
  -- Mr. Rime - Icy Wind - TM27
  (866, 86600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 46),
  -- Mr. Rime - Charm - TM29
  (866, 86600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 47),
  -- Mr. Rime - Attract - TM31
  (866, 86600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 48),
  -- Mr. Rime - Rain Dance - TM33
  (866, 86600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 49),
  -- Mr. Rime - Sunny Day - TM34
  (866, 86600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 50),
  -- Mr. Rime - Hail - TM35
  (866, 86600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 51),
  -- Mr. Rime - Facade - TM39
  (866, 86600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 52),
  -- Mr. Rime - Helping Hand - TM41
  (866, 86600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 53),
  -- Mr. Rime - Brick Break - TM43
  (866, 86600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 54),
  -- Mr. Rime - Fake Tears - TM47
  (866, 86600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 55),
  -- Mr. Rime - Icicle Spear - TM51
  (866, 86600, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 56),
  -- Mr. Rime - Payback - TM57
  (866, 86600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 57),
  -- Mr. Rime - Fling - TM59
  (866, 86600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 58),
  -- Mr. Rime - Power Swap - TM60
  (866, 86600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 59),
  -- Mr. Rime - Guard Swap - TM61
  (866, 86600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 60),
  -- Mr. Rime - Drain Punch - TM63
  (866, 86600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 61),
  -- Mr. Rime - Avalanche - TM64
  (866, 86600, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 62),
  -- Mr. Rime - Trick Room - TM70
  (866, 86600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 63),
  -- Mr. Rime - Wonder Room - TM71
  (866, 86600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 64),
  -- Mr. Rime - Magic Room - TM72
  (866, 86600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 65),
  -- Mr. Rime - Round - TM76
  (866, 86600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 66),
  -- Mr. Rime - Misty Terrain - TM89
  (866, 86600, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 67),
  -- Mr. Rime - Psychic Terrain - TM91
  (866, 86600, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 68),
  -- Mr. Rime - Stomping Tantrum - TM98
  (866, 86600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 69),
  -- Mr. Rime - Body Slam - TR01
  (866, 86600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 70),
  -- Mr. Rime - Ice Beam - TR05
  (866, 86600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 71),
  -- Mr. Rime - Blizzard - TR06
  (866, 86600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 72),
  -- Mr. Rime - Thunderbolt - TR08
  (866, 86600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 73),
  -- Mr. Rime - Thunder - TR09
  (866, 86600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 74),
  -- Mr. Rime - Psychic - TR11
  (866, 86600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 75),
  -- Mr. Rime - Metronome - TR14
  (866, 86600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 76),
  -- Mr. Rime - Substitute - TR20
  (866, 86600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 77),
  -- Mr. Rime - Psyshock - TR25
  (866, 86600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 78),
  -- Mr. Rime - Endure - TR26
  (866, 86600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 79),
  -- Mr. Rime - Sleep Talk - TR27
  (866, 86600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 80),
  -- Mr. Rime - Baton Pass - TR29
  (866, 86600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 81),
  -- Mr. Rime - Encore - TR30
  (866, 86600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 82),
  -- Mr. Rime - Shadow Ball - TR33
  (866, 86600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 83),
  -- Mr. Rime - Future Sight - TR34
  (866, 86600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 84),
  -- Mr. Rime - Uproar - TR35
  (866, 86600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 85),
  -- Mr. Rime - Taunt - TR37
  (866, 86600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 86),
  -- Mr. Rime - Trick - TR38
  (866, 86600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 87),
  -- Mr. Rime - Skill Swap - TR40
  (866, 86600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 88),
  -- Mr. Rime - Iron Defense - TR46
  (866, 86600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 89),
  -- Mr. Rime - Calm Mind - TR49
  (866, 86600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 90),
  -- Mr. Rime - Focus Blast - TR64
  (866, 86600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 91),
  -- Mr. Rime - Energy Ball - TR65
  (866, 86600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 92),
  -- Mr. Rime - Nasty Plot - TR68
  (866, 86600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 93),
  -- Mr. Rime - Zen Headbutt - TR69
  (866, 86600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 94),
  -- Mr. Rime - Grass Knot - TR77
  (866, 86600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 95),
  -- Mr. Rime - Foul Play - TR81
  (866, 86600, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 96),
  -- Mr. Rime - Stored Power - TR82
  (866, 86600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 97),
  -- Mr. Rime - Ally Switch - TR83
  (866, 86600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 98),
  -- Mr. Rime - Dazzling Gleam - TR92
  (866, 86600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 99),
  -- Runerigus - Night Shade - Level 1
  (867, 86700, 101, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Runerigus - Haze - Level 1
  (867, 86700, 114, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Runerigus - Protect - Level 1
  (867, 86700, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Runerigus - Scary Face - Level 1
  (867, 86700, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Runerigus - Astonish - Level 1
  (867, 86700, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Runerigus - Shadow Claw - Level 1
  (867, 86700, 421, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Runerigus - Disable - Level 12
  (867, 86700, 50, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Runerigus - Brutal Swing - Level 16
  (867, 86700, 693, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Runerigus - Crafty Shield - Level 20
  (867, 86700, 578, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Runerigus - Hex - Level 24
  (867, 86700, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Runerigus - Mean Look - Level 28
  (867, 86700, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Runerigus - Slam - Level 32
  (867, 86700, 21, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Runerigus - Curse - Level 38
  (867, 86700, 174, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Runerigus - Shadow Ball - Level 44
  (867, 86700, 247, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Runerigus - Earthquake - Level 50
  (867, 86700, 89, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Runerigus - Guard Split - Level 56
  (867, 86700, 470, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Runerigus - Power Split - Level 56
  (867, 86700, 471, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Runerigus - Destiny Bond - Level 62
  (867, 86700, 194, 18, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Runerigus - Shadow Claw - Evolution
  (867, 86700, 421, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Runerigus - Hyper Beam - TM08
  (867, 86700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Runerigus - Giga Impact - TM09
  (867, 86700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Runerigus - Safeguard - TM19
  (867, 86700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Runerigus - Rest - TM21
  (867, 86700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Runerigus - Rock Slide - TM22
  (867, 86700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Runerigus - Thief - TM23
  (867, 86700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Runerigus - Snore - TM24
  (867, 86700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Runerigus - Protect - TM25
  (867, 86700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Runerigus - Scary Face - TM26
  (867, 86700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Runerigus - Attract - TM31
  (867, 86700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Runerigus - Sandstorm - TM32
  (867, 86700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Runerigus - Rain Dance - TM33
  (867, 86700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Runerigus - Will-O-Wisp - TM38
  (867, 86700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Runerigus - Facade - TM39
  (867, 86700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Runerigus - Revenge - TM42
  (867, 86700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Runerigus - Imprison - TM44
  (867, 86700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Runerigus - Fake Tears - TM47
  (867, 86700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 36),
  -- Runerigus - Rock Tomb - TM48
  (867, 86700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Runerigus - Sand Tomb - TM49
  (867, 86700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 38),
  -- Runerigus - Rock Blast - TM54
  (867, 86700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 39),
  -- Runerigus - Payback - TM57
  (867, 86700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Runerigus - Power Swap - TM60
  (867, 86700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 41),
  -- Runerigus - Guard Swap - TM61
  (867, 86700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 42),
  -- Runerigus - Shadow Claw - TM65
  (867, 86700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Runerigus - Trick Room - TM70
  (867, 86700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 44),
  -- Runerigus - Wonder Room - TM71
  (867, 86700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 45),
  -- Runerigus - Round - TM76
  (867, 86700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Runerigus - Hex - TM77
  (867, 86700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 47),
  -- Runerigus - Bulldoze - TM81
  (867, 86700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 48),
  -- Runerigus - Phantom Force - TM86
  (867, 86700, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 49),
  -- Runerigus - Brutal Swing - TM97
  (867, 86700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 50),
  -- Runerigus - Earthquake - TR10
  (867, 86700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 51),
  -- Runerigus - Psychic - TR11
  (867, 86700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 52),
  -- Runerigus - Amnesia - TR17
  (867, 86700, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 53),
  -- Runerigus - Substitute - TR20
  (867, 86700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Runerigus - Endure - TR26
  (867, 86700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Runerigus - Sleep Talk - TR27
  (867, 86700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Runerigus - Shadow Ball - TR33
  (867, 86700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Runerigus - Taunt - TR37
  (867, 86700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Runerigus - Trick - TR38
  (867, 86700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 59),
  -- Runerigus - Skill Swap - TR40
  (867, 86700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 60),
  -- Runerigus - Iron Defense - TR46
  (867, 86700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 61),
  -- Runerigus - Calm Mind - TR49
  (867, 86700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Runerigus - Toxic Spikes - TR54
  (867, 86700, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 63),
  -- Runerigus - Dark Pulse - TR58
  (867, 86700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 64),
  -- Runerigus - Dragon Pulse - TR62
  (867, 86700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 65),
  -- Runerigus - Energy Ball - TR65
  (867, 86700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 66),
  -- Runerigus - Earth Power - TR67
  (867, 86700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 67),
  -- Runerigus - Nasty Plot - TR68
  (867, 86700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 68),
  -- Runerigus - Zen Headbutt - TR69
  (867, 86700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Runerigus - Stone Edge - TR75
  (867, 86700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 70),
  -- Runerigus - Stealth Rock - TR76
  (867, 86700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 71),
  -- Runerigus - Grass Knot - TR77
  (867, 86700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 72),
  -- Runerigus - Ally Switch - TR83
  (867, 86700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 73),
  -- Runerigus - Body Press - TR99
  (867, 86700, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 74),
  -- Milcery - Tackle - Level 1
  (868, 86800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milcery - Aromatic Mist - Level 1
  (868, 86800, 597, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milcery - Sweet Kiss - Level 5
  (868, 86800, 186, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Milcery - Sweet Scent - Level 10
  (868, 86800, 230, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Milcery - Draining Kiss - Level 15
  (868, 86800, 577, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Milcery - Aromatherapy - Level 20
  (868, 86800, 312, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Milcery - Attract - Level 25
  (868, 86800, 213, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Milcery - Acid Armor - Level 30
  (868, 86800, 151, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Milcery - Dazzling Gleam - Level 35
  (868, 86800, 605, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Milcery - Recover - Level 40
  (868, 86800, 105, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Milcery - Misty Terrain - Level 45
  (868, 86800, 581, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Milcery - Entrainment - Level 50
  (868, 86800, 494, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Milcery - Rest - TM21
  (868, 86800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Milcery - Snore - TM24
  (868, 86800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Milcery - Protect - TM25
  (868, 86800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Milcery - Charm - TM29
  (868, 86800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 16),
  -- Milcery - Attract - TM31
  (868, 86800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 17),
  -- Milcery - Facade - TM39
  (868, 86800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Milcery - Helping Hand - TM41
  (868, 86800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 19),
  -- Milcery - Fling - TM59
  (868, 86800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 20),
  -- Milcery - Round - TM76
  (868, 86800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 21),
  -- Milcery - Draining Kiss - TM87
  (868, 86800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 22),
  -- Milcery - Misty Terrain - TM89
  (868, 86800, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 23),
  -- Milcery - Substitute - TR20
  (868, 86800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 24),
  -- Milcery - Endure - TR26
  (868, 86800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 25),
  -- Milcery - Sleep Talk - TR27
  (868, 86800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 26),
  -- Milcery - Stored Power - TR82
  (868, 86800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 27),
  -- Milcery - Dazzling Gleam - TR92
  (868, 86800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 28),
  -- Milcery - Last Resort - Egg
  (868, 86800, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Milcery - Baby-Doll Eyes - Egg
  (868, 86800, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Alcremie - Tackle - Level 1
  (869, 86900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alcremie - Sweet Kiss - Level 1
  (869, 86900, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alcremie - Sweet Scent - Level 1
  (869, 86900, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alcremie - Aromatic Mist - Level 1
  (869, 86900, 597, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alcremie - Decorate - Level 1
  (869, 86900, 777, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Alcremie - Draining Kiss - Level 15
  (869, 86900, 577, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Alcremie - Aromatherapy - Level 20
  (869, 86900, 312, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Alcremie - Attract - Level 25
  (869, 86900, 213, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alcremie - Acid Armor - Level 30
  (869, 86900, 151, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alcremie - Dazzling Gleam - Level 35
  (869, 86900, 605, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Alcremie - Recover - Level 40
  (869, 86900, 105, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Alcremie - Misty Terrain - Level 45
  (869, 86900, 581, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Alcremie - Entrainment - Level 50
  (869, 86900, 494, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Alcremie - Decorate - Evolution
  (869, 86900, 777, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Alcremie - Hyper Beam - TM08
  (869, 86900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Alcremie - Giga Impact - TM09
  (869, 86900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Alcremie - Magical Leaf - TM10
  (869, 86900, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 17),
  -- Alcremie - Solar Beam - TM11
  (869, 86900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Alcremie - Light Screen - TM17
  (869, 86900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Alcremie - Safeguard - TM19
  (869, 86900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Alcremie - Rest - TM21
  (869, 86900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Alcremie - Snore - TM24
  (869, 86900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Alcremie - Protect - TM25
  (869, 86900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Alcremie - Giga Drain - TM28
  (869, 86900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 24),
  -- Alcremie - Charm - TM29
  (869, 86900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Alcremie - Attract - TM31
  (869, 86900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Alcremie - Facade - TM39
  (869, 86900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Alcremie - Helping Hand - TM41
  (869, 86900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Alcremie - Imprison - TM44
  (869, 86900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Alcremie - Fake Tears - TM47
  (869, 86900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 30),
  -- Alcremie - Fling - TM59
  (869, 86900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Alcremie - Drain Punch - TM63
  (869, 86900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Alcremie - Wonder Room - TM71
  (869, 86900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 33),
  -- Alcremie - Magic Room - TM72
  (869, 86900, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 34),
  -- Alcremie - Round - TM76
  (869, 86900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Alcremie - Draining Kiss - TM87
  (869, 86900, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 36),
  -- Alcremie - Misty Terrain - TM89
  (869, 86900, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 37),
  -- Alcremie - Mystical Fire - TM92
  (869, 86900, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 38),
  -- Alcremie - Psychic - TR11
  (869, 86900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 39),
  -- Alcremie - Metronome - TR14
  (869, 86900, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 40),
  -- Alcremie - Tri Attack - TR19
  (869, 86900, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 41),
  -- Alcremie - Substitute - TR20
  (869, 86900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Alcremie - Psyshock - TR25
  (869, 86900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 43),
  -- Alcremie - Endure - TR26
  (869, 86900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Alcremie - Sleep Talk - TR27
  (869, 86900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Alcremie - Encore - TR30
  (869, 86900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 46),
  -- Alcremie - Calm Mind - TR49
  (869, 86900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 47),
  -- Alcremie - Energy Ball - TR65
  (869, 86900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Alcremie - Stored Power - TR82
  (869, 86900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 49),
  -- Alcremie - Play Rough - TR90
  (869, 86900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 50),
  -- Alcremie - Dazzling Gleam - TR92
  (869, 86900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 51),
  -- Falinks - Tackle - Level 1
  (870, 87000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Falinks - Protect - Level 1
  (870, 87000, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Falinks - Rock Smash - Level 5
  (870, 87000, 249, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Falinks - Focus Energy - Level 10
  (870, 87000, 116, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Falinks - Headbutt - Level 15
  (870, 87000, 29, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Falinks - Bulk Up - Level 20
  (870, 87000, 339, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Falinks - Endure - Level 25
  (870, 87000, 203, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Falinks - Reversal - Level 30
  (870, 87000, 179, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Falinks - First Impression - Level 35
  (870, 87000, 660, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Falinks - No Retreat - Level 40
  (870, 87000, 748, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Falinks - Iron Defense - Level 45
  (870, 87000, 334, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Falinks - Close Combat - Level 50
  (870, 87000, 370, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Falinks - Megahorn - Level 55
  (870, 87000, 224, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Falinks - Counter - Level 60
  (870, 87000, 68, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Falinks - Hyper Beam - TM08
  (870, 87000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Falinks - Giga Impact - TM09
  (870, 87000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Falinks - Screech - TM16
  (870, 87000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Falinks - Rest - TM21
  (870, 87000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Falinks - Rock Slide - TM22
  (870, 87000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Falinks - Snore - TM24
  (870, 87000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Falinks - Protect - TM25
  (870, 87000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Falinks - Beat Up - TM37
  (870, 87000, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 22),
  -- Falinks - Facade - TM39
  (870, 87000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Falinks - Helping Hand - TM41
  (870, 87000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Falinks - Revenge - TM42
  (870, 87000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Falinks - Brick Break - TM43
  (870, 87000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Falinks - Rock Tomb - TM48
  (870, 87000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Falinks - Payback - TM57
  (870, 87000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Falinks - Assurance - TM58
  (870, 87000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Falinks - Round - TM76
  (870, 87000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Falinks - Retaliate - TM79
  (870, 87000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 31),
  -- Falinks - False Swipe - TM94
  (870, 87000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 32),
  -- Falinks - Smart Strike - TM96
  (870, 87000, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 33),
  -- Falinks - Swords Dance - TR00
  (870, 87000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Falinks - Agility - TR12
  (870, 87000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Falinks - Focus Energy - TR13
  (870, 87000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 36),
  -- Falinks - Substitute - TR20
  (870, 87000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Falinks - Reversal - TR21
  (870, 87000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 38),
  -- Falinks - Endure - TR26
  (870, 87000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Falinks - Sleep Talk - TR27
  (870, 87000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Falinks - Megahorn - TR28
  (870, 87000, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 41),
  -- Falinks - Superpower - TR39
  (870, 87000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 42),
  -- Falinks - Iron Defense - TR46
  (870, 87000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Falinks - Bulk Up - TR48
  (870, 87000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 44),
  -- Falinks - Close Combat - TR53
  (870, 87000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 45),
  -- Falinks - Poison Jab - TR57
  (870, 87000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 46),
  -- Falinks - Focus Blast - TR64
  (870, 87000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 47),
  -- Falinks - Zen Headbutt - TR69
  (870, 87000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 48),
  -- Falinks - Iron Head - TR74
  (870, 87000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 49),
  -- Falinks - Throat Chop - TR95
  (870, 87000, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 50),
  -- Pincurchin - Peck - Level 1
  (871, 87100, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pincurchin - Thunder Shock - Level 1
  (871, 87100, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pincurchin - Water Gun - Level 5
  (871, 87100, 55, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pincurchin - Charge - Level 10
  (871, 87100, 268, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pincurchin - Fury Attack - Level 15
  (871, 87100, 31, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pincurchin - Spark - Level 20
  (871, 87100, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pincurchin - Bubble Beam - Level 25
  (871, 87100, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pincurchin - Recover - Level 30
  (871, 87100, 105, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pincurchin - Curse - Level 35
  (871, 87100, 174, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pincurchin - Electric Terrain - Level 40
  (871, 87100, 604, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pincurchin - Poison Jab - Level 45
  (871, 87100, 398, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pincurchin - Zing Zap - Level 50
  (871, 87100, 716, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pincurchin - Acupressure - Level 55
  (871, 87100, 367, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pincurchin - Discharge - Level 60
  (871, 87100, 435, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pincurchin - Pin Missile - TM07
  (871, 87100, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Pincurchin - Thunder Wave - TM14
  (871, 87100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Pincurchin - Self-Destruct - TM20
  (871, 87100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Pincurchin - Rest - TM21
  (871, 87100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Pincurchin - Snore - TM24
  (871, 87100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Pincurchin - Protect - TM25
  (871, 87100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Pincurchin - Attract - TM31
  (871, 87100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Pincurchin - Rain Dance - TM33
  (871, 87100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Pincurchin - Facade - TM39
  (871, 87100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Pincurchin - Brine - TM55
  (871, 87100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 24),
  -- Pincurchin - Payback - TM57
  (871, 87100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 25),
  -- Pincurchin - Assurance - TM58
  (871, 87100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 26),
  -- Pincurchin - Venoshock - TM74
  (871, 87100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Pincurchin - Round - TM76
  (871, 87100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Pincurchin - Hex - TM77
  (871, 87100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 29),
  -- Pincurchin - Electric Terrain - TM90
  (871, 87100, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 30),
  -- Pincurchin - Hydro Pump - TR03
  (871, 87100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 31),
  -- Pincurchin - Surf - TR04
  (871, 87100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 32),
  -- Pincurchin - Thunderbolt - TR08
  (871, 87100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Pincurchin - Thunder - TR09
  (871, 87100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Pincurchin - Substitute - TR20
  (871, 87100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Pincurchin - Reversal - TR21
  (871, 87100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 36),
  -- Pincurchin - Spikes - TR23
  (871, 87100, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 37),
  -- Pincurchin - Endure - TR26
  (871, 87100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Pincurchin - Sleep Talk - TR27
  (871, 87100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Pincurchin - Muddy Water - TR45
  (871, 87100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 40),
  -- Pincurchin - Toxic Spikes - TR54
  (871, 87100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 41),
  -- Pincurchin - Poison Jab - TR57
  (871, 87100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 42),
  -- Pincurchin - Scald - TR84
  (871, 87100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 43),
  -- Pincurchin - Venom Drench - TR91
  (871, 87100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 44),
  -- Pincurchin - Throat Chop - TR95
  (871, 87100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 45),
  -- Pincurchin - Liquidation - TR98
  (871, 87100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 46),
  -- Pincurchin - Memento - Egg
  (871, 87100, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pincurchin - Sucker Punch - Egg
  (871, 87100, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snom - Powder Snow - Level 1
  (872, 87200, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snom - Struggle Bug - Level 1
  (872, 87200, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snom - Rest - TM21
  (872, 87200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 3),
  -- Snom - Snore - TM24
  (872, 87200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 4),
  -- Snom - Protect - TM25
  (872, 87200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 5),
  -- Snom - Icy Wind - TM27
  (872, 87200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 6),
  -- Snom - Attract - TM31
  (872, 87200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 7),
  -- Snom - Facade - TM39
  (872, 87200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 8),
  -- Snom - Icicle Spear - TM51
  (872, 87200, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 9),
  -- Snom - Round - TM76
  (872, 87200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 10),
  -- Snom - Substitute - TR20
  (872, 87200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 11),
  -- Snom - Endure - TR26
  (872, 87200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 12),
  -- Snom - Sleep Talk - TR27
  (872, 87200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 13),
  -- Snom - Bug Buzz - TR61
  (872, 87200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 14),
  -- Snom - Mirror Coat - Egg
  (872, 87200, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 15),
  -- Snom - Bug Bite - Egg
  (872, 87200, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 16),
  -- Snom - Fairy Wind - Egg
  (872, 87200, 584, 18, NULL, 5, NULL, NULL, NULL, NULL, 17),
  -- Frosmoth - Powder Snow - Level 1
  (873, 87300, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frosmoth - Icy Wind - Level 1
  (873, 87300, 196, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frosmoth - Attract - Level 1
  (873, 87300, 213, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Frosmoth - Helping Hand - Level 1
  (873, 87300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Frosmoth - Struggle Bug - Level 1
  (873, 87300, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Frosmoth - Stun Spore - Level 4
  (873, 87300, 78, 18, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Frosmoth - Infestation - Level 8
  (873, 87300, 611, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Frosmoth - Mist - Level 12
  (873, 87300, 54, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Frosmoth - Defog - Level 16
  (873, 87300, 432, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Frosmoth - Feather Dance - Level 21
  (873, 87300, 297, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Frosmoth - Aurora Beam - Level 24
  (873, 87300, 62, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Frosmoth - Hail - Level 28
  (873, 87300, 258, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Frosmoth - Bug Buzz - Level 32
  (873, 87300, 405, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Frosmoth - Aurora Veil - Level 36
  (873, 87300, 694, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Frosmoth - Blizzard - Level 40
  (873, 87300, 59, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Frosmoth - Tailwind - Level 44
  (873, 87300, 366, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Frosmoth - Wide Guard - Level 48
  (873, 87300, 469, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Frosmoth - Quiver Dance - Level 52
  (873, 87300, 483, 18, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Frosmoth - Icy Wind - Evolution
  (873, 87300, 196, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Frosmoth - Hyper Beam - TM08
  (873, 87300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Frosmoth - Giga Impact - TM09
  (873, 87300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Frosmoth - Light Screen - TM17
  (873, 87300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Frosmoth - Reflect - TM18
  (873, 87300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Frosmoth - Safeguard - TM19
  (873, 87300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Frosmoth - Rest - TM21
  (873, 87300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Frosmoth - Snore - TM24
  (873, 87300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Frosmoth - Protect - TM25
  (873, 87300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Frosmoth - Icy Wind - TM27
  (873, 87300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Frosmoth - Giga Drain - TM28
  (873, 87300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 29),
  -- Frosmoth - Attract - TM31
  (873, 87300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Frosmoth - Hail - TM35
  (873, 87300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Frosmoth - Facade - TM39
  (873, 87300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Frosmoth - Helping Hand - TM41
  (873, 87300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Frosmoth - Imprison - TM44
  (873, 87300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Frosmoth - Weather Ball - TM46
  (873, 87300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 35),
  -- Frosmoth - Icicle Spear - TM51
  (873, 87300, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 36),
  -- Frosmoth - U-turn - TM56
  (873, 87300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Frosmoth - Avalanche - TM64
  (873, 87300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 38),
  -- Frosmoth - Round - TM76
  (873, 87300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Frosmoth - Acrobatics - TM78
  (873, 87300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Frosmoth - Air Slash - TM95
  (873, 87300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Frosmoth - Ice Beam - TR05
  (873, 87300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Frosmoth - Blizzard - TR06
  (873, 87300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Frosmoth - Leech Life - TR18
  (873, 87300, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 44),
  -- Frosmoth - Substitute - TR20
  (873, 87300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Frosmoth - Endure - TR26
  (873, 87300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Frosmoth - Sleep Talk - TR27
  (873, 87300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Frosmoth - Calm Mind - TR49
  (873, 87300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Frosmoth - Bug Buzz - TR61
  (873, 87300, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 49),
  -- Frosmoth - Hurricane - TR89
  (873, 87300, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 50),
  -- Frosmoth - Play Rough - TR90
  (873, 87300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 51),
  -- Frosmoth - Dazzling Gleam - TR92
  (873, 87300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 52),
  -- Stonjourner - Rock Throw - Level 1
  (874, 87400, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stonjourner - Block - Level 1
  (874, 87400, 335, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stonjourner - Rock Polish - Level 6
  (874, 87400, 397, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Stonjourner - Rock Tomb - Level 12
  (874, 87400, 317, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Stonjourner - Gravity - Level 18
  (874, 87400, 356, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Stonjourner - Stomp - Level 24
  (874, 87400, 23, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Stonjourner - Stealth Rock - Level 30
  (874, 87400, 446, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Stonjourner - Rock Slide - Level 36
  (874, 87400, 157, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Stonjourner - Body Slam - Level 42
  (874, 87400, 34, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Stonjourner - Wide Guard - Level 48
  (874, 87400, 469, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Stonjourner - Heavy Slam - Level 54
  (874, 87400, 484, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Stonjourner - Stone Edge - Level 60
  (874, 87400, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Stonjourner - Mega Kick - Level 66
  (874, 87400, 25, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Stonjourner - Mega Kick - TM01
  (874, 87400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Stonjourner - Hyper Beam - TM08
  (874, 87400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Stonjourner - Giga Impact - TM09
  (874, 87400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Stonjourner - Safeguard - TM19
  (874, 87400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Stonjourner - Self-Destruct - TM20
  (874, 87400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 18),
  -- Stonjourner - Rest - TM21
  (874, 87400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Stonjourner - Rock Slide - TM22
  (874, 87400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Stonjourner - Snore - TM24
  (874, 87400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Stonjourner - Protect - TM25
  (874, 87400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Stonjourner - Attract - TM31
  (874, 87400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Stonjourner - Sandstorm - TM32
  (874, 87400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Stonjourner - Facade - TM39
  (874, 87400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Stonjourner - Imprison - TM44
  (874, 87400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Stonjourner - Rock Tomb - TM48
  (874, 87400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Stonjourner - Sand Tomb - TM49
  (874, 87400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Stonjourner - Rock Blast - TM54
  (874, 87400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Stonjourner - Assurance - TM58
  (874, 87400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Stonjourner - Wonder Room - TM71
  (874, 87400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 31),
  -- Stonjourner - Round - TM76
  (874, 87400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Stonjourner - Bulldoze - TM81
  (874, 87400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Stonjourner - Brutal Swing - TM97
  (874, 87400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Stonjourner - Stomping Tantrum - TM98
  (874, 87400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Stonjourner - Body Slam - TR01
  (874, 87400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Stonjourner - Earthquake - TR10
  (874, 87400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Stonjourner - Substitute - TR20
  (874, 87400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Stonjourner - Endure - TR26
  (874, 87400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Stonjourner - Sleep Talk - TR27
  (874, 87400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Stonjourner - Superpower - TR39
  (874, 87400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 41),
  -- Stonjourner - Iron Defense - TR46
  (874, 87400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Stonjourner - Earth Power - TR67
  (874, 87400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Stonjourner - Stone Edge - TR75
  (874, 87400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 44),
  -- Stonjourner - Stealth Rock - TR76
  (874, 87400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 45),
  -- Stonjourner - Heavy Slam - TR79
  (874, 87400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 46),
  -- Stonjourner - Heat Crash - TR88
  (874, 87400, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 47),
  -- Stonjourner - Body Press - TR99
  (874, 87400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 48),
  -- Stonjourner - Curse - Egg
  (874, 87400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stonjourner - Ancient Power - Egg
  (874, 87400, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Eiscue - Tackle - Level 1
  (875, 87500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eiscue - Powder Snow - Level 1
  (875, 87500, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eiscue - Mist - Level 6
  (875, 87500, 54, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Eiscue - Weather Ball - Level 12
  (875, 87500, 311, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Eiscue - Icy Wind - Level 18
  (875, 87500, 196, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Eiscue - Headbutt - Level 24
  (875, 87500, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Eiscue - Amnesia - Level 30
  (875, 87500, 133, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Eiscue - Freeze-Dry - Level 36
  (875, 87500, 573, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Eiscue - Hail - Level 42
  (875, 87500, 258, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Eiscue - Aurora Veil - Level 48
  (875, 87500, 694, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Eiscue - Surf - Level 54
  (875, 87500, 57, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Eiscue - Blizzard - Level 60
  (875, 87500, 59, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Eiscue - Ice Punch - TM04
  (875, 87500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 13),
  -- Eiscue - Reflect - TM18
  (875, 87500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 14),
  -- Eiscue - Rest - TM21
  (875, 87500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Eiscue - Snore - TM24
  (875, 87500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Eiscue - Protect - TM25
  (875, 87500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Eiscue - Icy Wind - TM27
  (875, 87500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Eiscue - Attract - TM31
  (875, 87500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Eiscue - Hail - TM35
  (875, 87500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 20),
  -- Eiscue - Whirlpool - TM36
  (875, 87500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 21),
  -- Eiscue - Facade - TM39
  (875, 87500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Eiscue - Dive - TM45
  (875, 87500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 23),
  -- Eiscue - Weather Ball - TM46
  (875, 87500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 24),
  -- Eiscue - Icicle Spear - TM51
  (875, 87500, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 25),
  -- Eiscue - Brine - TM55
  (875, 87500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 26),
  -- Eiscue - Avalanche - TM64
  (875, 87500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 27),
  -- Eiscue - Round - TM76
  (875, 87500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Eiscue - Hydro Pump - TR03
  (875, 87500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 29),
  -- Eiscue - Surf - TR04
  (875, 87500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Eiscue - Ice Beam - TR05
  (875, 87500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 31),
  -- Eiscue - Blizzard - TR06
  (875, 87500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 32),
  -- Eiscue - Agility - TR12
  (875, 87500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 33),
  -- Eiscue - Waterfall - TR16
  (875, 87500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 34),
  -- Eiscue - Amnesia - TR17
  (875, 87500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Eiscue - Substitute - TR20
  (875, 87500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Eiscue - Reversal - TR21
  (875, 87500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 37),
  -- Eiscue - Endure - TR26
  (875, 87500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Eiscue - Sleep Talk - TR27
  (875, 87500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Eiscue - Iron Defense - TR46
  (875, 87500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 40),
  -- Eiscue - Zen Headbutt - TR69
  (875, 87500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 41),
  -- Eiscue - Iron Head - TR74
  (875, 87500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 42),
  -- Eiscue - Liquidation - TR98
  (875, 87500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 43),
  -- Eiscue - Double-Edge - Egg
  (875, 87500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eiscue - Belly Drum - Egg
  (875, 87500, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eiscue - Aqua Ring - Egg
  (875, 87500, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eiscue - Head Smash - Egg
  (875, 87500, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Eiscue - Soak - Egg
  (875, 87500, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Eiscue - Icicle Crash - Egg
  (875, 87500, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Indeedee - Stored Power - Level 1
  (876, 87600, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee - Play Nice - Level 1
  (876, 87600, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee - Encore - Level 5
  (876, 87600, 227, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Indeedee - Disarming Voice - Level 10
  (876, 87600, 574, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Indeedee - Psybeam - Level 15
  (876, 87600, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Indeedee - Helping Hand - Level 20
  (876, 87600, 270, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Indeedee - After You - Level 25
  (876, 87600, 495, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Indeedee - Aromatherapy - Level 30
  (876, 87600, 312, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Indeedee - Psychic - Level 35
  (876, 87600, 94, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Indeedee - Calm Mind - Level 40
  (876, 87600, 347, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Indeedee - Power Split - Level 45
  (876, 87600, 471, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Indeedee - Psychic Terrain - Level 50
  (876, 87600, 678, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Indeedee - Last Resort - Level 55
  (876, 87600, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Indeedee - Pay Day - TM02
  (876, 87600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 14),
  -- Indeedee - Magical Leaf - TM10
  (876, 87600, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 15),
  -- Indeedee - Rest - TM21
  (876, 87600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Indeedee - Snore - TM24
  (876, 87600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Indeedee - Protect - TM25
  (876, 87600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Indeedee - Attract - TM31
  (876, 87600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Indeedee - Facade - TM39
  (876, 87600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Indeedee - Swift - TM40
  (876, 87600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 21),
  -- Indeedee - Helping Hand - TM41
  (876, 87600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 22),
  -- Indeedee - Imprison - TM44
  (876, 87600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 23),
  -- Indeedee - Power Swap - TM60
  (876, 87600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 24),
  -- Indeedee - Drain Punch - TM63
  (876, 87600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 25),
  -- Indeedee - Trick Room - TM70
  (876, 87600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 26),
  -- Indeedee - Wonder Room - TM71
  (876, 87600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 27),
  -- Indeedee - Magic Room - TM72
  (876, 87600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 28),
  -- Indeedee - Round - TM76
  (876, 87600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Indeedee - Draining Kiss - TM87
  (876, 87600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 30),
  -- Indeedee - Psychic Terrain - TM91
  (876, 87600, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 31),
  -- Indeedee - Mystical Fire - TM92
  (876, 87600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 32),
  -- Indeedee - Psychic - TR11
  (876, 87600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 33),
  -- Indeedee - Metronome - TR14
  (876, 87600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 34),
  -- Indeedee - Tri Attack - TR19
  (876, 87600, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 35),
  -- Indeedee - Substitute - TR20
  (876, 87600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Indeedee - Psyshock - TR25
  (876, 87600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 37),
  -- Indeedee - Endure - TR26
  (876, 87600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Indeedee - Sleep Talk - TR27
  (876, 87600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Indeedee - Encore - TR30
  (876, 87600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 40),
  -- Indeedee - Shadow Ball - TR33
  (876, 87600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Indeedee - Future Sight - TR34
  (876, 87600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 42),
  -- Indeedee - Trick - TR38
  (876, 87600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Indeedee - Hyper Voice - TR42
  (876, 87600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 44),
  -- Indeedee - Calm Mind - TR49
  (876, 87600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Indeedee - Energy Ball - TR65
  (876, 87600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 46),
  -- Indeedee - Zen Headbutt - TR69
  (876, 87600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 47),
  -- Indeedee - Stored Power - TR82
  (876, 87600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 48),
  -- Indeedee - Ally Switch - TR83
  (876, 87600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 49),
  -- Indeedee - Play Rough - TR90
  (876, 87600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 50),
  -- Indeedee - Dazzling Gleam - TR92
  (876, 87600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 51),
  -- Indeedee - Psych Up - Egg
  (876, 87600, 244, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Indeedee - Fake Out - Egg
  (876, 87600, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Indeedee - Extrasensory - Egg
  (876, 87600, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Morpeko - Tail Whip - Level 1
  (877, 87700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morpeko - Thunder Shock - Level 1
  (877, 87700, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morpeko - Leer - Level 5
  (877, 87700, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Morpeko - Power Trip - Level 10
  (877, 87700, 681, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Morpeko - Quick Attack - Level 15
  (877, 87700, 98, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Morpeko - Flatter - Level 20
  (877, 87700, 260, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Morpeko - Bite - Level 25
  (877, 87700, 44, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Morpeko - Spark - Level 30
  (877, 87700, 209, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Morpeko - Torment - Level 35
  (877, 87700, 259, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Morpeko - Agility - Level 40
  (877, 87700, 97, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Morpeko - Bullet Seed - Level 45
  (877, 87700, 331, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Morpeko - Crunch - Level 50
  (877, 87700, 242, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Morpeko - Aura Wheel - Level 55
  (877, 87700, 783, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Morpeko - Thrash - Level 60
  (877, 87700, 37, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Morpeko - Thunder Punch - TM05
  (877, 87700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 15),
  -- Morpeko - Thunder Wave - TM14
  (877, 87700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Morpeko - Rest - TM21
  (877, 87700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Morpeko - Thief - TM23
  (877, 87700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Morpeko - Snore - TM24
  (877, 87700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Morpeko - Protect - TM25
  (877, 87700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Morpeko - Scary Face - TM26
  (877, 87700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Morpeko - Attract - TM31
  (877, 87700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Morpeko - Facade - TM39
  (877, 87700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Morpeko - Swift - TM40
  (877, 87700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Morpeko - Revenge - TM42
  (877, 87700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Morpeko - Brick Break - TM43
  (877, 87700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Morpeko - Fake Tears - TM47
  (877, 87700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Morpeko - Bullet Seed - TM50
  (877, 87700, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 28),
  -- Morpeko - Payback - TM57
  (877, 87700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Morpeko - Assurance - TM58
  (877, 87700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Morpeko - Fling - TM59
  (877, 87700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Morpeko - Thunder Fang - TM66
  (877, 87700, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 32),
  -- Morpeko - Ice Fang - TM67
  (877, 87700, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 33),
  -- Morpeko - Fire Fang - TM68
  (877, 87700, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 34),
  -- Morpeko - Round - TM76
  (877, 87700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Morpeko - Volt Switch - TM80
  (877, 87700, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 36),
  -- Morpeko - Electroweb - TM82
  (877, 87700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 37),
  -- Morpeko - Snarl - TM85
  (877, 87700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Morpeko - Electric Terrain - TM90
  (877, 87700, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 39),
  -- Morpeko - Stomping Tantrum - TM98
  (877, 87700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Morpeko - Thunderbolt - TR08
  (877, 87700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Morpeko - Thunder - TR09
  (877, 87700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Morpeko - Agility - TR12
  (877, 87700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Morpeko - Substitute - TR20
  (877, 87700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Morpeko - Outrage - TR24
  (877, 87700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Morpeko - Endure - TR26
  (877, 87700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Morpeko - Sleep Talk - TR27
  (877, 87700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Morpeko - Crunch - TR32
  (877, 87700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Morpeko - Uproar - TR35
  (877, 87700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Morpeko - Taunt - TR37
  (877, 87700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Morpeko - Dark Pulse - TR58
  (877, 87700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 51),
  -- Morpeko - Seed Bomb - TR59
  (877, 87700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 52),
  -- Morpeko - Nasty Plot - TR68
  (877, 87700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 53),
  -- Morpeko - Electro Ball - TR80
  (877, 87700, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 54),
  -- Morpeko - Foul Play - TR81
  (877, 87700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 55),
  -- Morpeko - Wild Charge - TR86
  (877, 87700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 56),
  -- Morpeko - Psychic Fangs - TR97
  (877, 87700, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 57),
  -- Morpeko - Super Fang - Egg
  (877, 87700, 162, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Morpeko - Swagger - Egg
  (877, 87700, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Morpeko - Rapid Spin - Egg
  (877, 87700, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Morpeko - Fake Out - Egg
  (877, 87700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Morpeko - Charge - Egg
  (877, 87700, 268, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Morpeko - Tickle - Egg
  (877, 87700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Morpeko - Quash - Egg
  (877, 87700, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Morpeko - Parting Shot - Egg
  (877, 87700, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Cufant - Tackle - Level 1
  (878, 87800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cufant - Growl - Level 1
  (878, 87800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cufant - Rollout - Level 5
  (878, 87800, 205, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cufant - Rock Smash - Level 10
  (878, 87800, 249, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cufant - Bulldoze - Level 15
  (878, 87800, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cufant - Stomp - Level 20
  (878, 87800, 23, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Cufant - Iron Defense - Level 25
  (878, 87800, 334, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cufant - Dig - Level 30
  (878, 87800, 91, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cufant - Strength - Level 35
  (878, 87800, 70, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cufant - Iron Head - Level 40
  (878, 87800, 442, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cufant - Play Rough - Level 45
  (878, 87800, 583, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Cufant - High Horsepower - Level 50
  (878, 87800, 667, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Cufant - Superpower - Level 55
  (878, 87800, 276, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Cufant - Mega Kick - TM01
  (878, 87800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Cufant - Dig - TM15
  (878, 87800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Cufant - Screech - TM16
  (878, 87800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Cufant - Rest - TM21
  (878, 87800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Cufant - Rock Slide - TM22
  (878, 87800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Cufant - Snore - TM24
  (878, 87800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Cufant - Protect - TM25
  (878, 87800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Cufant - Attract - TM31
  (878, 87800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Cufant - Facade - TM39
  (878, 87800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Cufant - Brick Break - TM43
  (878, 87800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 23),
  -- Cufant - Rock Tomb - TM48
  (878, 87800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 24),
  -- Cufant - Mud Shot - TM53
  (878, 87800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Cufant - Rock Blast - TM54
  (878, 87800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 26),
  -- Cufant - Fling - TM59
  (878, 87800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 27),
  -- Cufant - Round - TM76
  (878, 87800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Cufant - Bulldoze - TM81
  (878, 87800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 29),
  -- Cufant - Brutal Swing - TM97
  (878, 87800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 30),
  -- Cufant - Stomping Tantrum - TM98
  (878, 87800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 31),
  -- Cufant - Body Slam - TR01
  (878, 87800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Cufant - Substitute - TR20
  (878, 87800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Cufant - Endure - TR26
  (878, 87800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Cufant - Sleep Talk - TR27
  (878, 87800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Cufant - Superpower - TR39
  (878, 87800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 36),
  -- Cufant - Iron Defense - TR46
  (878, 87800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Cufant - Earth Power - TR67
  (878, 87800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 38),
  -- Cufant - Zen Headbutt - TR69
  (878, 87800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 39),
  -- Cufant - Power Whip - TR72
  (878, 87800, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 40),
  -- Cufant - Iron Head - TR74
  (878, 87800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 41),
  -- Cufant - Stealth Rock - TR76
  (878, 87800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 42),
  -- Cufant - Work Up - TR85
  (878, 87800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 43),
  -- Cufant - Play Rough - TR90
  (878, 87800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 44),
  -- Cufant - High Horsepower - TR94
  (878, 87800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 45),
  -- Cufant - Body Press - TR99
  (878, 87800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 46),
  -- Cufant - Whirlwind - Egg
  (878, 87800, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cufant - Slam - Egg
  (878, 87800, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cufant - Double-Edge - Egg
  (878, 87800, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cufant - Fissure - Egg
  (878, 87800, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cufant - Defense Curl - Egg
  (878, 87800, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cufant - Curse - Egg
  (878, 87800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cufant - Swagger - Egg
  (878, 87800, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cufant - Belch - Egg
  (878, 87800, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cufant - Steel Beam - Tutor
  (878, 87800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 55),
  -- Copperajah - Tackle - Level 1
  (879, 87900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Copperajah - Growl - Level 1
  (879, 87900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Copperajah - Rollout - Level 1
  (879, 87900, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Copperajah - Rock Smash - Level 1
  (879, 87900, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Copperajah - Heavy Slam - Level 1
  (879, 87900, 484, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Copperajah - Bulldoze - Level 15
  (879, 87900, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Copperajah - Stomp - Level 20
  (879, 87900, 23, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Copperajah - Iron Defense - Level 25
  (879, 87900, 334, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Copperajah - Dig - Level 30
  (879, 87900, 91, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Copperajah - Strength - Level 37
  (879, 87900, 70, 18, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Copperajah - Iron Head - Level 44
  (879, 87900, 442, 18, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Copperajah - Play Rough - Level 51
  (879, 87900, 583, 18, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Copperajah - High Horsepower - Level 58
  (879, 87900, 667, 18, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Copperajah - Superpower - Level 65
  (879, 87900, 276, 18, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Copperajah - Heavy Slam - Evolution
  (879, 87900, 484, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Copperajah - Mega Kick - TM01
  (879, 87900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Copperajah - Hyper Beam - TM08
  (879, 87900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Copperajah - Giga Impact - TM09
  (879, 87900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Copperajah - Dig - TM15
  (879, 87900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Copperajah - Screech - TM16
  (879, 87900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Copperajah - Rest - TM21
  (879, 87900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Copperajah - Rock Slide - TM22
  (879, 87900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Copperajah - Snore - TM24
  (879, 87900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Copperajah - Protect - TM25
  (879, 87900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Copperajah - Scary Face - TM26
  (879, 87900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Copperajah - Attract - TM31
  (879, 87900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Copperajah - Facade - TM39
  (879, 87900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Copperajah - Revenge - TM42
  (879, 87900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Copperajah - Brick Break - TM43
  (879, 87900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Copperajah - Rock Tomb - TM48
  (879, 87900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Copperajah - Mud Shot - TM53
  (879, 87900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Copperajah - Rock Blast - TM54
  (879, 87900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Copperajah - Payback - TM57
  (879, 87900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Copperajah - Fling - TM59
  (879, 87900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Copperajah - Round - TM76
  (879, 87900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Copperajah - Bulldoze - TM81
  (879, 87900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Copperajah - Snarl - TM85
  (879, 87900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 37),
  -- Copperajah - Brutal Swing - TM97
  (879, 87900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Copperajah - Stomping Tantrum - TM98
  (879, 87900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Copperajah - Body Slam - TR01
  (879, 87900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Copperajah - Earthquake - TR10
  (879, 87900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Copperajah - Substitute - TR20
  (879, 87900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Copperajah - Outrage - TR24
  (879, 87900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 43),
  -- Copperajah - Endure - TR26
  (879, 87900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Copperajah - Sleep Talk - TR27
  (879, 87900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Copperajah - Taunt - TR37
  (879, 87900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Copperajah - Superpower - TR39
  (879, 87900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Copperajah - Iron Defense - TR46
  (879, 87900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Copperajah - Earth Power - TR67
  (879, 87900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 49),
  -- Copperajah - Zen Headbutt - TR69
  (879, 87900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Copperajah - Flash Cannon - TR70
  (879, 87900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 51),
  -- Copperajah - Power Whip - TR72
  (879, 87900, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 52),
  -- Copperajah - Iron Head - TR74
  (879, 87900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 53),
  -- Copperajah - Stone Edge - TR75
  (879, 87900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Copperajah - Stealth Rock - TR76
  (879, 87900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 55),
  -- Copperajah - Heavy Slam - TR79
  (879, 87900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 56),
  -- Copperajah - Work Up - TR85
  (879, 87900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Copperajah - Heat Crash - TR88
  (879, 87900, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 58),
  -- Copperajah - Play Rough - TR90
  (879, 87900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 59),
  -- Copperajah - High Horsepower - TR94
  (879, 87900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 60),
  -- Copperajah - Body Press - TR99
  (879, 87900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 61),
  -- Copperajah - Steel Beam - Tutor
  (879, 87900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Dracozolt - Tackle - Level 1
  (880, 88000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dracozolt - Thunder Shock - Level 1
  (880, 88000, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dracozolt - Charge - Level 7
  (880, 88000, 268, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dracozolt - Aerial Ace - Level 14
  (880, 88000, 332, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Dracozolt - Ancient Power - Level 21
  (880, 88000, 246, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Dracozolt - Pluck - Level 28
  (880, 88000, 365, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Dracozolt - Dragon Tail - Level 35
  (880, 88000, 525, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Dracozolt - Stomp - Level 42
  (880, 88000, 23, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Dracozolt - Slam - Level 49
  (880, 88000, 21, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Dracozolt - Discharge - Level 56
  (880, 88000, 435, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Dracozolt - Bolt Beak - Level 63
  (880, 88000, 754, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Dracozolt - Dragon Pulse - Level 70
  (880, 88000, 406, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Dracozolt - Dragon Rush - Level 77
  (880, 88000, 407, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Dracozolt - Mega Punch - TM00
  (880, 88000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Dracozolt - Mega Kick - TM01
  (880, 88000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Dracozolt - Thunder Punch - TM05
  (880, 88000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Dracozolt - Hyper Beam - TM08
  (880, 88000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Dracozolt - Giga Impact - TM09
  (880, 88000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Dracozolt - Fire Spin - TM13
  (880, 88000, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 19),
  -- Dracozolt - Thunder Wave - TM14
  (880, 88000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Dracozolt - Rest - TM21
  (880, 88000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Dracozolt - Rock Slide - TM22
  (880, 88000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Dracozolt - Snore - TM24
  (880, 88000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Dracozolt - Protect - TM25
  (880, 88000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Dracozolt - Rain Dance - TM33
  (880, 88000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Dracozolt - Sunny Day - TM34
  (880, 88000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Dracozolt - Facade - TM39
  (880, 88000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Dracozolt - Rock Tomb - TM48
  (880, 88000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Dracozolt - Rock Blast - TM54
  (880, 88000, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Dracozolt - Thunder Fang - TM66
  (880, 88000, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 30),
  -- Dracozolt - Fire Fang - TM68
  (880, 88000, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 31),
  -- Dracozolt - Round - TM76
  (880, 88000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dracozolt - Bulldoze - TM81
  (880, 88000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Dracozolt - Brutal Swing - TM97
  (880, 88000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Dracozolt - Stomping Tantrum - TM98
  (880, 88000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Dracozolt - Breaking Swipe - TM99
  (880, 88000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 36),
  -- Dracozolt - Body Slam - TR01
  (880, 88000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Dracozolt - Flamethrower - TR02
  (880, 88000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Dracozolt - Low Kick - TR07
  (880, 88000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 39),
  -- Dracozolt - Thunderbolt - TR08
  (880, 88000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Dracozolt - Thunder - TR09
  (880, 88000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Dracozolt - Earthquake - TR10
  (880, 88000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Dracozolt - Fire Blast - TR15
  (880, 88000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Dracozolt - Substitute - TR20
  (880, 88000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Dracozolt - Outrage - TR24
  (880, 88000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Dracozolt - Endure - TR26
  (880, 88000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Dracozolt - Sleep Talk - TR27
  (880, 88000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Dracozolt - Iron Tail - TR31
  (880, 88000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Dracozolt - Taunt - TR37
  (880, 88000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Dracozolt - Dragon Claw - TR47
  (880, 88000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 50),
  -- Dracozolt - Dragon Pulse - TR62
  (880, 88000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 51),
  -- Dracozolt - Earth Power - TR67
  (880, 88000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Dracozolt - Stone Edge - TR75
  (880, 88000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Dracozolt - Electro Ball - TR80
  (880, 88000, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 54),
  -- Dracozolt - Wild Charge - TR86
  (880, 88000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 55),
  -- Dracozolt - High Horsepower - TR94
  (880, 88000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 56),
  -- Dracozolt - Draco Meteor - Tutor
  (880, 88000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Arctozolt - Thunder Shock - Level 1
  (881, 88100, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arctozolt - Powder Snow - Level 1
  (881, 88100, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arctozolt - Charge - Level 7
  (881, 88100, 268, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Arctozolt - Echoed Voice - Level 14
  (881, 88100, 497, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Arctozolt - Ancient Power - Level 21
  (881, 88100, 246, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Arctozolt - Pluck - Level 28
  (881, 88100, 365, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Arctozolt - Avalanche - Level 35
  (881, 88100, 419, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Arctozolt - Freeze-Dry - Level 42
  (881, 88100, 573, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Arctozolt - Slam - Level 49
  (881, 88100, 21, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Arctozolt - Discharge - Level 56
  (881, 88100, 435, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Arctozolt - Bolt Beak - Level 63
  (881, 88100, 754, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Arctozolt - Icicle Crash - Level 70
  (881, 88100, 556, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Arctozolt - Blizzard - Level 77
  (881, 88100, 59, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Arctozolt - Mega Punch - TM00
  (881, 88100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Arctozolt - Mega Kick - TM01
  (881, 88100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Arctozolt - Thunder Punch - TM05
  (881, 88100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Arctozolt - Hyper Beam - TM08
  (881, 88100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Arctozolt - Giga Impact - TM09
  (881, 88100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Arctozolt - Thunder Wave - TM14
  (881, 88100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Arctozolt - Rest - TM21
  (881, 88100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Arctozolt - Rock Slide - TM22
  (881, 88100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Arctozolt - Snore - TM24
  (881, 88100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Arctozolt - Protect - TM25
  (881, 88100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Arctozolt - Icy Wind - TM27
  (881, 88100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Arctozolt - Rain Dance - TM33
  (881, 88100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Arctozolt - Hail - TM35
  (881, 88100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Arctozolt - Facade - TM39
  (881, 88100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Arctozolt - Rock Tomb - TM48
  (881, 88100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Arctozolt - Icicle Spear - TM51
  (881, 88100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 29),
  -- Arctozolt - Rock Blast - TM54
  (881, 88100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 30),
  -- Arctozolt - Payback - TM57
  (881, 88100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Arctozolt - Avalanche - TM64
  (881, 88100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 32),
  -- Arctozolt - Thunder Fang - TM66
  (881, 88100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 33),
  -- Arctozolt - Ice Fang - TM67
  (881, 88100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 34),
  -- Arctozolt - Round - TM76
  (881, 88100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Arctozolt - Bulldoze - TM81
  (881, 88100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Arctozolt - Stomping Tantrum - TM98
  (881, 88100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Arctozolt - Body Slam - TR01
  (881, 88100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Arctozolt - Hydro Pump - TR03
  (881, 88100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 39),
  -- Arctozolt - Surf - TR04
  (881, 88100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 40),
  -- Arctozolt - Ice Beam - TR05
  (881, 88100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Arctozolt - Blizzard - TR06
  (881, 88100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Arctozolt - Low Kick - TR07
  (881, 88100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 43),
  -- Arctozolt - Thunderbolt - TR08
  (881, 88100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Arctozolt - Thunder - TR09
  (881, 88100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Arctozolt - Substitute - TR20
  (881, 88100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Arctozolt - Endure - TR26
  (881, 88100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Arctozolt - Sleep Talk - TR27
  (881, 88100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Arctozolt - Iron Tail - TR31
  (881, 88100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Arctozolt - Taunt - TR37
  (881, 88100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Arctozolt - Hyper Voice - TR42
  (881, 88100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 51),
  -- Arctozolt - Stone Edge - TR75
  (881, 88100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 52),
  -- Arctozolt - Electro Ball - TR80
  (881, 88100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 53),
  -- Arctozolt - Wild Charge - TR86
  (881, 88100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 54),
  -- Dracovish - Tackle - Level 1
  (882, 88200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dracovish - Water Gun - Level 1
  (882, 88200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dracovish - Protect - Level 7
  (882, 88200, 182, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dracovish - Brutal Swing - Level 14
  (882, 88200, 693, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Dracovish - Ancient Power - Level 21
  (882, 88200, 246, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Dracovish - Bite - Level 28
  (882, 88200, 44, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Dracovish - Dragon Breath - Level 35
  (882, 88200, 225, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Dracovish - Stomp - Level 42
  (882, 88200, 23, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Dracovish - Super Fang - Level 49
  (882, 88200, 162, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Dracovish - Crunch - Level 56
  (882, 88200, 242, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Dracovish - Fishious Rend - Level 63
  (882, 88200, 755, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Dracovish - Dragon Pulse - Level 70
  (882, 88200, 406, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Dracovish - Dragon Rush - Level 77
  (882, 88200, 407, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Dracovish - Mega Kick - TM01
  (882, 88200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Dracovish - Hyper Beam - TM08
  (882, 88200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Dracovish - Giga Impact - TM09
  (882, 88200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Dracovish - Rest - TM21
  (882, 88200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Dracovish - Rock Slide - TM22
  (882, 88200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Dracovish - Snore - TM24
  (882, 88200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Dracovish - Protect - TM25
  (882, 88200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Dracovish - Rain Dance - TM33
  (882, 88200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Dracovish - Whirlpool - TM36
  (882, 88200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 22),
  -- Dracovish - Facade - TM39
  (882, 88200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Dracovish - Dive - TM45
  (882, 88200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 24),
  -- Dracovish - Rock Tomb - TM48
  (882, 88200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Dracovish - Rock Blast - TM54
  (882, 88200, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 26),
  -- Dracovish - Brine - TM55
  (882, 88200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Dracovish - Ice Fang - TM67
  (882, 88200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 28),
  -- Dracovish - Round - TM76
  (882, 88200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Dracovish - Bulldoze - TM81
  (882, 88200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Dracovish - Brutal Swing - TM97
  (882, 88200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 31),
  -- Dracovish - Stomping Tantrum - TM98
  (882, 88200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 32),
  -- Dracovish - Body Slam - TR01
  (882, 88200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Dracovish - Hydro Pump - TR03
  (882, 88200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 34),
  -- Dracovish - Surf - TR04
  (882, 88200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Dracovish - Low Kick - TR07
  (882, 88200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 36),
  -- Dracovish - Earthquake - TR10
  (882, 88200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Dracovish - Waterfall - TR16
  (882, 88200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 38),
  -- Dracovish - Leech Life - TR18
  (882, 88200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 39),
  -- Dracovish - Substitute - TR20
  (882, 88200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Dracovish - Outrage - TR24
  (882, 88200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 41),
  -- Dracovish - Endure - TR26
  (882, 88200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Dracovish - Sleep Talk - TR27
  (882, 88200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Dracovish - Crunch - TR32
  (882, 88200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 44),
  -- Dracovish - Dragon Pulse - TR62
  (882, 88200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 45),
  -- Dracovish - Earth Power - TR67
  (882, 88200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 46),
  -- Dracovish - Zen Headbutt - TR69
  (882, 88200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 47),
  -- Dracovish - Iron Head - TR74
  (882, 88200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 48),
  -- Dracovish - Stone Edge - TR75
  (882, 88200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 49),
  -- Dracovish - Scald - TR84
  (882, 88200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 50),
  -- Dracovish - Psychic Fangs - TR97
  (882, 88200, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 51),
  -- Dracovish - Liquidation - TR98
  (882, 88200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 52),
  -- Dracovish - Draco Meteor - Tutor
  (882, 88200, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Arctovish - Water Gun - Level 1
  (883, 88300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arctovish - Powder Snow - Level 1
  (883, 88300, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arctovish - Protect - Level 7
  (883, 88300, 182, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Arctovish - Icy Wind - Level 14
  (883, 88300, 196, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Arctovish - Ancient Power - Level 21
  (883, 88300, 246, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Arctovish - Bite - Level 28
  (883, 88300, 44, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Arctovish - Aurora Veil - Level 35
  (883, 88300, 694, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Arctovish - Freeze-Dry - Level 42
  (883, 88300, 573, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Arctovish - Super Fang - Level 49
  (883, 88300, 162, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Arctovish - Crunch - Level 56
  (883, 88300, 242, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Arctovish - Fishious Rend - Level 63
  (883, 88300, 755, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Arctovish - Icicle Crash - Level 70
  (883, 88300, 556, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Arctovish - Blizzard - Level 77
  (883, 88300, 59, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Arctovish - Hyper Beam - TM08
  (883, 88300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Arctovish - Giga Impact - TM09
  (883, 88300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Arctovish - Rest - TM21
  (883, 88300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Arctovish - Rock Slide - TM22
  (883, 88300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Arctovish - Snore - TM24
  (883, 88300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Arctovish - Protect - TM25
  (883, 88300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Arctovish - Icy Wind - TM27
  (883, 88300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Arctovish - Rain Dance - TM33
  (883, 88300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Arctovish - Hail - TM35
  (883, 88300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Arctovish - Whirlpool - TM36
  (883, 88300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Arctovish - Facade - TM39
  (883, 88300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Arctovish - Dive - TM45
  (883, 88300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 25),
  -- Arctovish - Rock Tomb - TM48
  (883, 88300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Arctovish - Icicle Spear - TM51
  (883, 88300, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 27),
  -- Arctovish - Rock Blast - TM54
  (883, 88300, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 28),
  -- Arctovish - Brine - TM55
  (883, 88300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 29),
  -- Arctovish - Avalanche - TM64
  (883, 88300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 30),
  -- Arctovish - Ice Fang - TM67
  (883, 88300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 31),
  -- Arctovish - Round - TM76
  (883, 88300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Arctovish - Body Slam - TR01
  (883, 88300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Arctovish - Hydro Pump - TR03
  (883, 88300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 34),
  -- Arctovish - Surf - TR04
  (883, 88300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Arctovish - Ice Beam - TR05
  (883, 88300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Arctovish - Blizzard - TR06
  (883, 88300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Arctovish - Waterfall - TR16
  (883, 88300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 38),
  -- Arctovish - Substitute - TR20
  (883, 88300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Arctovish - Endure - TR26
  (883, 88300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Arctovish - Sleep Talk - TR27
  (883, 88300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Arctovish - Crunch - TR32
  (883, 88300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 42),
  -- Arctovish - Iron Defense - TR46
  (883, 88300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Arctovish - Zen Headbutt - TR69
  (883, 88300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 44),
  -- Arctovish - Iron Head - TR74
  (883, 88300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 45),
  -- Arctovish - Stone Edge - TR75
  (883, 88300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 46),
  -- Arctovish - Psychic Fangs - TR97
  (883, 88300, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 47),
  -- Arctovish - Liquidation - TR98
  (883, 88300, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 48),
  -- Duraludon - Leer - Level 1
  (884, 88400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duraludon - Metal Claw - Level 1
  (884, 88400, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duraludon - Rock Smash - Level 6
  (884, 88400, 249, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Duraludon - Hone Claws - Level 12
  (884, 88400, 468, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Duraludon - Metal Sound - Level 18
  (884, 88400, 319, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Duraludon - Breaking Swipe - Level 24
  (884, 88400, 784, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Duraludon - Dragon Tail - Level 30
  (884, 88400, 525, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Duraludon - Iron Defense - Level 36
  (884, 88400, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Duraludon - Laser Focus - Level 42
  (884, 88400, 673, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Duraludon - Dragon Claw - Level 48
  (884, 88400, 337, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Duraludon - Flash Cannon - Level 54
  (884, 88400, 430, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Duraludon - Metal Burst - Level 60
  (884, 88400, 368, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Duraludon - Hyper Beam - Level 66
  (884, 88400, 63, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Duraludon - Hyper Beam - TM08
  (884, 88400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Duraludon - Giga Impact - TM09
  (884, 88400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Duraludon - Solar Beam - TM11
  (884, 88400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Duraludon - Thunder Wave - TM14
  (884, 88400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Duraludon - Screech - TM16
  (884, 88400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Duraludon - Light Screen - TM17
  (884, 88400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Duraludon - Reflect - TM18
  (884, 88400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Duraludon - Rest - TM21
  (884, 88400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Duraludon - Rock Slide - TM22
  (884, 88400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Duraludon - Snore - TM24
  (884, 88400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Duraludon - Protect - TM25
  (884, 88400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Duraludon - Scary Face - TM26
  (884, 88400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Duraludon - Attract - TM31
  (884, 88400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Duraludon - Facade - TM39
  (884, 88400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Duraludon - Brick Break - TM43
  (884, 88400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 28),
  -- Duraludon - Rock Tomb - TM48
  (884, 88400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Duraludon - Round - TM76
  (884, 88400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Duraludon - Snarl - TM85
  (884, 88400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 31),
  -- Duraludon - Stomping Tantrum - TM98
  (884, 88400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 32),
  -- Duraludon - Breaking Swipe - TM99
  (884, 88400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 33),
  -- Duraludon - Swords Dance - TR00
  (884, 88400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Duraludon - Body Slam - TR01
  (884, 88400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Duraludon - Thunderbolt - TR08
  (884, 88400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Duraludon - Thunder - TR09
  (884, 88400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Duraludon - Substitute - TR20
  (884, 88400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Duraludon - Outrage - TR24
  (884, 88400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 39),
  -- Duraludon - Endure - TR26
  (884, 88400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Duraludon - Sleep Talk - TR27
  (884, 88400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Duraludon - Iron Defense - TR46
  (884, 88400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Duraludon - Dragon Claw - TR47
  (884, 88400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 43),
  -- Duraludon - Gyro Ball - TR52
  (884, 88400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 44),
  -- Duraludon - Dark Pulse - TR58
  (884, 88400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 45),
  -- Duraludon - Dragon Pulse - TR62
  (884, 88400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 46),
  -- Duraludon - Flash Cannon - TR70
  (884, 88400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Duraludon - Iron Head - TR74
  (884, 88400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 48),
  -- Duraludon - Stone Edge - TR75
  (884, 88400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 49),
  -- Duraludon - Stealth Rock - TR76
  (884, 88400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 50),
  -- Duraludon - Heavy Slam - TR79
  (884, 88400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 51),
  -- Duraludon - Foul Play - TR81
  (884, 88400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Duraludon - Body Press - TR99
  (884, 88400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 53),
  -- Duraludon - Slash - Egg
  (884, 88400, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duraludon - Mirror Coat - Egg
  (884, 88400, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Duraludon - Night Slash - Egg
  (884, 88400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Duraludon - Draco Meteor - Tutor
  (884, 88400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Duraludon - Steel Beam - Tutor
  (884, 88400, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Dreepy - Bite - Level 1
  (885, 88500, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dreepy - Quick Attack - Level 1
  (885, 88500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dreepy - Astonish - Level 1
  (885, 88500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dreepy - Infestation - Level 1
  (885, 88500, 611, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dreepy - Thunder Wave - TM14
  (885, 88500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 5),
  -- Dreepy - Rest - TM21
  (885, 88500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 6),
  -- Dreepy - Snore - TM24
  (885, 88500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 7),
  -- Dreepy - Protect - TM25
  (885, 88500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 8),
  -- Dreepy - Attract - TM31
  (885, 88500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 9),
  -- Dreepy - Facade - TM39
  (885, 88500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 10),
  -- Dreepy - Swift - TM40
  (885, 88500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 11),
  -- Dreepy - Helping Hand - TM41
  (885, 88500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 12),
  -- Dreepy - Round - TM76
  (885, 88500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 13),
  -- Dreepy - Substitute - TR20
  (885, 88500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 14),
  -- Dreepy - Endure - TR26
  (885, 88500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 15),
  -- Dreepy - Sleep Talk - TR27
  (885, 88500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 16),
  -- Dreepy - Baton Pass - TR29
  (885, 88500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 17),
  -- Dreepy - Disable - Egg
  (885, 88500, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 18),
  -- Dreepy - Double Team - Egg
  (885, 88500, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 19),
  -- Dreepy - Confuse Ray - Egg
  (885, 88500, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 20),
  -- Dreepy - Curse - Egg
  (885, 88500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 21),
  -- Dreepy - Grudge - Egg
  (885, 88500, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Dreepy - Sucker Punch - Egg
  (885, 88500, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Dreepy - Dragon Tail - Egg
  (885, 88500, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Dreepy - Draco Meteor - Tutor
  (885, 88500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 25),
  -- Drakloak - Bite - Level 1
  (886, 88600, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drakloak - Quick Attack - Level 1
  (886, 88600, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drakloak - Astonish - Level 1
  (886, 88600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drakloak - Dragon Pulse - Level 1
  (886, 88600, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drakloak - Infestation - Level 1
  (886, 88600, 611, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drakloak - Lock-On - Level 6
  (886, 88600, 199, 18, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Drakloak - Assurance - Level 12
  (886, 88600, 372, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Drakloak - Hex - Level 18
  (886, 88600, 506, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Drakloak - Agility - Level 24
  (886, 88600, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Drakloak - Double Hit - Level 30
  (886, 88600, 458, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Drakloak - U-turn - Level 36
  (886, 88600, 369, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Drakloak - Dragon Dance - Level 42
  (886, 88600, 349, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Drakloak - Phantom Force - Level 48
  (886, 88600, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Drakloak - Take Down - Level 54
  (886, 88600, 36, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Drakloak - Dragon Rush - Level 61
  (886, 88600, 407, 18, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Drakloak - Double-Edge - Level 66
  (886, 88600, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Drakloak - Last Resort - Level 72
  (886, 88600, 387, 18, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Drakloak - Dragon Pulse - Evolution
  (886, 88600, 406, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Drakloak - Thunder Wave - TM14
  (886, 88600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Drakloak - Rest - TM21
  (886, 88600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Drakloak - Thief - TM23
  (886, 88600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Drakloak - Snore - TM24
  (886, 88600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Drakloak - Protect - TM25
  (886, 88600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Drakloak - Steel Wing - TM30
  (886, 88600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Drakloak - Attract - TM31
  (886, 88600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Drakloak - Beat Up - TM37
  (886, 88600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 26),
  -- Drakloak - Will-O-Wisp - TM38
  (886, 88600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 27),
  -- Drakloak - Facade - TM39
  (886, 88600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Drakloak - Swift - TM40
  (886, 88600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Drakloak - Helping Hand - TM41
  (886, 88600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Drakloak - Dive - TM45
  (886, 88600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Drakloak - Brine - TM55
  (886, 88600, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Drakloak - U-turn - TM56
  (886, 88600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Drakloak - Assurance - TM58
  (886, 88600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Drakloak - Round - TM76
  (886, 88600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Drakloak - Hex - TM77
  (886, 88600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 36),
  -- Drakloak - Acrobatics - TM78
  (886, 88600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Drakloak - Phantom Force - TM86
  (886, 88600, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 38),
  -- Drakloak - Breaking Swipe - TM99
  (886, 88600, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 39),
  -- Drakloak - Flamethrower - TR02
  (886, 88600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Drakloak - Hydro Pump - TR03
  (886, 88600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 41),
  -- Drakloak - Surf - TR04
  (886, 88600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Drakloak - Thunderbolt - TR08
  (886, 88600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Drakloak - Thunder - TR09
  (886, 88600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Drakloak - Agility - TR12
  (886, 88600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Drakloak - Fire Blast - TR15
  (886, 88600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Drakloak - Substitute - TR20
  (886, 88600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Drakloak - Outrage - TR24
  (886, 88600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Drakloak - Endure - TR26
  (886, 88600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Drakloak - Sleep Talk - TR27
  (886, 88600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Drakloak - Baton Pass - TR29
  (886, 88600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 51),
  -- Drakloak - Shadow Ball - TR33
  (886, 88600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Drakloak - Dragon Dance - TR51
  (886, 88600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 53),
  -- Drakloak - Dragon Pulse - TR62
  (886, 88600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 54),
  -- Drakloak - Ally Switch - TR83
  (886, 88600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Drakloak - Scald - TR84
  (886, 88600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 56),
  -- Drakloak - Psychic Fangs - TR97
  (886, 88600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 57),
  -- Drakloak - Draco Meteor - Tutor
  (886, 88600, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Dragapult - Bite - Level 1
  (887, 88700, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragapult - Quick Attack - Level 1
  (887, 88700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragapult - Dragon Breath - Level 1
  (887, 88700, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragapult - Astonish - Level 1
  (887, 88700, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragapult - Sucker Punch - Level 1
  (887, 88700, 389, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragapult - Infestation - Level 1
  (887, 88700, 611, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragapult - Dragon Darts - Level 1
  (887, 88700, 751, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragapult - Lock-On - Level 6
  (887, 88700, 199, 18, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Dragapult - Assurance - Level 12
  (887, 88700, 372, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Dragapult - Hex - Level 18
  (887, 88700, 506, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Dragapult - Agility - Level 24
  (887, 88700, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Dragapult - Double Hit - Level 30
  (887, 88700, 458, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Dragapult - U-turn - Level 36
  (887, 88700, 369, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Dragapult - Dragon Dance - Level 42
  (887, 88700, 349, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dragapult - Phantom Force - Level 48
  (887, 88700, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Dragapult - Take Down - Level 54
  (887, 88700, 36, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Dragapult - Dragon Rush - Level 63
  (887, 88700, 407, 18, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Dragapult - Double-Edge - Level 70
  (887, 88700, 38, 18, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Dragapult - Last Resort - Level 78
  (887, 88700, 387, 18, NULL, 1, 78, NULL, NULL, NULL, 19),
  -- Dragapult - Dragon Darts - Evolution
  (887, 88700, 751, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Dragapult - Fly - TM06
  (887, 88700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 21),
  -- Dragapult - Hyper Beam - TM08
  (887, 88700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Dragapult - Giga Impact - TM09
  (887, 88700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Dragapult - Solar Beam - TM11
  (887, 88700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Dragapult - Thunder Wave - TM14
  (887, 88700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Dragapult - Light Screen - TM17
  (887, 88700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 26),
  -- Dragapult - Reflect - TM18
  (887, 88700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 27),
  -- Dragapult - Rest - TM21
  (887, 88700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Dragapult - Thief - TM23
  (887, 88700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Dragapult - Snore - TM24
  (887, 88700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Dragapult - Protect - TM25
  (887, 88700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Dragapult - Steel Wing - TM30
  (887, 88700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 32),
  -- Dragapult - Attract - TM31
  (887, 88700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Dragapult - Beat Up - TM37
  (887, 88700, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 34),
  -- Dragapult - Will-O-Wisp - TM38
  (887, 88700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 35),
  -- Dragapult - Facade - TM39
  (887, 88700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Dragapult - Swift - TM40
  (887, 88700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Dragapult - Helping Hand - TM41
  (887, 88700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Dragapult - Dive - TM45
  (887, 88700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 39),
  -- Dragapult - Brine - TM55
  (887, 88700, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 40),
  -- Dragapult - U-turn - TM56
  (887, 88700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Dragapult - Assurance - TM58
  (887, 88700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 42),
  -- Dragapult - Round - TM76
  (887, 88700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Dragapult - Hex - TM77
  (887, 88700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 44),
  -- Dragapult - Acrobatics - TM78
  (887, 88700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 45),
  -- Dragapult - Phantom Force - TM86
  (887, 88700, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 46),
  -- Dragapult - Breaking Swipe - TM99
  (887, 88700, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 47),
  -- Dragapult - Body Slam - TR01
  (887, 88700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Dragapult - Flamethrower - TR02
  (887, 88700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 49),
  -- Dragapult - Hydro Pump - TR03
  (887, 88700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 50),
  -- Dragapult - Surf - TR04
  (887, 88700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 51),
  -- Dragapult - Thunderbolt - TR08
  (887, 88700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 52),
  -- Dragapult - Thunder - TR09
  (887, 88700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 53),
  -- Dragapult - Agility - TR12
  (887, 88700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 54),
  -- Dragapult - Fire Blast - TR15
  (887, 88700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 55),
  -- Dragapult - Tri Attack - TR19
  (887, 88700, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 56),
  -- Dragapult - Substitute - TR20
  (887, 88700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Dragapult - Outrage - TR24
  (887, 88700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 58),
  -- Dragapult - Endure - TR26
  (887, 88700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Dragapult - Sleep Talk - TR27
  (887, 88700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Dragapult - Baton Pass - TR29
  (887, 88700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 61),
  -- Dragapult - Shadow Ball - TR33
  (887, 88700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Dragapult - Dragon Claw - TR47
  (887, 88700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 63),
  -- Dragapult - Dragon Dance - TR51
  (887, 88700, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 64),
  -- Dragapult - Dragon Pulse - TR62
  (887, 88700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 65),
  -- Dragapult - Ally Switch - TR83
  (887, 88700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 66),
  -- Dragapult - Scald - TR84
  (887, 88700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 67),
  -- Dragapult - Psychic Fangs - TR97
  (887, 88700, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 68),
  -- Dragapult - Draco Meteor - Tutor
  (887, 88700, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 69),
  -- Zacian - Bite - Level 1
  (888, 88800, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zacian - Quick Attack - Level 1
  (888, 88800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zacian - Metal Claw - Level 1
  (888, 88800, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zacian - Howl - Level 1
  (888, 88800, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zacian - Quick Guard - Level 1
  (888, 88800, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zacian - Sacred Sword - Level 1
  (888, 88800, 533, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zacian - Slash - Level 11
  (888, 88800, 163, 18, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Zacian - Swords Dance - Level 22
  (888, 88800, 14, 18, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zacian - Iron Head - Level 33
  (888, 88800, 442, 18, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Zacian - Laser Focus - Level 44
  (888, 88800, 673, 18, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Zacian - Crunch - Level 55
  (888, 88800, 242, 18, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Zacian - Moonblast - Level 66
  (888, 88800, 585, 18, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Zacian - Close Combat - Level 77
  (888, 88800, 370, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Zacian - Giga Impact - Level 88
  (888, 88800, 416, 18, NULL, 1, 88, NULL, NULL, NULL, 14),
  -- Zacian - Hyper Beam - TM08
  (888, 88800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Zacian - Giga Impact - TM09
  (888, 88800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Zacian - Solar Blade - TM12
  (888, 88800, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 17),
  -- Zacian - Dig - TM15
  (888, 88800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Zacian - Rest - TM21
  (888, 88800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Zacian - Snore - TM24
  (888, 88800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Zacian - Protect - TM25
  (888, 88800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Zacian - Scary Face - TM26
  (888, 88800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 22),
  -- Zacian - Facade - TM39
  (888, 88800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Zacian - Swift - TM40
  (888, 88800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Zacian - Helping Hand - TM41
  (888, 88800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Zacian - Revenge - TM42
  (888, 88800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 26),
  -- Zacian - Brick Break - TM43
  (888, 88800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Zacian - Imprison - TM44
  (888, 88800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Zacian - Assurance - TM58
  (888, 88800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Zacian - Thunder Fang - TM66
  (888, 88800, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 30),
  -- Zacian - Ice Fang - TM67
  (888, 88800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 31),
  -- Zacian - Fire Fang - TM68
  (888, 88800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Zacian - Psycho Cut - TM69
  (888, 88800, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 33),
  -- Zacian - Round - TM76
  (888, 88800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Zacian - Retaliate - TM79
  (888, 88800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 35),
  -- Zacian - Tail Slap - TM84
  (888, 88800, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 36),
  -- Zacian - Snarl - TM85
  (888, 88800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 37),
  -- Zacian - False Swipe - TM94
  (888, 88800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 38),
  -- Zacian - Air Slash - TM95
  (888, 88800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 39),
  -- Zacian - Brutal Swing - TM97
  (888, 88800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Zacian - Swords Dance - TR00
  (888, 88800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 41),
  -- Zacian - Agility - TR12
  (888, 88800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Zacian - Focus Energy - TR13
  (888, 88800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 43),
  -- Zacian - Substitute - TR20
  (888, 88800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Zacian - Reversal - TR21
  (888, 88800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 45),
  -- Zacian - Endure - TR26
  (888, 88800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Zacian - Sleep Talk - TR27
  (888, 88800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Zacian - Iron Tail - TR31
  (888, 88800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Zacian - Crunch - TR32
  (888, 88800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Zacian - Hyper Voice - TR42
  (888, 88800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Zacian - Close Combat - TR53
  (888, 88800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Zacian - Focus Blast - TR64
  (888, 88800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Zacian - Iron Head - TR74
  (888, 88800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 53),
  -- Zacian - Work Up - TR85
  (888, 88800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Zacian - Wild Charge - TR86
  (888, 88800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 55),
  -- Zacian - Play Rough - TR90
  (888, 88800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 56),
  -- Zacian - Psychic Fangs - TR97
  (888, 88800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 57),
  -- Zacian - Steel Beam - Tutor
  (888, 88800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Zamazenta - Bite - Level 1
  (889, 88900, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zamazenta - Quick Attack - Level 1
  (889, 88900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zamazenta - Metal Claw - Level 1
  (889, 88900, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zamazenta - Howl - Level 1
  (889, 88900, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zamazenta - Metal Burst - Level 1
  (889, 88900, 368, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zamazenta - Wide Guard - Level 1
  (889, 88900, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zamazenta - Slash - Level 11
  (889, 88900, 163, 18, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Zamazenta - Iron Defense - Level 22
  (889, 88900, 334, 18, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zamazenta - Iron Head - Level 33
  (889, 88900, 442, 18, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Zamazenta - Laser Focus - Level 44
  (889, 88900, 673, 18, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Zamazenta - Crunch - Level 55
  (889, 88900, 242, 18, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Zamazenta - Moonblast - Level 66
  (889, 88900, 585, 18, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Zamazenta - Close Combat - Level 77
  (889, 88900, 370, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Zamazenta - Giga Impact - Level 88
  (889, 88900, 416, 18, NULL, 1, 88, NULL, NULL, NULL, 14),
  -- Zamazenta - Hyper Beam - TM08
  (889, 88900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Zamazenta - Giga Impact - TM09
  (889, 88900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Zamazenta - Solar Beam - TM11
  (889, 88900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Zamazenta - Dig - TM15
  (889, 88900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Zamazenta - Light Screen - TM17
  (889, 88900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Zamazenta - Reflect - TM18
  (889, 88900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Zamazenta - Safeguard - TM19
  (889, 88900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Zamazenta - Rest - TM21
  (889, 88900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Zamazenta - Snore - TM24
  (889, 88900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Zamazenta - Protect - TM25
  (889, 88900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Zamazenta - Scary Face - TM26
  (889, 88900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Zamazenta - Facade - TM39
  (889, 88900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Zamazenta - Swift - TM40
  (889, 88900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Zamazenta - Helping Hand - TM41
  (889, 88900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Zamazenta - Revenge - TM42
  (889, 88900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Zamazenta - Imprison - TM44
  (889, 88900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Zamazenta - Payback - TM57
  (889, 88900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Zamazenta - Power Swap - TM60
  (889, 88900, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 32),
  -- Zamazenta - Guard Swap - TM61
  (889, 88900, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Zamazenta - Thunder Fang - TM66
  (889, 88900, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 34),
  -- Zamazenta - Ice Fang - TM67
  (889, 88900, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 35),
  -- Zamazenta - Fire Fang - TM68
  (889, 88900, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 36),
  -- Zamazenta - Round - TM76
  (889, 88900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Zamazenta - Retaliate - TM79
  (889, 88900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Zamazenta - Tail Slap - TM84
  (889, 88900, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 39),
  -- Zamazenta - Snarl - TM85
  (889, 88900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Zamazenta - Agility - TR12
  (889, 88900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Zamazenta - Focus Energy - TR13
  (889, 88900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Zamazenta - Substitute - TR20
  (889, 88900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Zamazenta - Reversal - TR21
  (889, 88900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Zamazenta - Endure - TR26
  (889, 88900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Zamazenta - Sleep Talk - TR27
  (889, 88900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Zamazenta - Iron Tail - TR31
  (889, 88900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Zamazenta - Crunch - TR32
  (889, 88900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Zamazenta - Hyper Voice - TR42
  (889, 88900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Zamazenta - Iron Defense - TR46
  (889, 88900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Zamazenta - Close Combat - TR53
  (889, 88900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Zamazenta - Focus Blast - TR64
  (889, 88900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Zamazenta - Flash Cannon - TR70
  (889, 88900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 53),
  -- Zamazenta - Iron Head - TR74
  (889, 88900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Zamazenta - Work Up - TR85
  (889, 88900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 55),
  -- Zamazenta - Wild Charge - TR86
  (889, 88900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 56),
  -- Zamazenta - Play Rough - TR90
  (889, 88900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Zamazenta - Dazzling Gleam - TR92
  (889, 88900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 58),
  -- Zamazenta - Psychic Fangs - TR97
  (889, 88900, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 59),
  -- Zamazenta - Steel Beam - Tutor
  (889, 88900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Eternatus - Agility - Level 1
  (890, 89000, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eternatus - Confuse Ray - Level 1
  (890, 89000, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eternatus - Poison Tail - Level 1
  (890, 89000, 342, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eternatus - Dragon Tail - Level 1
  (890, 89000, 525, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eternatus - Toxic - Level 8
  (890, 89000, 92, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Eternatus - Venoshock - Level 16
  (890, 89000, 474, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Eternatus - Dragon Dance - Level 24
  (890, 89000, 349, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Eternatus - Cross Poison - Level 32
  (890, 89000, 440, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Eternatus - Dragon Pulse - Level 40
  (890, 89000, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Eternatus - Flamethrower - Level 48
  (890, 89000, 53, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Eternatus - Dynamax Cannon - Level 56
  (890, 89000, 744, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Eternatus - Cosmic Power - Level 64
  (890, 89000, 322, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Eternatus - Recover - Level 72
  (890, 89000, 105, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Eternatus - Hyper Beam - Level 80
  (890, 89000, 63, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Eternatus - Eternabeam - Level 88
  (890, 89000, 795, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Eternatus - Fly - TM06
  (890, 89000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Eternatus - Hyper Beam - TM08
  (890, 89000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Eternatus - Giga Impact - TM09
  (890, 89000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Eternatus - Solar Beam - TM11
  (890, 89000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Eternatus - Screech - TM16
  (890, 89000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Eternatus - Light Screen - TM17
  (890, 89000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Eternatus - Reflect - TM18
  (890, 89000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Eternatus - Rest - TM21
  (890, 89000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Eternatus - Snore - TM24
  (890, 89000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Eternatus - Protect - TM25
  (890, 89000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Eternatus - Scary Face - TM26
  (890, 89000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Eternatus - Facade - TM39
  (890, 89000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Eternatus - Payback - TM57
  (890, 89000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Eternatus - Assurance - TM58
  (890, 89000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Eternatus - Cross Poison - TM73
  (890, 89000, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 30),
  -- Eternatus - Venoshock - TM74
  (890, 89000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Eternatus - Round - TM76
  (890, 89000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Eternatus - Mystical Fire - TM92
  (890, 89000, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 33),
  -- Eternatus - Brutal Swing - TM97
  (890, 89000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Eternatus - Flamethrower - TR02
  (890, 89000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Eternatus - Agility - TR12
  (890, 89000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Eternatus - Substitute - TR20
  (890, 89000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Eternatus - Sludge Bomb - TR22
  (890, 89000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 38),
  -- Eternatus - Endure - TR26
  (890, 89000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Eternatus - Sleep Talk - TR27
  (890, 89000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Eternatus - Shadow Ball - TR33
  (890, 89000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Eternatus - Cosmic Power - TR44
  (890, 89000, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 42),
  -- Eternatus - Dragon Dance - TR51
  (890, 89000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 43),
  -- Eternatus - Toxic Spikes - TR54
  (890, 89000, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 44),
  -- Eternatus - Poison Jab - TR57
  (890, 89000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Eternatus - Dragon Pulse - TR62
  (890, 89000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 46),
  -- Eternatus - Flash Cannon - TR70
  (890, 89000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Eternatus - Sludge Wave - TR78
  (890, 89000, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 48),
  -- Eternatus - Venom Drench - TR91
  (890, 89000, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 49),
  -- Eternatus - Draco Meteor - Tutor
  (890, 89000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 50),
  -- Kubfu - Leer - Level 1
  (891, 89100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kubfu - Rock Smash - Level 1
  (891, 89100, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kubfu - Endure - Level 4
  (891, 89100, 203, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kubfu - Focus Energy - Level 8
  (891, 89100, 116, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Kubfu - Aerial Ace - Level 12
  (891, 89100, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kubfu - Scary Face - Level 16
  (891, 89100, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kubfu - Headbutt - Level 20
  (891, 89100, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kubfu - Brick Break - Level 24
  (891, 89100, 280, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kubfu - Detect - Level 28
  (891, 89100, 197, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kubfu - Bulk Up - Level 32
  (891, 89100, 339, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kubfu - Iron Head - Level 36
  (891, 89100, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kubfu - Dynamic Punch - Level 40
  (891, 89100, 223, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kubfu - Counter - Level 44
  (891, 89100, 68, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kubfu - Close Combat - Level 48
  (891, 89100, 370, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kubfu - Focus Punch - Level 52
  (891, 89100, 264, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Kubfu - Mega Punch - TM00
  (891, 89100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Kubfu - Mega Kick - TM01
  (891, 89100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Kubfu - Fire Punch - TM03
  (891, 89100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Kubfu - Ice Punch - TM04
  (891, 89100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Kubfu - Thunder Punch - TM05
  (891, 89100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Kubfu - Dig - TM15
  (891, 89100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Kubfu - Rest - TM21
  (891, 89100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Kubfu - Snore - TM24
  (891, 89100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Kubfu - Protect - TM25
  (891, 89100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Kubfu - Scary Face - TM26
  (891, 89100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Kubfu - Attract - TM31
  (891, 89100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Kubfu - Facade - TM39
  (891, 89100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Kubfu - Helping Hand - TM41
  (891, 89100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Kubfu - Revenge - TM42
  (891, 89100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Kubfu - Brick Break - TM43
  (891, 89100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Kubfu - U-turn - TM56
  (891, 89100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 31),
  -- Kubfu - Low Sweep - TM75
  (891, 89100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 32),
  -- Kubfu - Round - TM76
  (891, 89100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Kubfu - Acrobatics - TM78
  (891, 89100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 34),
  -- Kubfu - Retaliate - TM79
  (891, 89100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 35),
  -- Kubfu - Body Slam - TR01
  (891, 89100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Kubfu - Low Kick - TR07
  (891, 89100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 37),
  -- Kubfu - Focus Energy - TR13
  (891, 89100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 38),
  -- Kubfu - Substitute - TR20
  (891, 89100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Kubfu - Reversal - TR21
  (891, 89100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 40),
  -- Kubfu - Endure - TR26
  (891, 89100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Kubfu - Sleep Talk - TR27
  (891, 89100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Kubfu - Superpower - TR39
  (891, 89100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 43),
  -- Kubfu - Bulk Up - TR48
  (891, 89100, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 44),
  -- Kubfu - Close Combat - TR53
  (891, 89100, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 45),
  -- Kubfu - Zen Headbutt - TR69
  (891, 89100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Kubfu - Iron Head - TR74
  (891, 89100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 47),
  -- Kubfu - Work Up - TR85
  (891, 89100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 48),
  -- Urshifu - Leer - Level 1
  (892, 89200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Urshifu - Focus Energy - Level 1
  (892, 89200, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Urshifu - Endure - Level 1
  (892, 89200, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Urshifu - Rock Smash - Level 1
  (892, 89200, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Urshifu - Sucker Punch - Level 1
  (892, 89200, 389, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Urshifu - Wicked Blow - Level 1
  (892, 89200, 817, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Urshifu - Aerial Ace - Level 12
  (892, 89200, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Urshifu - Scary Face - Level 16
  (892, 89200, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Urshifu - Headbutt - Level 20
  (892, 89200, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Urshifu - Brick Break - Level 24
  (892, 89200, 280, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Urshifu - Detect - Level 28
  (892, 89200, 197, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Urshifu - Bulk Up - Level 32
  (892, 89200, 339, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Urshifu - Iron Head - Level 36
  (892, 89200, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Urshifu - Dynamic Punch - Level 40
  (892, 89200, 223, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Urshifu - Counter - Level 44
  (892, 89200, 68, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Urshifu - Close Combat - Level 48
  (892, 89200, 370, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Urshifu - Focus Punch - Level 52
  (892, 89200, 264, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Urshifu - Wicked Blow - Evolution
  (892, 89200, 817, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Urshifu - Mega Punch - TM00
  (892, 89200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Urshifu - Mega Kick - TM01
  (892, 89200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Urshifu - Fire Punch - TM03
  (892, 89200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Urshifu - Ice Punch - TM04
  (892, 89200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Urshifu - Thunder Punch - TM05
  (892, 89200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Urshifu - Giga Impact - TM09
  (892, 89200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Urshifu - Dig - TM15
  (892, 89200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Urshifu - Rest - TM21
  (892, 89200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Urshifu - Rock Slide - TM22
  (892, 89200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Urshifu - Snore - TM24
  (892, 89200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Urshifu - Protect - TM25
  (892, 89200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Urshifu - Scary Face - TM26
  (892, 89200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Urshifu - Attract - TM31
  (892, 89200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Urshifu - Beat Up - TM37
  (892, 89200, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 32),
  -- Urshifu - Facade - TM39
  (892, 89200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Urshifu - Swift - TM40
  (892, 89200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Urshifu - Helping Hand - TM41
  (892, 89200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Urshifu - Revenge - TM42
  (892, 89200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 36),
  -- Urshifu - Brick Break - TM43
  (892, 89200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Urshifu - Rock Tomb - TM48
  (892, 89200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Urshifu - U-turn - TM56
  (892, 89200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 39),
  -- Urshifu - Payback - TM57
  (892, 89200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Urshifu - Assurance - TM58
  (892, 89200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 41),
  -- Urshifu - Fling - TM59
  (892, 89200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Urshifu - Drain Punch - TM63
  (892, 89200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Urshifu - Low Sweep - TM75
  (892, 89200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Urshifu - Round - TM76
  (892, 89200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Urshifu - Acrobatics - TM78
  (892, 89200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Urshifu - Retaliate - TM79
  (892, 89200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Urshifu - Snarl - TM85
  (892, 89200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Urshifu - False Swipe - TM94
  (892, 89200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 49),
  -- Urshifu - Body Slam - TR01
  (892, 89200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Urshifu - Low Kick - TR07
  (892, 89200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 51),
  -- Urshifu - Focus Energy - TR13
  (892, 89200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Urshifu - Substitute - TR20
  (892, 89200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Urshifu - Reversal - TR21
  (892, 89200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 54),
  -- Urshifu - Endure - TR26
  (892, 89200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Urshifu - Sleep Talk - TR27
  (892, 89200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Urshifu - Crunch - TR32
  (892, 89200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 57),
  -- Urshifu - Taunt - TR37
  (892, 89200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Urshifu - Superpower - TR39
  (892, 89200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Urshifu - Iron Defense - TR46
  (892, 89200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Urshifu - Bulk Up - TR48
  (892, 89200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 61),
  -- Urshifu - Close Combat - TR53
  (892, 89200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 62),
  -- Urshifu - Aura Sphere - TR56
  (892, 89200, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 63),
  -- Urshifu - Poison Jab - TR57
  (892, 89200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 64),
  -- Urshifu - Dark Pulse - TR58
  (892, 89200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 65),
  -- Urshifu - Focus Blast - TR64
  (892, 89200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Urshifu - Zen Headbutt - TR69
  (892, 89200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 67),
  -- Urshifu - Iron Head - TR74
  (892, 89200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 68),
  -- Urshifu - Stone Edge - TR75
  (892, 89200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 69),
  -- Urshifu - Foul Play - TR81
  (892, 89200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 70),
  -- Urshifu - Work Up - TR85
  (892, 89200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Urshifu - Darkest Lariat - TR93
  (892, 89200, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 72),
  -- Urshifu - Throat Chop - TR95
  (892, 89200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 73),
  -- Urshifu - Body Press - TR99
  (892, 89200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 74),
  -- Zarude - Scratch - Level 1
  (893, 89300, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zarude - Bind - Level 1
  (893, 89300, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zarude - Leer - Level 6
  (893, 89300, 43, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Zarude - Vine Whip - Level 12
  (893, 89300, 22, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Zarude - Growth - Level 18
  (893, 89300, 74, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Zarude - Fury Swipes - Level 24
  (893, 89300, 154, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Zarude - Scary Face - Level 30
  (893, 89300, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Zarude - Grass Knot - Level 36
  (893, 89300, 447, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Zarude - Bite - Level 42
  (893, 89300, 44, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Zarude - U-turn - Level 48
  (893, 89300, 369, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Zarude - Swagger - Level 54
  (893, 89300, 207, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Zarude - Energy Ball - Level 60
  (893, 89300, 412, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Zarude - Synthesis - Level 66
  (893, 89300, 235, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Zarude - Hammer Arm - Level 72
  (893, 89300, 359, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Zarude - Thrash - Level 78
  (893, 89300, 37, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Zarude - Power Whip - Level 84
  (893, 89300, 438, 18, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Zarude - Jungle Healing - Level 90
  (893, 89300, 816, 18, NULL, 1, 90, NULL, NULL, NULL, 17),
  -- Zarude - Mega Punch - TM00
  (893, 89300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Zarude - Mega Kick - TM01
  (893, 89300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Zarude - Hyper Beam - TM08
  (893, 89300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Zarude - Giga Impact - TM09
  (893, 89300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Zarude - Magical Leaf - TM10
  (893, 89300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 22),
  -- Zarude - Solar Beam - TM11
  (893, 89300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Zarude - Solar Blade - TM12
  (893, 89300, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 24),
  -- Zarude - Dig - TM15
  (893, 89300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Zarude - Rest - TM21
  (893, 89300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Zarude - Rock Slide - TM22
  (893, 89300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Zarude - Thief - TM23
  (893, 89300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Zarude - Snore - TM24
  (893, 89300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Zarude - Protect - TM25
  (893, 89300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Zarude - Scary Face - TM26
  (893, 89300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Zarude - Giga Drain - TM28
  (893, 89300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 32),
  -- Zarude - Sunny Day - TM34
  (893, 89300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Zarude - Facade - TM39
  (893, 89300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Zarude - Swift - TM40
  (893, 89300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Zarude - Revenge - TM42
  (893, 89300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 36),
  -- Zarude - Brick Break - TM43
  (893, 89300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Zarude - Rock Tomb - TM48
  (893, 89300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Zarude - Bullet Seed - TM50
  (893, 89300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 39),
  -- Zarude - Mud Shot - TM53
  (893, 89300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 40),
  -- Zarude - U-turn - TM56
  (893, 89300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Zarude - Payback - TM57
  (893, 89300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Zarude - Assurance - TM58
  (893, 89300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 43),
  -- Zarude - Fling - TM59
  (893, 89300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Zarude - Drain Punch - TM63
  (893, 89300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 45),
  -- Zarude - Round - TM76
  (893, 89300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Zarude - Acrobatics - TM78
  (893, 89300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 47),
  -- Zarude - Snarl - TM85
  (893, 89300, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Zarude - Grassy Terrain - TM88
  (893, 89300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 49),
  -- Zarude - Brutal Swing - TM97
  (893, 89300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 50),
  -- Zarude - Stomping Tantrum - TM98
  (893, 89300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 51),
  -- Zarude - Body Slam - TR01
  (893, 89300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 52),
  -- Zarude - Low Kick - TR07
  (893, 89300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 53),
  -- Zarude - Substitute - TR20
  (893, 89300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Zarude - Endure - TR26
  (893, 89300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Zarude - Sleep Talk - TR27
  (893, 89300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Zarude - Encore - TR30
  (893, 89300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Zarude - Iron Tail - TR31
  (893, 89300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Zarude - Crunch - TR32
  (893, 89300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 59),
  -- Zarude - Taunt - TR37
  (893, 89300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Zarude - Superpower - TR39
  (893, 89300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 61),
  -- Zarude - Hyper Voice - TR42
  (893, 89300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 62),
  -- Zarude - Bulk Up - TR48
  (893, 89300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 63),
  -- Zarude - Close Combat - TR53
  (893, 89300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 64),
  -- Zarude - Dark Pulse - TR58
  (893, 89300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 65),
  -- Zarude - Seed Bomb - TR59
  (893, 89300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 66),
  -- Zarude - Energy Ball - TR65
  (893, 89300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 67),
  -- Zarude - Nasty Plot - TR68
  (893, 89300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 68),
  -- Zarude - Power Whip - TR72
  (893, 89300, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 69),
  -- Zarude - Grass Knot - TR77
  (893, 89300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 70),
  -- Zarude - Darkest Lariat - TR93
  (893, 89300, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 71),
  -- Zarude - Throat Chop - TR95
  (893, 89300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72),
  -- Regieleki - Thunder Shock - Level 1
  (894, 89400, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regieleki - Rapid Spin - Level 1
  (894, 89400, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regieleki - Electroweb - Level 6
  (894, 89400, 527, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regieleki - Ancient Power - Level 12
  (894, 89400, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regieleki - Shock Wave - Level 18
  (894, 89400, 351, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regieleki - Thunder Wave - Level 24
  (894, 89400, 86, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regieleki - Extreme Speed - Level 30
  (894, 89400, 245, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regieleki - Thunder Cage - Level 36
  (894, 89400, 819, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regieleki - Thunderbolt - Level 42
  (894, 89400, 85, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regieleki - Magnet Rise - Level 48
  (894, 89400, 393, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regieleki - Thrash - Level 54
  (894, 89400, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regieleki - Lock-On - Level 60
  (894, 89400, 199, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regieleki - Zap Cannon - Level 66
  (894, 89400, 192, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regieleki - Hyper Beam - Level 72
  (894, 89400, 63, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regieleki - Explosion - Level 78
  (894, 89400, 153, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regieleki - Hyper Beam - TM08
  (894, 89400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Regieleki - Giga Impact - TM09
  (894, 89400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Regieleki - Thunder Wave - TM14
  (894, 89400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Regieleki - Screech - TM16
  (894, 89400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Regieleki - Light Screen - TM17
  (894, 89400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Regieleki - Reflect - TM18
  (894, 89400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Regieleki - Self-Destruct - TM20
  (894, 89400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Regieleki - Rest - TM21
  (894, 89400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Regieleki - Snore - TM24
  (894, 89400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Regieleki - Protect - TM25
  (894, 89400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Regieleki - Rain Dance - TM33
  (894, 89400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Regieleki - Facade - TM39
  (894, 89400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Regieleki - Swift - TM40
  (894, 89400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Regieleki - Bounce - TM52
  (894, 89400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Regieleki - Assurance - TM58
  (894, 89400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Regieleki - Round - TM76
  (894, 89400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Regieleki - Acrobatics - TM78
  (894, 89400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 32),
  -- Regieleki - Volt Switch - TM80
  (894, 89400, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 33),
  -- Regieleki - Electroweb - TM82
  (894, 89400, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 34),
  -- Regieleki - Electric Terrain - TM90
  (894, 89400, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 35),
  -- Regieleki - Eerie Impulse - TM93
  (894, 89400, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 36),
  -- Regieleki - Body Slam - TR01
  (894, 89400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Regieleki - Thunderbolt - TR08
  (894, 89400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Regieleki - Thunder - TR09
  (894, 89400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Regieleki - Agility - TR12
  (894, 89400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Regieleki - Substitute - TR20
  (894, 89400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Regieleki - Endure - TR26
  (894, 89400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Regieleki - Sleep Talk - TR27
  (894, 89400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Regieleki - Electro Ball - TR80
  (894, 89400, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Regieleki - Wild Charge - TR86
  (894, 89400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 45),
  -- Regidrago - Vise Grip - Level 1
  (895, 89500, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regidrago - Twister - Level 1
  (895, 89500, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regidrago - Bite - Level 6
  (895, 89500, 44, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regidrago - Ancient Power - Level 12
  (895, 89500, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regidrago - Dragon Breath - Level 18
  (895, 89500, 225, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regidrago - Focus Energy - Level 24
  (895, 89500, 116, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regidrago - Crunch - Level 30
  (895, 89500, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regidrago - Dragon Claw - Level 36
  (895, 89500, 337, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regidrago - Hammer Arm - Level 42
  (895, 89500, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regidrago - Dragon Dance - Level 48
  (895, 89500, 349, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regidrago - Thrash - Level 54
  (895, 89500, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regidrago - Laser Focus - Level 60
  (895, 89500, 673, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regidrago - Dragon Energy - Level 66
  (895, 89500, 820, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regidrago - Hyper Beam - Level 72
  (895, 89500, 63, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regidrago - Explosion - Level 78
  (895, 89500, 153, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regidrago - Hyper Beam - TM08
  (895, 89500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Regidrago - Giga Impact - TM09
  (895, 89500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Regidrago - Light Screen - TM17
  (895, 89500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Regidrago - Reflect - TM18
  (895, 89500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Regidrago - Self-Destruct - TM20
  (895, 89500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 20),
  -- Regidrago - Rest - TM21
  (895, 89500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Regidrago - Snore - TM24
  (895, 89500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Regidrago - Protect - TM25
  (895, 89500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Regidrago - Facade - TM39
  (895, 89500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Regidrago - Thunder Fang - TM66
  (895, 89500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 25),
  -- Regidrago - Fire Fang - TM68
  (895, 89500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 26),
  -- Regidrago - Round - TM76
  (895, 89500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Regidrago - Breaking Swipe - TM99
  (895, 89500, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 28),
  -- Regidrago - Body Slam - TR01
  (895, 89500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Regidrago - Focus Energy - TR13
  (895, 89500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 30),
  -- Regidrago - Substitute - TR20
  (895, 89500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Regidrago - Reversal - TR21
  (895, 89500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 32),
  -- Regidrago - Outrage - TR24
  (895, 89500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 33),
  -- Regidrago - Endure - TR26
  (895, 89500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Regidrago - Sleep Talk - TR27
  (895, 89500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Regidrago - Crunch - TR32
  (895, 89500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 36),
  -- Regidrago - Dragon Claw - TR47
  (895, 89500, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 37),
  -- Regidrago - Dragon Dance - TR51
  (895, 89500, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 38),
  -- Regidrago - Dragon Pulse - TR62
  (895, 89500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 39),
  -- Regidrago - Draco Meteor - Tutor
  (895, 89500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 40),
  -- Glastrier - Tackle - Level 1
  (896, 89600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glastrier - Tail Whip - Level 1
  (896, 89600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glastrier - Double Kick - Level 6
  (896, 89600, 24, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Glastrier - Avalanche - Level 12
  (896, 89600, 419, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Glastrier - Stomp - Level 18
  (896, 89600, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Glastrier - Torment - Level 24
  (896, 89600, 259, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Glastrier - Mist - Level 30
  (896, 89600, 54, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Glastrier - Icicle Crash - Level 36
  (896, 89600, 556, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Glastrier - Take Down - Level 42
  (896, 89600, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Glastrier - Iron Defense - Level 48
  (896, 89600, 334, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Glastrier - Thrash - Level 54
  (896, 89600, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Glastrier - Taunt - Level 60
  (896, 89600, 269, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Glastrier - Double-Edge - Level 66
  (896, 89600, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Glastrier - Swords Dance - Level 72
  (896, 89600, 14, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Glastrier - Hyper Beam - TM08
  (896, 89600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Glastrier - Giga Impact - TM09
  (896, 89600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Glastrier - Rest - TM21
  (896, 89600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Glastrier - Snore - TM24
  (896, 89600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Glastrier - Protect - TM25
  (896, 89600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Glastrier - Scary Face - TM26
  (896, 89600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Glastrier - Icy Wind - TM27
  (896, 89600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Glastrier - Hail - TM35
  (896, 89600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Glastrier - Facade - TM39
  (896, 89600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Glastrier - Icicle Spear - TM51
  (896, 89600, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 24),
  -- Glastrier - Mud Shot - TM53
  (896, 89600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Glastrier - Payback - TM57
  (896, 89600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Glastrier - Assurance - TM58
  (896, 89600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Glastrier - Avalanche - TM64
  (896, 89600, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 28),
  -- Glastrier - Round - TM76
  (896, 89600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Glastrier - Bulldoze - TM81
  (896, 89600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Glastrier - Snarl - TM85
  (896, 89600, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 31),
  -- Glastrier - Smart Strike - TM96
  (896, 89600, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 32),
  -- Glastrier - Stomping Tantrum - TM98
  (896, 89600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Glastrier - Swords Dance - TR00
  (896, 89600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Glastrier - Body Slam - TR01
  (896, 89600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Glastrier - Ice Beam - TR05
  (896, 89600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Glastrier - Blizzard - TR06
  (896, 89600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Glastrier - Substitute - TR20
  (896, 89600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Glastrier - Outrage - TR24
  (896, 89600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 39),
  -- Glastrier - Endure - TR26
  (896, 89600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Glastrier - Sleep Talk - TR27
  (896, 89600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Glastrier - Megahorn - TR28
  (896, 89600, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 42),
  -- Glastrier - Crunch - TR32
  (896, 89600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 43),
  -- Glastrier - Uproar - TR35
  (896, 89600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Glastrier - Taunt - TR37
  (896, 89600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Glastrier - Superpower - TR39
  (896, 89600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Glastrier - Iron Defense - TR46
  (896, 89600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 47),
  -- Glastrier - Close Combat - TR53
  (896, 89600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 48),
  -- Glastrier - Heavy Slam - TR79
  (896, 89600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 49),
  -- Glastrier - High Horsepower - TR94
  (896, 89600, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 50),
  -- Glastrier - Throat Chop - TR95
  (896, 89600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 51),
  -- Glastrier - Body Press - TR99
  (896, 89600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 52),
  -- Spectrier - Tackle - Level 1
  (897, 89700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spectrier - Tail Whip - Level 1
  (897, 89700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spectrier - Double Kick - Level 6
  (897, 89700, 24, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Spectrier - Hex - Level 12
  (897, 89700, 506, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Spectrier - Stomp - Level 18
  (897, 89700, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Spectrier - Confuse Ray - Level 24
  (897, 89700, 109, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Spectrier - Haze - Level 30
  (897, 89700, 114, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Spectrier - Shadow Ball - Level 36
  (897, 89700, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Spectrier - Take Down - Level 42
  (897, 89700, 36, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Spectrier - Agility - Level 48
  (897, 89700, 97, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Spectrier - Thrash - Level 54
  (897, 89700, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Spectrier - Disable - Level 60
  (897, 89700, 50, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Spectrier - Double-Edge - Level 66
  (897, 89700, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Spectrier - Nasty Plot - Level 72
  (897, 89700, 417, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Spectrier - Hyper Beam - TM08
  (897, 89700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Spectrier - Giga Impact - TM09
  (897, 89700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Spectrier - Rest - TM21
  (897, 89700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Spectrier - Snore - TM24
  (897, 89700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Spectrier - Protect - TM25
  (897, 89700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Spectrier - Scary Face - TM26
  (897, 89700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Spectrier - Will-O-Wisp - TM38
  (897, 89700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 21),
  -- Spectrier - Facade - TM39
  (897, 89700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Spectrier - Swift - TM40
  (897, 89700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Spectrier - Mud Shot - TM53
  (897, 89700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 24),
  -- Spectrier - Payback - TM57
  (897, 89700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 25),
  -- Spectrier - Assurance - TM58
  (897, 89700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 26),
  -- Spectrier - Psycho Cut - TM69
  (897, 89700, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 27),
  -- Spectrier - Round - TM76
  (897, 89700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Spectrier - Hex - TM77
  (897, 89700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 29),
  -- Spectrier - Bulldoze - TM81
  (897, 89700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Spectrier - Snarl - TM85
  (897, 89700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 31),
  -- Spectrier - Phantom Force - TM86
  (897, 89700, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 32),
  -- Spectrier - Stomping Tantrum - TM98
  (897, 89700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Spectrier - Body Slam - TR01
  (897, 89700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Spectrier - Agility - TR12
  (897, 89700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Spectrier - Substitute - TR20
  (897, 89700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Spectrier - Endure - TR26
  (897, 89700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Spectrier - Sleep Talk - TR27
  (897, 89700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Spectrier - Crunch - TR32
  (897, 89700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 39),
  -- Spectrier - Shadow Ball - TR33
  (897, 89700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Spectrier - Uproar - TR35
  (897, 89700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Spectrier - Taunt - TR37
  (897, 89700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Spectrier - Calm Mind - TR49
  (897, 89700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 43),
  -- Spectrier - Dark Pulse - TR58
  (897, 89700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 44),
  -- Spectrier - Nasty Plot - TR68
  (897, 89700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Spectrier - Foul Play - TR81
  (897, 89700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 46),
  -- Calyrex - Pound - Level 1
  (898, 89800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex - Mega Drain - Level 1
  (898, 89800, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex - Growth - Level 1
  (898, 89800, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex - Confusion - Level 1
  (898, 89800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex - Life Dew - Level 8
  (898, 89800, 791, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Calyrex - Giga Drain - Level 16
  (898, 89800, 202, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Calyrex - Psyshock - Level 24
  (898, 89800, 473, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Calyrex - Helping Hand - Level 32
  (898, 89800, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Calyrex - Aromatherapy - Level 40
  (898, 89800, 312, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Calyrex - Energy Ball - Level 48
  (898, 89800, 412, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Calyrex - Psychic - Level 56
  (898, 89800, 94, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Calyrex - Leech Seed - Level 64
  (898, 89800, 73, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Calyrex - Heal Pulse - Level 72
  (898, 89800, 505, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Calyrex - Solar Beam - Level 80
  (898, 89800, 76, 18, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Calyrex - Future Sight - Level 88
  (898, 89800, 248, 18, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Calyrex - Pay Day - TM02
  (898, 89800, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 16),
  -- Calyrex - Hyper Beam - TM08
  (898, 89800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Calyrex - Giga Impact - TM09
  (898, 89800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Calyrex - Magical Leaf - TM10
  (898, 89800, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 19),
  -- Calyrex - Solar Beam - TM11
  (898, 89800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Calyrex - Solar Blade - TM12
  (898, 89800, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 21),
  -- Calyrex - Light Screen - TM17
  (898, 89800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Calyrex - Reflect - TM18
  (898, 89800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Calyrex - Safeguard - TM19
  (898, 89800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Calyrex - Rest - TM21
  (898, 89800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Calyrex - Snore - TM24
  (898, 89800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Calyrex - Protect - TM25
  (898, 89800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Calyrex - Giga Drain - TM28
  (898, 89800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Calyrex - Sunny Day - TM34
  (898, 89800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Calyrex - Facade - TM39
  (898, 89800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Calyrex - Swift - TM40
  (898, 89800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Calyrex - Helping Hand - TM41
  (898, 89800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Calyrex - Imprison - TM44
  (898, 89800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Calyrex - Bullet Seed - TM50
  (898, 89800, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 34),
  -- Calyrex - Power Swap - TM60
  (898, 89800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 35),
  -- Calyrex - Guard Swap - TM61
  (898, 89800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 36),
  -- Calyrex - Speed Swap - TM62
  (898, 89800, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 37),
  -- Calyrex - Trick Room - TM70
  (898, 89800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Calyrex - Wonder Room - TM71
  (898, 89800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 39),
  -- Calyrex - Magic Room - TM72
  (898, 89800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 40),
  -- Calyrex - Round - TM76
  (898, 89800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Calyrex - Draining Kiss - TM87
  (898, 89800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 42),
  -- Calyrex - Grassy Terrain - TM88
  (898, 89800, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 43),
  -- Calyrex - Psychic Terrain - TM91
  (898, 89800, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 44),
  -- Calyrex - Psychic - TR11
  (898, 89800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Calyrex - Agility - TR12
  (898, 89800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Calyrex - Metronome - TR14
  (898, 89800, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 47),
  -- Calyrex - Tri Attack - TR19
  (898, 89800, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 48),
  -- Calyrex - Substitute - TR20
  (898, 89800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Calyrex - Psyshock - TR25
  (898, 89800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 50),
  -- Calyrex - Endure - TR26
  (898, 89800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Calyrex - Sleep Talk - TR27
  (898, 89800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Calyrex - Baton Pass - TR29
  (898, 89800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 53),
  -- Calyrex - Encore - TR30
  (898, 89800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 54),
  -- Calyrex - Future Sight - TR34
  (898, 89800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 55),
  -- Calyrex - Trick - TR38
  (898, 89800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Calyrex - Skill Swap - TR40
  (898, 89800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 57),
  -- Calyrex - Calm Mind - TR49
  (898, 89800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Calyrex - Seed Bomb - TR59
  (898, 89800, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 59),
  -- Calyrex - Energy Ball - TR65
  (898, 89800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 60),
  -- Calyrex - Zen Headbutt - TR69
  (898, 89800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 61),
  -- Calyrex - Leaf Storm - TR71
  (898, 89800, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 62),
  -- Calyrex - Grass Knot - TR77
  (898, 89800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Calyrex - Stored Power - TR82
  (898, 89800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Calyrex - Ally Switch - TR83
  (898, 89800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Calyrex - Pollen Puff - TR96
  (898, 89800, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 66);

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
  -- Centiskorch - Defense Curl - Egg
  (851, 85100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Centiskorch - Rollout - Egg
  (851, 85100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Centiskorch - Knock Off - Egg
  (851, 85100, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Centiskorch - Struggle Bug - Egg
  (851, 85100, 522, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grapploct - Seismic Toss - Egg
  (853, 85300, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grapploct - Pain Split - Egg
  (853, 85300, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grapploct - Sucker Punch - Egg
  (853, 85300, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grapploct - Soak - Egg
  (853, 85300, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grapploct - Circle Throw - Egg
  (853, 85300, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grapploct - Power-Up Punch - Egg
  (853, 85300, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hattrem - After You - Egg
  (857, 85700, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hattrem - Quash - Egg
  (857, 85700, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hattrem - Aromatic Mist - Egg
  (857, 85700, 597, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hattrem - Nuzzle - Egg
  (857, 85700, 609, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hatterene - After You - Egg
  (858, 85800, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hatterene - Quash - Egg
  (858, 85800, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hatterene - Aromatic Mist - Egg
  (858, 85800, 597, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hatterene - Nuzzle - Egg
  (858, 85800, 609, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Obstagoon - Knock Off - Egg
  (862, 86200, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Obstagoon - Quick Guard - Egg
  (862, 86200, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Obstagoon - Parting Shot - Egg
  (862, 86200, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Perrserker - Double-Edge - Egg
  (863, 86300, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Perrserker - Curse - Egg
  (863, 86300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Perrserker - Flail - Egg
  (863, 86300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Perrserker - Spite - Egg
  (863, 86300, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Perrserker - Covet - Egg
  (863, 86300, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Perrserker - Night Slash - Egg
  (863, 86300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Cursola - Confuse Ray - Egg
  (864, 86400, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Cursola - Haze - Egg
  (864, 86400, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Cursola - Destiny Bond - Egg
  (864, 86400, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Cursola - Nature Power - Egg
  (864, 86400, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Cursola - Water Pulse - Egg
  (864, 86400, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Cursola - Head Smash - Egg
  (864, 86400, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sirfetch'd - Double-Edge - Egg
  (865, 86500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sirfetch'd - Counter - Egg
  (865, 86500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sirfetch'd - Quick Attack - Egg
  (865, 86500, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sirfetch'd - Sky Attack - Egg
  (865, 86500, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sirfetch'd - Curse - Egg
  (865, 86500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sirfetch'd - Flail - Egg
  (865, 86500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sirfetch'd - Covet - Egg
  (865, 86500, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sirfetch'd - Feint - Egg
  (865, 86500, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sirfetch'd - Night Slash - Egg
  (865, 86500, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sirfetch'd - Simple Beam - Egg
  (865, 86500, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sirfetch'd - Quick Guard - Egg
  (865, 86500, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mr. Rime - Hypnosis - Egg
  (866, 86600, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 100),
  -- Mr. Rime - Confuse Ray - Egg
  (866, 86600, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 101),
  -- Mr. Rime - Fake Out - Egg
  (866, 86600, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 102),
  -- Mr. Rime - Tickle - Egg
  (866, 86600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 103),
  -- Mr. Rime - Power Split - Egg
  (866, 86600, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 104),
  -- Runerigus - Memento - Egg
  (867, 86700, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Alcremie - Last Resort - Egg
  (869, 86900, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alcremie - Baby-Doll Eyes - Egg
  (869, 86900, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frosmoth - Mirror Coat - Egg
  (873, 87300, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frosmoth - Bug Bite - Egg
  (873, 87300, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Frosmoth - Fairy Wind - Egg
  (873, 87300, 584, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Copperajah - Whirlwind - Egg
  (879, 87900, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Copperajah - Slam - Egg
  (879, 87900, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Copperajah - Double-Edge - Egg
  (879, 87900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Copperajah - Fissure - Egg
  (879, 87900, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Copperajah - Defense Curl - Egg
  (879, 87900, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Copperajah - Curse - Egg
  (879, 87900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Copperajah - Swagger - Egg
  (879, 87900, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Copperajah - Belch - Egg
  (879, 87900, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Drakloak - Disable - Egg
  (886, 88600, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drakloak - Double Team - Egg
  (886, 88600, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drakloak - Confuse Ray - Egg
  (886, 88600, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drakloak - Curse - Egg
  (886, 88600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drakloak - Grudge - Egg
  (886, 88600, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drakloak - Sucker Punch - Egg
  (886, 88600, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drakloak - Dragon Tail - Egg
  (886, 88600, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dragapult - Disable - Egg
  (887, 88700, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dragapult - Double Team - Egg
  (887, 88700, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dragapult - Confuse Ray - Egg
  (887, 88700, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Dragapult - Curse - Egg
  (887, 88700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Dragapult - Grudge - Egg
  (887, 88700, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Dragapult - Sucker Punch - Egg
  (887, 88700, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Dragapult - Dragon Tail - Egg
  (887, 88700, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 76);
