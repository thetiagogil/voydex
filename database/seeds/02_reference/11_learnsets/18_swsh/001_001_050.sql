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
-- Sword / Shield learnsets for default forms, species 001-050.
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
  -- Bulbasaur - Tackle - Level 1
  (1, 100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 1
  (1, 100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bulbasaur - Vine Whip - Level 3
  (1, 100, 22, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bulbasaur - Growth - Level 6
  (1, 100, 74, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bulbasaur - Leech Seed - Level 9
  (1, 100, 73, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bulbasaur - Razor Leaf - Level 12
  (1, 100, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Bulbasaur - Seed Bomb - Level 18
  (1, 100, 402, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Bulbasaur - Take Down - Level 21
  (1, 100, 36, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Bulbasaur - Sweet Scent - Level 24
  (1, 100, 230, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Bulbasaur - Synthesis - Level 27
  (1, 100, 235, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Bulbasaur - Worry Seed - Level 30
  (1, 100, 388, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Bulbasaur - Double-Edge - Level 33
  (1, 100, 38, 18, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Bulbasaur - Solar Beam - Level 36
  (1, 100, 76, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Bulbasaur - Magical Leaf - TM10
  (1, 100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 16),
  -- Bulbasaur - Solar Beam - TM11
  (1, 100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Bulbasaur - Light Screen - TM17
  (1, 100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Bulbasaur - Safeguard - TM19
  (1, 100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Bulbasaur - Rest - TM21
  (1, 100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Bulbasaur - Snore - TM24
  (1, 100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Bulbasaur - Protect - TM25
  (1, 100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Bulbasaur - Giga Drain - TM28
  (1, 100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Bulbasaur - Charm - TM29
  (1, 100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Bulbasaur - Attract - TM31
  (1, 100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Bulbasaur - Sunny Day - TM34
  (1, 100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Bulbasaur - Facade - TM39
  (1, 100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Bulbasaur - Helping Hand - TM41
  (1, 100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Bulbasaur - Weather Ball - TM46
  (1, 100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Bulbasaur - Bullet Seed - TM50
  (1, 100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Bulbasaur - Venoshock - TM74
  (1, 100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Bulbasaur - Round - TM76
  (1, 100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Bulbasaur - Grassy Terrain - TM88
  (1, 100, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 33),
  -- Bulbasaur - False Swipe - TM94
  (1, 100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Bulbasaur - Swords Dance - TR00
  (1, 100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Bulbasaur - Body Slam - TR01
  (1, 100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Bulbasaur - Amnesia - TR17
  (1, 100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Bulbasaur - Substitute - TR20
  (1, 100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Bulbasaur - Sludge Bomb - TR22
  (1, 100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Bulbasaur - Endure - TR26
  (1, 100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Bulbasaur - Sleep Talk - TR27
  (1, 100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Bulbasaur - Seed Bomb - TR59
  (1, 100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 42),
  -- Bulbasaur - Energy Ball - TR65
  (1, 100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Bulbasaur - Leaf Storm - TR71
  (1, 100, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 44),
  -- Bulbasaur - Power Whip - TR72
  (1, 100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 45),
  -- Bulbasaur - Grass Knot - TR77
  (1, 100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 46),
  -- Bulbasaur - Work Up - TR85
  (1, 100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Bulbasaur - Petal Dance - Egg
  (1, 100, 80, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bulbasaur - Toxic - Egg
  (1, 100, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bulbasaur - Skull Bash - Egg
  (1, 100, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bulbasaur - Curse - Egg
  (1, 100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bulbasaur - Nature Power - Egg
  (1, 100, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bulbasaur - Ingrain - Egg
  (1, 100, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bulbasaur - Grass Pledge - Tutor
  (1, 100, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Ivysaur - Vine Whip - Level 1
  (2, 200, 22, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growth - Level 1
  (2, 200, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 9
  (2, 200, 73, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ivysaur - Razor Leaf - Level 12
  (2, 200, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Seed Bomb - Level 20
  (2, 200, 402, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ivysaur - Take Down - Level 25
  (2, 200, 36, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ivysaur - Sweet Scent - Level 30
  (2, 200, 230, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ivysaur - Synthesis - Level 35
  (2, 200, 235, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Ivysaur - Worry Seed - Level 40
  (2, 200, 388, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Ivysaur - Double-Edge - Level 45
  (2, 200, 38, 18, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Ivysaur - Solar Beam - Level 50
  (2, 200, 76, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Ivysaur - Magical Leaf - TM10
  (2, 200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 16),
  -- Ivysaur - Solar Beam - TM11
  (2, 200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Ivysaur - Light Screen - TM17
  (2, 200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Ivysaur - Safeguard - TM19
  (2, 200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Ivysaur - Rest - TM21
  (2, 200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Ivysaur - Snore - TM24
  (2, 200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Ivysaur - Protect - TM25
  (2, 200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Ivysaur - Giga Drain - TM28
  (2, 200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Ivysaur - Charm - TM29
  (2, 200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Ivysaur - Attract - TM31
  (2, 200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Ivysaur - Sunny Day - TM34
  (2, 200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Ivysaur - Facade - TM39
  (2, 200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Ivysaur - Helping Hand - TM41
  (2, 200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Ivysaur - Weather Ball - TM46
  (2, 200, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Ivysaur - Bullet Seed - TM50
  (2, 200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Ivysaur - Venoshock - TM74
  (2, 200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Ivysaur - Round - TM76
  (2, 200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Ivysaur - Grassy Terrain - TM88
  (2, 200, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 33),
  -- Ivysaur - False Swipe - TM94
  (2, 200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Ivysaur - Swords Dance - TR00
  (2, 200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Ivysaur - Body Slam - TR01
  (2, 200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Ivysaur - Amnesia - TR17
  (2, 200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Ivysaur - Substitute - TR20
  (2, 200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Ivysaur - Sludge Bomb - TR22
  (2, 200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Ivysaur - Endure - TR26
  (2, 200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Ivysaur - Sleep Talk - TR27
  (2, 200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Ivysaur - Seed Bomb - TR59
  (2, 200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 42),
  -- Ivysaur - Energy Ball - TR65
  (2, 200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Ivysaur - Leaf Storm - TR71
  (2, 200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 44),
  -- Ivysaur - Power Whip - TR72
  (2, 200, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 45),
  -- Ivysaur - Grass Knot - TR77
  (2, 200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 46),
  -- Ivysaur - Work Up - TR85
  (2, 200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Ivysaur - Grass Pledge - Tutor
  (2, 200, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 48),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Growth - Level 1
  (3, 300, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Petal Dance - Level 1
  (3, 300, 80, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venusaur - Petal Blizzard - Level 1
  (3, 300, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Venusaur - Leech Seed - Level 9
  (3, 300, 73, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Venusaur - Razor Leaf - Level 12
  (3, 300, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Venusaur - Seed Bomb - Level 20
  (3, 300, 402, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Venusaur - Take Down - Level 25
  (3, 300, 36, 18, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Venusaur - Sweet Scent - Level 30
  (3, 300, 230, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Venusaur - Synthesis - Level 37
  (3, 300, 235, 18, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Venusaur - Worry Seed - Level 44
  (3, 300, 388, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Venusaur - Double-Edge - Level 51
  (3, 300, 38, 18, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Venusaur - Solar Beam - Level 58
  (3, 300, 76, 18, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Venusaur - Petal Blizzard - Evolution
  (3, 300, 572, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Venusaur - Hyper Beam - TM08
  (3, 300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Venusaur - Giga Impact - TM09
  (3, 300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Venusaur - Magical Leaf - TM10
  (3, 300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 21),
  -- Venusaur - Solar Beam - TM11
  (3, 300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Venusaur - Light Screen - TM17
  (3, 300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Venusaur - Safeguard - TM19
  (3, 300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Venusaur - Rest - TM21
  (3, 300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Venusaur - Snore - TM24
  (3, 300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Venusaur - Protect - TM25
  (3, 300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Venusaur - Giga Drain - TM28
  (3, 300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Venusaur - Charm - TM29
  (3, 300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 29),
  -- Venusaur - Attract - TM31
  (3, 300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Venusaur - Sunny Day - TM34
  (3, 300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Venusaur - Facade - TM39
  (3, 300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Venusaur - Helping Hand - TM41
  (3, 300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Venusaur - Weather Ball - TM46
  (3, 300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Venusaur - Bullet Seed - TM50
  (3, 300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Venusaur - Venoshock - TM74
  (3, 300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 36),
  -- Venusaur - Round - TM76
  (3, 300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Venusaur - Bulldoze - TM81
  (3, 300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Venusaur - Grassy Terrain - TM88
  (3, 300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 39),
  -- Venusaur - False Swipe - TM94
  (3, 300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 40),
  -- Venusaur - Stomping Tantrum - TM98
  (3, 300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Venusaur - Swords Dance - TR00
  (3, 300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Venusaur - Body Slam - TR01
  (3, 300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Venusaur - Earthquake - TR10
  (3, 300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Venusaur - Amnesia - TR17
  (3, 300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 45),
  -- Venusaur - Substitute - TR20
  (3, 300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Venusaur - Sludge Bomb - TR22
  (3, 300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Venusaur - Outrage - TR24
  (3, 300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Venusaur - Endure - TR26
  (3, 300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Venusaur - Sleep Talk - TR27
  (3, 300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Venusaur - Seed Bomb - TR59
  (3, 300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 51),
  -- Venusaur - Energy Ball - TR65
  (3, 300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 52),
  -- Venusaur - Earth Power - TR67
  (3, 300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Venusaur - Leaf Storm - TR71
  (3, 300, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 54),
  -- Venusaur - Power Whip - TR72
  (3, 300, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 55),
  -- Venusaur - Grass Knot - TR77
  (3, 300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Venusaur - Work Up - TR85
  (3, 300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Venusaur - Frenzy Plant - Tutor
  (3, 300, 338, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Venusaur - Grass Pledge - Tutor
  (3, 300, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 4
  (4, 400, 52, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 8
  (4, 400, 108, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Breath - Level 12
  (4, 400, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmander - Fire Fang - Level 17
  (4, 400, 424, 18, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmander - Slash - Level 20
  (4, 400, 163, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charmander - Flamethrower - Level 24
  (4, 400, 53, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charmander - Scary Face - Level 28
  (4, 400, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 32
  (4, 400, 83, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Charmander - Inferno - Level 36
  (4, 400, 517, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Charmander - Flare Blitz - Level 40
  (4, 400, 394, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Charmander - Mega Punch - TM00
  (4, 400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Charmander - Mega Kick - TM01
  (4, 400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Charmander - Fire Punch - TM03
  (4, 400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Charmander - Thunder Punch - TM05
  (4, 400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Charmander - Fire Spin - TM13
  (4, 400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Charmander - Dig - TM15
  (4, 400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Charmander - Rest - TM21
  (4, 400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Charmander - Rock Slide - TM22
  (4, 400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Charmander - Snore - TM24
  (4, 400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Charmander - Protect - TM25
  (4, 400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Charmander - Scary Face - TM26
  (4, 400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Charmander - Attract - TM31
  (4, 400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Charmander - Sunny Day - TM34
  (4, 400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Charmander - Beat Up - TM37
  (4, 400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 26),
  -- Charmander - Will-O-Wisp - TM38
  (4, 400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 27),
  -- Charmander - Facade - TM39
  (4, 400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Charmander - Swift - TM40
  (4, 400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Charmander - Helping Hand - TM41
  (4, 400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Charmander - Brick Break - TM43
  (4, 400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Charmander - Weather Ball - TM46
  (4, 400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Charmander - Rock Tomb - TM48
  (4, 400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Charmander - Fling - TM59
  (4, 400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Charmander - Shadow Claw - TM65
  (4, 400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Charmander - Fire Fang - TM68
  (4, 400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 36),
  -- Charmander - Round - TM76
  (4, 400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Charmander - Acrobatics - TM78
  (4, 400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Charmander - False Swipe - TM94
  (4, 400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 39),
  -- Charmander - Swords Dance - TR00
  (4, 400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Charmander - Body Slam - TR01
  (4, 400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Charmander - Flamethrower - TR02
  (4, 400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 42),
  -- Charmander - Fire Blast - TR15
  (4, 400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Charmander - Substitute - TR20
  (4, 400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Charmander - Outrage - TR24
  (4, 400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Charmander - Endure - TR26
  (4, 400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Charmander - Sleep Talk - TR27
  (4, 400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Charmander - Iron Tail - TR31
  (4, 400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Charmander - Crunch - TR32
  (4, 400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Charmander - Heat Wave - TR36
  (4, 400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Charmander - Overheat - TR43
  (4, 400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Charmander - Dragon Claw - TR47
  (4, 400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 52),
  -- Charmander - Dragon Dance - TR51
  (4, 400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 53),
  -- Charmander - Flare Blitz - TR55
  (4, 400, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 54),
  -- Charmander - Dragon Pulse - TR62
  (4, 400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Charmander - Work Up - TR85
  (4, 400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Charmander - Wing Attack - Egg
  (4, 400, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Charmander - Bite - Egg
  (4, 400, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Charmander - Counter - Egg
  (4, 400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Charmander - Belly Drum - Egg
  (4, 400, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Charmander - Metal Claw - Egg
  (4, 400, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Charmander - Ancient Power - Egg
  (4, 400, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Charmander - Dragon Rush - Egg
  (4, 400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Charmander - Dragon Tail - Egg
  (4, 400, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Charmander - Fire Pledge - Tutor
  (4, 400, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Smokescreen - Level 1
  (5, 500, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charmeleon - Dragon Breath - Level 12
  (5, 500, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmeleon - Fire Fang - Level 19
  (5, 500, 424, 18, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Charmeleon - Slash - Level 24
  (5, 500, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 30
  (5, 500, 53, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Charmeleon - Scary Face - Level 37
  (5, 500, 184, 18, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Charmeleon - Fire Spin - Level 42
  (5, 500, 83, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Charmeleon - Inferno - Level 48
  (5, 500, 517, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Charmeleon - Flare Blitz - Level 54
  (5, 500, 394, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Charmeleon - Mega Punch - TM00
  (5, 500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Charmeleon - Mega Kick - TM01
  (5, 500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Charmeleon - Fire Punch - TM03
  (5, 500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Charmeleon - Thunder Punch - TM05
  (5, 500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Charmeleon - Fire Spin - TM13
  (5, 500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Charmeleon - Dig - TM15
  (5, 500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Charmeleon - Rest - TM21
  (5, 500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Charmeleon - Rock Slide - TM22
  (5, 500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Charmeleon - Snore - TM24
  (5, 500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Charmeleon - Protect - TM25
  (5, 500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Charmeleon - Scary Face - TM26
  (5, 500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Charmeleon - Attract - TM31
  (5, 500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Charmeleon - Sunny Day - TM34
  (5, 500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Charmeleon - Beat Up - TM37
  (5, 500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 26),
  -- Charmeleon - Will-O-Wisp - TM38
  (5, 500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 27),
  -- Charmeleon - Facade - TM39
  (5, 500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Charmeleon - Swift - TM40
  (5, 500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Charmeleon - Helping Hand - TM41
  (5, 500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Charmeleon - Brick Break - TM43
  (5, 500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Charmeleon - Weather Ball - TM46
  (5, 500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Charmeleon - Rock Tomb - TM48
  (5, 500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Charmeleon - Fling - TM59
  (5, 500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Charmeleon - Shadow Claw - TM65
  (5, 500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Charmeleon - Fire Fang - TM68
  (5, 500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 36),
  -- Charmeleon - Round - TM76
  (5, 500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Charmeleon - Acrobatics - TM78
  (5, 500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Charmeleon - False Swipe - TM94
  (5, 500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 39),
  -- Charmeleon - Swords Dance - TR00
  (5, 500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Charmeleon - Body Slam - TR01
  (5, 500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Charmeleon - Flamethrower - TR02
  (5, 500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 42),
  -- Charmeleon - Fire Blast - TR15
  (5, 500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Charmeleon - Substitute - TR20
  (5, 500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Charmeleon - Outrage - TR24
  (5, 500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Charmeleon - Endure - TR26
  (5, 500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Charmeleon - Sleep Talk - TR27
  (5, 500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Charmeleon - Iron Tail - TR31
  (5, 500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Charmeleon - Crunch - TR32
  (5, 500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Charmeleon - Heat Wave - TR36
  (5, 500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Charmeleon - Overheat - TR43
  (5, 500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Charmeleon - Dragon Claw - TR47
  (5, 500, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 52),
  -- Charmeleon - Dragon Dance - TR51
  (5, 500, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 53),
  -- Charmeleon - Flare Blitz - TR55
  (5, 500, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 54),
  -- Charmeleon - Dragon Pulse - TR62
  (5, 500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Charmeleon - Work Up - TR85
  (5, 500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Charmeleon - Fire Pledge - Tutor
  (5, 500, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Heat Wave - Level 1
  (6, 600, 257, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charizard - Dragon Claw - Level 1
  (6, 600, 337, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Charizard - Air Slash - Level 1
  (6, 600, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Charizard - Dragon Breath - Level 12
  (6, 600, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Charizard - Fire Fang - Level 19
  (6, 600, 424, 18, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Charizard - Slash - Level 24
  (6, 600, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Charizard - Flamethrower - Level 30
  (6, 600, 53, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Charizard - Scary Face - Level 39
  (6, 600, 184, 18, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Charizard - Fire Spin - Level 46
  (6, 600, 83, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Charizard - Inferno - Level 54
  (6, 600, 517, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Charizard - Flare Blitz - Level 62
  (6, 600, 394, 18, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Charizard - Air Slash - Evolution
  (6, 600, 403, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Charizard - Mega Punch - TM00
  (6, 600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Charizard - Mega Kick - TM01
  (6, 600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Charizard - Fire Punch - TM03
  (6, 600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Charizard - Thunder Punch - TM05
  (6, 600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Charizard - Fly - TM06
  (6, 600, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 21),
  -- Charizard - Hyper Beam - TM08
  (6, 600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Charizard - Giga Impact - TM09
  (6, 600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Charizard - Solar Beam - TM11
  (6, 600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Charizard - Fire Spin - TM13
  (6, 600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 25),
  -- Charizard - Dig - TM15
  (6, 600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Charizard - Rest - TM21
  (6, 600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Charizard - Rock Slide - TM22
  (6, 600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Charizard - Snore - TM24
  (6, 600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Charizard - Protect - TM25
  (6, 600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Charizard - Scary Face - TM26
  (6, 600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Charizard - Steel Wing - TM30
  (6, 600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 32),
  -- Charizard - Attract - TM31
  (6, 600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Charizard - Sunny Day - TM34
  (6, 600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Charizard - Beat Up - TM37
  (6, 600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 35),
  -- Charizard - Will-O-Wisp - TM38
  (6, 600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 36),
  -- Charizard - Facade - TM39
  (6, 600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Charizard - Swift - TM40
  (6, 600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Charizard - Helping Hand - TM41
  (6, 600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Charizard - Brick Break - TM43
  (6, 600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Charizard - Weather Ball - TM46
  (6, 600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 41),
  -- Charizard - Rock Tomb - TM48
  (6, 600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Charizard - Fling - TM59
  (6, 600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Charizard - Shadow Claw - TM65
  (6, 600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Charizard - Fire Fang - TM68
  (6, 600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 45),
  -- Charizard - Round - TM76
  (6, 600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Charizard - Acrobatics - TM78
  (6, 600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 47),
  -- Charizard - Bulldoze - TM81
  (6, 600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 48),
  -- Charizard - Mystical Fire - TM92
  (6, 600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 49),
  -- Charizard - False Swipe - TM94
  (6, 600, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 50),
  -- Charizard - Air Slash - TM95
  (6, 600, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 51),
  -- Charizard - Brutal Swing - TM97
  (6, 600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 52),
  -- Charizard - Breaking Swipe - TM99
  (6, 600, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 53),
  -- Charizard - Swords Dance - TR00
  (6, 600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 54),
  -- Charizard - Body Slam - TR01
  (6, 600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 55),
  -- Charizard - Flamethrower - TR02
  (6, 600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 56),
  -- Charizard - Earthquake - TR10
  (6, 600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 57),
  -- Charizard - Fire Blast - TR15
  (6, 600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 58),
  -- Charizard - Substitute - TR20
  (6, 600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Charizard - Outrage - TR24
  (6, 600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 60),
  -- Charizard - Endure - TR26
  (6, 600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 61),
  -- Charizard - Sleep Talk - TR27
  (6, 600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 62),
  -- Charizard - Iron Tail - TR31
  (6, 600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 63),
  -- Charizard - Crunch - TR32
  (6, 600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 64),
  -- Charizard - Heat Wave - TR36
  (6, 600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 65),
  -- Charizard - Blaze Kick - TR41
  (6, 600, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 66),
  -- Charizard - Overheat - TR43
  (6, 600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 67),
  -- Charizard - Dragon Claw - TR47
  (6, 600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 68),
  -- Charizard - Dragon Dance - TR51
  (6, 600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 69),
  -- Charizard - Flare Blitz - TR55
  (6, 600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 70),
  -- Charizard - Dragon Pulse - TR62
  (6, 600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 71),
  -- Charizard - Focus Blast - TR64
  (6, 600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 72),
  -- Charizard - Work Up - TR85
  (6, 600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 73),
  -- Charizard - Heat Crash - TR88
  (6, 600, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 74),
  -- Charizard - Hurricane - TR89
  (6, 600, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 75),
  -- Charizard - Blast Burn - Tutor
  (6, 600, 307, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 76),
  -- Charizard - Fire Pledge - Tutor
  (6, 600, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 77),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 1
  (7, 700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squirtle - Water Gun - Level 3
  (7, 700, 55, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 6
  (7, 700, 110, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Squirtle - Rapid Spin - Level 9
  (7, 700, 229, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 12
  (7, 700, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Squirtle - Water Pulse - Level 15
  (7, 700, 352, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 18
  (7, 700, 182, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Squirtle - Rain Dance - Level 21
  (7, 700, 240, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Squirtle - Aqua Tail - Level 24
  (7, 700, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Squirtle - Shell Smash - Level 27
  (7, 700, 504, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Squirtle - Iron Defense - Level 30
  (7, 700, 334, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Squirtle - Hydro Pump - Level 33
  (7, 700, 56, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Squirtle - Skull Bash - Level 36
  (7, 700, 130, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Squirtle - Mega Punch - TM00
  (7, 700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Squirtle - Mega Kick - TM01
  (7, 700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Squirtle - Ice Punch - TM04
  (7, 700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Squirtle - Dig - TM15
  (7, 700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Squirtle - Rest - TM21
  (7, 700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Squirtle - Snore - TM24
  (7, 700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Squirtle - Protect - TM25
  (7, 700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Squirtle - Icy Wind - TM27
  (7, 700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Squirtle - Attract - TM31
  (7, 700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Squirtle - Rain Dance - TM33
  (7, 700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Squirtle - Hail - TM35
  (7, 700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Squirtle - Whirlpool - TM36
  (7, 700, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Squirtle - Facade - TM39
  (7, 700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Squirtle - Helping Hand - TM41
  (7, 700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Squirtle - Brick Break - TM43
  (7, 700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Squirtle - Dive - TM45
  (7, 700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Squirtle - Weather Ball - TM46
  (7, 700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Squirtle - Rock Tomb - TM48
  (7, 700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Squirtle - Brine - TM55
  (7, 700, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Squirtle - Fling - TM59
  (7, 700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Squirtle - Round - TM76
  (7, 700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Squirtle - False Swipe - TM94
  (7, 700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Squirtle - Body Slam - TR01
  (7, 700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Squirtle - Hydro Pump - TR03
  (7, 700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Squirtle - Surf - TR04
  (7, 700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Squirtle - Ice Beam - TR05
  (7, 700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Squirtle - Blizzard - TR06
  (7, 700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Squirtle - Waterfall - TR16
  (7, 700, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 42),
  -- Squirtle - Substitute - TR20
  (7, 700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Squirtle - Endure - TR26
  (7, 700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Squirtle - Sleep Talk - TR27
  (7, 700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Squirtle - Iron Tail - TR31
  (7, 700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Squirtle - Muddy Water - TR45
  (7, 700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 47),
  -- Squirtle - Iron Defense - TR46
  (7, 700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Squirtle - Gyro Ball - TR52
  (7, 700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Squirtle - Aura Sphere - TR56
  (7, 700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 50),
  -- Squirtle - Dragon Pulse - TR62
  (7, 700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 51),
  -- Squirtle - Zen Headbutt - TR69
  (7, 700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Squirtle - Scald - TR84
  (7, 700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Squirtle - Work Up - TR85
  (7, 700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Squirtle - Mist - Egg
  (7, 700, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Squirtle - Haze - Egg
  (7, 700, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Squirtle - Flail - Egg
  (7, 700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Squirtle - Mirror Coat - Egg
  (7, 700, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Squirtle - Fake Out - Egg
  (7, 700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Squirtle - Yawn - Egg
  (7, 700, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Squirtle - Water Spout - Egg
  (7, 700, 323, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Squirtle - Aqua Ring - Egg
  (7, 700, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Squirtle - Aqua Jet - Egg
  (7, 700, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Squirtle - Life Dew - Egg
  (7, 700, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Squirtle - Water Pledge - Tutor
  (7, 700, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Water Gun - Level 1
  (8, 800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Withdraw - Level 1
  (8, 800, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wartortle - Rapid Spin - Level 9
  (8, 800, 229, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Wartortle - Bite - Level 12
  (8, 800, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wartortle - Water Pulse - Level 15
  (8, 800, 352, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wartortle - Protect - Level 20
  (8, 800, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wartortle - Rain Dance - Level 25
  (8, 800, 240, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wartortle - Aqua Tail - Level 30
  (8, 800, 401, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wartortle - Shell Smash - Level 35
  (8, 800, 504, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Wartortle - Iron Defense - Level 40
  (8, 800, 334, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 45
  (8, 800, 56, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Wartortle - Skull Bash - Level 50
  (8, 800, 130, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Wartortle - Mega Punch - TM00
  (8, 800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Wartortle - Mega Kick - TM01
  (8, 800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Wartortle - Ice Punch - TM04
  (8, 800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Wartortle - Dig - TM15
  (8, 800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Wartortle - Rest - TM21
  (8, 800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Wartortle - Snore - TM24
  (8, 800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Wartortle - Protect - TM25
  (8, 800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Wartortle - Icy Wind - TM27
  (8, 800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Wartortle - Attract - TM31
  (8, 800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Wartortle - Rain Dance - TM33
  (8, 800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Wartortle - Hail - TM35
  (8, 800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Wartortle - Whirlpool - TM36
  (8, 800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Wartortle - Facade - TM39
  (8, 800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Wartortle - Helping Hand - TM41
  (8, 800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Wartortle - Brick Break - TM43
  (8, 800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Wartortle - Dive - TM45
  (8, 800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Wartortle - Weather Ball - TM46
  (8, 800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Wartortle - Rock Tomb - TM48
  (8, 800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Wartortle - Brine - TM55
  (8, 800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Wartortle - Fling - TM59
  (8, 800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Wartortle - Round - TM76
  (8, 800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Wartortle - False Swipe - TM94
  (8, 800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Wartortle - Body Slam - TR01
  (8, 800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Wartortle - Hydro Pump - TR03
  (8, 800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Wartortle - Surf - TR04
  (8, 800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Wartortle - Ice Beam - TR05
  (8, 800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Wartortle - Blizzard - TR06
  (8, 800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Wartortle - Waterfall - TR16
  (8, 800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 42),
  -- Wartortle - Substitute - TR20
  (8, 800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Wartortle - Endure - TR26
  (8, 800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Wartortle - Sleep Talk - TR27
  (8, 800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Wartortle - Iron Tail - TR31
  (8, 800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Wartortle - Muddy Water - TR45
  (8, 800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 47),
  -- Wartortle - Iron Defense - TR46
  (8, 800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Wartortle - Gyro Ball - TR52
  (8, 800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Wartortle - Aura Sphere - TR56
  (8, 800, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 50),
  -- Wartortle - Dragon Pulse - TR62
  (8, 800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 51),
  -- Wartortle - Zen Headbutt - TR69
  (8, 800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Wartortle - Scald - TR84
  (8, 800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Wartortle - Work Up - TR85
  (8, 800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Wartortle - Water Pledge - Tutor
  (8, 800, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 55),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Water Gun - Level 1
  (9, 900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Flash Cannon - Level 1
  (9, 900, 430, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blastoise - Rapid Spin - Level 9
  (9, 900, 229, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Blastoise - Bite - Level 12
  (9, 900, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Blastoise - Water Pulse - Level 15
  (9, 900, 352, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Blastoise - Protect - Level 20
  (9, 900, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Blastoise - Rain Dance - Level 25
  (9, 900, 240, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Blastoise - Aqua Tail - Level 30
  (9, 900, 401, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Blastoise - Shell Smash - Level 35
  (9, 900, 504, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Blastoise - Iron Defense - Level 42
  (9, 900, 334, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Blastoise - Hydro Pump - Level 49
  (9, 900, 56, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Blastoise - Skull Bash - Level 56
  (9, 900, 130, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Blastoise - Flash Cannon - Evolution
  (9, 900, 430, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Blastoise - Mega Punch - TM00
  (9, 900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Blastoise - Mega Kick - TM01
  (9, 900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Blastoise - Ice Punch - TM04
  (9, 900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Blastoise - Hyper Beam - TM08
  (9, 900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Blastoise - Giga Impact - TM09
  (9, 900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Blastoise - Dig - TM15
  (9, 900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Blastoise - Rest - TM21
  (9, 900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Blastoise - Rock Slide - TM22
  (9, 900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Blastoise - Snore - TM24
  (9, 900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Blastoise - Protect - TM25
  (9, 900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Blastoise - Icy Wind - TM27
  (9, 900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Blastoise - Attract - TM31
  (9, 900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Blastoise - Rain Dance - TM33
  (9, 900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Blastoise - Hail - TM35
  (9, 900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Blastoise - Whirlpool - TM36
  (9, 900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Blastoise - Facade - TM39
  (9, 900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Blastoise - Helping Hand - TM41
  (9, 900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Blastoise - Brick Break - TM43
  (9, 900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Blastoise - Dive - TM45
  (9, 900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Blastoise - Weather Ball - TM46
  (9, 900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Blastoise - Rock Tomb - TM48
  (9, 900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Blastoise - Brine - TM55
  (9, 900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 38),
  -- Blastoise - Fling - TM59
  (9, 900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Blastoise - Avalanche - TM64
  (9, 900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 40),
  -- Blastoise - Round - TM76
  (9, 900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Blastoise - Bulldoze - TM81
  (9, 900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Blastoise - False Swipe - TM94
  (9, 900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 43),
  -- Blastoise - Body Slam - TR01
  (9, 900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Blastoise - Hydro Pump - TR03
  (9, 900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Blastoise - Surf - TR04
  (9, 900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Blastoise - Ice Beam - TR05
  (9, 900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Blastoise - Blizzard - TR06
  (9, 900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Blastoise - Earthquake - TR10
  (9, 900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Blastoise - Waterfall - TR16
  (9, 900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 50),
  -- Blastoise - Substitute - TR20
  (9, 900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Blastoise - Outrage - TR24
  (9, 900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 52),
  -- Blastoise - Endure - TR26
  (9, 900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Blastoise - Sleep Talk - TR27
  (9, 900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Blastoise - Iron Tail - TR31
  (9, 900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 55),
  -- Blastoise - Crunch - TR32
  (9, 900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 56),
  -- Blastoise - Muddy Water - TR45
  (9, 900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 57),
  -- Blastoise - Iron Defense - TR46
  (9, 900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 58),
  -- Blastoise - Gyro Ball - TR52
  (9, 900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 59),
  -- Blastoise - Aura Sphere - TR56
  (9, 900, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 60),
  -- Blastoise - Dark Pulse - TR58
  (9, 900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 61),
  -- Blastoise - Dragon Pulse - TR62
  (9, 900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Blastoise - Focus Blast - TR64
  (9, 900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Blastoise - Zen Headbutt - TR69
  (9, 900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 64),
  -- Blastoise - Flash Cannon - TR70
  (9, 900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Blastoise - Scald - TR84
  (9, 900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 66),
  -- Blastoise - Work Up - TR85
  (9, 900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 67),
  -- Blastoise - Liquidation - TR98
  (9, 900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 68),
  -- Blastoise - Body Press - TR99
  (9, 900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 69),
  -- Blastoise - Hydro Cannon - Tutor
  (9, 900, 308, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 70),
  -- Blastoise - Water Pledge - Tutor
  (9, 900, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 71),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Caterpie - Bug Bite - Level 9
  (10, 1000, 450, 18, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Caterpie - Electroweb - TM82
  (10, 1000, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 4),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Evolution
  (11, 1100, 106, 18, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Metapod - Electroweb - TM82
  (11, 1100, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 3),
  -- Metapod - Iron Defense - TR46
  (11, 1100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 4),
  -- Butterfree - Gust - Level 1
  (12, 1200, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Tackle - Level 1
  (12, 1200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Butterfree - String Shot - Level 1
  (12, 1200, 81, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Butterfree - Harden - Level 1
  (12, 1200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Butterfree - Bug Bite - Level 1
  (12, 1200, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Butterfree - Supersonic - Level 4
  (12, 1200, 48, 18, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Butterfree - Confusion - Level 8
  (12, 1200, 93, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Butterfree - Poison Powder - Level 12
  (12, 1200, 77, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Butterfree - Stun Spore - Level 12
  (12, 1200, 78, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Butterfree - Sleep Powder - Level 12
  (12, 1200, 79, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Butterfree - Psybeam - Level 16
  (12, 1200, 60, 18, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Butterfree - Whirlwind - Level 20
  (12, 1200, 18, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Butterfree - Air Slash - Level 24
  (12, 1200, 403, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Butterfree - Safeguard - Level 28
  (12, 1200, 219, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Butterfree - Bug Buzz - Level 32
  (12, 1200, 405, 18, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Butterfree - Tailwind - Level 36
  (12, 1200, 366, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Butterfree - Rage Powder - Level 40
  (12, 1200, 476, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Butterfree - Quiver Dance - Level 44
  (12, 1200, 483, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Butterfree - Gust - Evolution
  (12, 1200, 16, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Butterfree - Hyper Beam - TM08
  (12, 1200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Butterfree - Giga Impact - TM09
  (12, 1200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Butterfree - Solar Beam - TM11
  (12, 1200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Butterfree - Safeguard - TM19
  (12, 1200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Butterfree - Rest - TM21
  (12, 1200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Butterfree - Thief - TM23
  (12, 1200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Butterfree - Snore - TM24
  (12, 1200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Butterfree - Protect - TM25
  (12, 1200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Butterfree - Giga Drain - TM28
  (12, 1200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Butterfree - Attract - TM31
  (12, 1200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Butterfree - Rain Dance - TM33
  (12, 1200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Butterfree - Sunny Day - TM34
  (12, 1200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Butterfree - Facade - TM39
  (12, 1200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Butterfree - Swift - TM40
  (12, 1200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Butterfree - U-turn - TM56
  (12, 1200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Butterfree - Venoshock - TM74
  (12, 1200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 35),
  -- Butterfree - Round - TM76
  (12, 1200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Butterfree - Acrobatics - TM78
  (12, 1200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Butterfree - Electroweb - TM82
  (12, 1200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 38),
  -- Butterfree - Draining Kiss - TM87
  (12, 1200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 39),
  -- Butterfree - Air Slash - TM95
  (12, 1200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 40),
  -- Butterfree - Psychic - TR11
  (12, 1200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Butterfree - Substitute - TR20
  (12, 1200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Butterfree - Endure - TR26
  (12, 1200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Butterfree - Sleep Talk - TR27
  (12, 1200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Butterfree - Baton Pass - TR29
  (12, 1200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 45),
  -- Butterfree - Shadow Ball - TR33
  (12, 1200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Butterfree - Skill Swap - TR40
  (12, 1200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Butterfree - Iron Defense - TR46
  (12, 1200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Butterfree - Bug Buzz - TR61
  (12, 1200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 49),
  -- Butterfree - Energy Ball - TR65
  (12, 1200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Butterfree - Hurricane - TR89
  (12, 1200, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Butterfree - Pollen Puff - TR96
  (12, 1200, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 52),
  -- Pikachu - Tail Whip - Level 1
  (25, 2500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pikachu - Quick Attack - Level 1
  (25, 2500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pikachu - Sweet Kiss - Level 1
  (25, 2500, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pikachu - Charm - Level 1
  (25, 2500, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pikachu - Nasty Plot - Level 1
  (25, 2500, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pikachu - Play Nice - Level 1
  (25, 2500, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Pikachu - Nuzzle - Level 1
  (25, 2500, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Pikachu - Thunder Wave - Level 4
  (25, 2500, 86, 18, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Pikachu - Double Team - Level 8
  (25, 2500, 104, 18, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Pikachu - Electro Ball - Level 12
  (25, 2500, 486, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Pikachu - Feint - Level 16
  (25, 2500, 364, 18, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Pikachu - Spark - Level 20
  (25, 2500, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Pikachu - Agility - Level 24
  (25, 2500, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Pikachu - Slam - Level 28
  (25, 2500, 21, 18, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Pikachu - Discharge - Level 32
  (25, 2500, 435, 18, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Pikachu - Thunderbolt - Level 36
  (25, 2500, 85, 18, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Pikachu - Light Screen - Level 40
  (25, 2500, 113, 18, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Pikachu - Thunder - Level 44
  (25, 2500, 87, 18, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Pikachu - Mega Punch - TM00
  (25, 2500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Pikachu - Mega Kick - TM01
  (25, 2500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Pikachu - Pay Day - TM02
  (25, 2500, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 23),
  -- Pikachu - Thunder Punch - TM05
  (25, 2500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Pikachu - Thunder Wave - TM14
  (25, 2500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Pikachu - Dig - TM15
  (25, 2500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Pikachu - Light Screen - TM17
  (25, 2500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 27),
  -- Pikachu - Reflect - TM18
  (25, 2500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 28),
  -- Pikachu - Rest - TM21
  (25, 2500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Pikachu - Thief - TM23
  (25, 2500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Pikachu - Snore - TM24
  (25, 2500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Pikachu - Protect - TM25
  (25, 2500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Pikachu - Charm - TM29
  (25, 2500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 33),
  -- Pikachu - Attract - TM31
  (25, 2500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Pikachu - Rain Dance - TM33
  (25, 2500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Pikachu - Facade - TM39
  (25, 2500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Pikachu - Swift - TM40
  (25, 2500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Pikachu - Helping Hand - TM41
  (25, 2500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Pikachu - Brick Break - TM43
  (25, 2500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Pikachu - Fling - TM59
  (25, 2500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Pikachu - Round - TM76
  (25, 2500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Pikachu - Volt Switch - TM80
  (25, 2500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 42),
  -- Pikachu - Electroweb - TM82
  (25, 2500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 43),
  -- Pikachu - Draining Kiss - TM87
  (25, 2500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 44),
  -- Pikachu - Electric Terrain - TM90
  (25, 2500, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 45),
  -- Pikachu - Body Slam - TR01
  (25, 2500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Pikachu - Surf - TR04
  (25, 2500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Pikachu - Thunderbolt - TR08
  (25, 2500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 48),
  -- Pikachu - Thunder - TR09
  (25, 2500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 49),
  -- Pikachu - Agility - TR12
  (25, 2500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Pikachu - Substitute - TR20
  (25, 2500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Pikachu - Reversal - TR21
  (25, 2500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Pikachu - Endure - TR26
  (25, 2500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Pikachu - Sleep Talk - TR27
  (25, 2500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Pikachu - Encore - TR30
  (25, 2500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Pikachu - Iron Tail - TR31
  (25, 2500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Pikachu - Uproar - TR35
  (25, 2500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Pikachu - Nasty Plot - TR68
  (25, 2500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Pikachu - Grass Knot - TR77
  (25, 2500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 59),
  -- Pikachu - Electro Ball - TR80
  (25, 2500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 60),
  -- Pikachu - Wild Charge - TR86
  (25, 2500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 61),
  -- Pikachu - Play Rough - TR90
  (25, 2500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 62),
  -- Raichu - Thunder Punch - Level 1
  (26, 2600, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Slam - Level 1
  (26, 2600, 21, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Growl - Level 1
  (26, 2600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu - Thunderbolt - Level 1
  (26, 2600, 85, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu - Thunder Wave - Level 1
  (26, 2600, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu - Thunder - Level 1
  (26, 2600, 87, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Raichu - Agility - Level 1
  (26, 2600, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Raichu - Double Team - Level 1
  (26, 2600, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Raichu - Light Screen - Level 1
  (26, 2600, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Raichu - Sweet Kiss - Level 1
  (26, 2600, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Raichu - Charm - Level 1
  (26, 2600, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Raichu - Spark - Level 1
  (26, 2600, 209, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Raichu - Feint - Level 1
  (26, 2600, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Raichu - Nasty Plot - Level 1
  (26, 2600, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Raichu - Discharge - Level 1
  (26, 2600, 435, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Raichu - Electro Ball - Level 1
  (26, 2600, 486, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Raichu - Play Nice - Level 1
  (26, 2600, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Raichu - Nuzzle - Level 1
  (26, 2600, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Raichu - Thunder Punch - Evolution
  (26, 2600, 9, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Raichu - Mega Punch - TM00
  (26, 2600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Raichu - Mega Kick - TM01
  (26, 2600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Raichu - Pay Day - TM02
  (26, 2600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Raichu - Thunder Punch - TM05
  (26, 2600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Raichu - Hyper Beam - TM08
  (26, 2600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Raichu - Giga Impact - TM09
  (26, 2600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Raichu - Thunder Wave - TM14
  (26, 2600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 29),
  -- Raichu - Dig - TM15
  (26, 2600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Raichu - Light Screen - TM17
  (26, 2600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Raichu - Reflect - TM18
  (26, 2600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 32),
  -- Raichu - Safeguard - TM19
  (26, 2600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Raichu - Rest - TM21
  (26, 2600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Raichu - Thief - TM23
  (26, 2600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 35),
  -- Raichu - Snore - TM24
  (26, 2600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Raichu - Protect - TM25
  (26, 2600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Raichu - Charm - TM29
  (26, 2600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 38),
  -- Raichu - Attract - TM31
  (26, 2600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Raichu - Rain Dance - TM33
  (26, 2600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 40),
  -- Raichu - Facade - TM39
  (26, 2600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 41),
  -- Raichu - Swift - TM40
  (26, 2600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 42),
  -- Raichu - Helping Hand - TM41
  (26, 2600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 43),
  -- Raichu - Brick Break - TM43
  (26, 2600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 44),
  -- Raichu - Fling - TM59
  (26, 2600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Raichu - Speed Swap - TM62
  (26, 2600, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 46),
  -- Raichu - Round - TM76
  (26, 2600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Raichu - Volt Switch - TM80
  (26, 2600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 48),
  -- Raichu - Electroweb - TM82
  (26, 2600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 49),
  -- Raichu - Draining Kiss - TM87
  (26, 2600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 50),
  -- Raichu - Electric Terrain - TM90
  (26, 2600, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 51),
  -- Raichu - Eerie Impulse - TM93
  (26, 2600, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 52),
  -- Raichu - Brutal Swing - TM97
  (26, 2600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 53),
  -- Raichu - Body Slam - TR01
  (26, 2600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 54),
  -- Raichu - Surf - TR04
  (26, 2600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 55),
  -- Raichu - Thunderbolt - TR08
  (26, 2600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 56),
  -- Raichu - Thunder - TR09
  (26, 2600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 57),
  -- Raichu - Agility - TR12
  (26, 2600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 58),
  -- Raichu - Substitute - TR20
  (26, 2600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Raichu - Reversal - TR21
  (26, 2600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 60),
  -- Raichu - Endure - TR26
  (26, 2600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 61),
  -- Raichu - Sleep Talk - TR27
  (26, 2600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 62),
  -- Raichu - Encore - TR30
  (26, 2600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 63),
  -- Raichu - Iron Tail - TR31
  (26, 2600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 64),
  -- Raichu - Uproar - TR35
  (26, 2600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 65),
  -- Raichu - Focus Blast - TR64
  (26, 2600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Raichu - Nasty Plot - TR68
  (26, 2600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 67),
  -- Raichu - Grass Knot - TR77
  (26, 2600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 68),
  -- Raichu - Electro Ball - TR80
  (26, 2600, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 69),
  -- Raichu - Wild Charge - TR86
  (26, 2600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 70),
  -- Raichu - Play Rough - TR90
  (26, 2600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 71),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 1
  (27, 2700, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew - Poison Sting - Level 3
  (27, 2700, 40, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew - Sand Attack - Level 6
  (27, 2700, 28, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandshrew - Rollout - Level 9
  (27, 2700, 205, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandshrew - Fury Cutter - Level 12
  (27, 2700, 210, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandshrew - Rapid Spin - Level 15
  (27, 2700, 229, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandshrew - Bulldoze - Level 18
  (27, 2700, 523, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandshrew - Swift - Level 21
  (27, 2700, 129, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandshrew - Fury Swipes - Level 24
  (27, 2700, 154, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandshrew - Agility - Level 27
  (27, 2700, 97, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandshrew - Slash - Level 30
  (27, 2700, 163, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandshrew - Dig - Level 33
  (27, 2700, 91, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandshrew - Gyro Ball - Level 36
  (27, 2700, 360, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandshrew - Swords Dance - Level 39
  (27, 2700, 14, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandshrew - Sandstorm - Level 42
  (27, 2700, 201, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew - Earthquake - Level 45
  (27, 2700, 89, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sandshrew - Dig - TM15
  (27, 2700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Sandshrew - Safeguard - TM19
  (27, 2700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Sandshrew - Rest - TM21
  (27, 2700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Sandshrew - Rock Slide - TM22
  (27, 2700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Sandshrew - Thief - TM23
  (27, 2700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Sandshrew - Snore - TM24
  (27, 2700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Sandshrew - Protect - TM25
  (27, 2700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Sandshrew - Attract - TM31
  (27, 2700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Sandshrew - Sandstorm - TM32
  (27, 2700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Sandshrew - Sunny Day - TM34
  (27, 2700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Sandshrew - Facade - TM39
  (27, 2700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Sandshrew - Swift - TM40
  (27, 2700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Sandshrew - Brick Break - TM43
  (27, 2700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Sandshrew - Rock Tomb - TM48
  (27, 2700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Sandshrew - Sand Tomb - TM49
  (27, 2700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 32),
  -- Sandshrew - Mud Shot - TM53
  (27, 2700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 33),
  -- Sandshrew - Fling - TM59
  (27, 2700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Sandshrew - Shadow Claw - TM65
  (27, 2700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Sandshrew - Round - TM76
  (27, 2700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Sandshrew - Bulldoze - TM81
  (27, 2700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Sandshrew - Stomping Tantrum - TM98
  (27, 2700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Sandshrew - Swords Dance - TR00
  (27, 2700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Sandshrew - Body Slam - TR01
  (27, 2700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Sandshrew - Earthquake - TR10
  (27, 2700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Sandshrew - Agility - TR12
  (27, 2700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Sandshrew - Amnesia - TR17
  (27, 2700, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 43),
  -- Sandshrew - Leech Life - TR18
  (27, 2700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 44),
  -- Sandshrew - Substitute - TR20
  (27, 2700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Sandshrew - Endure - TR26
  (27, 2700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Sandshrew - Sleep Talk - TR27
  (27, 2700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Sandshrew - Iron Tail - TR31
  (27, 2700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Sandshrew - Gyro Ball - TR52
  (27, 2700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Sandshrew - Poison Jab - TR57
  (27, 2700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Sandshrew - X-Scissor - TR60
  (27, 2700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Sandshrew - Earth Power - TR67
  (27, 2700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Sandshrew - Stealth Rock - TR76
  (27, 2700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 53),
  -- Sandshrew - Work Up - TR85
  (27, 2700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Sandshrew - Throat Chop - TR95
  (27, 2700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 55),
  -- Sandshrew - Counter - Egg
  (27, 2700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandshrew - Flail - Egg
  (27, 2700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew - Mud-Slap - Egg
  (27, 2700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew - Metal Claw - Egg
  (27, 2700, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew - Night Slash - Egg
  (27, 2700, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandshrew - Hone Claws - Egg
  (27, 2700, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Poison Sting - Level 1
  (28, 2800, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash - Crush Claw - Level 1
  (28, 2800, 306, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash - Rollout - Level 9
  (28, 2800, 205, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sandslash - Fury Cutter - Level 12
  (28, 2800, 210, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Sandslash - Rapid Spin - Level 15
  (28, 2800, 229, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Sandslash - Bulldoze - Level 18
  (28, 2800, 523, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Sandslash - Swift - Level 21
  (28, 2800, 129, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sandslash - Fury Swipes - Level 26
  (28, 2800, 154, 18, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Sandslash - Sand Tomb - Level 31
  (28, 2800, 328, 18, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sandslash - Slash - Level 36
  (28, 2800, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Sandslash - Dig - Level 41
  (28, 2800, 91, 18, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sandslash - Gyro Ball - Level 46
  (28, 2800, 360, 18, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Sandslash - Swords Dance - Level 51
  (28, 2800, 14, 18, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Sandslash - Sandstorm - Level 56
  (28, 2800, 201, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Sandslash - Earthquake - Level 61
  (28, 2800, 89, 18, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Sandslash - Pin Missile - TM07
  (28, 2800, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 19),
  -- Sandslash - Hyper Beam - TM08
  (28, 2800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Sandslash - Giga Impact - TM09
  (28, 2800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Sandslash - Dig - TM15
  (28, 2800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Sandslash - Safeguard - TM19
  (28, 2800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Sandslash - Rest - TM21
  (28, 2800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Sandslash - Rock Slide - TM22
  (28, 2800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Sandslash - Thief - TM23
  (28, 2800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Sandslash - Snore - TM24
  (28, 2800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Sandslash - Protect - TM25
  (28, 2800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Sandslash - Attract - TM31
  (28, 2800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Sandslash - Sandstorm - TM32
  (28, 2800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Sandslash - Sunny Day - TM34
  (28, 2800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Sandslash - Facade - TM39
  (28, 2800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Sandslash - Swift - TM40
  (28, 2800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Sandslash - Brick Break - TM43
  (28, 2800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Sandslash - Rock Tomb - TM48
  (28, 2800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Sandslash - Sand Tomb - TM49
  (28, 2800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 36),
  -- Sandslash - Mud Shot - TM53
  (28, 2800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Sandslash - Fling - TM59
  (28, 2800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Sandslash - Shadow Claw - TM65
  (28, 2800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Sandslash - Round - TM76
  (28, 2800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Sandslash - Bulldoze - TM81
  (28, 2800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Sandslash - Stomping Tantrum - TM98
  (28, 2800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Sandslash - Swords Dance - TR00
  (28, 2800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Sandslash - Body Slam - TR01
  (28, 2800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Sandslash - Earthquake - TR10
  (28, 2800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Sandslash - Agility - TR12
  (28, 2800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Sandslash - Amnesia - TR17
  (28, 2800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Sandslash - Leech Life - TR18
  (28, 2800, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 48),
  -- Sandslash - Substitute - TR20
  (28, 2800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Sandslash - Spikes - TR23
  (28, 2800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 50),
  -- Sandslash - Endure - TR26
  (28, 2800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Sandslash - Sleep Talk - TR27
  (28, 2800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Sandslash - Iron Tail - TR31
  (28, 2800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Sandslash - Gyro Ball - TR52
  (28, 2800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Sandslash - Poison Jab - TR57
  (28, 2800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 55),
  -- Sandslash - X-Scissor - TR60
  (28, 2800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 56),
  -- Sandslash - Focus Blast - TR64
  (28, 2800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Sandslash - Earth Power - TR67
  (28, 2800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Sandslash - Stone Edge - TR75
  (28, 2800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Sandslash - Stealth Rock - TR76
  (28, 2800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 60),
  -- Sandslash - Work Up - TR85
  (28, 2800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Sandslash - Drill Run - TR87
  (28, 2800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 62),
  -- Sandslash - Throat Chop - TR95
  (28, 2800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 63),
  -- Nidoran F - Poison Sting - Level 1
  (29, 2900, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Scratch - Level 5
  (29, 2900, 10, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nidoran F - Tail Whip - Level 10
  (29, 2900, 39, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nidoran F - Fury Swipes - Level 15
  (29, 2900, 154, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidoran F - Toxic Spikes - Level 20
  (29, 2900, 390, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran F - Double Kick - Level 25
  (29, 2900, 24, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nidoran F - Bite - Level 30
  (29, 2900, 44, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran F - Helping Hand - Level 35
  (29, 2900, 270, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidoran F - Toxic - Level 40
  (29, 2900, 92, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nidoran F - Flatter - Level 45
  (29, 2900, 260, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Nidoran F - Crunch - Level 50
  (29, 2900, 242, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidoran F - Earth Power - Level 55
  (29, 2900, 414, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Nidoran F - Dig - TM15
  (29, 2900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Nidoran F - Rest - TM21
  (29, 2900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Nidoran F - Thief - TM23
  (29, 2900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Nidoran F - Snore - TM24
  (29, 2900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Nidoran F - Protect - TM25
  (29, 2900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Nidoran F - Charm - TM29
  (29, 2900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Nidoran F - Attract - TM31
  (29, 2900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Nidoran F - Rain Dance - TM33
  (29, 2900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Nidoran F - Sunny Day - TM34
  (29, 2900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Nidoran F - Beat Up - TM37
  (29, 2900, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 23),
  -- Nidoran F - Facade - TM39
  (29, 2900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Nidoran F - Helping Hand - TM41
  (29, 2900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Nidoran F - Shadow Claw - TM65
  (29, 2900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 26),
  -- Nidoran F - Venoshock - TM74
  (29, 2900, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Nidoran F - Round - TM76
  (29, 2900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Nidoran F - Body Slam - TR01
  (29, 2900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Nidoran F - Ice Beam - TR05
  (29, 2900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Nidoran F - Blizzard - TR06
  (29, 2900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 31),
  -- Nidoran F - Thunderbolt - TR08
  (29, 2900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 32),
  -- Nidoran F - Thunder - TR09
  (29, 2900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 33),
  -- Nidoran F - Focus Energy - TR13
  (29, 2900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 34),
  -- Nidoran F - Substitute - TR20
  (29, 2900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Nidoran F - Sludge Bomb - TR22
  (29, 2900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 36),
  -- Nidoran F - Endure - TR26
  (29, 2900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Nidoran F - Sleep Talk - TR27
  (29, 2900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Nidoran F - Iron Tail - TR31
  (29, 2900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Nidoran F - Crunch - TR32
  (29, 2900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Nidoran F - Toxic Spikes - TR54
  (29, 2900, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 41),
  -- Nidoran F - Poison Jab - TR57
  (29, 2900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 42),
  -- Nidoran F - Earth Power - TR67
  (29, 2900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Nidoran F - Venom Drench - TR91
  (29, 2900, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 44),
  -- Nidoran F - Take Down - Egg
  (29, 2900, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidoran F - Supersonic - Egg
  (29, 2900, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran F - Disable - Egg
  (29, 2900, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran F - Counter - Egg
  (29, 2900, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran F - Skull Bash - Egg
  (29, 2900, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran F - Poison Fang - Egg
  (29, 2900, 305, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran F - Poison Tail - Egg
  (29, 2900, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Tail Whip - Level 1
  (30, 3000, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Poison Sting - Level 1
  (30, 3000, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidorina - Fury Swipes - Level 15
  (30, 3000, 154, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidorina - Toxic Spikes - Level 22
  (30, 3000, 390, 18, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorina - Double Kick - Level 29
  (30, 3000, 24, 18, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidorina - Bite - Level 36
  (30, 3000, 44, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidorina - Helping Hand - Level 43
  (30, 3000, 270, 18, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorina - Toxic - Level 50
  (30, 3000, 92, 18, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Nidorina - Flatter - Level 57
  (30, 3000, 260, 18, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Nidorina - Crunch - Level 64
  (30, 3000, 242, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Nidorina - Earth Power - Level 71
  (30, 3000, 414, 18, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Nidorina - Dig - TM15
  (30, 3000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Nidorina - Rest - TM21
  (30, 3000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Nidorina - Thief - TM23
  (30, 3000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Nidorina - Snore - TM24
  (30, 3000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Nidorina - Protect - TM25
  (30, 3000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Nidorina - Charm - TM29
  (30, 3000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Nidorina - Attract - TM31
  (30, 3000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Nidorina - Rain Dance - TM33
  (30, 3000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Nidorina - Sunny Day - TM34
  (30, 3000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Nidorina - Beat Up - TM37
  (30, 3000, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 23),
  -- Nidorina - Facade - TM39
  (30, 3000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Nidorina - Helping Hand - TM41
  (30, 3000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Nidorina - Shadow Claw - TM65
  (30, 3000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 26),
  -- Nidorina - Venoshock - TM74
  (30, 3000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Nidorina - Round - TM76
  (30, 3000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Nidorina - Stomping Tantrum - TM98
  (30, 3000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 29),
  -- Nidorina - Body Slam - TR01
  (30, 3000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Nidorina - Ice Beam - TR05
  (30, 3000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 31),
  -- Nidorina - Blizzard - TR06
  (30, 3000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 32),
  -- Nidorina - Thunderbolt - TR08
  (30, 3000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Nidorina - Thunder - TR09
  (30, 3000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Nidorina - Focus Energy - TR13
  (30, 3000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 35),
  -- Nidorina - Substitute - TR20
  (30, 3000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Nidorina - Sludge Bomb - TR22
  (30, 3000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 37),
  -- Nidorina - Endure - TR26
  (30, 3000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Nidorina - Sleep Talk - TR27
  (30, 3000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Nidorina - Iron Tail - TR31
  (30, 3000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Nidorina - Crunch - TR32
  (30, 3000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 41),
  -- Nidorina - Toxic Spikes - TR54
  (30, 3000, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 42),
  -- Nidorina - Poison Jab - TR57
  (30, 3000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 43),
  -- Nidorina - Earth Power - TR67
  (30, 3000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 44),
  -- Nidorina - Venom Drench - TR91
  (30, 3000, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 45),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Double Kick - Level 1
  (31, 3100, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Poison Sting - Level 1
  (31, 3100, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Bite - Level 1
  (31, 3100, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoqueen - Growl - Level 1
  (31, 3100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nidoqueen - Toxic - Level 1
  (31, 3100, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nidoqueen - Fury Swipes - Level 1
  (31, 3100, 154, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Nidoqueen - Crunch - Level 1
  (31, 3100, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Nidoqueen - Flatter - Level 1
  (31, 3100, 260, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Nidoqueen - Helping Hand - Level 1
  (31, 3100, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Nidoqueen - Superpower - Level 1
  (31, 3100, 276, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Nidoqueen - Toxic Spikes - Level 1
  (31, 3100, 390, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Nidoqueen - Earth Power - Level 1
  (31, 3100, 414, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Nidoqueen - Superpower - Evolution
  (31, 3100, 276, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Nidoqueen - Mega Punch - TM00
  (31, 3100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Nidoqueen - Mega Kick - TM01
  (31, 3100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Nidoqueen - Pay Day - TM02
  (31, 3100, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Nidoqueen - Fire Punch - TM03
  (31, 3100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Nidoqueen - Ice Punch - TM04
  (31, 3100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Nidoqueen - Thunder Punch - TM05
  (31, 3100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Nidoqueen - Hyper Beam - TM08
  (31, 3100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Nidoqueen - Giga Impact - TM09
  (31, 3100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Nidoqueen - Dig - TM15
  (31, 3100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Nidoqueen - Rest - TM21
  (31, 3100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Nidoqueen - Rock Slide - TM22
  (31, 3100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Nidoqueen - Thief - TM23
  (31, 3100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Nidoqueen - Snore - TM24
  (31, 3100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Nidoqueen - Protect - TM25
  (31, 3100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Nidoqueen - Icy Wind - TM27
  (31, 3100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Nidoqueen - Charm - TM29
  (31, 3100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Nidoqueen - Attract - TM31
  (31, 3100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Nidoqueen - Sandstorm - TM32
  (31, 3100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Nidoqueen - Rain Dance - TM33
  (31, 3100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Nidoqueen - Sunny Day - TM34
  (31, 3100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Nidoqueen - Whirlpool - TM36
  (31, 3100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 36),
  -- Nidoqueen - Beat Up - TM37
  (31, 3100, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 37),
  -- Nidoqueen - Facade - TM39
  (31, 3100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Nidoqueen - Helping Hand - TM41
  (31, 3100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Nidoqueen - Brick Break - TM43
  (31, 3100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Nidoqueen - Rock Tomb - TM48
  (31, 3100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Nidoqueen - Sand Tomb - TM49
  (31, 3100, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 42),
  -- Nidoqueen - Mud Shot - TM53
  (31, 3100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 43),
  -- Nidoqueen - Rock Blast - TM54
  (31, 3100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 44),
  -- Nidoqueen - Fling - TM59
  (31, 3100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Nidoqueen - Avalanche - TM64
  (31, 3100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Nidoqueen - Shadow Claw - TM65
  (31, 3100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Nidoqueen - Venoshock - TM74
  (31, 3100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 48),
  -- Nidoqueen - Round - TM76
  (31, 3100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 49),
  -- Nidoqueen - Hex - TM77
  (31, 3100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 50),
  -- Nidoqueen - Bulldoze - TM81
  (31, 3100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 51),
  -- Nidoqueen - Stomping Tantrum - TM98
  (31, 3100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 52),
  -- Nidoqueen - Body Slam - TR01
  (31, 3100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Nidoqueen - Flamethrower - TR02
  (31, 3100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 54),
  -- Nidoqueen - Surf - TR04
  (31, 3100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 55),
  -- Nidoqueen - Ice Beam - TR05
  (31, 3100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 56),
  -- Nidoqueen - Blizzard - TR06
  (31, 3100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 57),
  -- Nidoqueen - Thunderbolt - TR08
  (31, 3100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 58),
  -- Nidoqueen - Thunder - TR09
  (31, 3100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 59),
  -- Nidoqueen - Earthquake - TR10
  (31, 3100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Nidoqueen - Focus Energy - TR13
  (31, 3100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 61),
  -- Nidoqueen - Fire Blast - TR15
  (31, 3100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 62),
  -- Nidoqueen - Substitute - TR20
  (31, 3100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 63),
  -- Nidoqueen - Sludge Bomb - TR22
  (31, 3100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 64),
  -- Nidoqueen - Outrage - TR24
  (31, 3100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 65),
  -- Nidoqueen - Endure - TR26
  (31, 3100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 66),
  -- Nidoqueen - Sleep Talk - TR27
  (31, 3100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 67),
  -- Nidoqueen - Iron Tail - TR31
  (31, 3100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 68),
  -- Nidoqueen - Crunch - TR32
  (31, 3100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 69),
  -- Nidoqueen - Shadow Ball - TR33
  (31, 3100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Nidoqueen - Uproar - TR35
  (31, 3100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 71),
  -- Nidoqueen - Taunt - TR37
  (31, 3100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 72),
  -- Nidoqueen - Superpower - TR39
  (31, 3100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 73),
  -- Nidoqueen - Toxic Spikes - TR54
  (31, 3100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 74),
  -- Nidoqueen - Poison Jab - TR57
  (31, 3100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 75),
  -- Nidoqueen - Dragon Pulse - TR62
  (31, 3100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 76),
  -- Nidoqueen - Focus Blast - TR64
  (31, 3100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 77),
  -- Nidoqueen - Earth Power - TR67
  (31, 3100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 78),
  -- Nidoqueen - Stone Edge - TR75
  (31, 3100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 79),
  -- Nidoqueen - Stealth Rock - TR76
  (31, 3100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 80),
  -- Nidoqueen - Sludge Wave - TR78
  (31, 3100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 81),
  -- Nidoqueen - Drill Run - TR87
  (31, 3100, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 82),
  -- Nidoqueen - Venom Drench - TR91
  (31, 3100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 83),
  -- Nidoqueen - High Horsepower - TR94
  (31, 3100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 84),
  -- Nidoqueen - Throat Chop - TR95
  (31, 3100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 85),
  -- Nidoqueen - Body Press - TR99
  (31, 3100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 86),
  -- Nidoran M - Poison Sting - Level 1
  (32, 3200, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Peck - Level 5
  (32, 3200, 64, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nidoran M - Focus Energy - Level 10
  (32, 3200, 116, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nidoran M - Fury Attack - Level 15
  (32, 3200, 31, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidoran M - Toxic Spikes - Level 20
  (32, 3200, 390, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran M - Double Kick - Level 25
  (32, 3200, 24, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nidoran M - Horn Attack - Level 30
  (32, 3200, 30, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran M - Helping Hand - Level 35
  (32, 3200, 270, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidoran M - Toxic - Level 40
  (32, 3200, 92, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nidoran M - Flatter - Level 45
  (32, 3200, 260, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Nidoran M - Poison Jab - Level 50
  (32, 3200, 398, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidoran M - Earth Power - Level 55
  (32, 3200, 414, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Nidoran M - Dig - TM15
  (32, 3200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Nidoran M - Rest - TM21
  (32, 3200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Nidoran M - Thief - TM23
  (32, 3200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Nidoran M - Snore - TM24
  (32, 3200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Nidoran M - Protect - TM25
  (32, 3200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Nidoran M - Attract - TM31
  (32, 3200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Nidoran M - Rain Dance - TM33
  (32, 3200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Nidoran M - Sunny Day - TM34
  (32, 3200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Nidoran M - Beat Up - TM37
  (32, 3200, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 22),
  -- Nidoran M - Facade - TM39
  (32, 3200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Nidoran M - Helping Hand - TM41
  (32, 3200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Nidoran M - Shadow Claw - TM65
  (32, 3200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 25),
  -- Nidoran M - Venoshock - TM74
  (32, 3200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 26),
  -- Nidoran M - Round - TM76
  (32, 3200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Nidoran M - Smart Strike - TM96
  (32, 3200, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 28),
  -- Nidoran M - Body Slam - TR01
  (32, 3200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Nidoran M - Ice Beam - TR05
  (32, 3200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Nidoran M - Blizzard - TR06
  (32, 3200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 31),
  -- Nidoran M - Thunderbolt - TR08
  (32, 3200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 32),
  -- Nidoran M - Thunder - TR09
  (32, 3200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 33),
  -- Nidoran M - Focus Energy - TR13
  (32, 3200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 34),
  -- Nidoran M - Amnesia - TR17
  (32, 3200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Nidoran M - Substitute - TR20
  (32, 3200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Nidoran M - Sludge Bomb - TR22
  (32, 3200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 37),
  -- Nidoran M - Endure - TR26
  (32, 3200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Nidoran M - Sleep Talk - TR27
  (32, 3200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Nidoran M - Iron Tail - TR31
  (32, 3200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Nidoran M - Toxic Spikes - TR54
  (32, 3200, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 41),
  -- Nidoran M - Poison Jab - TR57
  (32, 3200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 42),
  -- Nidoran M - Earth Power - TR67
  (32, 3200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Nidoran M - Drill Run - TR87
  (32, 3200, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 44),
  -- Nidoran M - Venom Drench - TR91
  (32, 3200, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 45),
  -- Nidoran M - Horn Drill - Egg
  (32, 3200, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran M - Take Down - Egg
  (32, 3200, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran M - Thrash - Egg
  (32, 3200, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran M - Supersonic - Egg
  (32, 3200, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran M - Disable - Egg
  (32, 3200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran M - Counter - Egg
  (32, 3200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran M - Confusion - Egg
  (32, 3200, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran M - Poison Tail - Egg
  (32, 3200, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoran M - Sucker Punch - Egg
  (32, 3200, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidoran M - Head Smash - Egg
  (32, 3200, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nidorino - Poison Sting - Level 1
  (33, 3300, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Peck - Level 1
  (33, 3300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorino - Focus Energy - Level 1
  (33, 3300, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidorino - Fury Attack - Level 15
  (33, 3300, 31, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidorino - Toxic Spikes - Level 22
  (33, 3300, 390, 18, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorino - Double Kick - Level 29
  (33, 3300, 24, 18, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidorino - Horn Attack - Level 36
  (33, 3300, 30, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidorino - Helping Hand - Level 43
  (33, 3300, 270, 18, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorino - Toxic - Level 50
  (33, 3300, 92, 18, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Nidorino - Flatter - Level 57
  (33, 3300, 260, 18, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Nidorino - Poison Jab - Level 64
  (33, 3300, 398, 18, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Nidorino - Earth Power - Level 71
  (33, 3300, 414, 18, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Nidorino - Dig - TM15
  (33, 3300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Nidorino - Rest - TM21
  (33, 3300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Nidorino - Thief - TM23
  (33, 3300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Nidorino - Snore - TM24
  (33, 3300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Nidorino - Protect - TM25
  (33, 3300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Nidorino - Attract - TM31
  (33, 3300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Nidorino - Rain Dance - TM33
  (33, 3300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Nidorino - Sunny Day - TM34
  (33, 3300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Nidorino - Beat Up - TM37
  (33, 3300, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 22),
  -- Nidorino - Facade - TM39
  (33, 3300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Nidorino - Helping Hand - TM41
  (33, 3300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Nidorino - Shadow Claw - TM65
  (33, 3300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 25),
  -- Nidorino - Venoshock - TM74
  (33, 3300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 26),
  -- Nidorino - Round - TM76
  (33, 3300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Nidorino - Smart Strike - TM96
  (33, 3300, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 28),
  -- Nidorino - Stomping Tantrum - TM98
  (33, 3300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 29),
  -- Nidorino - Body Slam - TR01
  (33, 3300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Nidorino - Ice Beam - TR05
  (33, 3300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 31),
  -- Nidorino - Blizzard - TR06
  (33, 3300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 32),
  -- Nidorino - Thunderbolt - TR08
  (33, 3300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Nidorino - Thunder - TR09
  (33, 3300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Nidorino - Focus Energy - TR13
  (33, 3300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 35),
  -- Nidorino - Amnesia - TR17
  (33, 3300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 36),
  -- Nidorino - Substitute - TR20
  (33, 3300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Nidorino - Sludge Bomb - TR22
  (33, 3300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 38),
  -- Nidorino - Endure - TR26
  (33, 3300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Nidorino - Sleep Talk - TR27
  (33, 3300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Nidorino - Iron Tail - TR31
  (33, 3300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Nidorino - Toxic Spikes - TR54
  (33, 3300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 42),
  -- Nidorino - Poison Jab - TR57
  (33, 3300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 43),
  -- Nidorino - Earth Power - TR67
  (33, 3300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 44),
  -- Nidorino - Drill Run - TR87
  (33, 3300, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 45),
  -- Nidorino - Venom Drench - TR91
  (33, 3300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 46),
  -- Nidoking - Double Kick - Level 1
  (34, 3400, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Horn Attack - Level 1
  (34, 3400, 30, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Fury Attack - Level 1
  (34, 3400, 31, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Leer - Level 1
  (34, 3400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoking - Peck - Level 1
  (34, 3400, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nidoking - Toxic - Level 1
  (34, 3400, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nidoking - Focus Energy - Level 1
  (34, 3400, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Nidoking - Megahorn - Level 1
  (34, 3400, 224, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Nidoking - Flatter - Level 1
  (34, 3400, 260, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Nidoking - Helping Hand - Level 1
  (34, 3400, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Nidoking - Toxic Spikes - Level 1
  (34, 3400, 390, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Nidoking - Poison Jab - Level 1
  (34, 3400, 398, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Nidoking - Earth Power - Level 1
  (34, 3400, 414, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Nidoking - Megahorn - Evolution
  (34, 3400, 224, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Nidoking - Mega Punch - TM00
  (34, 3400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Nidoking - Mega Kick - TM01
  (34, 3400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Nidoking - Pay Day - TM02
  (34, 3400, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Nidoking - Fire Punch - TM03
  (34, 3400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Nidoking - Ice Punch - TM04
  (34, 3400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Nidoking - Thunder Punch - TM05
  (34, 3400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Nidoking - Hyper Beam - TM08
  (34, 3400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Nidoking - Giga Impact - TM09
  (34, 3400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Nidoking - Dig - TM15
  (34, 3400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Nidoking - Rest - TM21
  (34, 3400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Nidoking - Rock Slide - TM22
  (34, 3400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Nidoking - Thief - TM23
  (34, 3400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Nidoking - Snore - TM24
  (34, 3400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Nidoking - Protect - TM25
  (34, 3400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Nidoking - Icy Wind - TM27
  (34, 3400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Nidoking - Attract - TM31
  (34, 3400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Nidoking - Sandstorm - TM32
  (34, 3400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 32),
  -- Nidoking - Rain Dance - TM33
  (34, 3400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Nidoking - Sunny Day - TM34
  (34, 3400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Nidoking - Whirlpool - TM36
  (34, 3400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Nidoking - Beat Up - TM37
  (34, 3400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 36),
  -- Nidoking - Facade - TM39
  (34, 3400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Nidoking - Helping Hand - TM41
  (34, 3400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Nidoking - Brick Break - TM43
  (34, 3400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Nidoking - Rock Tomb - TM48
  (34, 3400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Nidoking - Sand Tomb - TM49
  (34, 3400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 41),
  -- Nidoking - Mud Shot - TM53
  (34, 3400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 42),
  -- Nidoking - Rock Blast - TM54
  (34, 3400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 43),
  -- Nidoking - Fling - TM59
  (34, 3400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Nidoking - Avalanche - TM64
  (34, 3400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 45),
  -- Nidoking - Shadow Claw - TM65
  (34, 3400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 46),
  -- Nidoking - Venoshock - TM74
  (34, 3400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 47),
  -- Nidoking - Round - TM76
  (34, 3400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Nidoking - Hex - TM77
  (34, 3400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 49),
  -- Nidoking - Bulldoze - TM81
  (34, 3400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Nidoking - Smart Strike - TM96
  (34, 3400, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 51),
  -- Nidoking - Stomping Tantrum - TM98
  (34, 3400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 52),
  -- Nidoking - Body Slam - TR01
  (34, 3400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Nidoking - Flamethrower - TR02
  (34, 3400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 54),
  -- Nidoking - Surf - TR04
  (34, 3400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 55),
  -- Nidoking - Ice Beam - TR05
  (34, 3400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 56),
  -- Nidoking - Blizzard - TR06
  (34, 3400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 57),
  -- Nidoking - Thunderbolt - TR08
  (34, 3400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 58),
  -- Nidoking - Thunder - TR09
  (34, 3400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 59),
  -- Nidoking - Earthquake - TR10
  (34, 3400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Nidoking - Focus Energy - TR13
  (34, 3400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 61),
  -- Nidoking - Fire Blast - TR15
  (34, 3400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 62),
  -- Nidoking - Amnesia - TR17
  (34, 3400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 63),
  -- Nidoking - Substitute - TR20
  (34, 3400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 64),
  -- Nidoking - Sludge Bomb - TR22
  (34, 3400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 65),
  -- Nidoking - Outrage - TR24
  (34, 3400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 66),
  -- Nidoking - Endure - TR26
  (34, 3400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 67),
  -- Nidoking - Sleep Talk - TR27
  (34, 3400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 68),
  -- Nidoking - Megahorn - TR28
  (34, 3400, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 69),
  -- Nidoking - Iron Tail - TR31
  (34, 3400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 70),
  -- Nidoking - Shadow Ball - TR33
  (34, 3400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 71),
  -- Nidoking - Uproar - TR35
  (34, 3400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 72),
  -- Nidoking - Taunt - TR37
  (34, 3400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 73),
  -- Nidoking - Superpower - TR39
  (34, 3400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 74),
  -- Nidoking - Toxic Spikes - TR54
  (34, 3400, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 75),
  -- Nidoking - Poison Jab - TR57
  (34, 3400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 76),
  -- Nidoking - Dragon Pulse - TR62
  (34, 3400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 77),
  -- Nidoking - Focus Blast - TR64
  (34, 3400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 78),
  -- Nidoking - Earth Power - TR67
  (34, 3400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 79),
  -- Nidoking - Stone Edge - TR75
  (34, 3400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 80),
  -- Nidoking - Stealth Rock - TR76
  (34, 3400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 81),
  -- Nidoking - Sludge Wave - TR78
  (34, 3400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 82),
  -- Nidoking - Drill Run - TR87
  (34, 3400, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 83),
  -- Nidoking - Venom Drench - TR91
  (34, 3400, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 84),
  -- Nidoking - High Horsepower - TR94
  (34, 3400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 85),
  -- Nidoking - Throat Chop - TR95
  (34, 3400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 86),
  -- Nidoking - Body Press - TR99
  (34, 3400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 87),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Sing - Level 1
  (35, 3500, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefairy - Defense Curl - Level 1
  (35, 3500, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefairy - Splash - Level 1
  (35, 3500, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefairy - Sweet Kiss - Level 1
  (35, 3500, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clefairy - Charm - Level 1
  (35, 3500, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Clefairy - Encore - Level 1
  (35, 3500, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Clefairy - Copycat - Level 1
  (35, 3500, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Clefairy - Disarming Voice - Level 1
  (35, 3500, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Clefairy - Stored Power - Level 4
  (35, 3500, 500, 18, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Clefairy - Minimize - Level 8
  (35, 3500, 107, 18, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Clefairy - After You - Level 12
  (35, 3500, 495, 18, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Clefairy - Life Dew - Level 16
  (35, 3500, 791, 18, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Clefairy - Metronome - Level 20
  (35, 3500, 118, 18, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Clefairy - Moonlight - Level 24
  (35, 3500, 236, 18, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Clefairy - Gravity - Level 28
  (35, 3500, 356, 18, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Clefairy - Meteor Mash - Level 32
  (35, 3500, 309, 18, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Clefairy - Follow Me - Level 36
  (35, 3500, 266, 18, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Clefairy - Cosmic Power - Level 40
  (35, 3500, 322, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Clefairy - Moonblast - Level 44
  (35, 3500, 585, 18, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Clefairy - Healing Wish - Level 48
  (35, 3500, 361, 18, NULL, 1, 48, NULL, NULL, NULL, 22),
  -- Clefairy - Mega Punch - TM00
  (35, 3500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Clefairy - Mega Kick - TM01
  (35, 3500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Clefairy - Fire Punch - TM03
  (35, 3500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 25),
  -- Clefairy - Ice Punch - TM04
  (35, 3500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 26),
  -- Clefairy - Thunder Punch - TM05
  (35, 3500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 27),
  -- Clefairy - Magical Leaf - TM10
  (35, 3500, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 28),
  -- Clefairy - Solar Beam - TM11
  (35, 3500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 29),
  -- Clefairy - Thunder Wave - TM14
  (35, 3500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Clefairy - Dig - TM15
  (35, 3500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 31),
  -- Clefairy - Light Screen - TM17
  (35, 3500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 32),
  -- Clefairy - Reflect - TM18
  (35, 3500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 33),
  -- Clefairy - Safeguard - TM19
  (35, 3500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 34),
  -- Clefairy - Rest - TM21
  (35, 3500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 35),
  -- Clefairy - Snore - TM24
  (35, 3500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Clefairy - Protect - TM25
  (35, 3500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Clefairy - Icy Wind - TM27
  (35, 3500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 38),
  -- Clefairy - Charm - TM29
  (35, 3500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 39),
  -- Clefairy - Attract - TM31
  (35, 3500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Clefairy - Rain Dance - TM33
  (35, 3500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Clefairy - Sunny Day - TM34
  (35, 3500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Clefairy - Facade - TM39
  (35, 3500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 43),
  -- Clefairy - Helping Hand - TM41
  (35, 3500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 44),
  -- Clefairy - Brick Break - TM43
  (35, 3500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 45),
  -- Clefairy - Imprison - TM44
  (35, 3500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 46),
  -- Clefairy - Fake Tears - TM47
  (35, 3500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 47),
  -- Clefairy - Bounce - TM52
  (35, 3500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 48),
  -- Clefairy - Fling - TM59
  (35, 3500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 49),
  -- Clefairy - Drain Punch - TM63
  (35, 3500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 50),
  -- Clefairy - Wonder Room - TM71
  (35, 3500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 51),
  -- Clefairy - Round - TM76
  (35, 3500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 52),
  -- Clefairy - Retaliate - TM79
  (35, 3500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 53),
  -- Clefairy - Draining Kiss - TM87
  (35, 3500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 54),
  -- Clefairy - Misty Terrain - TM89
  (35, 3500, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 55),
  -- Clefairy - Mystical Fire - TM92
  (35, 3500, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 56),
  -- Clefairy - Body Slam - TR01
  (35, 3500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 57),
  -- Clefairy - Flamethrower - TR02
  (35, 3500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 58),
  -- Clefairy - Ice Beam - TR05
  (35, 3500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 59),
  -- Clefairy - Blizzard - TR06
  (35, 3500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 60),
  -- Clefairy - Thunderbolt - TR08
  (35, 3500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 61),
  -- Clefairy - Thunder - TR09
  (35, 3500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 62),
  -- Clefairy - Psychic - TR11
  (35, 3500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 63),
  -- Clefairy - Metronome - TR14
  (35, 3500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 64),
  -- Clefairy - Fire Blast - TR15
  (35, 3500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 65),
  -- Clefairy - Amnesia - TR17
  (35, 3500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 66),
  -- Clefairy - Tri Attack - TR19
  (35, 3500, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 67),
  -- Clefairy - Substitute - TR20
  (35, 3500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 68),
  -- Clefairy - Psyshock - TR25
  (35, 3500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 69),
  -- Clefairy - Endure - TR26
  (35, 3500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 70),
  -- Clefairy - Sleep Talk - TR27
  (35, 3500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 71),
  -- Clefairy - Baton Pass - TR29
  (35, 3500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 72),
  -- Clefairy - Encore - TR30
  (35, 3500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 73),
  -- Clefairy - Iron Tail - TR31
  (35, 3500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 74),
  -- Clefairy - Shadow Ball - TR33
  (35, 3500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 75),
  -- Clefairy - Uproar - TR35
  (35, 3500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 76),
  -- Clefairy - Trick - TR38
  (35, 3500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 77),
  -- Clefairy - Hyper Voice - TR42
  (35, 3500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 78),
  -- Clefairy - Cosmic Power - TR44
  (35, 3500, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 79),
  -- Clefairy - Calm Mind - TR49
  (35, 3500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 80),
  -- Clefairy - Zen Headbutt - TR69
  (35, 3500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 81),
  -- Clefairy - Stealth Rock - TR76
  (35, 3500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 82),
  -- Clefairy - Grass Knot - TR77
  (35, 3500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 83),
  -- Clefairy - Stored Power - TR82
  (35, 3500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 84),
  -- Clefairy - Ally Switch - TR83
  (35, 3500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 85),
  -- Clefairy - Work Up - TR85
  (35, 3500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 86),
  -- Clefairy - Play Rough - TR90
  (35, 3500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 87),
  -- Clefairy - Dazzling Gleam - TR92
  (35, 3500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 88),
  -- Clefable - Pound - Level 1
  (36, 3600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Growl - Level 1
  (36, 3600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Minimize - Level 1
  (36, 3600, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Defense Curl - Level 1
  (36, 3600, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clefable - Splash - Level 1
  (36, 3600, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Clefable - Sweet Kiss - Level 1
  (36, 3600, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Clefable - Charm - Level 1
  (36, 3600, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Clefable - Encore - Level 1
  (36, 3600, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Clefable - Moonlight - Level 1
  (36, 3600, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Clefable - Follow Me - Level 1
  (36, 3600, 266, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Clefable - Meteor Mash - Level 1
  (36, 3600, 309, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Clefable - Cosmic Power - Level 1
  (36, 3600, 322, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Clefable - Gravity - Level 1
  (36, 3600, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Clefable - Healing Wish - Level 1
  (36, 3600, 361, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Clefable - Copycat - Level 1
  (36, 3600, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Clefable - After You - Level 1
  (36, 3600, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Clefable - Stored Power - Level 1
  (36, 3600, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Clefable - Disarming Voice - Level 1
  (36, 3600, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Clefable - Moonblast - Level 1
  (36, 3600, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Clefable - Life Dew - Level 1
  (36, 3600, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 22),
  -- Clefable - Mega Punch - TM00
  (36, 3600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Clefable - Mega Kick - TM01
  (36, 3600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Clefable - Fire Punch - TM03
  (36, 3600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 25),
  -- Clefable - Ice Punch - TM04
  (36, 3600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 26),
  -- Clefable - Thunder Punch - TM05
  (36, 3600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 27),
  -- Clefable - Hyper Beam - TM08
  (36, 3600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 28),
  -- Clefable - Giga Impact - TM09
  (36, 3600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 29),
  -- Clefable - Magical Leaf - TM10
  (36, 3600, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 30),
  -- Clefable - Solar Beam - TM11
  (36, 3600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 31),
  -- Clefable - Thunder Wave - TM14
  (36, 3600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 32),
  -- Clefable - Dig - TM15
  (36, 3600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 33),
  -- Clefable - Light Screen - TM17
  (36, 3600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 34),
  -- Clefable - Reflect - TM18
  (36, 3600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 35),
  -- Clefable - Safeguard - TM19
  (36, 3600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 36),
  -- Clefable - Rest - TM21
  (36, 3600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 37),
  -- Clefable - Snore - TM24
  (36, 3600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 38),
  -- Clefable - Protect - TM25
  (36, 3600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 39),
  -- Clefable - Icy Wind - TM27
  (36, 3600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 40),
  -- Clefable - Charm - TM29
  (36, 3600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 41),
  -- Clefable - Attract - TM31
  (36, 3600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 42),
  -- Clefable - Rain Dance - TM33
  (36, 3600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 43),
  -- Clefable - Sunny Day - TM34
  (36, 3600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 44),
  -- Clefable - Facade - TM39
  (36, 3600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 45),
  -- Clefable - Helping Hand - TM41
  (36, 3600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 46),
  -- Clefable - Brick Break - TM43
  (36, 3600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 47),
  -- Clefable - Imprison - TM44
  (36, 3600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 48),
  -- Clefable - Fake Tears - TM47
  (36, 3600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 49),
  -- Clefable - Bounce - TM52
  (36, 3600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 50),
  -- Clefable - Fling - TM59
  (36, 3600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 51),
  -- Clefable - Drain Punch - TM63
  (36, 3600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 52),
  -- Clefable - Wonder Room - TM71
  (36, 3600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 53),
  -- Clefable - Round - TM76
  (36, 3600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 54),
  -- Clefable - Retaliate - TM79
  (36, 3600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 55),
  -- Clefable - Draining Kiss - TM87
  (36, 3600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 56),
  -- Clefable - Misty Terrain - TM89
  (36, 3600, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 57),
  -- Clefable - Mystical Fire - TM92
  (36, 3600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 58),
  -- Clefable - Body Slam - TR01
  (36, 3600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 59),
  -- Clefable - Flamethrower - TR02
  (36, 3600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 60),
  -- Clefable - Ice Beam - TR05
  (36, 3600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 61),
  -- Clefable - Blizzard - TR06
  (36, 3600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 62),
  -- Clefable - Thunderbolt - TR08
  (36, 3600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 63),
  -- Clefable - Thunder - TR09
  (36, 3600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 64),
  -- Clefable - Psychic - TR11
  (36, 3600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 65),
  -- Clefable - Metronome - TR14
  (36, 3600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 66),
  -- Clefable - Fire Blast - TR15
  (36, 3600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 67),
  -- Clefable - Amnesia - TR17
  (36, 3600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 68),
  -- Clefable - Tri Attack - TR19
  (36, 3600, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 69),
  -- Clefable - Substitute - TR20
  (36, 3600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 70),
  -- Clefable - Psyshock - TR25
  (36, 3600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 71),
  -- Clefable - Endure - TR26
  (36, 3600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 72),
  -- Clefable - Sleep Talk - TR27
  (36, 3600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 73),
  -- Clefable - Baton Pass - TR29
  (36, 3600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 74),
  -- Clefable - Encore - TR30
  (36, 3600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 75),
  -- Clefable - Iron Tail - TR31
  (36, 3600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 76),
  -- Clefable - Shadow Ball - TR33
  (36, 3600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 77),
  -- Clefable - Uproar - TR35
  (36, 3600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 78),
  -- Clefable - Trick - TR38
  (36, 3600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 79),
  -- Clefable - Hyper Voice - TR42
  (36, 3600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 80),
  -- Clefable - Cosmic Power - TR44
  (36, 3600, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 81),
  -- Clefable - Calm Mind - TR49
  (36, 3600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 82),
  -- Clefable - Focus Blast - TR64
  (36, 3600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 83),
  -- Clefable - Zen Headbutt - TR69
  (36, 3600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 84),
  -- Clefable - Stealth Rock - TR76
  (36, 3600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 85),
  -- Clefable - Grass Knot - TR77
  (36, 3600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 86),
  -- Clefable - Stored Power - TR82
  (36, 3600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 87),
  -- Clefable - Ally Switch - TR83
  (36, 3600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 88),
  -- Clefable - Work Up - TR85
  (36, 3600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 89),
  -- Clefable - Play Rough - TR90
  (36, 3600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 90),
  -- Clefable - Dazzling Gleam - TR92
  (36, 3600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 91),
  -- Vulpix - Tail Whip - Level 1
  (37, 3700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix - Disable - Level 4
  (37, 3700, 50, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 8
  (37, 3700, 98, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vulpix - Spite - Level 12
  (37, 3700, 180, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vulpix - Incinerate - Level 16
  (37, 3700, 510, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vulpix - Confuse Ray - Level 20
  (37, 3700, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vulpix - Will-O-Wisp - Level 24
  (37, 3700, 261, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix - Extrasensory - Level 28
  (37, 3700, 326, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix - Flamethrower - Level 32
  (37, 3700, 53, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vulpix - Imprison - Level 36
  (37, 3700, 286, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vulpix - Fire Spin - Level 40
  (37, 3700, 83, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vulpix - Safeguard - Level 44
  (37, 3700, 219, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vulpix - Inferno - Level 48
  (37, 3700, 517, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vulpix - Grudge - Level 52
  (37, 3700, 288, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Vulpix - Fire Blast - Level 56
  (37, 3700, 126, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Vulpix - Fire Spin - TM13
  (37, 3700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Vulpix - Dig - TM15
  (37, 3700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Vulpix - Safeguard - TM19
  (37, 3700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Vulpix - Rest - TM21
  (37, 3700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Vulpix - Snore - TM24
  (37, 3700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Vulpix - Protect - TM25
  (37, 3700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Vulpix - Attract - TM31
  (37, 3700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Vulpix - Sunny Day - TM34
  (37, 3700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Vulpix - Will-O-Wisp - TM38
  (37, 3700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 25),
  -- Vulpix - Facade - TM39
  (37, 3700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Vulpix - Swift - TM40
  (37, 3700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Vulpix - Imprison - TM44
  (37, 3700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 28),
  -- Vulpix - Weather Ball - TM46
  (37, 3700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Vulpix - Payback - TM57
  (37, 3700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Vulpix - Power Swap - TM60
  (37, 3700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Vulpix - Round - TM76
  (37, 3700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Vulpix - Hex - TM77
  (37, 3700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 33),
  -- Vulpix - Tail Slap - TM84
  (37, 3700, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 34),
  -- Vulpix - Mystical Fire - TM92
  (37, 3700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 35),
  -- Vulpix - Body Slam - TR01
  (37, 3700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Vulpix - Flamethrower - TR02
  (37, 3700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Vulpix - Agility - TR12
  (37, 3700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Vulpix - Fire Blast - TR15
  (37, 3700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Vulpix - Substitute - TR20
  (37, 3700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Vulpix - Endure - TR26
  (37, 3700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Vulpix - Sleep Talk - TR27
  (37, 3700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Vulpix - Encore - TR30
  (37, 3700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 43),
  -- Vulpix - Iron Tail - TR31
  (37, 3700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Vulpix - Heat Wave - TR36
  (37, 3700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 45),
  -- Vulpix - Overheat - TR43
  (37, 3700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 46),
  -- Vulpix - Flare Blitz - TR55
  (37, 3700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 47),
  -- Vulpix - Dark Pulse - TR58
  (37, 3700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Vulpix - Energy Ball - TR65
  (37, 3700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 49),
  -- Vulpix - Zen Headbutt - TR69
  (37, 3700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Vulpix - Foul Play - TR81
  (37, 3700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Vulpix - Roar - Egg
  (37, 3700, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix - Hypnosis - Egg
  (37, 3700, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix - Flail - Egg
  (37, 3700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vulpix - Memento - Egg
  (37, 3700, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vulpix - Howl - Egg
  (37, 3700, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vulpix - Flame Charge - Egg
  (37, 3700, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vulpix - Baby-Doll Eyes - Egg
  (37, 3700, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ninetales - Tail Whip - Level 1
  (38, 3800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Disable - Level 1
  (38, 3800, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Flamethrower - Level 1
  (38, 3800, 53, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Fire Spin - Level 1
  (38, 3800, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninetales - Confuse Ray - Level 1
  (38, 3800, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ninetales - Fire Blast - Level 1
  (38, 3800, 126, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ninetales - Spite - Level 1
  (38, 3800, 180, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ninetales - Safeguard - Level 1
  (38, 3800, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Ninetales - Will-O-Wisp - Level 1
  (38, 3800, 261, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Ninetales - Imprison - Level 1
  (38, 3800, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Ninetales - Grudge - Level 1
  (38, 3800, 288, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Ninetales - Extrasensory - Level 1
  (38, 3800, 326, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Ninetales - Nasty Plot - Level 1
  (38, 3800, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Ninetales - Incinerate - Level 1
  (38, 3800, 510, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Ninetales - Inferno - Level 1
  (38, 3800, 517, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Ninetales - Hyper Beam - TM08
  (38, 3800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Ninetales - Giga Impact - TM09
  (38, 3800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Ninetales - Solar Beam - TM11
  (38, 3800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Ninetales - Fire Spin - TM13
  (38, 3800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Ninetales - Dig - TM15
  (38, 3800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Ninetales - Safeguard - TM19
  (38, 3800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Ninetales - Rest - TM21
  (38, 3800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Ninetales - Snore - TM24
  (38, 3800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Ninetales - Protect - TM25
  (38, 3800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Ninetales - Attract - TM31
  (38, 3800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Ninetales - Sunny Day - TM34
  (38, 3800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Ninetales - Will-O-Wisp - TM38
  (38, 3800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Ninetales - Facade - TM39
  (38, 3800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Ninetales - Swift - TM40
  (38, 3800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Ninetales - Imprison - TM44
  (38, 3800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Ninetales - Weather Ball - TM46
  (38, 3800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Ninetales - Fake Tears - TM47
  (38, 3800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Ninetales - Payback - TM57
  (38, 3800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Ninetales - Power Swap - TM60
  (38, 3800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Ninetales - Round - TM76
  (38, 3800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Ninetales - Hex - TM77
  (38, 3800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 38),
  -- Ninetales - Tail Slap - TM84
  (38, 3800, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 39),
  -- Ninetales - Mystical Fire - TM92
  (38, 3800, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 40),
  -- Ninetales - Body Slam - TR01
  (38, 3800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Ninetales - Flamethrower - TR02
  (38, 3800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 42),
  -- Ninetales - Agility - TR12
  (38, 3800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Ninetales - Fire Blast - TR15
  (38, 3800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Ninetales - Substitute - TR20
  (38, 3800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Ninetales - Psyshock - TR25
  (38, 3800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 46),
  -- Ninetales - Endure - TR26
  (38, 3800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Ninetales - Sleep Talk - TR27
  (38, 3800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Ninetales - Encore - TR30
  (38, 3800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 49),
  -- Ninetales - Iron Tail - TR31
  (38, 3800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Ninetales - Shadow Ball - TR33
  (38, 3800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Ninetales - Heat Wave - TR36
  (38, 3800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Ninetales - Overheat - TR43
  (38, 3800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 53),
  -- Ninetales - Calm Mind - TR49
  (38, 3800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Ninetales - Flare Blitz - TR55
  (38, 3800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 55),
  -- Ninetales - Dark Pulse - TR58
  (38, 3800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Ninetales - Energy Ball - TR65
  (38, 3800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 57),
  -- Ninetales - Nasty Plot - TR68
  (38, 3800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Ninetales - Zen Headbutt - TR69
  (38, 3800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Ninetales - Foul Play - TR81
  (38, 3800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 60),
  -- Ninetales - Stored Power - TR82
  (38, 3800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 61),
  -- Jigglypuff - Pound - Level 1
  (39, 3900, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jigglypuff - Disable - Level 1
  (39, 3900, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jigglypuff - Defense Curl - Level 1
  (39, 3900, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jigglypuff - Sweet Kiss - Level 1
  (39, 3900, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jigglypuff - Charm - Level 1
  (39, 3900, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jigglypuff - Copycat - Level 1
  (39, 3900, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Jigglypuff - Disarming Voice - Level 1
  (39, 3900, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Jigglypuff - Echoed Voice - Level 4
  (39, 3900, 497, 18, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Jigglypuff - Covet - Level 8
  (39, 3900, 343, 18, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Jigglypuff - Stockpile - Level 12
  (39, 3900, 254, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Jigglypuff - Spit Up - Level 12
  (39, 3900, 255, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Jigglypuff - Swallow - Level 12
  (39, 3900, 256, 18, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Jigglypuff - Round - Level 16
  (39, 3900, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Jigglypuff - Rest - Level 20
  (39, 3900, 156, 18, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Jigglypuff - Body Slam - Level 24
  (39, 3900, 34, 18, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Jigglypuff - Mimic - Level 28
  (39, 3900, 102, 18, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Jigglypuff - Gyro Ball - Level 32
  (39, 3900, 360, 18, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Jigglypuff - Hyper Voice - Level 36
  (39, 3900, 304, 18, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Jigglypuff - Play Rough - Level 40
  (39, 3900, 583, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Jigglypuff - Double-Edge - Level 44
  (39, 3900, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Jigglypuff - Mega Punch - TM00
  (39, 3900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Jigglypuff - Mega Kick - TM01
  (39, 3900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Jigglypuff - Fire Punch - TM03
  (39, 3900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Jigglypuff - Ice Punch - TM04
  (39, 3900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Jigglypuff - Thunder Punch - TM05
  (39, 3900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Jigglypuff - Solar Beam - TM11
  (39, 3900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 27),
  -- Jigglypuff - Thunder Wave - TM14
  (39, 3900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 28),
  -- Jigglypuff - Dig - TM15
  (39, 3900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Jigglypuff - Screech - TM16
  (39, 3900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 30),
  -- Jigglypuff - Light Screen - TM17
  (39, 3900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Jigglypuff - Reflect - TM18
  (39, 3900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 32),
  -- Jigglypuff - Safeguard - TM19
  (39, 3900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Jigglypuff - Self-Destruct - TM20
  (39, 3900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 34),
  -- Jigglypuff - Rest - TM21
  (39, 3900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 35),
  -- Jigglypuff - Snore - TM24
  (39, 3900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Jigglypuff - Protect - TM25
  (39, 3900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Jigglypuff - Icy Wind - TM27
  (39, 3900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 38),
  -- Jigglypuff - Charm - TM29
  (39, 3900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 39),
  -- Jigglypuff - Attract - TM31
  (39, 3900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Jigglypuff - Rain Dance - TM33
  (39, 3900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Jigglypuff - Sunny Day - TM34
  (39, 3900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Jigglypuff - Facade - TM39
  (39, 3900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 43),
  -- Jigglypuff - Helping Hand - TM41
  (39, 3900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 44),
  -- Jigglypuff - Brick Break - TM43
  (39, 3900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 45),
  -- Jigglypuff - Fake Tears - TM47
  (39, 3900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 46),
  -- Jigglypuff - Bounce - TM52
  (39, 3900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 47),
  -- Jigglypuff - Fling - TM59
  (39, 3900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Jigglypuff - Drain Punch - TM63
  (39, 3900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 49),
  -- Jigglypuff - Round - TM76
  (39, 3900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 50),
  -- Jigglypuff - Retaliate - TM79
  (39, 3900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 51),
  -- Jigglypuff - Draining Kiss - TM87
  (39, 3900, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 52),
  -- Jigglypuff - Misty Terrain - TM89
  (39, 3900, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 53),
  -- Jigglypuff - Body Slam - TR01
  (39, 3900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 54),
  -- Jigglypuff - Flamethrower - TR02
  (39, 3900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 55),
  -- Jigglypuff - Ice Beam - TR05
  (39, 3900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 56),
  -- Jigglypuff - Blizzard - TR06
  (39, 3900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 57),
  -- Jigglypuff - Thunderbolt - TR08
  (39, 3900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 58),
  -- Jigglypuff - Thunder - TR09
  (39, 3900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 59),
  -- Jigglypuff - Psychic - TR11
  (39, 3900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 60),
  -- Jigglypuff - Fire Blast - TR15
  (39, 3900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 61),
  -- Jigglypuff - Tri Attack - TR19
  (39, 3900, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 62),
  -- Jigglypuff - Substitute - TR20
  (39, 3900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 63),
  -- Jigglypuff - Endure - TR26
  (39, 3900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 64),
  -- Jigglypuff - Sleep Talk - TR27
  (39, 3900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 65),
  -- Jigglypuff - Baton Pass - TR29
  (39, 3900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 66),
  -- Jigglypuff - Shadow Ball - TR33
  (39, 3900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 67),
  -- Jigglypuff - Uproar - TR35
  (39, 3900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 68),
  -- Jigglypuff - Hyper Voice - TR42
  (39, 3900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 69),
  -- Jigglypuff - Gyro Ball - TR52
  (39, 3900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 70),
  -- Jigglypuff - Stealth Rock - TR76
  (39, 3900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 71),
  -- Jigglypuff - Grass Knot - TR77
  (39, 3900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 72),
  -- Jigglypuff - Ally Switch - TR83
  (39, 3900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 73),
  -- Jigglypuff - Work Up - TR85
  (39, 3900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 74),
  -- Jigglypuff - Wild Charge - TR86
  (39, 3900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 75),
  -- Jigglypuff - Play Rough - TR90
  (39, 3900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 76),
  -- Jigglypuff - Dazzling Gleam - TR92
  (39, 3900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 77),
  -- Wigglytuff - Pound - Level 1
  (40, 4000, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Body Slam - Level 1
  (40, 4000, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Double-Edge - Level 1
  (40, 4000, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wigglytuff - Mimic - Level 1
  (40, 4000, 102, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Wigglytuff - Rest - Level 1
  (40, 4000, 156, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Wigglytuff - Sweet Kiss - Level 1
  (40, 4000, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Wigglytuff - Charm - Level 1
  (40, 4000, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Wigglytuff - Stockpile - Level 1
  (40, 4000, 254, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Wigglytuff - Spit Up - Level 1
  (40, 4000, 255, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Wigglytuff - Swallow - Level 1
  (40, 4000, 256, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Wigglytuff - Hyper Voice - Level 1
  (40, 4000, 304, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Wigglytuff - Covet - Level 1
  (40, 4000, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Wigglytuff - Gyro Ball - Level 1
  (40, 4000, 360, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Wigglytuff - Copycat - Level 1
  (40, 4000, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Wigglytuff - Round - Level 1
  (40, 4000, 496, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Wigglytuff - Echoed Voice - Level 1
  (40, 4000, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Wigglytuff - Disarming Voice - Level 1
  (40, 4000, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Wigglytuff - Play Rough - Level 1
  (40, 4000, 583, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Wigglytuff - Mega Punch - TM00
  (40, 4000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Wigglytuff - Mega Kick - TM01
  (40, 4000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Wigglytuff - Fire Punch - TM03
  (40, 4000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Wigglytuff - Ice Punch - TM04
  (40, 4000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Wigglytuff - Thunder Punch - TM05
  (40, 4000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Wigglytuff - Hyper Beam - TM08
  (40, 4000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Wigglytuff - Giga Impact - TM09
  (40, 4000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Wigglytuff - Solar Beam - TM11
  (40, 4000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 29),
  -- Wigglytuff - Thunder Wave - TM14
  (40, 4000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Wigglytuff - Dig - TM15
  (40, 4000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 31),
  -- Wigglytuff - Screech - TM16
  (40, 4000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 32),
  -- Wigglytuff - Light Screen - TM17
  (40, 4000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 33),
  -- Wigglytuff - Reflect - TM18
  (40, 4000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 34),
  -- Wigglytuff - Safeguard - TM19
  (40, 4000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 35),
  -- Wigglytuff - Self-Destruct - TM20
  (40, 4000, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 36),
  -- Wigglytuff - Rest - TM21
  (40, 4000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 37),
  -- Wigglytuff - Snore - TM24
  (40, 4000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 38),
  -- Wigglytuff - Protect - TM25
  (40, 4000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 39),
  -- Wigglytuff - Icy Wind - TM27
  (40, 4000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 40),
  -- Wigglytuff - Charm - TM29
  (40, 4000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 41),
  -- Wigglytuff - Attract - TM31
  (40, 4000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 42),
  -- Wigglytuff - Rain Dance - TM33
  (40, 4000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 43),
  -- Wigglytuff - Sunny Day - TM34
  (40, 4000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 44),
  -- Wigglytuff - Facade - TM39
  (40, 4000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 45),
  -- Wigglytuff - Helping Hand - TM41
  (40, 4000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 46),
  -- Wigglytuff - Brick Break - TM43
  (40, 4000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 47),
  -- Wigglytuff - Fake Tears - TM47
  (40, 4000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 48),
  -- Wigglytuff - Bounce - TM52
  (40, 4000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 49),
  -- Wigglytuff - Fling - TM59
  (40, 4000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 50),
  -- Wigglytuff - Drain Punch - TM63
  (40, 4000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 51),
  -- Wigglytuff - Magic Room - TM72
  (40, 4000, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 52),
  -- Wigglytuff - Round - TM76
  (40, 4000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 53),
  -- Wigglytuff - Retaliate - TM79
  (40, 4000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 54),
  -- Wigglytuff - Draining Kiss - TM87
  (40, 4000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 55),
  -- Wigglytuff - Misty Terrain - TM89
  (40, 4000, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 56),
  -- Wigglytuff - Body Slam - TR01
  (40, 4000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 57),
  -- Wigglytuff - Flamethrower - TR02
  (40, 4000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 58),
  -- Wigglytuff - Ice Beam - TR05
  (40, 4000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 59),
  -- Wigglytuff - Blizzard - TR06
  (40, 4000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 60),
  -- Wigglytuff - Thunderbolt - TR08
  (40, 4000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 61),
  -- Wigglytuff - Thunder - TR09
  (40, 4000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 62),
  -- Wigglytuff - Psychic - TR11
  (40, 4000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 63),
  -- Wigglytuff - Fire Blast - TR15
  (40, 4000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 64),
  -- Wigglytuff - Tri Attack - TR19
  (40, 4000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 65),
  -- Wigglytuff - Substitute - TR20
  (40, 4000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 66),
  -- Wigglytuff - Endure - TR26
  (40, 4000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 67),
  -- Wigglytuff - Sleep Talk - TR27
  (40, 4000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 68),
  -- Wigglytuff - Baton Pass - TR29
  (40, 4000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 69),
  -- Wigglytuff - Shadow Ball - TR33
  (40, 4000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Wigglytuff - Uproar - TR35
  (40, 4000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 71),
  -- Wigglytuff - Hyper Voice - TR42
  (40, 4000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 72),
  -- Wigglytuff - Gyro Ball - TR52
  (40, 4000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 73),
  -- Wigglytuff - Focus Blast - TR64
  (40, 4000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 74),
  -- Wigglytuff - Stealth Rock - TR76
  (40, 4000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 75),
  -- Wigglytuff - Grass Knot - TR77
  (40, 4000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 76),
  -- Wigglytuff - Ally Switch - TR83
  (40, 4000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 77),
  -- Wigglytuff - Work Up - TR85
  (40, 4000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 78),
  -- Wigglytuff - Wild Charge - TR86
  (40, 4000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 79),
  -- Wigglytuff - Play Rough - TR90
  (40, 4000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 80),
  -- Wigglytuff - Dazzling Gleam - TR92
  (40, 4000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 81),
  -- Zubat - Supersonic - Level 1
  (41, 4100, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Absorb - Level 1
  (41, 4100, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zubat - Astonish - Level 5
  (41, 4100, 310, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zubat - Mean Look - Level 10
  (41, 4100, 212, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zubat - Poison Fang - Level 15
  (41, 4100, 305, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zubat - Quick Guard - Level 20
  (41, 4100, 501, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zubat - Air Cutter - Level 25
  (41, 4100, 314, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zubat - Bite - Level 30
  (41, 4100, 44, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zubat - Haze - Level 35
  (41, 4100, 114, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zubat - Venoshock - Level 40
  (41, 4100, 474, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zubat - Confuse Ray - Level 45
  (41, 4100, 109, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zubat - Air Slash - Level 50
  (41, 4100, 403, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zubat - Leech Life - Level 55
  (41, 4100, 141, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zubat - Fly - TM06
  (41, 4100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Zubat - Rest - TM21
  (41, 4100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Zubat - Thief - TM23
  (41, 4100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Zubat - Snore - TM24
  (41, 4100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Zubat - Protect - TM25
  (41, 4100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Zubat - Giga Drain - TM28
  (41, 4100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Zubat - Steel Wing - TM30
  (41, 4100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 20),
  -- Zubat - Attract - TM31
  (41, 4100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Zubat - Rain Dance - TM33
  (41, 4100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Zubat - Sunny Day - TM34
  (41, 4100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Zubat - Facade - TM39
  (41, 4100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Zubat - Swift - TM40
  (41, 4100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Zubat - U-turn - TM56
  (41, 4100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Zubat - Payback - TM57
  (41, 4100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 27),
  -- Zubat - Assurance - TM58
  (41, 4100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 28),
  -- Zubat - Venoshock - TM74
  (41, 4100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 29),
  -- Zubat - Round - TM76
  (41, 4100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Zubat - Acrobatics - TM78
  (41, 4100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 31),
  -- Zubat - Air Slash - TM95
  (41, 4100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 32),
  -- Zubat - Agility - TR12
  (41, 4100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 33),
  -- Zubat - Leech Life - TR18
  (41, 4100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 34),
  -- Zubat - Substitute - TR20
  (41, 4100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Zubat - Sludge Bomb - TR22
  (41, 4100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 36),
  -- Zubat - Endure - TR26
  (41, 4100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Zubat - Sleep Talk - TR27
  (41, 4100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Zubat - Crunch - TR32
  (41, 4100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 39),
  -- Zubat - Shadow Ball - TR33
  (41, 4100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Zubat - Uproar - TR35
  (41, 4100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Zubat - Heat Wave - TR36
  (41, 4100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 42),
  -- Zubat - Taunt - TR37
  (41, 4100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Zubat - Brave Bird - TR66
  (41, 4100, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 44),
  -- Zubat - Nasty Plot - TR68
  (41, 4100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Zubat - Zen Headbutt - TR69
  (41, 4100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Zubat - Venom Drench - TR91
  (41, 4100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 47),
  -- Zubat - Gust - Egg
  (41, 4100, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zubat - Wing Attack - Egg
  (41, 4100, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zubat - Whirlwind - Egg
  (41, 4100, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zubat - Hypnosis - Egg
  (41, 4100, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zubat - Quick Attack - Egg
  (41, 4100, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zubat - Curse - Egg
  (41, 4100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zubat - Defog - Egg
  (41, 4100, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Absorb - Level 1
  (42, 4200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Mean Look - Level 1
  (42, 4200, 212, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golbat - Astonish - Level 1
  (42, 4200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golbat - Poison Fang - Level 15
  (42, 4200, 305, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Golbat - Quick Guard - Level 20
  (42, 4200, 501, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Golbat - Air Cutter - Level 27
  (42, 4200, 314, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Golbat - Bite - Level 34
  (42, 4200, 44, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Golbat - Haze - Level 41
  (42, 4200, 114, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Golbat - Venoshock - Level 48
  (42, 4200, 474, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Golbat - Confuse Ray - Level 55
  (42, 4200, 109, 18, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Golbat - Air Slash - Level 62
  (42, 4200, 403, 18, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Golbat - Leech Life - Level 69
  (42, 4200, 141, 18, NULL, 1, 69, NULL, NULL, NULL, 14),
  -- Golbat - Fly - TM06
  (42, 4200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Golbat - Hyper Beam - TM08
  (42, 4200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Golbat - Giga Impact - TM09
  (42, 4200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Golbat - Screech - TM16
  (42, 4200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Golbat - Rest - TM21
  (42, 4200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Golbat - Thief - TM23
  (42, 4200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Golbat - Snore - TM24
  (42, 4200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Golbat - Protect - TM25
  (42, 4200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Golbat - Giga Drain - TM28
  (42, 4200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Golbat - Steel Wing - TM30
  (42, 4200, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Golbat - Attract - TM31
  (42, 4200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Golbat - Rain Dance - TM33
  (42, 4200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Golbat - Sunny Day - TM34
  (42, 4200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Golbat - Facade - TM39
  (42, 4200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Golbat - Swift - TM40
  (42, 4200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Golbat - U-turn - TM56
  (42, 4200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Golbat - Payback - TM57
  (42, 4200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Golbat - Assurance - TM58
  (42, 4200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Golbat - Venoshock - TM74
  (42, 4200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 33),
  -- Golbat - Round - TM76
  (42, 4200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Golbat - Acrobatics - TM78
  (42, 4200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 35),
  -- Golbat - Air Slash - TM95
  (42, 4200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 36),
  -- Golbat - Agility - TR12
  (42, 4200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Golbat - Leech Life - TR18
  (42, 4200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 38),
  -- Golbat - Substitute - TR20
  (42, 4200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Golbat - Sludge Bomb - TR22
  (42, 4200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Golbat - Endure - TR26
  (42, 4200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Golbat - Sleep Talk - TR27
  (42, 4200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Golbat - Crunch - TR32
  (42, 4200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 43),
  -- Golbat - Shadow Ball - TR33
  (42, 4200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Golbat - Uproar - TR35
  (42, 4200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Golbat - Heat Wave - TR36
  (42, 4200, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Golbat - Taunt - TR37
  (42, 4200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Golbat - Brave Bird - TR66
  (42, 4200, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 48),
  -- Golbat - Nasty Plot - TR68
  (42, 4200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 49),
  -- Golbat - Zen Headbutt - TR69
  (42, 4200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Golbat - Venom Drench - TR91
  (42, 4200, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 51),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Growth - Level 1
  (43, 4300, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oddish - Acid - Level 4
  (43, 4300, 51, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Oddish - Sweet Scent - Level 8
  (43, 4300, 230, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Oddish - Mega Drain - Level 12
  (43, 4300, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Oddish - Poison Powder - Level 14
  (43, 4300, 77, 18, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Oddish - Stun Spore - Level 16
  (43, 4300, 78, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Oddish - Sleep Powder - Level 18
  (43, 4300, 79, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Oddish - Giga Drain - Level 20
  (43, 4300, 202, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Oddish - Toxic - Level 24
  (43, 4300, 92, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Oddish - Moonblast - Level 28
  (43, 4300, 585, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Oddish - Grassy Terrain - Level 32
  (43, 4300, 580, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Oddish - Moonlight - Level 36
  (43, 4300, 236, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Oddish - Petal Dance - Level 40
  (43, 4300, 80, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Oddish - Solar Beam - TM11
  (43, 4300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Oddish - Rest - TM21
  (43, 4300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Oddish - Snore - TM24
  (43, 4300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Oddish - Protect - TM25
  (43, 4300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Oddish - Giga Drain - TM28
  (43, 4300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Oddish - Charm - TM29
  (43, 4300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Oddish - Attract - TM31
  (43, 4300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Oddish - Sunny Day - TM34
  (43, 4300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Oddish - Facade - TM39
  (43, 4300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Oddish - Bullet Seed - TM50
  (43, 4300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 24),
  -- Oddish - Venoshock - TM74
  (43, 4300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 25),
  -- Oddish - Round - TM76
  (43, 4300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Oddish - Grassy Terrain - TM88
  (43, 4300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 27),
  -- Oddish - Swords Dance - TR00
  (43, 4300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Oddish - Substitute - TR20
  (43, 4300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Oddish - Sludge Bomb - TR22
  (43, 4300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 30),
  -- Oddish - Endure - TR26
  (43, 4300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Oddish - Sleep Talk - TR27
  (43, 4300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Oddish - Seed Bomb - TR59
  (43, 4300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 33),
  -- Oddish - Energy Ball - TR65
  (43, 4300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 34),
  -- Oddish - Grass Knot - TR77
  (43, 4300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 35),
  -- Oddish - Dazzling Gleam - TR92
  (43, 4300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 36),
  -- Oddish - Leech Seed - Egg
  (43, 4300, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Oddish - Razor Leaf - Egg
  (43, 4300, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Oddish - Flail - Egg
  (43, 4300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Oddish - Synthesis - Egg
  (43, 4300, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Oddish - Nature Power - Egg
  (43, 4300, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Oddish - Ingrain - Egg
  (43, 4300, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Oddish - Teeter Dance - Egg
  (43, 4300, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Oddish - Tickle - Egg
  (43, 4300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oddish - After You - Egg
  (43, 4300, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oddish - Strength Sap - Egg
  (43, 4300, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gloom - Acid - Level 1
  (44, 4400, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Growth - Level 1
  (44, 4400, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gloom - Mega Drain - Level 12
  (44, 4400, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gloom - Poison Powder - Level 14
  (44, 4400, 77, 18, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gloom - Stun Spore - Level 16
  (44, 4400, 78, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gloom - Sleep Powder - Level 18
  (44, 4400, 79, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Gloom - Giga Drain - Level 20
  (44, 4400, 202, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gloom - Toxic - Level 26
  (44, 4400, 92, 18, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gloom - Moonblast - Level 32
  (44, 4400, 585, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Gloom - Grassy Terrain - Level 38
  (44, 4400, 580, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Gloom - Moonlight - Level 44
  (44, 4400, 236, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gloom - Petal Dance - Level 50
  (44, 4400, 80, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gloom - Solar Beam - TM11
  (44, 4400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Gloom - Rest - TM21
  (44, 4400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Gloom - Snore - TM24
  (44, 4400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Gloom - Protect - TM25
  (44, 4400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Gloom - Giga Drain - TM28
  (44, 4400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Gloom - Charm - TM29
  (44, 4400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Gloom - Attract - TM31
  (44, 4400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Gloom - Sunny Day - TM34
  (44, 4400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Gloom - Facade - TM39
  (44, 4400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Gloom - Bullet Seed - TM50
  (44, 4400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 24),
  -- Gloom - Fling - TM59
  (44, 4400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 25),
  -- Gloom - Drain Punch - TM63
  (44, 4400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 26),
  -- Gloom - Venoshock - TM74
  (44, 4400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Gloom - Round - TM76
  (44, 4400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Gloom - Grassy Terrain - TM88
  (44, 4400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 29),
  -- Gloom - Swords Dance - TR00
  (44, 4400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Gloom - Substitute - TR20
  (44, 4400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Gloom - Sludge Bomb - TR22
  (44, 4400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 32),
  -- Gloom - Endure - TR26
  (44, 4400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Gloom - Sleep Talk - TR27
  (44, 4400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Gloom - Seed Bomb - TR59
  (44, 4400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 35),
  -- Gloom - Energy Ball - TR65
  (44, 4400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 36),
  -- Gloom - Grass Knot - TR77
  (44, 4400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 37),
  -- Gloom - Dazzling Gleam - TR92
  (44, 4400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 38),
  -- Vileplume - Acid - Level 1
  (45, 4500, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Absorb - Level 1
  (45, 4500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Mega Drain - Level 1
  (45, 4500, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Growth - Level 1
  (45, 4500, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Poison Powder - Level 1
  (45, 4500, 77, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vileplume - Sleep Powder - Level 1
  (45, 4500, 79, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vileplume - Petal Dance - Level 1
  (45, 4500, 80, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vileplume - Toxic - Level 1
  (45, 4500, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vileplume - Giga Drain - Level 1
  (45, 4500, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vileplume - Sweet Scent - Level 1
  (45, 4500, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vileplume - Moonlight - Level 1
  (45, 4500, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Vileplume - Aromatherapy - Level 1
  (45, 4500, 312, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Vileplume - Petal Blizzard - Level 1
  (45, 4500, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Vileplume - Grassy Terrain - Level 1
  (45, 4500, 580, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Vileplume - Moonblast - Level 1
  (45, 4500, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Vileplume - Petal Blizzard - Evolution
  (45, 4500, 572, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Vileplume - Hyper Beam - TM08
  (45, 4500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Vileplume - Giga Impact - TM09
  (45, 4500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Vileplume - Solar Beam - TM11
  (45, 4500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Vileplume - Safeguard - TM19
  (45, 4500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Vileplume - Rest - TM21
  (45, 4500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Vileplume - Snore - TM24
  (45, 4500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Vileplume - Protect - TM25
  (45, 4500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Vileplume - Giga Drain - TM28
  (45, 4500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Vileplume - Charm - TM29
  (45, 4500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Vileplume - Attract - TM31
  (45, 4500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Vileplume - Sunny Day - TM34
  (45, 4500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Vileplume - Facade - TM39
  (45, 4500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Vileplume - Bullet Seed - TM50
  (45, 4500, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Vileplume - Fling - TM59
  (45, 4500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Vileplume - Drain Punch - TM63
  (45, 4500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Vileplume - Venoshock - TM74
  (45, 4500, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 33),
  -- Vileplume - Round - TM76
  (45, 4500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Vileplume - Grassy Terrain - TM88
  (45, 4500, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 35),
  -- Vileplume - Swords Dance - TR00
  (45, 4500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 36),
  -- Vileplume - Body Slam - TR01
  (45, 4500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Vileplume - Substitute - TR20
  (45, 4500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Vileplume - Sludge Bomb - TR22
  (45, 4500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Vileplume - Endure - TR26
  (45, 4500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Vileplume - Sleep Talk - TR27
  (45, 4500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Vileplume - Seed Bomb - TR59
  (45, 4500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 42),
  -- Vileplume - Energy Ball - TR65
  (45, 4500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Vileplume - Grass Knot - TR77
  (45, 4500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 44),
  -- Vileplume - Sludge Wave - TR78
  (45, 4500, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 45),
  -- Vileplume - Dazzling Gleam - TR92
  (45, 4500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 46),
  -- Vileplume - Pollen Puff - TR96
  (45, 4500, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 47),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 1
  (50, 5000, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 4
  (50, 5000, 45, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett - Astonish - Level 8
  (50, 5000, 310, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diglett - Mud-Slap - Level 12
  (50, 5000, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett - Bulldoze - Level 16
  (50, 5000, 523, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Diglett - Sucker Punch - Level 20
  (50, 5000, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Diglett - Slash - Level 24
  (50, 5000, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Diglett - Sandstorm - Level 28
  (50, 5000, 201, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Diglett - Dig - Level 32
  (50, 5000, 91, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Diglett - Earth Power - Level 36
  (50, 5000, 414, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Diglett - Earthquake - Level 40
  (50, 5000, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Diglett - Fissure - Level 44
  (50, 5000, 90, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Diglett - Dig - TM15
  (50, 5000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Diglett - Screech - TM16
  (50, 5000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Diglett - Rest - TM21
  (50, 5000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Diglett - Rock Slide - TM22
  (50, 5000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Diglett - Thief - TM23
  (50, 5000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Diglett - Snore - TM24
  (50, 5000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Diglett - Protect - TM25
  (50, 5000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Diglett - Attract - TM31
  (50, 5000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Diglett - Sandstorm - TM32
  (50, 5000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Diglett - Sunny Day - TM34
  (50, 5000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Diglett - Beat Up - TM37
  (50, 5000, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 24),
  -- Diglett - Facade - TM39
  (50, 5000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Diglett - Rock Tomb - TM48
  (50, 5000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Diglett - Assurance - TM58
  (50, 5000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Diglett - Shadow Claw - TM65
  (50, 5000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Diglett - Round - TM76
  (50, 5000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Diglett - Bulldoze - TM81
  (50, 5000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Diglett - Stomping Tantrum - TM98
  (50, 5000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 31),
  -- Diglett - Body Slam - TR01
  (50, 5000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Diglett - Earthquake - TR10
  (50, 5000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Diglett - Agility - TR12
  (50, 5000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 34),
  -- Diglett - Substitute - TR20
  (50, 5000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Diglett - Reversal - TR21
  (50, 5000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 36),
  -- Diglett - Sludge Bomb - TR22
  (50, 5000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 37),
  -- Diglett - Endure - TR26
  (50, 5000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Diglett - Sleep Talk - TR27
  (50, 5000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Diglett - Uproar - TR35
  (50, 5000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 40),
  -- Diglett - Earth Power - TR67
  (50, 5000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 41),
  -- Diglett - Stealth Rock - TR76
  (50, 5000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 42),
  -- Diglett - Ally Switch - TR83
  (50, 5000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 43),
  -- Diglett - Work Up - TR85
  (50, 5000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 44),
  -- Diglett - Headbutt - Egg
  (50, 5000, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Diglett - Ancient Power - Egg
  (50, 5000, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Diglett - Memento - Egg
  (50, 5000, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Diglett - Hone Claws - Egg
  (50, 5000, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Diglett - Final Gambit - Egg
  (50, 5000, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 49);

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
  -- Ivysaur - Petal Dance - Egg
  (2, 200, 80, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ivysaur - Toxic - Egg
  (2, 200, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ivysaur - Skull Bash - Egg
  (2, 200, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ivysaur - Curse - Egg
  (2, 200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ivysaur - Nature Power - Egg
  (2, 200, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ivysaur - Ingrain - Egg
  (2, 200, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Venusaur - Petal Dance - Egg
  (3, 300, 80, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Venusaur - Toxic - Egg
  (3, 300, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Venusaur - Skull Bash - Egg
  (3, 300, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Venusaur - Curse - Egg
  (3, 300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Venusaur - Nature Power - Egg
  (3, 300, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Venusaur - Ingrain - Egg
  (3, 300, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Charmeleon - Wing Attack - Egg
  (5, 500, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Charmeleon - Bite - Egg
  (5, 500, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Charmeleon - Counter - Egg
  (5, 500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Charmeleon - Belly Drum - Egg
  (5, 500, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Charmeleon - Metal Claw - Egg
  (5, 500, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Charmeleon - Ancient Power - Egg
  (5, 500, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Charmeleon - Dragon Rush - Egg
  (5, 500, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Charmeleon - Dragon Tail - Egg
  (5, 500, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Charizard - Wing Attack - Egg
  (6, 600, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Charizard - Bite - Egg
  (6, 600, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Charizard - Counter - Egg
  (6, 600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Charizard - Belly Drum - Egg
  (6, 600, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Charizard - Metal Claw - Egg
  (6, 600, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Charizard - Ancient Power - Egg
  (6, 600, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Charizard - Dragon Rush - Egg
  (6, 600, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Charizard - Dragon Tail - Egg
  (6, 600, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Wartortle - Mist - Egg
  (8, 800, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wartortle - Haze - Egg
  (8, 800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wartortle - Flail - Egg
  (8, 800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wartortle - Mirror Coat - Egg
  (8, 800, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wartortle - Fake Out - Egg
  (8, 800, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wartortle - Yawn - Egg
  (8, 800, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wartortle - Water Spout - Egg
  (8, 800, 323, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wartortle - Aqua Ring - Egg
  (8, 800, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Wartortle - Aqua Jet - Egg
  (8, 800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Wartortle - Life Dew - Egg
  (8, 800, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Blastoise - Mist - Egg
  (9, 900, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Blastoise - Haze - Egg
  (9, 900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Blastoise - Flail - Egg
  (9, 900, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Blastoise - Mirror Coat - Egg
  (9, 900, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Blastoise - Fake Out - Egg
  (9, 900, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Blastoise - Yawn - Egg
  (9, 900, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Blastoise - Water Spout - Egg
  (9, 900, 323, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Blastoise - Aqua Ring - Egg
  (9, 900, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Blastoise - Aqua Jet - Egg
  (9, 900, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Blastoise - Life Dew - Egg
  (9, 900, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Pikachu - Flail - Egg
  (25, 2500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pikachu - Present - Egg
  (25, 2500, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pikachu - Fake Out - Egg
  (25, 2500, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Pikachu - Charge - Egg
  (25, 2500, 268, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Pikachu - Wish - Egg
  (25, 2500, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Pikachu - Tickle - Egg
  (25, 2500, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Pikachu - Volt Tackle - Egg
  (25, 2500, 344, 18, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 69),
  -- Pikachu - Disarming Voice - Egg
  (25, 2500, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Raichu - Flail - Egg
  (26, 2600, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Raichu - Present - Egg
  (26, 2600, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Raichu - Fake Out - Egg
  (26, 2600, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Raichu - Charge - Egg
  (26, 2600, 268, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Raichu - Wish - Egg
  (26, 2600, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Raichu - Tickle - Egg
  (26, 2600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Raichu - Volt Tackle - Egg
  (26, 2600, 344, 18, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 78),
  -- Raichu - Disarming Voice - Egg
  (26, 2600, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Sandslash - Agility - Level 1
  (28, 2800, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 64),
  -- Sandslash - Counter - Egg
  (28, 2800, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sandslash - Flail - Egg
  (28, 2800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sandslash - Mud-Slap - Egg
  (28, 2800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sandslash - Metal Claw - Egg
  (28, 2800, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sandslash - Night Slash - Egg
  (28, 2800, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sandslash - Hone Claws - Egg
  (28, 2800, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Nidorina - Take Down - Egg
  (30, 3000, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidorina - Supersonic - Egg
  (30, 3000, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidorina - Disable - Egg
  (30, 3000, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidorina - Counter - Egg
  (30, 3000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidorina - Skull Bash - Egg
  (30, 3000, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidorina - Poison Fang - Egg
  (30, 3000, 305, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidorina - Poison Tail - Egg
  (30, 3000, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoqueen - Sludge Wave - Level 1
  (31, 3100, 482, 18, NULL, 1, 1, NULL, NULL, NULL, 87),
  -- Nidoqueen - Take Down - Egg
  (31, 3100, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Nidoqueen - Supersonic - Egg
  (31, 3100, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Nidoqueen - Disable - Egg
  (31, 3100, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Nidoqueen - Counter - Egg
  (31, 3100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Nidoqueen - Skull Bash - Egg
  (31, 3100, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Nidoqueen - Poison Fang - Egg
  (31, 3100, 305, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Nidoqueen - Poison Tail - Egg
  (31, 3100, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Nidorino - Horn Drill - Egg
  (33, 3300, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidorino - Take Down - Egg
  (33, 3300, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidorino - Thrash - Egg
  (33, 3300, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidorino - Supersonic - Egg
  (33, 3300, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidorino - Disable - Egg
  (33, 3300, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidorino - Counter - Egg
  (33, 3300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidorino - Confusion - Egg
  (33, 3300, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidorino - Poison Tail - Egg
  (33, 3300, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidorino - Sucker Punch - Egg
  (33, 3300, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nidorino - Head Smash - Egg
  (33, 3300, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Nidoking - Sludge Wave - Level 1
  (34, 3400, 482, 18, NULL, 1, 1, NULL, NULL, NULL, 88),
  -- Nidoking - Horn Drill - Egg
  (34, 3400, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Nidoking - Take Down - Egg
  (34, 3400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Nidoking - Thrash - Egg
  (34, 3400, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Nidoking - Supersonic - Egg
  (34, 3400, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Nidoking - Disable - Egg
  (34, 3400, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Nidoking - Counter - Egg
  (34, 3400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Nidoking - Confusion - Egg
  (34, 3400, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Nidoking - Poison Tail - Egg
  (34, 3400, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Nidoking - Sucker Punch - Egg
  (34, 3400, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Nidoking - Head Smash - Egg
  (34, 3400, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Clefairy - Present - Egg
  (35, 3500, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Clefairy - Wish - Egg
  (35, 3500, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Clefairy - Aromatherapy - Egg
  (35, 3500, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Clefairy - Tickle - Egg
  (35, 3500, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Clefairy - Heal Pulse - Egg
  (35, 3500, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Clefable - Present - Egg
  (36, 3600, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Clefable - Wish - Egg
  (36, 3600, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Clefable - Aromatherapy - Egg
  (36, 3600, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Clefable - Tickle - Egg
  (36, 3600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Clefable - Heal Pulse - Egg
  (36, 3600, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Ninetales - Roar - Egg
  (38, 3800, 46, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ninetales - Hypnosis - Egg
  (38, 3800, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ninetales - Flail - Egg
  (38, 3800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ninetales - Memento - Egg
  (38, 3800, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ninetales - Howl - Egg
  (38, 3800, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ninetales - Flame Charge - Egg
  (38, 3800, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ninetales - Baby-Doll Eyes - Egg
  (38, 3800, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Jigglypuff - Perish Song - Egg
  (39, 3900, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Jigglypuff - Rollout - Egg
  (39, 3900, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Jigglypuff - Present - Egg
  (39, 3900, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Jigglypuff - Wish - Egg
  (39, 3900, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Jigglypuff - Covet - Egg
  (39, 3900, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Jigglypuff - Gravity - Egg
  (39, 3900, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Jigglypuff - Last Resort - Egg
  (39, 3900, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Jigglypuff - Heal Pulse - Egg
  (39, 3900, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Wigglytuff - Perish Song - Egg
  (40, 4000, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Wigglytuff - Rollout - Egg
  (40, 4000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Wigglytuff - Present - Egg
  (40, 4000, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Wigglytuff - Wish - Egg
  (40, 4000, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Wigglytuff - Covet - Egg
  (40, 4000, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Wigglytuff - Gravity - Egg
  (40, 4000, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Wigglytuff - Last Resort - Egg
  (40, 4000, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Wigglytuff - Heal Pulse - Egg
  (40, 4000, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Golbat - Gust - Egg
  (42, 4200, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Golbat - Wing Attack - Egg
  (42, 4200, 17, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Golbat - Whirlwind - Egg
  (42, 4200, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golbat - Hypnosis - Egg
  (42, 4200, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Golbat - Quick Attack - Egg
  (42, 4200, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Golbat - Curse - Egg
  (42, 4200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Golbat - Defog - Egg
  (42, 4200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gloom - Leech Seed - Egg
  (44, 4400, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Gloom - Razor Leaf - Egg
  (44, 4400, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gloom - Flail - Egg
  (44, 4400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gloom - Synthesis - Egg
  (44, 4400, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gloom - Nature Power - Egg
  (44, 4400, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gloom - Ingrain - Egg
  (44, 4400, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gloom - Teeter Dance - Egg
  (44, 4400, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gloom - Tickle - Egg
  (44, 4400, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gloom - After You - Egg
  (44, 4400, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gloom - Strength Sap - Egg
  (44, 4400, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Leech Seed - Egg
  (45, 4500, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Razor Leaf - Egg
  (45, 4500, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vileplume - Flail - Egg
  (45, 4500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vileplume - Synthesis - Egg
  (45, 4500, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vileplume - Nature Power - Egg
  (45, 4500, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vileplume - Ingrain - Egg
  (45, 4500, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vileplume - Teeter Dance - Egg
  (45, 4500, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vileplume - Tickle - Egg
  (45, 4500, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vileplume - After You - Egg
  (45, 4500, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vileplume - Strength Sap - Egg
  (45, 4500, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 57);
