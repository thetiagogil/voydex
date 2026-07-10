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
-- Sword / Shield learnsets for default forms, species 722-760.
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
  -- Rowlet - Tackle - Level 1
  (722, 72200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rowlet - Growl - Level 1
  (722, 72200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rowlet - Leafage - Level 3
  (722, 72200, 670, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Rowlet - Astonish - Level 6
  (722, 72200, 310, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Rowlet - Peck - Level 9
  (722, 72200, 64, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Rowlet - Shadow Sneak - Level 12
  (722, 72200, 425, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Rowlet - Razor Leaf - Level 15
  (722, 72200, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rowlet - Synthesis - Level 18
  (722, 72200, 235, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Rowlet - Pluck - Level 21
  (722, 72200, 365, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Rowlet - Nasty Plot - Level 24
  (722, 72200, 417, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rowlet - Sucker Punch - Level 27
  (722, 72200, 389, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Rowlet - Leaf Blade - Level 30
  (722, 72200, 348, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Rowlet - Feather Dance - Level 33
  (722, 72200, 297, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Rowlet - Brave Bird - Level 36
  (722, 72200, 413, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Rowlet - Solar Beam - TM11
  (722, 72200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Rowlet - Light Screen - TM17
  (722, 72200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Rowlet - Safeguard - TM19
  (722, 72200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Rowlet - Rest - TM21
  (722, 72200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Rowlet - Snore - TM24
  (722, 72200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rowlet - Protect - TM25
  (722, 72200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rowlet - Giga Drain - TM28
  (722, 72200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Rowlet - Steel Wing - TM30
  (722, 72200, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Rowlet - Attract - TM31
  (722, 72200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Rowlet - Sunny Day - TM34
  (722, 72200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Rowlet - Facade - TM39
  (722, 72200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Rowlet - Swift - TM40
  (722, 72200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Rowlet - Shadow Claw - TM65
  (722, 72200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Rowlet - Round - TM76
  (722, 72200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Rowlet - False Swipe - TM94
  (722, 72200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 29),
  -- Rowlet - Swords Dance - TR00
  (722, 72200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Rowlet - Substitute - TR20
  (722, 72200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Rowlet - Endure - TR26
  (722, 72200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Rowlet - Sleep Talk - TR27
  (722, 72200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Rowlet - Baton Pass - TR29
  (722, 72200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 34),
  -- Rowlet - Leaf Blade - TR50
  (722, 72200, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 35),
  -- Rowlet - Seed Bomb - TR59
  (722, 72200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 36),
  -- Rowlet - Energy Ball - TR65
  (722, 72200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 37),
  -- Rowlet - Brave Bird - TR66
  (722, 72200, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 38),
  -- Rowlet - Nasty Plot - TR68
  (722, 72200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 39),
  -- Rowlet - Grass Knot - TR77
  (722, 72200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Rowlet - Work Up - TR85
  (722, 72200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 41),
  -- Rowlet - Double Team - Egg
  (722, 72200, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Rowlet - Confuse Ray - Egg
  (722, 72200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rowlet - Knock Off - Egg
  (722, 72200, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rowlet - Defog - Egg
  (722, 72200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rowlet - Grass Pledge - Tutor
  (722, 72200, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 46),
  -- Dartrix - Tackle - Level 1
  (723, 72300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dartrix - Growl - Level 1
  (723, 72300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dartrix - Astonish - Level 1
  (723, 72300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dartrix - Leafage - Level 1
  (723, 72300, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dartrix - Peck - Level 9
  (723, 72300, 64, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dartrix - Shadow Sneak - Level 12
  (723, 72300, 425, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Dartrix - Razor Leaf - Level 15
  (723, 72300, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dartrix - Synthesis - Level 20
  (723, 72300, 235, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Dartrix - Pluck - Level 25
  (723, 72300, 365, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dartrix - Nasty Plot - Level 30
  (723, 72300, 417, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dartrix - Sucker Punch - Level 35
  (723, 72300, 389, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Dartrix - Leaf Blade - Level 40
  (723, 72300, 348, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dartrix - Feather Dance - Level 45
  (723, 72300, 297, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Dartrix - Brave Bird - Level 50
  (723, 72300, 413, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Dartrix - Solar Beam - TM11
  (723, 72300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Dartrix - Light Screen - TM17
  (723, 72300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Dartrix - Safeguard - TM19
  (723, 72300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Dartrix - Rest - TM21
  (723, 72300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Dartrix - Snore - TM24
  (723, 72300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Dartrix - Protect - TM25
  (723, 72300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Dartrix - Giga Drain - TM28
  (723, 72300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Dartrix - Steel Wing - TM30
  (723, 72300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Dartrix - Attract - TM31
  (723, 72300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Dartrix - Sunny Day - TM34
  (723, 72300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Dartrix - Facade - TM39
  (723, 72300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Dartrix - Swift - TM40
  (723, 72300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Dartrix - Shadow Claw - TM65
  (723, 72300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Dartrix - Round - TM76
  (723, 72300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Dartrix - False Swipe - TM94
  (723, 72300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 29),
  -- Dartrix - Swords Dance - TR00
  (723, 72300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Dartrix - Substitute - TR20
  (723, 72300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Dartrix - Endure - TR26
  (723, 72300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Dartrix - Sleep Talk - TR27
  (723, 72300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Dartrix - Baton Pass - TR29
  (723, 72300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 34),
  -- Dartrix - Leaf Blade - TR50
  (723, 72300, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 35),
  -- Dartrix - Seed Bomb - TR59
  (723, 72300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 36),
  -- Dartrix - Energy Ball - TR65
  (723, 72300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 37),
  -- Dartrix - Brave Bird - TR66
  (723, 72300, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 38),
  -- Dartrix - Nasty Plot - TR68
  (723, 72300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 39),
  -- Dartrix - Grass Knot - TR77
  (723, 72300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Dartrix - Work Up - TR85
  (723, 72300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 41),
  -- Dartrix - Grass Pledge - Tutor
  (723, 72300, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 42),
  -- Decidueye - Tackle - Level 1
  (724, 72400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Decidueye - Growl - Level 1
  (724, 72400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Decidueye - Spite - Level 1
  (724, 72400, 180, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Decidueye - Astonish - Level 1
  (724, 72400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Decidueye - U-turn - Level 1
  (724, 72400, 369, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Decidueye - Leaf Storm - Level 1
  (724, 72400, 437, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Decidueye - Phantom Force - Level 1
  (724, 72400, 566, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Decidueye - Spirit Shackle - Level 1
  (724, 72400, 662, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Decidueye - Leafage - Level 1
  (724, 72400, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Decidueye - Peck - Level 9
  (724, 72400, 64, 18, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Decidueye - Shadow Sneak - Level 12
  (724, 72400, 425, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Decidueye - Razor Leaf - Level 15
  (724, 72400, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Decidueye - Synthesis - Level 20
  (724, 72400, 235, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Decidueye - Pluck - Level 25
  (724, 72400, 365, 18, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Decidueye - Nasty Plot - Level 30
  (724, 72400, 417, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Decidueye - Sucker Punch - Level 37
  (724, 72400, 389, 18, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Decidueye - Leaf Blade - Level 44
  (724, 72400, 348, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Decidueye - Feather Dance - Level 51
  (724, 72400, 297, 18, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Decidueye - Brave Bird - Level 58
  (724, 72400, 413, 18, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Decidueye - Spirit Shackle - Evolution
  (724, 72400, 662, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Decidueye - Hyper Beam - TM08
  (724, 72400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Decidueye - Giga Impact - TM09
  (724, 72400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Decidueye - Solar Beam - TM11
  (724, 72400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Decidueye - Solar Blade - TM12
  (724, 72400, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 24),
  -- Decidueye - Light Screen - TM17
  (724, 72400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Decidueye - Safeguard - TM19
  (724, 72400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 26),
  -- Decidueye - Rest - TM21
  (724, 72400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Decidueye - Snore - TM24
  (724, 72400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Decidueye - Protect - TM25
  (724, 72400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Decidueye - Giga Drain - TM28
  (724, 72400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Decidueye - Steel Wing - TM30
  (724, 72400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 31),
  -- Decidueye - Attract - TM31
  (724, 72400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Decidueye - Sunny Day - TM34
  (724, 72400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Decidueye - Facade - TM39
  (724, 72400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Decidueye - Swift - TM40
  (724, 72400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Decidueye - Imprison - TM44
  (724, 72400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Decidueye - U-turn - TM56
  (724, 72400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Decidueye - Shadow Claw - TM65
  (724, 72400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Decidueye - Psycho Cut - TM69
  (724, 72400, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 39),
  -- Decidueye - Low Sweep - TM75
  (724, 72400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Decidueye - Round - TM76
  (724, 72400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Decidueye - Hex - TM77
  (724, 72400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 42),
  -- Decidueye - Acrobatics - TM78
  (724, 72400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 43),
  -- Decidueye - Phantom Force - TM86
  (724, 72400, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 44),
  -- Decidueye - False Swipe - TM94
  (724, 72400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 45),
  -- Decidueye - Air Slash - TM95
  (724, 72400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 46),
  -- Decidueye - Swords Dance - TR00
  (724, 72400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Decidueye - Substitute - TR20
  (724, 72400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Decidueye - Endure - TR26
  (724, 72400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Decidueye - Sleep Talk - TR27
  (724, 72400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Decidueye - Baton Pass - TR29
  (724, 72400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 51),
  -- Decidueye - Shadow Ball - TR33
  (724, 72400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Decidueye - Leaf Blade - TR50
  (724, 72400, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 53),
  -- Decidueye - Seed Bomb - TR59
  (724, 72400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 54),
  -- Decidueye - Energy Ball - TR65
  (724, 72400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Decidueye - Brave Bird - TR66
  (724, 72400, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 56),
  -- Decidueye - Nasty Plot - TR68
  (724, 72400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 57),
  -- Decidueye - Leaf Storm - TR71
  (724, 72400, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 58),
  -- Decidueye - Grass Knot - TR77
  (724, 72400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 59),
  -- Decidueye - Work Up - TR85
  (724, 72400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 60),
  -- Decidueye - Hurricane - TR89
  (724, 72400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 61),
  -- Decidueye - Frenzy Plant - Tutor
  (724, 72400, 338, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Decidueye - Grass Pledge - Tutor
  (724, 72400, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Litten - Scratch - Level 1
  (725, 72500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litten - Growl - Level 1
  (725, 72500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litten - Ember - Level 3
  (725, 72500, 52, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Litten - Lick - Level 6
  (725, 72500, 122, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Litten - Roar - Level 9
  (725, 72500, 46, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Litten - Fury Swipes - Level 12
  (725, 72500, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Litten - Bite - Level 15
  (725, 72500, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Litten - Double Kick - Level 18
  (725, 72500, 24, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Litten - Fire Fang - Level 21
  (725, 72500, 424, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Litten - Scary Face - Level 24
  (725, 72500, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Litten - Swagger - Level 27
  (725, 72500, 207, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Litten - Flamethrower - Level 30
  (725, 72500, 53, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Litten - Thrash - Level 33
  (725, 72500, 37, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Litten - Flare Blitz - Level 36
  (725, 72500, 394, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Litten - Pay Day - TM02
  (725, 72500, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 15),
  -- Litten - Fire Spin - TM13
  (725, 72500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 16),
  -- Litten - Rest - TM21
  (725, 72500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Litten - Snore - TM24
  (725, 72500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Litten - Protect - TM25
  (725, 72500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Litten - Scary Face - TM26
  (725, 72500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Litten - Attract - TM31
  (725, 72500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Litten - Sunny Day - TM34
  (725, 72500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Litten - Will-O-Wisp - TM38
  (725, 72500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Litten - Facade - TM39
  (725, 72500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Litten - Revenge - TM42
  (725, 72500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Litten - U-turn - TM56
  (725, 72500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Litten - Shadow Claw - TM65
  (725, 72500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Litten - Fire Fang - TM68
  (725, 72500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 28),
  -- Litten - Round - TM76
  (725, 72500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Litten - Acrobatics - TM78
  (725, 72500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Litten - Swords Dance - TR00
  (725, 72500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Litten - Body Slam - TR01
  (725, 72500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Litten - Flamethrower - TR02
  (725, 72500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 33),
  -- Litten - Fire Blast - TR15
  (725, 72500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Litten - Leech Life - TR18
  (725, 72500, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 35),
  -- Litten - Substitute - TR20
  (725, 72500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Litten - Outrage - TR24
  (725, 72500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 37),
  -- Litten - Endure - TR26
  (725, 72500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Litten - Sleep Talk - TR27
  (725, 72500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Litten - Crunch - TR32
  (725, 72500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Litten - Heat Wave - TR36
  (725, 72500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 41),
  -- Litten - Taunt - TR37
  (725, 72500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Litten - Overheat - TR43
  (725, 72500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 43),
  -- Litten - Bulk Up - TR48
  (725, 72500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 44),
  -- Litten - Flare Blitz - TR55
  (725, 72500, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 45),
  -- Litten - Nasty Plot - TR68
  (725, 72500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 46),
  -- Litten - Work Up - TR85
  (725, 72500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Litten - Fake Out - Egg
  (725, 72500, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Litten - Parting Shot - Egg
  (725, 72500, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Litten - Power Trip - Egg
  (725, 72500, 681, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Litten - Fire Pledge - Tutor
  (725, 72500, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 51),
  -- Torracat - Scratch - Level 1
  (726, 72600, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torracat - Growl - Level 1
  (726, 72600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torracat - Ember - Level 1
  (726, 72600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torracat - Lick - Level 1
  (726, 72600, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torracat - Roar - Level 9
  (726, 72600, 46, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torracat - Fury Swipes - Level 12
  (726, 72600, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torracat - Bite - Level 15
  (726, 72600, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Torracat - Double Kick - Level 20
  (726, 72600, 24, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Torracat - Fire Fang - Level 25
  (726, 72600, 424, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Torracat - Scary Face - Level 30
  (726, 72600, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Torracat - Swagger - Level 35
  (726, 72600, 207, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Torracat - Flamethrower - Level 40
  (726, 72600, 53, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Torracat - Thrash - Level 45
  (726, 72600, 37, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Torracat - Flare Blitz - Level 50
  (726, 72600, 394, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Torracat - Pay Day - TM02
  (726, 72600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 15),
  -- Torracat - Fire Spin - TM13
  (726, 72600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 16),
  -- Torracat - Rest - TM21
  (726, 72600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Torracat - Snore - TM24
  (726, 72600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Torracat - Protect - TM25
  (726, 72600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Torracat - Scary Face - TM26
  (726, 72600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Torracat - Attract - TM31
  (726, 72600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Torracat - Sunny Day - TM34
  (726, 72600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Torracat - Will-O-Wisp - TM38
  (726, 72600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Torracat - Facade - TM39
  (726, 72600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Torracat - Revenge - TM42
  (726, 72600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Torracat - U-turn - TM56
  (726, 72600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Torracat - Shadow Claw - TM65
  (726, 72600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Torracat - Fire Fang - TM68
  (726, 72600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 28),
  -- Torracat - Round - TM76
  (726, 72600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Torracat - Acrobatics - TM78
  (726, 72600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Torracat - Swords Dance - TR00
  (726, 72600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Torracat - Body Slam - TR01
  (726, 72600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Torracat - Flamethrower - TR02
  (726, 72600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 33),
  -- Torracat - Fire Blast - TR15
  (726, 72600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Torracat - Leech Life - TR18
  (726, 72600, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 35),
  -- Torracat - Substitute - TR20
  (726, 72600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Torracat - Outrage - TR24
  (726, 72600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 37),
  -- Torracat - Endure - TR26
  (726, 72600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Torracat - Sleep Talk - TR27
  (726, 72600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Torracat - Crunch - TR32
  (726, 72600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Torracat - Heat Wave - TR36
  (726, 72600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 41),
  -- Torracat - Taunt - TR37
  (726, 72600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Torracat - Overheat - TR43
  (726, 72600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 43),
  -- Torracat - Bulk Up - TR48
  (726, 72600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 44),
  -- Torracat - Flare Blitz - TR55
  (726, 72600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 45),
  -- Torracat - Nasty Plot - TR68
  (726, 72600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 46),
  -- Torracat - Work Up - TR85
  (726, 72600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Torracat - Fire Pledge - Tutor
  (726, 72600, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 48),
  -- Incineroar - Scratch - Level 1
  (727, 72700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Incineroar - Growl - Level 1
  (727, 72700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Incineroar - Ember - Level 1
  (727, 72700, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Incineroar - Lick - Level 1
  (727, 72700, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Incineroar - Cross Chop - Level 1
  (727, 72700, 238, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Incineroar - Bulk Up - Level 1
  (727, 72700, 339, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Incineroar - Darkest Lariat - Level 1
  (727, 72700, 663, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Incineroar - Throat Chop - Level 1
  (727, 72700, 675, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Incineroar - Roar - Level 9
  (727, 72700, 46, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Incineroar - Fury Swipes - Level 12
  (727, 72700, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Incineroar - Bite - Level 15
  (727, 72700, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Incineroar - Double Kick - Level 20
  (727, 72700, 24, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Incineroar - Fire Fang - Level 25
  (727, 72700, 424, 18, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Incineroar - Scary Face - Level 30
  (727, 72700, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Incineroar - Swagger - Level 32
  (727, 72700, 207, 18, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Incineroar - Flamethrower - Level 44
  (727, 72700, 53, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Incineroar - Thrash - Level 51
  (727, 72700, 37, 18, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Incineroar - Flare Blitz - Level 58
  (727, 72700, 394, 18, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Incineroar - Darkest Lariat - Evolution
  (727, 72700, 663, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Incineroar - Mega Punch - TM00
  (727, 72700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Incineroar - Mega Kick - TM01
  (727, 72700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Incineroar - Pay Day - TM02
  (727, 72700, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 22),
  -- Incineroar - Fire Punch - TM03
  (727, 72700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Incineroar - Thunder Punch - TM05
  (727, 72700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Incineroar - Hyper Beam - TM08
  (727, 72700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Incineroar - Giga Impact - TM09
  (727, 72700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Incineroar - Fire Spin - TM13
  (727, 72700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 27),
  -- Incineroar - Rest - TM21
  (727, 72700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Incineroar - Snore - TM24
  (727, 72700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Incineroar - Protect - TM25
  (727, 72700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Incineroar - Scary Face - TM26
  (727, 72700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Incineroar - Attract - TM31
  (727, 72700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Incineroar - Sunny Day - TM34
  (727, 72700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Incineroar - Will-O-Wisp - TM38
  (727, 72700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Incineroar - Facade - TM39
  (727, 72700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Incineroar - Revenge - TM42
  (727, 72700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 36),
  -- Incineroar - Brick Break - TM43
  (727, 72700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Incineroar - U-turn - TM56
  (727, 72700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 38),
  -- Incineroar - Assurance - TM58
  (727, 72700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Incineroar - Fling - TM59
  (727, 72700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Incineroar - Drain Punch - TM63
  (727, 72700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Incineroar - Shadow Claw - TM65
  (727, 72700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 42),
  -- Incineroar - Fire Fang - TM68
  (727, 72700, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 43),
  -- Incineroar - Low Sweep - TM75
  (727, 72700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Incineroar - Round - TM76
  (727, 72700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Incineroar - Acrobatics - TM78
  (727, 72700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Incineroar - Bulldoze - TM81
  (727, 72700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 47),
  -- Incineroar - Snarl - TM85
  (727, 72700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Incineroar - Brutal Swing - TM97
  (727, 72700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 49),
  -- Incineroar - Stomping Tantrum - TM98
  (727, 72700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 50),
  -- Incineroar - Swords Dance - TR00
  (727, 72700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 51),
  -- Incineroar - Body Slam - TR01
  (727, 72700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 52),
  -- Incineroar - Flamethrower - TR02
  (727, 72700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 53),
  -- Incineroar - Low Kick - TR07
  (727, 72700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 54),
  -- Incineroar - Earthquake - TR10
  (727, 72700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 55),
  -- Incineroar - Fire Blast - TR15
  (727, 72700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 56),
  -- Incineroar - Leech Life - TR18
  (727, 72700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 57),
  -- Incineroar - Substitute - TR20
  (727, 72700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 58),
  -- Incineroar - Reversal - TR21
  (727, 72700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 59),
  -- Incineroar - Outrage - TR24
  (727, 72700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 60),
  -- Incineroar - Endure - TR26
  (727, 72700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 61),
  -- Incineroar - Sleep Talk - TR27
  (727, 72700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 62),
  -- Incineroar - Crunch - TR32
  (727, 72700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 63),
  -- Incineroar - Heat Wave - TR36
  (727, 72700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 64),
  -- Incineroar - Taunt - TR37
  (727, 72700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 65),
  -- Incineroar - Superpower - TR39
  (727, 72700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 66),
  -- Incineroar - Blaze Kick - TR41
  (727, 72700, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 67),
  -- Incineroar - Overheat - TR43
  (727, 72700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 68),
  -- Incineroar - Bulk Up - TR48
  (727, 72700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 69),
  -- Incineroar - Close Combat - TR53
  (727, 72700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 70),
  -- Incineroar - Flare Blitz - TR55
  (727, 72700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 71),
  -- Incineroar - Dark Pulse - TR58
  (727, 72700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 72),
  -- Incineroar - Focus Blast - TR64
  (727, 72700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 73),
  -- Incineroar - Nasty Plot - TR68
  (727, 72700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 74),
  -- Incineroar - Iron Head - TR74
  (727, 72700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 75),
  -- Incineroar - Work Up - TR85
  (727, 72700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 76),
  -- Incineroar - Heat Crash - TR88
  (727, 72700, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 77),
  -- Incineroar - Darkest Lariat - TR93
  (727, 72700, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 78),
  -- Incineroar - Throat Chop - TR95
  (727, 72700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 79),
  -- Incineroar - Blast Burn - Tutor
  (727, 72700, 307, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 80),
  -- Incineroar - Fire Pledge - Tutor
  (727, 72700, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 81),
  -- Popplio - Pound - Level 1
  (728, 72800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Popplio - Growl - Level 1
  (728, 72800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Popplio - Water Gun - Level 3
  (728, 72800, 55, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Popplio - Disarming Voice - Level 6
  (728, 72800, 574, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Popplio - Aqua Jet - Level 9
  (728, 72800, 453, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Popplio - Baby-Doll Eyes - Level 12
  (728, 72800, 608, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Popplio - Icy Wind - Level 15
  (728, 72800, 196, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Popplio - Sing - Level 18
  (728, 72800, 47, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Popplio - Bubble Beam - Level 21
  (728, 72800, 61, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Popplio - Encore - Level 24
  (728, 72800, 227, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Popplio - Misty Terrain - Level 27
  (728, 72800, 581, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Popplio - Hyper Voice - Level 30
  (728, 72800, 304, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Popplio - Moonblast - Level 33
  (728, 72800, 585, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Popplio - Hydro Pump - Level 36
  (728, 72800, 56, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Popplio - Rest - TM21
  (728, 72800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Popplio - Snore - TM24
  (728, 72800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Popplio - Protect - TM25
  (728, 72800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Popplio - Icy Wind - TM27
  (728, 72800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Popplio - Charm - TM29
  (728, 72800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Popplio - Attract - TM31
  (728, 72800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Popplio - Rain Dance - TM33
  (728, 72800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Popplio - Hail - TM35
  (728, 72800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Popplio - Whirlpool - TM36
  (728, 72800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Popplio - Facade - TM39
  (728, 72800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Popplio - Helping Hand - TM41
  (728, 72800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Popplio - Dive - TM45
  (728, 72800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Popplio - Brine - TM55
  (728, 72800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Popplio - Wonder Room - TM71
  (728, 72800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 28),
  -- Popplio - Round - TM76
  (728, 72800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Popplio - Acrobatics - TM78
  (728, 72800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Popplio - Draining Kiss - TM87
  (728, 72800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 31),
  -- Popplio - Misty Terrain - TM89
  (728, 72800, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 32),
  -- Popplio - Hydro Pump - TR03
  (728, 72800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Popplio - Surf - TR04
  (728, 72800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Popplio - Ice Beam - TR05
  (728, 72800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Popplio - Blizzard - TR06
  (728, 72800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Popplio - Waterfall - TR16
  (728, 72800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 37),
  -- Popplio - Amnesia - TR17
  (728, 72800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 38),
  -- Popplio - Substitute - TR20
  (728, 72800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Popplio - Endure - TR26
  (728, 72800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Popplio - Sleep Talk - TR27
  (728, 72800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Popplio - Encore - TR30
  (728, 72800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 42),
  -- Popplio - Iron Tail - TR31
  (728, 72800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Popplio - Uproar - TR35
  (728, 72800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Popplio - Hyper Voice - TR42
  (728, 72800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Popplio - Scald - TR84
  (728, 72800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 46),
  -- Popplio - Work Up - TR85
  (728, 72800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Popplio - Play Rough - TR90
  (728, 72800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 48),
  -- Popplio - Perish Song - Egg
  (728, 72800, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Popplio - Aqua Ring - Egg
  (728, 72800, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Popplio - Life Dew - Egg
  (728, 72800, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Popplio - Water Pledge - Tutor
  (728, 72800, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 52),
  -- Brionne - Pound - Level 1
  (729, 72900, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Brionne - Growl - Level 1
  (729, 72900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Brionne - Water Gun - Level 1
  (729, 72900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Brionne - Disarming Voice - Level 1
  (729, 72900, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Brionne - Aqua Jet - Level 9
  (729, 72900, 453, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Brionne - Baby-Doll Eyes - Level 12
  (729, 72900, 608, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Brionne - Icy Wind - Level 15
  (729, 72900, 196, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Brionne - Sing - Level 20
  (729, 72900, 47, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Brionne - Bubble Beam - Level 25
  (729, 72900, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Brionne - Encore - Level 30
  (729, 72900, 227, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Brionne - Misty Terrain - Level 35
  (729, 72900, 581, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Brionne - Hyper Voice - Level 40
  (729, 72900, 304, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Brionne - Moonblast - Level 45
  (729, 72900, 585, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Brionne - Hydro Pump - Level 50
  (729, 72900, 56, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Brionne - Rest - TM21
  (729, 72900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Brionne - Snore - TM24
  (729, 72900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Brionne - Protect - TM25
  (729, 72900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Brionne - Icy Wind - TM27
  (729, 72900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Brionne - Charm - TM29
  (729, 72900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Brionne - Attract - TM31
  (729, 72900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Brionne - Rain Dance - TM33
  (729, 72900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Brionne - Hail - TM35
  (729, 72900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Brionne - Whirlpool - TM36
  (729, 72900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Brionne - Facade - TM39
  (729, 72900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Brionne - Helping Hand - TM41
  (729, 72900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Brionne - Dive - TM45
  (729, 72900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Brionne - Brine - TM55
  (729, 72900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Brionne - Wonder Room - TM71
  (729, 72900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 28),
  -- Brionne - Round - TM76
  (729, 72900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Brionne - Acrobatics - TM78
  (729, 72900, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Brionne - Draining Kiss - TM87
  (729, 72900, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 31),
  -- Brionne - Misty Terrain - TM89
  (729, 72900, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 32),
  -- Brionne - Hydro Pump - TR03
  (729, 72900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Brionne - Surf - TR04
  (729, 72900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Brionne - Ice Beam - TR05
  (729, 72900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Brionne - Blizzard - TR06
  (729, 72900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Brionne - Waterfall - TR16
  (729, 72900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 37),
  -- Brionne - Amnesia - TR17
  (729, 72900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 38),
  -- Brionne - Substitute - TR20
  (729, 72900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Brionne - Endure - TR26
  (729, 72900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Brionne - Sleep Talk - TR27
  (729, 72900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Brionne - Encore - TR30
  (729, 72900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 42),
  -- Brionne - Iron Tail - TR31
  (729, 72900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Brionne - Uproar - TR35
  (729, 72900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Brionne - Hyper Voice - TR42
  (729, 72900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Brionne - Scald - TR84
  (729, 72900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 46),
  -- Brionne - Work Up - TR85
  (729, 72900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Brionne - Play Rough - TR90
  (729, 72900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 48),
  -- Brionne - Water Pledge - Tutor
  (729, 72900, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 49),
  -- Primarina - Pound - Level 1
  (730, 73000, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primarina - Growl - Level 1
  (730, 73000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primarina - Water Gun - Level 1
  (730, 73000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primarina - Disarming Voice - Level 1
  (730, 73000, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primarina - Sparkling Aria - Level 1
  (730, 73000, 664, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primarina - Aqua Jet - Level 9
  (730, 73000, 453, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Primarina - Baby-Doll Eyes - Level 12
  (730, 73000, 608, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Primarina - Icy Wind - Level 15
  (730, 73000, 196, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Primarina - Sing - Level 20
  (730, 73000, 47, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Primarina - Bubble Beam - Level 25
  (730, 73000, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Primarina - Encore - Level 30
  (730, 73000, 227, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Primarina - Misty Terrain - Level 37
  (730, 73000, 581, 18, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Primarina - Hyper Voice - Level 44
  (730, 73000, 304, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Primarina - Moonblast - Level 51
  (730, 73000, 585, 18, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Primarina - Hydro Pump - Level 58
  (730, 73000, 56, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Primarina - Sparkling Aria - Evolution
  (730, 73000, 664, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Primarina - Hyper Beam - TM08
  (730, 73000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Primarina - Giga Impact - TM09
  (730, 73000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Primarina - Light Screen - TM17
  (730, 73000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Primarina - Reflect - TM18
  (730, 73000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Primarina - Rest - TM21
  (730, 73000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Primarina - Snore - TM24
  (730, 73000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Primarina - Protect - TM25
  (730, 73000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Primarina - Icy Wind - TM27
  (730, 73000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Primarina - Charm - TM29
  (730, 73000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Primarina - Attract - TM31
  (730, 73000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Primarina - Rain Dance - TM33
  (730, 73000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Primarina - Hail - TM35
  (730, 73000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Primarina - Whirlpool - TM36
  (730, 73000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Primarina - Facade - TM39
  (730, 73000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Primarina - Helping Hand - TM41
  (730, 73000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Primarina - Dive - TM45
  (730, 73000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Primarina - Weather Ball - TM46
  (730, 73000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Primarina - Brine - TM55
  (730, 73000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 34),
  -- Primarina - Wonder Room - TM71
  (730, 73000, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 35),
  -- Primarina - Round - TM76
  (730, 73000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Primarina - Acrobatics - TM78
  (730, 73000, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Primarina - Draining Kiss - TM87
  (730, 73000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 38),
  -- Primarina - Misty Terrain - TM89
  (730, 73000, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 39),
  -- Primarina - Hydro Pump - TR03
  (730, 73000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Primarina - Surf - TR04
  (730, 73000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Primarina - Ice Beam - TR05
  (730, 73000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Primarina - Blizzard - TR06
  (730, 73000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Primarina - Psychic - TR11
  (730, 73000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Primarina - Waterfall - TR16
  (730, 73000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Primarina - Amnesia - TR17
  (730, 73000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Primarina - Substitute - TR20
  (730, 73000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Primarina - Endure - TR26
  (730, 73000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Primarina - Sleep Talk - TR27
  (730, 73000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Primarina - Encore - TR30
  (730, 73000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 50),
  -- Primarina - Iron Tail - TR31
  (730, 73000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Primarina - Shadow Ball - TR33
  (730, 73000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Primarina - Uproar - TR35
  (730, 73000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 53),
  -- Primarina - Hyper Voice - TR42
  (730, 73000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Primarina - Calm Mind - TR49
  (730, 73000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Primarina - Energy Ball - TR65
  (730, 73000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Primarina - Stored Power - TR82
  (730, 73000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 57),
  -- Primarina - Scald - TR84
  (730, 73000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 58),
  -- Primarina - Work Up - TR85
  (730, 73000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 59),
  -- Primarina - Play Rough - TR90
  (730, 73000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 60),
  -- Primarina - Dazzling Gleam - TR92
  (730, 73000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 61),
  -- Primarina - Liquidation - TR98
  (730, 73000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 62),
  -- Primarina - Hydro Cannon - Tutor
  (730, 73000, 308, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Primarina - Water Pledge - Tutor
  (730, 73000, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Grubbin - Vise Grip - Level 1
  (736, 73600, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grubbin - Mud-Slap - Level 1
  (736, 73600, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grubbin - String Shot - Level 5
  (736, 73600, 81, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grubbin - Bug Bite - Level 10
  (736, 73600, 450, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Grubbin - Bite - Level 15
  (736, 73600, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Grubbin - Spark - Level 21
  (736, 73600, 209, 18, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Grubbin - Sticky Web - Level 25
  (736, 73600, 564, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Grubbin - X-Scissor - Level 30
  (736, 73600, 404, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Grubbin - Crunch - Level 35
  (736, 73600, 242, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Grubbin - Dig - Level 40
  (736, 73600, 91, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Grubbin - Thunder Wave - TM14
  (736, 73600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 11),
  -- Grubbin - Dig - TM15
  (736, 73600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 12),
  -- Grubbin - Screech - TM16
  (736, 73600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 13),
  -- Grubbin - Light Screen - TM17
  (736, 73600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 14),
  -- Grubbin - Rest - TM21
  (736, 73600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Grubbin - Snore - TM24
  (736, 73600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Grubbin - Protect - TM25
  (736, 73600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Grubbin - Attract - TM31
  (736, 73600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Grubbin - Rain Dance - TM33
  (736, 73600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Grubbin - Facade - TM39
  (736, 73600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Grubbin - Mud Shot - TM53
  (736, 73600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 21),
  -- Grubbin - Round - TM76
  (736, 73600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 22),
  -- Grubbin - Acrobatics - TM78
  (736, 73600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 23),
  -- Grubbin - Volt Switch - TM80
  (736, 73600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 24),
  -- Grubbin - Electroweb - TM82
  (736, 73600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 25),
  -- Grubbin - Thunderbolt - TR08
  (736, 73600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 26),
  -- Grubbin - Substitute - TR20
  (736, 73600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Grubbin - Endure - TR26
  (736, 73600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Grubbin - Sleep Talk - TR27
  (736, 73600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Grubbin - Crunch - TR32
  (736, 73600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 30),
  -- Grubbin - Poison Jab - TR57
  (736, 73600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 31),
  -- Grubbin - X-Scissor - TR60
  (736, 73600, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 32),
  -- Grubbin - Wild Charge - TR86
  (736, 73600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 33),
  -- Grubbin - Harden - Egg
  (736, 73600, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Grubbin - Discharge - Egg
  (736, 73600, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Charjabug - Vise Grip - Level 1
  (737, 73700, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charjabug - String Shot - Level 1
  (737, 73700, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charjabug - Mud-Slap - Level 1
  (737, 73700, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charjabug - Charge - Level 1
  (737, 73700, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charjabug - Bug Bite - Level 1
  (737, 73700, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charjabug - Bite - Level 15
  (737, 73700, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Charjabug - Spark - Level 23
  (737, 73700, 209, 18, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Charjabug - Sticky Web - Level 29
  (737, 73700, 564, 18, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Charjabug - X-Scissor - Level 36
  (737, 73700, 404, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Charjabug - Crunch - Level 43
  (737, 73700, 242, 18, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Charjabug - Dig - Level 50
  (737, 73700, 91, 18, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Charjabug - Iron Defense - Level 57
  (737, 73700, 334, 18, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Charjabug - Discharge - Level 64
  (737, 73700, 435, 18, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Charjabug - Charge - Evolution
  (737, 73700, 268, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Charjabug - Thunder Wave - TM14
  (737, 73700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Charjabug - Dig - TM15
  (737, 73700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Charjabug - Screech - TM16
  (737, 73700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Charjabug - Light Screen - TM17
  (737, 73700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Charjabug - Rest - TM21
  (737, 73700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Charjabug - Snore - TM24
  (737, 73700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Charjabug - Protect - TM25
  (737, 73700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Charjabug - Attract - TM31
  (737, 73700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Charjabug - Rain Dance - TM33
  (737, 73700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Charjabug - Facade - TM39
  (737, 73700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Charjabug - Mud Shot - TM53
  (737, 73700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Charjabug - Round - TM76
  (737, 73700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Charjabug - Acrobatics - TM78
  (737, 73700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 27),
  -- Charjabug - Volt Switch - TM80
  (737, 73700, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 28),
  -- Charjabug - Electroweb - TM82
  (737, 73700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 29),
  -- Charjabug - Eerie Impulse - TM93
  (737, 73700, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 30),
  -- Charjabug - Thunderbolt - TR08
  (737, 73700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 31),
  -- Charjabug - Substitute - TR20
  (737, 73700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Charjabug - Endure - TR26
  (737, 73700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Charjabug - Sleep Talk - TR27
  (737, 73700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Charjabug - Crunch - TR32
  (737, 73700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 35),
  -- Charjabug - Iron Defense - TR46
  (737, 73700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 36),
  -- Charjabug - Poison Jab - TR57
  (737, 73700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 37),
  -- Charjabug - X-Scissor - TR60
  (737, 73700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 38),
  -- Charjabug - Electro Ball - TR80
  (737, 73700, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 39),
  -- Charjabug - Wild Charge - TR86
  (737, 73700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 40),
  -- Vikavolt - Vise Grip - Level 1
  (738, 73800, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vikavolt - String Shot - Level 1
  (738, 73800, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vikavolt - Thunderbolt - Level 1
  (738, 73800, 85, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vikavolt - Dig - Level 1
  (738, 73800, 91, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vikavolt - Mud-Slap - Level 1
  (738, 73800, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vikavolt - Crunch - Level 1
  (738, 73800, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vikavolt - Charge - Level 1
  (738, 73800, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vikavolt - Iron Defense - Level 1
  (738, 73800, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vikavolt - X-Scissor - Level 1
  (738, 73800, 404, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vikavolt - Discharge - Level 1
  (738, 73800, 435, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vikavolt - Bug Bite - Level 1
  (738, 73800, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vikavolt - Bite - Level 15
  (738, 73800, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Vikavolt - Spark - Level 23
  (738, 73800, 209, 18, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Vikavolt - Sticky Web - Level 29
  (738, 73800, 564, 18, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Vikavolt - Bug Buzz - Level 36
  (738, 73800, 405, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Vikavolt - Guillotine - Level 43
  (738, 73800, 12, 18, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Vikavolt - Fly - Level 50
  (738, 73800, 19, 18, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Vikavolt - Agility - Level 57
  (738, 73800, 97, 18, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Vikavolt - Zap Cannon - Level 64
  (738, 73800, 192, 18, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Vikavolt - Thunderbolt - Evolution
  (738, 73800, 85, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Vikavolt - Fly - TM06
  (738, 73800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 21),
  -- Vikavolt - Hyper Beam - TM08
  (738, 73800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Vikavolt - Giga Impact - TM09
  (738, 73800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Vikavolt - Solar Beam - TM11
  (738, 73800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Vikavolt - Thunder Wave - TM14
  (738, 73800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Vikavolt - Dig - TM15
  (738, 73800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Vikavolt - Screech - TM16
  (738, 73800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 27),
  -- Vikavolt - Light Screen - TM17
  (738, 73800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 28),
  -- Vikavolt - Rest - TM21
  (738, 73800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Vikavolt - Snore - TM24
  (738, 73800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Vikavolt - Protect - TM25
  (738, 73800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Vikavolt - Attract - TM31
  (738, 73800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Vikavolt - Rain Dance - TM33
  (738, 73800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Vikavolt - Facade - TM39
  (738, 73800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Vikavolt - Mud Shot - TM53
  (738, 73800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 35),
  -- Vikavolt - Round - TM76
  (738, 73800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Vikavolt - Acrobatics - TM78
  (738, 73800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Vikavolt - Volt Switch - TM80
  (738, 73800, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 38),
  -- Vikavolt - Electroweb - TM82
  (738, 73800, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 39),
  -- Vikavolt - Eerie Impulse - TM93
  (738, 73800, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 40),
  -- Vikavolt - Air Slash - TM95
  (738, 73800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Vikavolt - Thunderbolt - TR08
  (738, 73800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Vikavolt - Thunder - TR09
  (738, 73800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Vikavolt - Agility - TR12
  (738, 73800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 44),
  -- Vikavolt - Substitute - TR20
  (738, 73800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Vikavolt - Endure - TR26
  (738, 73800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Vikavolt - Sleep Talk - TR27
  (738, 73800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Vikavolt - Crunch - TR32
  (738, 73800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Vikavolt - Iron Defense - TR46
  (738, 73800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 49),
  -- Vikavolt - Poison Jab - TR57
  (738, 73800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Vikavolt - X-Scissor - TR60
  (738, 73800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Vikavolt - Bug Buzz - TR61
  (738, 73800, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 52),
  -- Vikavolt - Energy Ball - TR65
  (738, 73800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 53),
  -- Vikavolt - Flash Cannon - TR70
  (738, 73800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Vikavolt - Electro Ball - TR80
  (738, 73800, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 55),
  -- Vikavolt - Wild Charge - TR86
  (738, 73800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 56),
  -- Cutiefly - Absorb - Level 1
  (742, 74200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cutiefly - Fairy Wind - Level 1
  (742, 74200, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cutiefly - Stun Spore - Level 6
  (742, 74200, 78, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cutiefly - Sweet Scent - Level 12
  (742, 74200, 230, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cutiefly - Draining Kiss - Level 18
  (742, 74200, 577, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cutiefly - Struggle Bug - Level 24
  (742, 74200, 522, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Cutiefly - Aromatherapy - Level 30
  (742, 74200, 312, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Cutiefly - Switcheroo - Level 36
  (742, 74200, 415, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cutiefly - Dazzling Gleam - Level 42
  (742, 74200, 605, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cutiefly - Bug Buzz - Level 48
  (742, 74200, 405, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cutiefly - Quiver Dance - Level 54
  (742, 74200, 483, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Cutiefly - Light Screen - TM17
  (742, 74200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 12),
  -- Cutiefly - Reflect - TM18
  (742, 74200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 13),
  -- Cutiefly - Safeguard - TM19
  (742, 74200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 14),
  -- Cutiefly - Rest - TM21
  (742, 74200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Cutiefly - Thief - TM23
  (742, 74200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Cutiefly - Snore - TM24
  (742, 74200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Cutiefly - Protect - TM25
  (742, 74200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Cutiefly - Charm - TM29
  (742, 74200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Cutiefly - Attract - TM31
  (742, 74200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Cutiefly - Sunny Day - TM34
  (742, 74200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Cutiefly - Facade - TM39
  (742, 74200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Cutiefly - Swift - TM40
  (742, 74200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Cutiefly - Helping Hand - TM41
  (742, 74200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Cutiefly - Imprison - TM44
  (742, 74200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 25),
  -- Cutiefly - Fake Tears - TM47
  (742, 74200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 26),
  -- Cutiefly - U-turn - TM56
  (742, 74200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Cutiefly - Speed Swap - TM62
  (742, 74200, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 28),
  -- Cutiefly - Wonder Room - TM71
  (742, 74200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 29),
  -- Cutiefly - Magic Room - TM72
  (742, 74200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 30),
  -- Cutiefly - Round - TM76
  (742, 74200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Cutiefly - Acrobatics - TM78
  (742, 74200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 32),
  -- Cutiefly - Draining Kiss - TM87
  (742, 74200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 33),
  -- Cutiefly - Psychic - TR11
  (742, 74200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 34),
  -- Cutiefly - Leech Life - TR18
  (742, 74200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 35),
  -- Cutiefly - Substitute - TR20
  (742, 74200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Cutiefly - Endure - TR26
  (742, 74200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Cutiefly - Sleep Talk - TR27
  (742, 74200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Cutiefly - Baton Pass - TR29
  (742, 74200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 39),
  -- Cutiefly - Trick - TR38
  (742, 74200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Cutiefly - Skill Swap - TR40
  (742, 74200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 41),
  -- Cutiefly - Calm Mind - TR49
  (742, 74200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 42),
  -- Cutiefly - Bug Buzz - TR61
  (742, 74200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 43),
  -- Cutiefly - Energy Ball - TR65
  (742, 74200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 44),
  -- Cutiefly - Ally Switch - TR83
  (742, 74200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 45),
  -- Cutiefly - Play Rough - TR90
  (742, 74200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 46),
  -- Cutiefly - Dazzling Gleam - TR92
  (742, 74200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 47),
  -- Cutiefly - Sticky Web - Egg
  (742, 74200, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cutiefly - Moonblast - Egg
  (742, 74200, 585, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cutiefly - Aromatic Mist - Egg
  (742, 74200, 597, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ribombee - Absorb - Level 1
  (743, 74300, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ribombee - Stun Spore - Level 1
  (743, 74300, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ribombee - Sweet Scent - Level 1
  (743, 74300, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ribombee - Covet - Level 1
  (743, 74300, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ribombee - Fairy Wind - Level 1
  (743, 74300, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ribombee - Pollen Puff - Level 1
  (743, 74300, 676, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ribombee - Draining Kiss - Level 18
  (743, 74300, 577, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ribombee - Struggle Bug - Level 24
  (743, 74300, 522, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ribombee - Aromatherapy - Level 32
  (743, 74300, 312, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Ribombee - Switcheroo - Level 40
  (743, 74300, 415, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Ribombee - Dazzling Gleam - Level 48
  (743, 74300, 605, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Ribombee - Bug Buzz - Level 56
  (743, 74300, 405, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Ribombee - Quiver Dance - Level 64
  (743, 74300, 483, 18, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Ribombee - Pollen Puff - Evolution
  (743, 74300, 676, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Ribombee - Hyper Beam - TM08
  (743, 74300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Ribombee - Giga Impact - TM09
  (743, 74300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Ribombee - Magical Leaf - TM10
  (743, 74300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 17),
  -- Ribombee - Solar Beam - TM11
  (743, 74300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Ribombee - Light Screen - TM17
  (743, 74300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Ribombee - Reflect - TM18
  (743, 74300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Ribombee - Safeguard - TM19
  (743, 74300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Ribombee - Rest - TM21
  (743, 74300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Ribombee - Thief - TM23
  (743, 74300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Ribombee - Snore - TM24
  (743, 74300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Ribombee - Protect - TM25
  (743, 74300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Ribombee - Charm - TM29
  (743, 74300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Ribombee - Attract - TM31
  (743, 74300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Ribombee - Sunny Day - TM34
  (743, 74300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Ribombee - Facade - TM39
  (743, 74300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Ribombee - Swift - TM40
  (743, 74300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Ribombee - Helping Hand - TM41
  (743, 74300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Ribombee - Imprison - TM44
  (743, 74300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Ribombee - Fake Tears - TM47
  (743, 74300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 33),
  -- Ribombee - U-turn - TM56
  (743, 74300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Ribombee - Speed Swap - TM62
  (743, 74300, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 35),
  -- Ribombee - Wonder Room - TM71
  (743, 74300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Ribombee - Magic Room - TM72
  (743, 74300, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 37),
  -- Ribombee - Round - TM76
  (743, 74300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Ribombee - Acrobatics - TM78
  (743, 74300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Ribombee - Draining Kiss - TM87
  (743, 74300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 40),
  -- Ribombee - Psychic - TR11
  (743, 74300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Ribombee - Leech Life - TR18
  (743, 74300, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 42),
  -- Ribombee - Substitute - TR20
  (743, 74300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Ribombee - Endure - TR26
  (743, 74300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Ribombee - Sleep Talk - TR27
  (743, 74300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Ribombee - Baton Pass - TR29
  (743, 74300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 46),
  -- Ribombee - Trick - TR38
  (743, 74300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Ribombee - Skill Swap - TR40
  (743, 74300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 48),
  -- Ribombee - Calm Mind - TR49
  (743, 74300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Ribombee - Bug Buzz - TR61
  (743, 74300, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 50),
  -- Ribombee - Energy Ball - TR65
  (743, 74300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Ribombee - Ally Switch - TR83
  (743, 74300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 52),
  -- Ribombee - Play Rough - TR90
  (743, 74300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 53),
  -- Ribombee - Dazzling Gleam - TR92
  (743, 74300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 54),
  -- Ribombee - Pollen Puff - TR96
  (743, 74300, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 55),
  -- Rockruff - Tackle - Level 1
  (744, 74400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rockruff - Leer - Level 1
  (744, 74400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rockruff - Sand Attack - Level 4
  (744, 74400, 28, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rockruff - Double Team - Level 8
  (744, 74400, 104, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rockruff - Rock Throw - Level 12
  (744, 74400, 88, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rockruff - Howl - Level 16
  (744, 74400, 336, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Rockruff - Bite - Level 20
  (744, 74400, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rockruff - Rock Tomb - Level 24
  (744, 74400, 317, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Rockruff - Roar - Level 28
  (744, 74400, 46, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Rockruff - Rock Slide - Level 32
  (744, 74400, 157, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Rockruff - Crunch - Level 36
  (744, 74400, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Rockruff - Scary Face - Level 40
  (744, 74400, 184, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rockruff - Stealth Rock - Level 44
  (744, 74400, 446, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Rockruff - Stone Edge - Level 48
  (744, 74400, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Rockruff - Rest - TM21
  (744, 74400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Rockruff - Rock Slide - TM22
  (744, 74400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Rockruff - Snore - TM24
  (744, 74400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Rockruff - Protect - TM25
  (744, 74400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Rockruff - Scary Face - TM26
  (744, 74400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 19),
  -- Rockruff - Attract - TM31
  (744, 74400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Rockruff - Facade - TM39
  (744, 74400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Rockruff - Rock Tomb - TM48
  (744, 74400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 22),
  -- Rockruff - Thunder Fang - TM66
  (744, 74400, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 23),
  -- Rockruff - Fire Fang - TM68
  (744, 74400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 24),
  -- Rockruff - Round - TM76
  (744, 74400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Rockruff - Snarl - TM85
  (744, 74400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 26),
  -- Rockruff - Stomping Tantrum - TM98
  (744, 74400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 27),
  -- Rockruff - Swords Dance - TR00
  (744, 74400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Rockruff - Substitute - TR20
  (744, 74400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Rockruff - Endure - TR26
  (744, 74400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Rockruff - Sleep Talk - TR27
  (744, 74400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Rockruff - Iron Tail - TR31
  (744, 74400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 32),
  -- Rockruff - Crunch - TR32
  (744, 74400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 33),
  -- Rockruff - Taunt - TR37
  (744, 74400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 34),
  -- Rockruff - Hyper Voice - TR42
  (744, 74400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 35),
  -- Rockruff - Iron Defense - TR46
  (744, 74400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 36),
  -- Rockruff - Earth Power - TR67
  (744, 74400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 37),
  -- Rockruff - Zen Headbutt - TR69
  (744, 74400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 38),
  -- Rockruff - Iron Head - TR74
  (744, 74400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 39),
  -- Rockruff - Stone Edge - TR75
  (744, 74400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 40),
  -- Rockruff - Stealth Rock - TR76
  (744, 74400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 41),
  -- Rockruff - Play Rough - TR90
  (744, 74400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 42),
  -- Rockruff - Thrash - Egg
  (744, 74400, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rockruff - Endeavor - Egg
  (744, 74400, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rockruff - Last Resort - Egg
  (744, 74400, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lycanroc - Sand Attack - Level 1
  (745, 74500, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lycanroc - Tackle - Level 1
  (745, 74500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lycanroc - Leer - Level 1
  (745, 74500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lycanroc - Quick Attack - Level 1
  (745, 74500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lycanroc - Double Team - Level 1
  (745, 74500, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lycanroc - Sucker Punch - Level 1
  (745, 74500, 389, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lycanroc - Quick Guard - Level 1
  (745, 74500, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lycanroc - Accelerock - Level 1
  (745, 74500, 709, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lycanroc - Rock Throw - Level 12
  (745, 74500, 88, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Lycanroc - Howl - Level 16
  (745, 74500, 336, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Lycanroc - Bite - Level 20
  (745, 74500, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Lycanroc - Rock Tomb - Level 24
  (745, 74500, 317, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lycanroc - Roar - Level 30
  (745, 74500, 46, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lycanroc - Rock Slide - Level 36
  (745, 74500, 157, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lycanroc - Crunch - Level 42
  (745, 74500, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Lycanroc - Scary Face - Level 48
  (745, 74500, 184, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Lycanroc - Stealth Rock - Level 54
  (745, 74500, 446, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Lycanroc - Stone Edge - Level 60
  (745, 74500, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Lycanroc - Sucker Punch - Evolution
  (745, 74500, 389, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Lycanroc - Giga Impact - TM09
  (745, 74500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Lycanroc - Rest - TM21
  (745, 74500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Lycanroc - Rock Slide - TM22
  (745, 74500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Lycanroc - Snore - TM24
  (745, 74500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Lycanroc - Protect - TM25
  (745, 74500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Lycanroc - Scary Face - TM26
  (745, 74500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Lycanroc - Attract - TM31
  (745, 74500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Lycanroc - Sandstorm - TM32
  (745, 74500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Lycanroc - Facade - TM39
  (745, 74500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Lycanroc - Swift - TM40
  (745, 74500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Lycanroc - Brick Break - TM43
  (745, 74500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Lycanroc - Rock Tomb - TM48
  (745, 74500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Lycanroc - Rock Blast - TM54
  (745, 74500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Lycanroc - Assurance - TM58
  (745, 74500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Lycanroc - Thunder Fang - TM66
  (745, 74500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 34),
  -- Lycanroc - Fire Fang - TM68
  (745, 74500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 35),
  -- Lycanroc - Round - TM76
  (745, 74500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Lycanroc - Tail Slap - TM84
  (745, 74500, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 37),
  -- Lycanroc - Snarl - TM85
  (745, 74500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Lycanroc - Stomping Tantrum - TM98
  (745, 74500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Lycanroc - Swords Dance - TR00
  (745, 74500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Lycanroc - Agility - TR12
  (745, 74500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Lycanroc - Substitute - TR20
  (745, 74500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Lycanroc - Endure - TR26
  (745, 74500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Lycanroc - Sleep Talk - TR27
  (745, 74500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Lycanroc - Iron Tail - TR31
  (745, 74500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Lycanroc - Crunch - TR32
  (745, 74500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Lycanroc - Taunt - TR37
  (745, 74500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Lycanroc - Hyper Voice - TR42
  (745, 74500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Lycanroc - Iron Defense - TR46
  (745, 74500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 49),
  -- Lycanroc - Bulk Up - TR48
  (745, 74500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 50),
  -- Lycanroc - Close Combat - TR53
  (745, 74500, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Lycanroc - Earth Power - TR67
  (745, 74500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Lycanroc - Zen Headbutt - TR69
  (745, 74500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Lycanroc - Iron Head - TR74
  (745, 74500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Lycanroc - Stone Edge - TR75
  (745, 74500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Lycanroc - Stealth Rock - TR76
  (745, 74500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Lycanroc - Drill Run - TR87
  (745, 74500, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 57),
  -- Lycanroc - Play Rough - TR90
  (745, 74500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Lycanroc - Psychic Fangs - TR97
  (745, 74500, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 59),
  -- Lycanroc - Endeavor - Egg
  (745, 74500, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lycanroc - Last Resort - Egg
  (745, 74500, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lycanroc - Thrash - Egg
  (745, 74500, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wishiwashi - Growl - Level 1
  (746, 74600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wishiwashi - Water Gun - Level 1
  (746, 74600, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wishiwashi - Helping Hand - Level 4
  (746, 74600, 270, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wishiwashi - Beat Up - Level 8
  (746, 74600, 251, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wishiwashi - Brine - Level 12
  (746, 74600, 362, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wishiwashi - Tearful Look - Level 16
  (746, 74600, 715, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wishiwashi - Dive - Level 20
  (746, 74600, 291, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Wishiwashi - Soak - Level 24
  (746, 74600, 487, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wishiwashi - Uproar - Level 28
  (746, 74600, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Wishiwashi - Aqua Tail - Level 32
  (746, 74600, 401, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wishiwashi - Aqua Ring - Level 36
  (746, 74600, 392, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Wishiwashi - Endeavor - Level 40
  (746, 74600, 283, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wishiwashi - Hydro Pump - Level 44
  (746, 74600, 56, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Wishiwashi - Double-Edge - Level 48
  (746, 74600, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Wishiwashi - Rest - TM21
  (746, 74600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Wishiwashi - Snore - TM24
  (746, 74600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Wishiwashi - Protect - TM25
  (746, 74600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Wishiwashi - Attract - TM31
  (746, 74600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Wishiwashi - Rain Dance - TM33
  (746, 74600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Wishiwashi - Hail - TM35
  (746, 74600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 20),
  -- Wishiwashi - Whirlpool - TM36
  (746, 74600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 21),
  -- Wishiwashi - Beat Up - TM37
  (746, 74600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 22),
  -- Wishiwashi - Facade - TM39
  (746, 74600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Wishiwashi - Helping Hand - TM41
  (746, 74600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Wishiwashi - Dive - TM45
  (746, 74600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 25),
  -- Wishiwashi - Mud Shot - TM53
  (746, 74600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Wishiwashi - Brine - TM55
  (746, 74600, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Wishiwashi - U-turn - TM56
  (746, 74600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Wishiwashi - Round - TM76
  (746, 74600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Wishiwashi - Bulldoze - TM81
  (746, 74600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Wishiwashi - Hydro Pump - TR03
  (746, 74600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 31),
  -- Wishiwashi - Surf - TR04
  (746, 74600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 32),
  -- Wishiwashi - Ice Beam - TR05
  (746, 74600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 33),
  -- Wishiwashi - Earthquake - TR10
  (746, 74600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 34),
  -- Wishiwashi - Waterfall - TR16
  (746, 74600, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 35),
  -- Wishiwashi - Substitute - TR20
  (746, 74600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Wishiwashi - Endure - TR26
  (746, 74600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Wishiwashi - Sleep Talk - TR27
  (746, 74600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Wishiwashi - Iron Tail - TR31
  (746, 74600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Wishiwashi - Uproar - TR35
  (746, 74600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 40),
  -- Wishiwashi - Muddy Water - TR45
  (746, 74600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 41),
  -- Wishiwashi - Scald - TR84
  (746, 74600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Wishiwashi - Liquidation - TR98
  (746, 74600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 43),
  -- Wishiwashi - Take Down - Egg
  (746, 74600, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wishiwashi - Mist - Egg
  (746, 74600, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wishiwashi - Water Pulse - Egg
  (746, 74600, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mareanie - Poison Sting - Level 1
  (747, 74700, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareanie - Peck - Level 1
  (747, 74700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareanie - Wide Guard - Level 5
  (747, 74700, 469, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mareanie - Bite - Level 10
  (747, 74700, 44, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mareanie - Venoshock - Level 15
  (747, 74700, 474, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mareanie - Recover - Level 20
  (747, 74700, 105, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Mareanie - Pin Missile - Level 25
  (747, 74700, 42, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mareanie - Toxic Spikes - Level 30
  (747, 74700, 390, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Mareanie - Liquidation - Level 35
  (747, 74700, 710, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mareanie - Venom Drench - Level 40
  (747, 74700, 599, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mareanie - Poison Jab - Level 45
  (747, 74700, 398, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Mareanie - Toxic - Level 50
  (747, 74700, 92, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Mareanie - Pin Missile - TM07
  (747, 74700, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 13),
  -- Mareanie - Safeguard - TM19
  (747, 74700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 14),
  -- Mareanie - Rest - TM21
  (747, 74700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Mareanie - Snore - TM24
  (747, 74700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Mareanie - Protect - TM25
  (747, 74700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Mareanie - Icy Wind - TM27
  (747, 74700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Mareanie - Attract - TM31
  (747, 74700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Mareanie - Rain Dance - TM33
  (747, 74700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Mareanie - Hail - TM35
  (747, 74700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 21),
  -- Mareanie - Facade - TM39
  (747, 74700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Mareanie - Mud Shot - TM53
  (747, 74700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 23),
  -- Mareanie - Brine - TM55
  (747, 74700, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 24),
  -- Mareanie - Payback - TM57
  (747, 74700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 25),
  -- Mareanie - Venoshock - TM74
  (747, 74700, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 26),
  -- Mareanie - Round - TM76
  (747, 74700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Mareanie - Hydro Pump - TR03
  (747, 74700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 28),
  -- Mareanie - Surf - TR04
  (747, 74700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Mareanie - Ice Beam - TR05
  (747, 74700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Mareanie - Blizzard - TR06
  (747, 74700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 31),
  -- Mareanie - Substitute - TR20
  (747, 74700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Mareanie - Sludge Bomb - TR22
  (747, 74700, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 33),
  -- Mareanie - Endure - TR26
  (747, 74700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Mareanie - Sleep Talk - TR27
  (747, 74700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Mareanie - Muddy Water - TR45
  (747, 74700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 36),
  -- Mareanie - Iron Defense - TR46
  (747, 74700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Mareanie - Toxic Spikes - TR54
  (747, 74700, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 38),
  -- Mareanie - Poison Jab - TR57
  (747, 74700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 39),
  -- Mareanie - Gunk Shot - TR73
  (747, 74700, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 40),
  -- Mareanie - Sludge Wave - TR78
  (747, 74700, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 41),
  -- Mareanie - Scald - TR84
  (747, 74700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Mareanie - Venom Drench - TR91
  (747, 74700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 43),
  -- Mareanie - Liquidation - TR98
  (747, 74700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 44),
  -- Mareanie - Haze - Egg
  (747, 74700, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mareanie - Stockpile - Egg
  (747, 74700, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mareanie - Spit Up - Egg
  (747, 74700, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mareanie - Swallow - Egg
  (747, 74700, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mareanie - Infestation - Egg
  (747, 74700, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Toxapex - Poison Sting - Level 1
  (748, 74800, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxapex - Bite - Level 1
  (748, 74800, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxapex - Peck - Level 1
  (748, 74800, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxapex - Wide Guard - Level 1
  (748, 74800, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxapex - Baneful Bunker - Level 1
  (748, 74800, 661, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxapex - Venoshock - Level 15
  (748, 74800, 474, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Toxapex - Recover - Level 20
  (748, 74800, 105, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Toxapex - Pin Missile - Level 25
  (748, 74800, 42, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Toxapex - Toxic Spikes - Level 30
  (748, 74800, 390, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Toxapex - Liquidation - Level 35
  (748, 74800, 710, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Toxapex - Venom Drench - Level 42
  (748, 74800, 599, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Toxapex - Poison Jab - Level 49
  (748, 74800, 398, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Toxapex - Toxic - Level 56
  (748, 74800, 92, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Toxapex - Baneful Bunker - Evolution
  (748, 74800, 661, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Toxapex - Pin Missile - TM07
  (748, 74800, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Toxapex - Light Screen - TM17
  (748, 74800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Toxapex - Safeguard - TM19
  (748, 74800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Toxapex - Rest - TM21
  (748, 74800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Toxapex - Snore - TM24
  (748, 74800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Toxapex - Protect - TM25
  (748, 74800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Toxapex - Icy Wind - TM27
  (748, 74800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Toxapex - Attract - TM31
  (748, 74800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Toxapex - Rain Dance - TM33
  (748, 74800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Toxapex - Hail - TM35
  (748, 74800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Toxapex - Facade - TM39
  (748, 74800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Toxapex - Mud Shot - TM53
  (748, 74800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Toxapex - Brine - TM55
  (748, 74800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Toxapex - Payback - TM57
  (748, 74800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Toxapex - Cross Poison - TM73
  (748, 74800, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 29),
  -- Toxapex - Venoshock - TM74
  (748, 74800, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 30),
  -- Toxapex - Round - TM76
  (748, 74800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Toxapex - Hex - TM77
  (748, 74800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Toxapex - Hydro Pump - TR03
  (748, 74800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Toxapex - Surf - TR04
  (748, 74800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Toxapex - Ice Beam - TR05
  (748, 74800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Toxapex - Blizzard - TR06
  (748, 74800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Toxapex - Substitute - TR20
  (748, 74800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Toxapex - Sludge Bomb - TR22
  (748, 74800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 38),
  -- Toxapex - Endure - TR26
  (748, 74800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Toxapex - Sleep Talk - TR27
  (748, 74800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Toxapex - Muddy Water - TR45
  (748, 74800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 41),
  -- Toxapex - Iron Defense - TR46
  (748, 74800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Toxapex - Toxic Spikes - TR54
  (748, 74800, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 43),
  -- Toxapex - Poison Jab - TR57
  (748, 74800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 44),
  -- Toxapex - Gunk Shot - TR73
  (748, 74800, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 45),
  -- Toxapex - Sludge Wave - TR78
  (748, 74800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 46),
  -- Toxapex - Scald - TR84
  (748, 74800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 47),
  -- Toxapex - Venom Drench - TR91
  (748, 74800, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 48),
  -- Toxapex - Liquidation - TR98
  (748, 74800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 49),
  -- Mudbray - Mud-Slap - Level 1
  (749, 74900, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudbray - Rock Smash - Level 1
  (749, 74900, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudbray - Iron Defense - Level 4
  (749, 74900, 334, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mudbray - Double Kick - Level 8
  (749, 74900, 24, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mudbray - Bulldoze - Level 12
  (749, 74900, 523, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mudbray - Stomp - Level 16
  (749, 74900, 23, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mudbray - Strength - Level 20
  (749, 74900, 70, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mudbray - Counter - Level 24
  (749, 74900, 68, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mudbray - High Horsepower - Level 28
  (749, 74900, 667, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mudbray - Heavy Slam - Level 32
  (749, 74900, 484, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mudbray - Earthquake - Level 36
  (749, 74900, 89, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mudbray - Mega Kick - Level 40
  (749, 74900, 25, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mudbray - Superpower - Level 44
  (749, 74900, 276, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mudbray - Mega Kick - TM01
  (749, 74900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Mudbray - Rest - TM21
  (749, 74900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Mudbray - Rock Slide - TM22
  (749, 74900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Mudbray - Snore - TM24
  (749, 74900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Mudbray - Protect - TM25
  (749, 74900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Mudbray - Attract - TM31
  (749, 74900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Mudbray - Sandstorm - TM32
  (749, 74900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 20),
  -- Mudbray - Facade - TM39
  (749, 74900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Mudbray - Rock Tomb - TM48
  (749, 74900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 22),
  -- Mudbray - Sand Tomb - TM49
  (749, 74900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 23),
  -- Mudbray - Payback - TM57
  (749, 74900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Mudbray - Low Sweep - TM75
  (749, 74900, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 25),
  -- Mudbray - Round - TM76
  (749, 74900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Mudbray - Bulldoze - TM81
  (749, 74900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 27),
  -- Mudbray - Stomping Tantrum - TM98
  (749, 74900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 28),
  -- Mudbray - Body Slam - TR01
  (749, 74900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Mudbray - Low Kick - TR07
  (749, 74900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 30),
  -- Mudbray - Earthquake - TR10
  (749, 74900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 31),
  -- Mudbray - Substitute - TR20
  (749, 74900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Mudbray - Endure - TR26
  (749, 74900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Mudbray - Sleep Talk - TR27
  (749, 74900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Mudbray - Superpower - TR39
  (749, 74900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 35),
  -- Mudbray - Iron Defense - TR46
  (749, 74900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 36),
  -- Mudbray - Close Combat - TR53
  (749, 74900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 37),
  -- Mudbray - Earth Power - TR67
  (749, 74900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 38),
  -- Mudbray - Iron Head - TR74
  (749, 74900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 39),
  -- Mudbray - Stealth Rock - TR76
  (749, 74900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 40),
  -- Mudbray - Heavy Slam - TR79
  (749, 74900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 41),
  -- Mudbray - High Horsepower - TR94
  (749, 74900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 42),
  -- Mudbray - Double-Edge - Egg
  (749, 74900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudbray - Roar - Egg
  (749, 74900, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudbray - Fissure - Egg
  (749, 74900, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudbray - Smack Down - Egg
  (749, 74900, 479, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudsdale - Double Kick - Level 1
  (750, 75000, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudsdale - Mud-Slap - Level 1
  (750, 75000, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudsdale - Rock Smash - Level 1
  (750, 75000, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mudsdale - Iron Defense - Level 1
  (750, 75000, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mudsdale - Bulldoze - Level 12
  (750, 75000, 523, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mudsdale - Stomp - Level 16
  (750, 75000, 23, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mudsdale - Strength - Level 20
  (750, 75000, 70, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mudsdale - Counter - Level 24
  (750, 75000, 68, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mudsdale - High Horsepower - Level 28
  (750, 75000, 667, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mudsdale - Heavy Slam - Level 34
  (750, 75000, 484, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Mudsdale - Earthquake - Level 40
  (750, 75000, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Mudsdale - Mega Kick - Level 46
  (750, 75000, 25, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudsdale - Superpower - Level 52
  (750, 75000, 276, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Mudsdale - Mega Kick - TM01
  (750, 75000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Mudsdale - Hyper Beam - TM08
  (750, 75000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Mudsdale - Giga Impact - TM09
  (750, 75000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Mudsdale - Rest - TM21
  (750, 75000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Mudsdale - Rock Slide - TM22
  (750, 75000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Mudsdale - Snore - TM24
  (750, 75000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Mudsdale - Protect - TM25
  (750, 75000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Mudsdale - Scary Face - TM26
  (750, 75000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Mudsdale - Attract - TM31
  (750, 75000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Mudsdale - Sandstorm - TM32
  (750, 75000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Mudsdale - Facade - TM39
  (750, 75000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Mudsdale - Revenge - TM42
  (750, 75000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Mudsdale - Rock Tomb - TM48
  (750, 75000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Mudsdale - Sand Tomb - TM49
  (750, 75000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 27),
  -- Mudsdale - Mud Shot - TM53
  (750, 75000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Mudsdale - Payback - TM57
  (750, 75000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Mudsdale - Low Sweep - TM75
  (750, 75000, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 30),
  -- Mudsdale - Round - TM76
  (750, 75000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Mudsdale - Bulldoze - TM81
  (750, 75000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Mudsdale - Stomping Tantrum - TM98
  (750, 75000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Mudsdale - Body Slam - TR01
  (750, 75000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Mudsdale - Low Kick - TR07
  (750, 75000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 35),
  -- Mudsdale - Earthquake - TR10
  (750, 75000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 36),
  -- Mudsdale - Substitute - TR20
  (750, 75000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Mudsdale - Endure - TR26
  (750, 75000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Mudsdale - Sleep Talk - TR27
  (750, 75000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Mudsdale - Superpower - TR39
  (750, 75000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 40),
  -- Mudsdale - Iron Defense - TR46
  (750, 75000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Mudsdale - Close Combat - TR53
  (750, 75000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 42),
  -- Mudsdale - Focus Blast - TR64
  (750, 75000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 43),
  -- Mudsdale - Earth Power - TR67
  (750, 75000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 44),
  -- Mudsdale - Iron Head - TR74
  (750, 75000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 45),
  -- Mudsdale - Stealth Rock - TR76
  (750, 75000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 46),
  -- Mudsdale - Heavy Slam - TR79
  (750, 75000, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 47),
  -- Mudsdale - High Horsepower - TR94
  (750, 75000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 48),
  -- Mudsdale - Body Press - TR99
  (750, 75000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 49),
  -- Dewpider - Water Gun - Level 1
  (751, 75100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewpider - Infestation - Level 1
  (751, 75100, 611, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewpider - Bug Bite - Level 4
  (751, 75100, 450, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dewpider - Bite - Level 8
  (751, 75100, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dewpider - Bubble Beam - Level 12
  (751, 75100, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dewpider - Aqua Ring - Level 16
  (751, 75100, 392, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dewpider - Headbutt - Level 20
  (751, 75100, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dewpider - Crunch - Level 24
  (751, 75100, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dewpider - Soak - Level 28
  (751, 75100, 487, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dewpider - Entrainment - Level 32
  (751, 75100, 494, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dewpider - Lunge - Level 36
  (751, 75100, 679, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dewpider - Liquidation - Level 40
  (751, 75100, 710, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dewpider - Leech Life - Level 44
  (751, 75100, 141, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dewpider - Mirror Coat - Level 48
  (751, 75100, 243, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dewpider - Rest - TM21
  (751, 75100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Dewpider - Snore - TM24
  (751, 75100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Dewpider - Protect - TM25
  (751, 75100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Dewpider - Icy Wind - TM27
  (751, 75100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Dewpider - Giga Drain - TM28
  (751, 75100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Dewpider - Attract - TM31
  (751, 75100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Dewpider - Rain Dance - TM33
  (751, 75100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Dewpider - Facade - TM39
  (751, 75100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Dewpider - Wonder Room - TM71
  (751, 75100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 23),
  -- Dewpider - Magic Room - TM72
  (751, 75100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 24),
  -- Dewpider - Round - TM76
  (751, 75100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Dewpider - Surf - TR04
  (751, 75100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 26),
  -- Dewpider - Ice Beam - TR05
  (751, 75100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 27),
  -- Dewpider - Blizzard - TR06
  (751, 75100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 28),
  -- Dewpider - Waterfall - TR16
  (751, 75100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 29),
  -- Dewpider - Leech Life - TR18
  (751, 75100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 30),
  -- Dewpider - Substitute - TR20
  (751, 75100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Dewpider - Endure - TR26
  (751, 75100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Dewpider - Sleep Talk - TR27
  (751, 75100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Dewpider - Crunch - TR32
  (751, 75100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 34),
  -- Dewpider - Iron Defense - TR46
  (751, 75100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 35),
  -- Dewpider - Poison Jab - TR57
  (751, 75100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 36),
  -- Dewpider - X-Scissor - TR60
  (751, 75100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 37),
  -- Dewpider - Bug Buzz - TR61
  (751, 75100, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 38),
  -- Dewpider - Scald - TR84
  (751, 75100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 39),
  -- Dewpider - Liquidation - TR98
  (751, 75100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 40),
  -- Dewpider - Stockpile - Egg
  (751, 75100, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dewpider - Spit Up - Egg
  (751, 75100, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dewpider - Power Split - Egg
  (751, 75100, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dewpider - Sticky Web - Egg
  (751, 75100, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Araquanid - Bite - Level 1
  (752, 75200, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Araquanid - Water Gun - Level 1
  (752, 75200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Araquanid - Bug Bite - Level 1
  (752, 75200, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Araquanid - Wide Guard - Level 1
  (752, 75200, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Araquanid - Infestation - Level 1
  (752, 75200, 611, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Araquanid - Bubble Beam - Level 12
  (752, 75200, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Araquanid - Aqua Ring - Level 16
  (752, 75200, 392, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Araquanid - Headbutt - Level 20
  (752, 75200, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Araquanid - Crunch - Level 26
  (752, 75200, 242, 18, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Araquanid - Soak - Level 32
  (752, 75200, 487, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Araquanid - Entrainment - Level 38
  (752, 75200, 494, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Araquanid - Lunge - Level 44
  (752, 75200, 679, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Araquanid - Liquidation - Level 50
  (752, 75200, 710, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Araquanid - Leech Life - Level 56
  (752, 75200, 141, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Araquanid - Mirror Coat - Level 62
  (752, 75200, 243, 18, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Araquanid - Reflect - TM18
  (752, 75200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Araquanid - Safeguard - TM19
  (752, 75200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Araquanid - Rest - TM21
  (752, 75200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Araquanid - Snore - TM24
  (752, 75200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Araquanid - Protect - TM25
  (752, 75200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Araquanid - Icy Wind - TM27
  (752, 75200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Araquanid - Giga Drain - TM28
  (752, 75200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 22),
  -- Araquanid - Attract - TM31
  (752, 75200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Araquanid - Rain Dance - TM33
  (752, 75200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Araquanid - Facade - TM39
  (752, 75200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Araquanid - Dive - TM45
  (752, 75200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Araquanid - Wonder Room - TM71
  (752, 75200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 27),
  -- Araquanid - Magic Room - TM72
  (752, 75200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 28),
  -- Araquanid - Round - TM76
  (752, 75200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Araquanid - Hydro Pump - TR03
  (752, 75200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 30),
  -- Araquanid - Surf - TR04
  (752, 75200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 31),
  -- Araquanid - Ice Beam - TR05
  (752, 75200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Araquanid - Blizzard - TR06
  (752, 75200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Araquanid - Waterfall - TR16
  (752, 75200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 34),
  -- Araquanid - Leech Life - TR18
  (752, 75200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 35),
  -- Araquanid - Substitute - TR20
  (752, 75200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Araquanid - Endure - TR26
  (752, 75200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Araquanid - Sleep Talk - TR27
  (752, 75200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Araquanid - Crunch - TR32
  (752, 75200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 39),
  -- Araquanid - Iron Defense - TR46
  (752, 75200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 40),
  -- Araquanid - Poison Jab - TR57
  (752, 75200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 41),
  -- Araquanid - X-Scissor - TR60
  (752, 75200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 42),
  -- Araquanid - Bug Buzz - TR61
  (752, 75200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 43),
  -- Araquanid - Scald - TR84
  (752, 75200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 44),
  -- Araquanid - Liquidation - TR98
  (752, 75200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 45),
  -- Fomantis - Fury Cutter - Level 1
  (753, 75300, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fomantis - Leafage - Level 1
  (753, 75300, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fomantis - Growth - Level 5
  (753, 75300, 74, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fomantis - Ingrain - Level 10
  (753, 75300, 275, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fomantis - Razor Leaf - Level 15
  (753, 75300, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Fomantis - Sweet Scent - Level 20
  (753, 75300, 230, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fomantis - Slash - Level 25
  (753, 75300, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fomantis - X-Scissor - Level 30
  (753, 75300, 404, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fomantis - Synthesis - Level 35
  (753, 75300, 235, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fomantis - Leaf Blade - Level 40
  (753, 75300, 348, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fomantis - Sunny Day - Level 45
  (753, 75300, 241, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fomantis - Solar Beam - Level 50
  (753, 75300, 76, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Fomantis - Magical Leaf - TM10
  (753, 75300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 13),
  -- Fomantis - Solar Beam - TM11
  (753, 75300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Fomantis - Safeguard - TM19
  (753, 75300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Fomantis - Rest - TM21
  (753, 75300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Fomantis - Snore - TM24
  (753, 75300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Fomantis - Protect - TM25
  (753, 75300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Fomantis - Giga Drain - TM28
  (753, 75300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Fomantis - Attract - TM31
  (753, 75300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Fomantis - Sunny Day - TM34
  (753, 75300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Fomantis - Facade - TM39
  (753, 75300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Fomantis - Weather Ball - TM46
  (753, 75300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 23),
  -- Fomantis - Bullet Seed - TM50
  (753, 75300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 24),
  -- Fomantis - Payback - TM57
  (753, 75300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 25),
  -- Fomantis - Fling - TM59
  (753, 75300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 26),
  -- Fomantis - Round - TM76
  (753, 75300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Fomantis - False Swipe - TM94
  (753, 75300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 28),
  -- Fomantis - Swords Dance - TR00
  (753, 75300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 29),
  -- Fomantis - Leech Life - TR18
  (753, 75300, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 30),
  -- Fomantis - Substitute - TR20
  (753, 75300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Fomantis - Endure - TR26
  (753, 75300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Fomantis - Sleep Talk - TR27
  (753, 75300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Fomantis - Leaf Blade - TR50
  (753, 75300, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 34),
  -- Fomantis - Poison Jab - TR57
  (753, 75300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 35),
  -- Fomantis - Seed Bomb - TR59
  (753, 75300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 36),
  -- Fomantis - X-Scissor - TR60
  (753, 75300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 37),
  -- Fomantis - Energy Ball - TR65
  (753, 75300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 38),
  -- Fomantis - Leaf Storm - TR71
  (753, 75300, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 39),
  -- Fomantis - Grass Knot - TR77
  (753, 75300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Fomantis - Aromatherapy - Egg
  (753, 75300, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fomantis - Worry Seed - Egg
  (753, 75300, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fomantis - Defog - Egg
  (753, 75300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lurantis - Growth - Level 1
  (754, 75400, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lurantis - Solar Beam - Level 1
  (754, 75400, 76, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lurantis - Fury Cutter - Level 1
  (754, 75400, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lurantis - Ingrain - Level 1
  (754, 75400, 275, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lurantis - Night Slash - Level 1
  (754, 75400, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lurantis - Dual Chop - Level 1
  (754, 75400, 530, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lurantis - Petal Blizzard - Level 1
  (754, 75400, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lurantis - Leafage - Level 1
  (754, 75400, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lurantis - Razor Leaf - Level 15
  (754, 75400, 75, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Lurantis - Sweet Scent - Level 20
  (754, 75400, 230, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Lurantis - Slash - Level 25
  (754, 75400, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lurantis - X-Scissor - Level 30
  (754, 75400, 404, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Lurantis - Synthesis - Level 37
  (754, 75400, 235, 18, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Lurantis - Leaf Blade - Level 44
  (754, 75400, 348, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Lurantis - Sunny Day - Level 51
  (754, 75400, 241, 18, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Lurantis - Solar Blade - Level 63
  (754, 75400, 669, 18, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Lurantis - Petal Blizzard - Evolution
  (754, 75400, 572, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Lurantis - Hyper Beam - TM08
  (754, 75400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Lurantis - Giga Impact - TM09
  (754, 75400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Lurantis - Magical Leaf - TM10
  (754, 75400, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 20),
  -- Lurantis - Solar Beam - TM11
  (754, 75400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Lurantis - Solar Blade - TM12
  (754, 75400, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 22),
  -- Lurantis - Safeguard - TM19
  (754, 75400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Lurantis - Rest - TM21
  (754, 75400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Lurantis - Snore - TM24
  (754, 75400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Lurantis - Protect - TM25
  (754, 75400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Lurantis - Giga Drain - TM28
  (754, 75400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Lurantis - Attract - TM31
  (754, 75400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Lurantis - Sunny Day - TM34
  (754, 75400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Lurantis - Facade - TM39
  (754, 75400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Lurantis - Brick Break - TM43
  (754, 75400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Lurantis - Weather Ball - TM46
  (754, 75400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Lurantis - Bullet Seed - TM50
  (754, 75400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 33),
  -- Lurantis - Payback - TM57
  (754, 75400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Lurantis - Fling - TM59
  (754, 75400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Lurantis - Psycho Cut - TM69
  (754, 75400, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Lurantis - Cross Poison - TM73
  (754, 75400, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 37),
  -- Lurantis - Low Sweep - TM75
  (754, 75400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 38),
  -- Lurantis - Round - TM76
  (754, 75400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Lurantis - Grassy Terrain - TM88
  (754, 75400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 40),
  -- Lurantis - False Swipe - TM94
  (754, 75400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Lurantis - Swords Dance - TR00
  (754, 75400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Lurantis - Leech Life - TR18
  (754, 75400, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 43),
  -- Lurantis - Substitute - TR20
  (754, 75400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Lurantis - Endure - TR26
  (754, 75400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Lurantis - Sleep Talk - TR27
  (754, 75400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Lurantis - Superpower - TR39
  (754, 75400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Lurantis - Leaf Blade - TR50
  (754, 75400, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 48),
  -- Lurantis - Poison Jab - TR57
  (754, 75400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 49),
  -- Lurantis - Seed Bomb - TR59
  (754, 75400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 50),
  -- Lurantis - X-Scissor - TR60
  (754, 75400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Lurantis - Energy Ball - TR65
  (754, 75400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 52),
  -- Lurantis - Leaf Storm - TR71
  (754, 75400, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 53),
  -- Lurantis - Grass Knot - TR77
  (754, 75400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Morelull - Absorb - Level 1
  (755, 75500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morelull - Astonish - Level 1
  (755, 75500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morelull - Confuse Ray - Level 4
  (755, 75500, 109, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Morelull - Ingrain - Level 8
  (755, 75500, 275, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Morelull - Mega Drain - Level 12
  (755, 75500, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Morelull - Sleep Powder - Level 16
  (755, 75500, 79, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Morelull - Moonlight - Level 20
  (755, 75500, 236, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Morelull - Strength Sap - Level 25
  (755, 75500, 668, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Morelull - Giga Drain - Level 28
  (755, 75500, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Morelull - Dazzling Gleam - Level 32
  (755, 75500, 605, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Morelull - Spore - Level 36
  (755, 75500, 147, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Morelull - Moonblast - Level 40
  (755, 75500, 585, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Morelull - Dream Eater - Level 44
  (755, 75500, 138, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Morelull - Solar Beam - TM11
  (755, 75500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Morelull - Thunder Wave - TM14
  (755, 75500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Morelull - Light Screen - TM17
  (755, 75500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Morelull - Safeguard - TM19
  (755, 75500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Morelull - Rest - TM21
  (755, 75500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Morelull - Snore - TM24
  (755, 75500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Morelull - Protect - TM25
  (755, 75500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Morelull - Giga Drain - TM28
  (755, 75500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Morelull - Attract - TM31
  (755, 75500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Morelull - Sunny Day - TM34
  (755, 75500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Morelull - Facade - TM39
  (755, 75500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Morelull - Wonder Room - TM71
  (755, 75500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 25),
  -- Morelull - Magic Room - TM72
  (755, 75500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 26),
  -- Morelull - Round - TM76
  (755, 75500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Morelull - Draining Kiss - TM87
  (755, 75500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 28),
  -- Morelull - Amnesia - TR17
  (755, 75500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 29),
  -- Morelull - Substitute - TR20
  (755, 75500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Morelull - Sludge Bomb - TR22
  (755, 75500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 31),
  -- Morelull - Endure - TR26
  (755, 75500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Morelull - Sleep Talk - TR27
  (755, 75500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Morelull - Seed Bomb - TR59
  (755, 75500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 34),
  -- Morelull - Energy Ball - TR65
  (755, 75500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 35),
  -- Morelull - Grass Knot - TR77
  (755, 75500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 36),
  -- Morelull - Dazzling Gleam - TR92
  (755, 75500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 37),
  -- Morelull - Pollen Puff - TR96
  (755, 75500, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 38),
  -- Morelull - Leech Seed - Egg
  (755, 75500, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Morelull - Growth - Egg
  (755, 75500, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Morelull - Poison Powder - Egg
  (755, 75500, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Morelull - Stun Spore - Egg
  (755, 75500, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shiinotic - Absorb - Level 1
  (756, 75600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiinotic - Confuse Ray - Level 1
  (756, 75600, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiinotic - Ingrain - Level 1
  (756, 75600, 275, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiinotic - Astonish - Level 1
  (756, 75600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiinotic - Mega Drain - Level 12
  (756, 75600, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shiinotic - Sleep Powder - Level 16
  (756, 75600, 79, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shiinotic - Moonlight - Level 20
  (756, 75600, 236, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shiinotic - Strength Sap - Level 27
  (756, 75600, 668, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Shiinotic - Giga Drain - Level 32
  (756, 75600, 202, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shiinotic - Dazzling Gleam - Level 38
  (756, 75600, 605, 18, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Shiinotic - Spore - Level 44
  (756, 75600, 147, 18, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Shiinotic - Moonblast - Level 50
  (756, 75600, 585, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Shiinotic - Dream Eater - Level 56
  (756, 75600, 138, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Shiinotic - Hyper Beam - TM08
  (756, 75600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Shiinotic - Giga Impact - TM09
  (756, 75600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Shiinotic - Solar Beam - TM11
  (756, 75600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Shiinotic - Thunder Wave - TM14
  (756, 75600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Shiinotic - Light Screen - TM17
  (756, 75600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Shiinotic - Safeguard - TM19
  (756, 75600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Shiinotic - Rest - TM21
  (756, 75600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Shiinotic - Snore - TM24
  (756, 75600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Shiinotic - Protect - TM25
  (756, 75600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Shiinotic - Giga Drain - TM28
  (756, 75600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Shiinotic - Attract - TM31
  (756, 75600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Shiinotic - Rain Dance - TM33
  (756, 75600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Shiinotic - Sunny Day - TM34
  (756, 75600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Shiinotic - Facade - TM39
  (756, 75600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Shiinotic - Weather Ball - TM46
  (756, 75600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 28),
  -- Shiinotic - Drain Punch - TM63
  (756, 75600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 29),
  -- Shiinotic - Wonder Room - TM71
  (756, 75600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Shiinotic - Magic Room - TM72
  (756, 75600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 31),
  -- Shiinotic - Round - TM76
  (756, 75600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Shiinotic - Draining Kiss - TM87
  (756, 75600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 33),
  -- Shiinotic - Amnesia - TR17
  (756, 75600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 34),
  -- Shiinotic - Substitute - TR20
  (756, 75600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Shiinotic - Sludge Bomb - TR22
  (756, 75600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 36),
  -- Shiinotic - Endure - TR26
  (756, 75600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Shiinotic - Sleep Talk - TR27
  (756, 75600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Shiinotic - Seed Bomb - TR59
  (756, 75600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Shiinotic - Energy Ball - TR65
  (756, 75600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Shiinotic - Grass Knot - TR77
  (756, 75600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 41),
  -- Shiinotic - Dazzling Gleam - TR92
  (756, 75600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 42),
  -- Shiinotic - Pollen Puff - TR96
  (756, 75600, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 43),
  -- Salandit - Scratch - Level 1
  (757, 75700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salandit - Poison Gas - Level 1
  (757, 75700, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salandit - Smog - Level 5
  (757, 75700, 123, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Salandit - Ember - Level 10
  (757, 75700, 52, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Salandit - Poison Fang - Level 15
  (757, 75700, 305, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Salandit - Sweet Scent - Level 20
  (757, 75700, 230, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Salandit - Nasty Plot - Level 25
  (757, 75700, 417, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Salandit - Incinerate - Level 30
  (757, 75700, 510, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Salandit - Venoshock - Level 35
  (757, 75700, 474, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Salandit - Dragon Pulse - Level 40
  (757, 75700, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Salandit - Venom Drench - Level 45
  (757, 75700, 599, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Salandit - Flamethrower - Level 50
  (757, 75700, 53, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Salandit - Toxic - Level 55
  (757, 75700, 92, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Salandit - Endeavor - Level 60
  (757, 75700, 283, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Salandit - Thunder Wave - TM14
  (757, 75700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Salandit - Rest - TM21
  (757, 75700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Salandit - Thief - TM23
  (757, 75700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Salandit - Snore - TM24
  (757, 75700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Salandit - Protect - TM25
  (757, 75700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Salandit - Attract - TM31
  (757, 75700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Salandit - Beat Up - TM37
  (757, 75700, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 21),
  -- Salandit - Will-O-Wisp - TM38
  (757, 75700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 22),
  -- Salandit - Facade - TM39
  (757, 75700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Salandit - Swift - TM40
  (757, 75700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Salandit - Helping Hand - TM41
  (757, 75700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Salandit - Payback - TM57
  (757, 75700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Salandit - Fling - TM59
  (757, 75700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 27),
  -- Salandit - Shadow Claw - TM65
  (757, 75700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Salandit - Venoshock - TM74
  (757, 75700, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 29),
  -- Salandit - Round - TM76
  (757, 75700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Salandit - Flamethrower - TR02
  (757, 75700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 31),
  -- Salandit - Fire Blast - TR15
  (757, 75700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 32),
  -- Salandit - Leech Life - TR18
  (757, 75700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 33),
  -- Salandit - Substitute - TR20
  (757, 75700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Salandit - Sludge Bomb - TR22
  (757, 75700, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 35),
  -- Salandit - Endure - TR26
  (757, 75700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Salandit - Sleep Talk - TR27
  (757, 75700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Salandit - Iron Tail - TR31
  (757, 75700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 38),
  -- Salandit - Heat Wave - TR36
  (757, 75700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 39),
  -- Salandit - Taunt - TR37
  (757, 75700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 40),
  -- Salandit - Overheat - TR43
  (757, 75700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 41),
  -- Salandit - Dragon Claw - TR47
  (757, 75700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 42),
  -- Salandit - Poison Jab - TR57
  (757, 75700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 43),
  -- Salandit - Dragon Pulse - TR62
  (757, 75700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 44),
  -- Salandit - Nasty Plot - TR68
  (757, 75700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Salandit - Gunk Shot - TR73
  (757, 75700, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 46),
  -- Salandit - Sludge Wave - TR78
  (757, 75700, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 47),
  -- Salandit - Foul Play - TR81
  (757, 75700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Salandit - Venom Drench - TR91
  (757, 75700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 49),
  -- Salandit - Sand Attack - Egg
  (757, 75700, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Salandit - Mud-Slap - Egg
  (757, 75700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Salandit - Fake Out - Egg
  (757, 75700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Salandit - Belch - Egg
  (757, 75700, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Salazzle - Pound - Level 1
  (758, 75800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salazzle - Scratch - Level 1
  (758, 75800, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salazzle - Disable - Level 1
  (758, 75800, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salazzle - Ember - Level 1
  (758, 75800, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salazzle - Smog - Level 1
  (758, 75800, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salazzle - Poison Gas - Level 1
  (758, 75800, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salazzle - Swagger - Level 1
  (758, 75800, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salazzle - Encore - Level 1
  (758, 75800, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Salazzle - Torment - Level 1
  (758, 75800, 259, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Salazzle - Knock Off - Level 1
  (758, 75800, 282, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Salazzle - Endeavor - Level 1
  (758, 75800, 283, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Salazzle - Fire Lash - Level 1
  (758, 75800, 680, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Salazzle - Poison Fang - Level 15
  (758, 75800, 305, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Salazzle - Sweet Scent - Level 20
  (758, 75800, 230, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Salazzle - Nasty Plot - Level 25
  (758, 75800, 417, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Salazzle - Incinerate - Level 30
  (758, 75800, 510, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Salazzle - Venoshock - Level 37
  (758, 75800, 474, 18, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Salazzle - Dragon Pulse - Level 44
  (758, 75800, 406, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Salazzle - Venom Drench - Level 51
  (758, 75800, 599, 18, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Salazzle - Flamethrower - Level 58
  (758, 75800, 53, 18, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Salazzle - Toxic - Level 65
  (758, 75800, 92, 18, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Salazzle - Fire Lash - Evolution
  (758, 75800, 680, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Salazzle - Thunder Wave - TM14
  (758, 75800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Salazzle - Rest - TM21
  (758, 75800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Salazzle - Thief - TM23
  (758, 75800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Salazzle - Snore - TM24
  (758, 75800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Salazzle - Protect - TM25
  (758, 75800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Salazzle - Attract - TM31
  (758, 75800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Salazzle - Beat Up - TM37
  (758, 75800, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 29),
  -- Salazzle - Will-O-Wisp - TM38
  (758, 75800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Salazzle - Facade - TM39
  (758, 75800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Salazzle - Swift - TM40
  (758, 75800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Salazzle - Helping Hand - TM41
  (758, 75800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Salazzle - Fake Tears - TM47
  (758, 75800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Salazzle - Payback - TM57
  (758, 75800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Salazzle - Fling - TM59
  (758, 75800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Salazzle - Shadow Claw - TM65
  (758, 75800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Salazzle - Cross Poison - TM73
  (758, 75800, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 38),
  -- Salazzle - Venoshock - TM74
  (758, 75800, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 39),
  -- Salazzle - Round - TM76
  (758, 75800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Salazzle - Acrobatics - TM78
  (758, 75800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 41),
  -- Salazzle - Breaking Swipe - TM99
  (758, 75800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 42),
  -- Salazzle - Flamethrower - TR02
  (758, 75800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Salazzle - Fire Blast - TR15
  (758, 75800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Salazzle - Leech Life - TR18
  (758, 75800, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 45),
  -- Salazzle - Substitute - TR20
  (758, 75800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Salazzle - Sludge Bomb - TR22
  (758, 75800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Salazzle - Endure - TR26
  (758, 75800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Salazzle - Sleep Talk - TR27
  (758, 75800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Salazzle - Encore - TR30
  (758, 75800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 50),
  -- Salazzle - Iron Tail - TR31
  (758, 75800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Salazzle - Heat Wave - TR36
  (758, 75800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Salazzle - Taunt - TR37
  (758, 75800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Salazzle - Overheat - TR43
  (758, 75800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 54),
  -- Salazzle - Dragon Claw - TR47
  (758, 75800, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 55),
  -- Salazzle - Dragon Dance - TR51
  (758, 75800, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 56),
  -- Salazzle - Flare Blitz - TR55
  (758, 75800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 57),
  -- Salazzle - Poison Jab - TR57
  (758, 75800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Salazzle - Dragon Pulse - TR62
  (758, 75800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 59),
  -- Salazzle - Nasty Plot - TR68
  (758, 75800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 60),
  -- Salazzle - Gunk Shot - TR73
  (758, 75800, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 61),
  -- Salazzle - Sludge Wave - TR78
  (758, 75800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 62),
  -- Salazzle - Foul Play - TR81
  (758, 75800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 63),
  -- Salazzle - Venom Drench - TR91
  (758, 75800, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 64),
  -- Stufful - Tackle - Level 1
  (759, 75900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stufful - Leer - Level 1
  (759, 75900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stufful - Baby-Doll Eyes - Level 4
  (759, 75900, 608, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Stufful - Payback - Level 8
  (759, 75900, 371, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Stufful - Brutal Swing - Level 12
  (759, 75900, 693, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Stufful - Endure - Level 16
  (759, 75900, 203, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Stufful - Strength - Level 20
  (759, 75900, 70, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Stufful - Take Down - Level 24
  (759, 75900, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Stufful - Flail - Level 28
  (759, 75900, 175, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Stufful - Hammer Arm - Level 32
  (759, 75900, 359, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Stufful - Thrash - Level 36
  (759, 75900, 37, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Stufful - Pain Split - Level 40
  (759, 75900, 220, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Stufful - Double-Edge - Level 44
  (759, 75900, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Stufful - Superpower - Level 48
  (759, 75900, 276, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Stufful - Mega Punch - TM00
  (759, 75900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Stufful - Mega Kick - TM01
  (759, 75900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Stufful - Ice Punch - TM04
  (759, 75900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Stufful - Thunder Punch - TM05
  (759, 75900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Stufful - Rest - TM21
  (759, 75900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Stufful - Rock Slide - TM22
  (759, 75900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Stufful - Snore - TM24
  (759, 75900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Stufful - Protect - TM25
  (759, 75900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Stufful - Charm - TM29
  (759, 75900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 23),
  -- Stufful - Attract - TM31
  (759, 75900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Stufful - Facade - TM39
  (759, 75900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Stufful - Brick Break - TM43
  (759, 75900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Stufful - Rock Tomb - TM48
  (759, 75900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Stufful - Payback - TM57
  (759, 75900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Stufful - Fling - TM59
  (759, 75900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Stufful - Low Sweep - TM75
  (759, 75900, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 30),
  -- Stufful - Round - TM76
  (759, 75900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Stufful - Bulldoze - TM81
  (759, 75900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Stufful - Brutal Swing - TM97
  (759, 75900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 33),
  -- Stufful - Stomping Tantrum - TM98
  (759, 75900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 34),
  -- Stufful - Swords Dance - TR00
  (759, 75900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Stufful - Earthquake - TR10
  (759, 75900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 36),
  -- Stufful - Substitute - TR20
  (759, 75900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Stufful - Endure - TR26
  (759, 75900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Stufful - Sleep Talk - TR27
  (759, 75900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Stufful - Taunt - TR37
  (759, 75900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 40),
  -- Stufful - Superpower - TR39
  (759, 75900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 41),
  -- Stufful - Bulk Up - TR48
  (759, 75900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 42),
  -- Stufful - Focus Blast - TR64
  (759, 75900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 43),
  -- Stufful - Zen Headbutt - TR69
  (759, 75900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 44),
  -- Stufful - Iron Head - TR74
  (759, 75900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 45),
  -- Stufful - Work Up - TR85
  (759, 75900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 46),
  -- Stufful - Stomp - Egg
  (759, 75900, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Stufful - Defense Curl - Egg
  (759, 75900, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Stufful - Rollout - Egg
  (759, 75900, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stufful - Force Palm - Egg
  (759, 75900, 395, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bewear - Bind - Level 1
  (760, 76000, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bewear - Tackle - Level 1
  (760, 76000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bewear - Leer - Level 1
  (760, 76000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bewear - Payback - Level 1
  (760, 76000, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bewear - Baby-Doll Eyes - Level 1
  (760, 76000, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bewear - Brutal Swing - Level 12
  (760, 76000, 693, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bewear - Endure - Level 16
  (760, 76000, 203, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Bewear - Strength - Level 20
  (760, 76000, 70, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Bewear - Take Down - Level 24
  (760, 76000, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Bewear - Flail - Level 30
  (760, 76000, 175, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Bewear - Hammer Arm - Level 36
  (760, 76000, 359, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bewear - Thrash - Level 42
  (760, 76000, 37, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Bewear - Pain Split - Level 48
  (760, 76000, 220, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Bewear - Double-Edge - Level 54
  (760, 76000, 38, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Bewear - Superpower - Level 60
  (760, 76000, 276, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Bewear - Bind - Evolution
  (760, 76000, 20, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Bewear - Mega Punch - TM00
  (760, 76000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Bewear - Mega Kick - TM01
  (760, 76000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Bewear - Ice Punch - TM04
  (760, 76000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Bewear - Thunder Punch - TM05
  (760, 76000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Bewear - Hyper Beam - TM08
  (760, 76000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Bewear - Giga Impact - TM09
  (760, 76000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Bewear - Rest - TM21
  (760, 76000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Bewear - Rock Slide - TM22
  (760, 76000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Bewear - Snore - TM24
  (760, 76000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Bewear - Protect - TM25
  (760, 76000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Bewear - Charm - TM29
  (760, 76000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Bewear - Attract - TM31
  (760, 76000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Bewear - Facade - TM39
  (760, 76000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Bewear - Revenge - TM42
  (760, 76000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Bewear - Brick Break - TM43
  (760, 76000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Bewear - Rock Tomb - TM48
  (760, 76000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Bewear - Payback - TM57
  (760, 76000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Bewear - Fling - TM59
  (760, 76000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Bewear - Drain Punch - TM63
  (760, 76000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 35),
  -- Bewear - Shadow Claw - TM65
  (760, 76000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Bewear - Low Sweep - TM75
  (760, 76000, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Bewear - Round - TM76
  (760, 76000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Bewear - Bulldoze - TM81
  (760, 76000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Bewear - Brutal Swing - TM97
  (760, 76000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Bewear - Stomping Tantrum - TM98
  (760, 76000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Bewear - Swords Dance - TR00
  (760, 76000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Bewear - Body Slam - TR01
  (760, 76000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Bewear - Low Kick - TR07
  (760, 76000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Bewear - Earthquake - TR10
  (760, 76000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Bewear - Substitute - TR20
  (760, 76000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Bewear - Reversal - TR21
  (760, 76000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 47),
  -- Bewear - Endure - TR26
  (760, 76000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Bewear - Sleep Talk - TR27
  (760, 76000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Bewear - Taunt - TR37
  (760, 76000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Bewear - Superpower - TR39
  (760, 76000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Bewear - Dragon Claw - TR47
  (760, 76000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 52),
  -- Bewear - Bulk Up - TR48
  (760, 76000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Bewear - Close Combat - TR53
  (760, 76000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 54),
  -- Bewear - Focus Blast - TR64
  (760, 76000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Bewear - Zen Headbutt - TR69
  (760, 76000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 56),
  -- Bewear - Iron Head - TR74
  (760, 76000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Bewear - Work Up - TR85
  (760, 76000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Bewear - Darkest Lariat - TR93
  (760, 76000, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 59),
  -- Bewear - High Horsepower - TR94
  (760, 76000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 60),
  -- Bewear - Body Press - TR99
  (760, 76000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 61);

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
  -- Dartrix - Double Team - Egg
  (723, 72300, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dartrix - Confuse Ray - Egg
  (723, 72300, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dartrix - Knock Off - Egg
  (723, 72300, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dartrix - Defog - Egg
  (723, 72300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Decidueye - Double Team - Egg
  (724, 72400, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Decidueye - Confuse Ray - Egg
  (724, 72400, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Decidueye - Knock Off - Egg
  (724, 72400, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Decidueye - Defog - Egg
  (724, 72400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Torracat - Fake Out - Egg
  (726, 72600, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torracat - Parting Shot - Egg
  (726, 72600, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torracat - Power Trip - Egg
  (726, 72600, 681, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Incineroar - Fake Out - Egg
  (727, 72700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Incineroar - Parting Shot - Egg
  (727, 72700, 575, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Incineroar - Power Trip - Egg
  (727, 72700, 681, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Brionne - Perish Song - Egg
  (729, 72900, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Brionne - Aqua Ring - Egg
  (729, 72900, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Brionne - Life Dew - Egg
  (729, 72900, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Primarina - Perish Song - Egg
  (730, 73000, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Primarina - Aqua Ring - Egg
  (730, 73000, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Primarina - Life Dew - Egg
  (730, 73000, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Charjabug - Harden - Egg
  (737, 73700, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Charjabug - Discharge - Egg
  (737, 73700, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vikavolt - Harden - Egg
  (738, 73800, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vikavolt - Discharge - Egg
  (738, 73800, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ribombee - Sticky Web - Egg
  (743, 74300, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ribombee - Moonblast - Egg
  (743, 74300, 585, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ribombee - Aromatic Mist - Egg
  (743, 74300, 597, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Toxapex - Haze - Egg
  (748, 74800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Toxapex - Stockpile - Egg
  (748, 74800, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Toxapex - Spit Up - Egg
  (748, 74800, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Toxapex - Swallow - Egg
  (748, 74800, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Toxapex - Infestation - Egg
  (748, 74800, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudsdale - Double-Edge - Egg
  (750, 75000, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudsdale - Roar - Egg
  (750, 75000, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudsdale - Fissure - Egg
  (750, 75000, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudsdale - Smack Down - Egg
  (750, 75000, 479, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Araquanid - Stockpile - Egg
  (752, 75200, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Araquanid - Spit Up - Egg
  (752, 75200, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Araquanid - Power Split - Egg
  (752, 75200, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Araquanid - Sticky Web - Egg
  (752, 75200, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lurantis - Aromatherapy - Egg
  (754, 75400, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lurantis - Worry Seed - Egg
  (754, 75400, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lurantis - Defog - Egg
  (754, 75400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shiinotic - Leech Seed - Egg
  (756, 75600, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shiinotic - Growth - Egg
  (756, 75600, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shiinotic - Poison Powder - Egg
  (756, 75600, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shiinotic - Stun Spore - Egg
  (756, 75600, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Salazzle - Sand Attack - Egg
  (758, 75800, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Salazzle - Mud-Slap - Egg
  (758, 75800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Salazzle - Fake Out - Egg
  (758, 75800, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Salazzle - Belch - Egg
  (758, 75800, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Bewear - Stomp - Egg
  (760, 76000, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Bewear - Defense Curl - Egg
  (760, 76000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bewear - Rollout - Egg
  (760, 76000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bewear - Force Palm - Egg
  (760, 76000, 395, 18, NULL, 5, NULL, NULL, NULL, NULL, 65);
