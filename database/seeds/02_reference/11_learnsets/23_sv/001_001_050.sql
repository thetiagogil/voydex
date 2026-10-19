-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 001-050.
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
  (1, 100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 1
  (1, 100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bulbasaur - Vine Whip - Level 3
  (1, 100, 22, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bulbasaur - Growth - Level 6
  (1, 100, 74, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bulbasaur - Leech Seed - Level 9
  (1, 100, 73, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bulbasaur - Razor Leaf - Level 12
  (1, 100, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Bulbasaur - Seed Bomb - Level 18
  (1, 100, 402, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Bulbasaur - Take Down - Level 21
  (1, 100, 36, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Bulbasaur - Sweet Scent - Level 24
  (1, 100, 230, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Bulbasaur - Synthesis - Level 27
  (1, 100, 235, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Bulbasaur - Worry Seed - Level 30
  (1, 100, 388, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Bulbasaur - Power Whip - Level 33
  (1, 100, 438, 23, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Bulbasaur - Solar Beam - Level 36
  (1, 100, 76, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Bulbasaur - Take Down - TM001
  (1, 100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Bulbasaur - Charm - TM002
  (1, 100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Bulbasaur - Protect - TM007
  (1, 100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Bulbasaur - Acid Spray - TM013
  (1, 100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Bulbasaur - Trailblaze - TM020
  (1, 100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Bulbasaur - Facade - TM025
  (1, 100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Bulbasaur - Magical Leaf - TM033
  (1, 100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Bulbasaur - Venoshock - TM045
  (1, 100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Bulbasaur - Endure - TM047
  (1, 100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Bulbasaur - Sunny Day - TM049
  (1, 100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Bulbasaur - Bullet Seed - TM056
  (1, 100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Bulbasaur - False Swipe - TM057
  (1, 100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Bulbasaur - Body Slam - TM066
  (1, 100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Bulbasaur - Sleep Talk - TM070
  (1, 100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Bulbasaur - Seed Bomb - TM071
  (1, 100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Bulbasaur - Grass Knot - TM081
  (1, 100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Bulbasaur - Rest - TM085
  (1, 100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Bulbasaur - Swords Dance - TM088
  (1, 100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Bulbasaur - Substitute - TM103
  (1, 100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Bulbasaur - Giga Drain - TM111
  (1, 100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Bulbasaur - Energy Ball - TM119
  (1, 100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Bulbasaur - Helping Hand - TM130
  (1, 100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Bulbasaur - Grassy Terrain - TM137
  (1, 100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Bulbasaur - Grass Pledge - TM146
  (1, 100, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 39),
  -- Bulbasaur - Sludge Bomb - TM148
  (1, 100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Bulbasaur - Leaf Storm - TM159
  (1, 100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Bulbasaur - Solar Beam - TM168
  (1, 100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Bulbasaur - Tera Blast - TM171
  (1, 100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Bulbasaur - Petal Dance - Egg
  (1, 100, 80, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bulbasaur - Toxic - Egg
  (1, 100, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bulbasaur - Curse - Egg
  (1, 100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bulbasaur - Ingrain - Egg
  (1, 100, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ivysaur - Vine Whip - Level 1
  (2, 200, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growth - Level 1
  (2, 200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 9
  (2, 200, 73, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ivysaur - Razor Leaf - Level 12
  (2, 200, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Seed Bomb - Level 20
  (2, 200, 402, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ivysaur - Take Down - Level 25
  (2, 200, 36, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ivysaur - Sweet Scent - Level 30
  (2, 200, 230, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ivysaur - Synthesis - Level 35
  (2, 200, 235, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Ivysaur - Worry Seed - Level 40
  (2, 200, 388, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Ivysaur - Power Whip - Level 45
  (2, 200, 438, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Ivysaur - Solar Beam - Level 50
  (2, 200, 76, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Ivysaur - Take Down - TM001
  (2, 200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ivysaur - Charm - TM002
  (2, 200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Ivysaur - Protect - TM007
  (2, 200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Ivysaur - Acid Spray - TM013
  (2, 200, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Ivysaur - Trailblaze - TM020
  (2, 200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Ivysaur - Facade - TM025
  (2, 200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Ivysaur - Magical Leaf - TM033
  (2, 200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Ivysaur - Venoshock - TM045
  (2, 200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Ivysaur - Endure - TM047
  (2, 200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Ivysaur - Sunny Day - TM049
  (2, 200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Ivysaur - Bullet Seed - TM056
  (2, 200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Ivysaur - False Swipe - TM057
  (2, 200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Ivysaur - Body Slam - TM066
  (2, 200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Ivysaur - Sleep Talk - TM070
  (2, 200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Ivysaur - Seed Bomb - TM071
  (2, 200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Ivysaur - Grass Knot - TM081
  (2, 200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Ivysaur - Rest - TM085
  (2, 200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Ivysaur - Swords Dance - TM088
  (2, 200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Ivysaur - Substitute - TM103
  (2, 200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Ivysaur - Giga Drain - TM111
  (2, 200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Ivysaur - Energy Ball - TM119
  (2, 200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Ivysaur - Helping Hand - TM130
  (2, 200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Ivysaur - Grassy Terrain - TM137
  (2, 200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Ivysaur - Grass Pledge - TM146
  (2, 200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 39),
  -- Ivysaur - Sludge Bomb - TM148
  (2, 200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Ivysaur - Leaf Storm - TM159
  (2, 200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Ivysaur - Solar Beam - TM168
  (2, 200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Ivysaur - Tera Blast - TM171
  (2, 200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Ivysaur - Petal Dance - Egg
  (2, 200, 80, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ivysaur - Toxic - Egg
  (2, 200, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ivysaur - Curse - Egg
  (2, 200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ivysaur - Ingrain - Egg
  (2, 200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Growth - Level 1
  (3, 300, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Petal Dance - Level 1
  (3, 300, 80, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venusaur - Leech Seed - Level 9
  (3, 300, 73, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Venusaur - Razor Leaf - Level 12
  (3, 300, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Venusaur - Seed Bomb - Level 20
  (3, 300, 402, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Venusaur - Take Down - Level 25
  (3, 300, 36, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Venusaur - Sweet Scent - Level 30
  (3, 300, 230, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Venusaur - Synthesis - Level 37
  (3, 300, 235, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Venusaur - Worry Seed - Level 44
  (3, 300, 388, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Venusaur - Power Whip - Level 51
  (3, 300, 438, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Venusaur - Solar Beam - Level 58
  (3, 300, 76, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Venusaur - Take Down - TM001
  (3, 300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Venusaur - Charm - TM002
  (3, 300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Venusaur - Scary Face - TM006
  (3, 300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Venusaur - Protect - TM007
  (3, 300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Venusaur - Acid Spray - TM013
  (3, 300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Venusaur - Trailblaze - TM020
  (3, 300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Venusaur - Facade - TM025
  (3, 300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Venusaur - Bulldoze - TM028
  (3, 300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Venusaur - Magical Leaf - TM033
  (3, 300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Venusaur - Venoshock - TM045
  (3, 300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Venusaur - Endure - TM047
  (3, 300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Venusaur - Sunny Day - TM049
  (3, 300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Venusaur - Bullet Seed - TM056
  (3, 300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 29),
  -- Venusaur - False Swipe - TM057
  (3, 300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Venusaur - Body Slam - TM066
  (3, 300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Venusaur - Sleep Talk - TM070
  (3, 300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Venusaur - Seed Bomb - TM071
  (3, 300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Venusaur - Grass Knot - TM081
  (3, 300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Venusaur - Poison Jab - TM083
  (3, 300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Venusaur - Stomping Tantrum - TM084
  (3, 300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Venusaur - Rest - TM085
  (3, 300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Venusaur - Swords Dance - TM088
  (3, 300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Venusaur - Substitute - TM103
  (3, 300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Venusaur - Giga Drain - TM111
  (3, 300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Venusaur - Energy Ball - TM119
  (3, 300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Venusaur - Amnesia - TM128
  (3, 300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Venusaur - Helping Hand - TM130
  (3, 300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Venusaur - Earth Power - TM133
  (3, 300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Venusaur - Grassy Terrain - TM137
  (3, 300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Venusaur - Grass Pledge - TM146
  (3, 300, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 46),
  -- Venusaur - Sludge Bomb - TM148
  (3, 300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Venusaur - Earthquake - TM149
  (3, 300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Venusaur - Giga Impact - TM152
  (3, 300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Venusaur - Frenzy Plant - TM155
  (3, 300, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 50),
  -- Venusaur - Leaf Storm - TM159
  (3, 300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 51),
  -- Venusaur - Hyper Beam - TM163
  (3, 300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Venusaur - Solar Beam - TM168
  (3, 300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 53),
  -- Venusaur - Tera Blast - TM171
  (3, 300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Venusaur - Petal Dance - Egg
  (3, 300, 80, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Venusaur - Toxic - Egg
  (3, 300, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Venusaur - Curse - Egg
  (3, 300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Venusaur - Ingrain - Egg
  (3, 300, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Venusaur - Petal Blizzard - Evolution
  (3, 300, 572, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 4
  (4, 400, 52, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 8
  (4, 400, 108, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Breath - Level 12
  (4, 400, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmander - Fire Fang - Level 17
  (4, 400, 424, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmander - Slash - Level 20
  (4, 400, 163, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charmander - Flamethrower - Level 24
  (4, 400, 53, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charmander - Scary Face - Level 28
  (4, 400, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 32
  (4, 400, 83, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Charmander - Inferno - Level 36
  (4, 400, 517, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Charmander - Flare Blitz - Level 40
  (4, 400, 394, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Charmander - Take Down - TM001
  (4, 400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Charmander - Scary Face - TM006
  (4, 400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Charmander - Protect - TM007
  (4, 400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Charmander - Fire Fang - TM008
  (4, 400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Charmander - Fire Spin - TM024
  (4, 400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 17),
  -- Charmander - Facade - TM025
  (4, 400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Charmander - Metal Claw - TM031
  (4, 400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 19),
  -- Charmander - Swift - TM032
  (4, 400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Charmander - Rock Tomb - TM036
  (4, 400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Charmander - Flame Charge - TM038
  (4, 400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Charmander - Fling - TM043
  (4, 400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Charmander - Dragon Tail - TM044
  (4, 400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Charmander - Endure - TM047
  (4, 400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Charmander - Sunny Day - TM049
  (4, 400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Charmander - Dig - TM055
  (4, 400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Charmander - False Swipe - TM057
  (4, 400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 28),
  -- Charmander - Brick Break - TM058
  (4, 400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Charmander - Shadow Claw - TM061
  (4, 400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Charmander - Body Slam - TM066
  (4, 400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Charmander - Fire Punch - TM067
  (4, 400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Charmander - Thunder Punch - TM068
  (4, 400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Charmander - Sleep Talk - TM070
  (4, 400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Charmander - Dragon Claw - TM078
  (4, 400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Charmander - Rest - TM085
  (4, 400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Charmander - Rock Slide - TM086
  (4, 400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Charmander - Swords Dance - TM088
  (4, 400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Charmander - Dragon Dance - TM100
  (4, 400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 39),
  -- Charmander - Substitute - TM103
  (4, 400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Charmander - Will-O-Wisp - TM107
  (4, 400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Charmander - Crunch - TM108
  (4, 400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Charmander - Dragon Pulse - TM115
  (4, 400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Charmander - Heat Wave - TM118
  (4, 400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Charmander - Flamethrower - TM125
  (4, 400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Charmander - Helping Hand - TM130
  (4, 400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Charmander - Fire Blast - TM141
  (4, 400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 47),
  -- Charmander - Fire Pledge - TM144
  (4, 400, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 48),
  -- Charmander - Outrage - TM156
  (4, 400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Charmander - Overheat - TM157
  (4, 400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 50),
  -- Charmander - Focus Blast - TM158
  (4, 400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Charmander - Flare Blitz - TM165
  (4, 400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 52),
  -- Charmander - Tera Blast - TM171
  (4, 400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Charmander - Bite - Egg
  (4, 400, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmander - Counter - Egg
  (4, 400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmander - Belly Drum - Egg
  (4, 400, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmander - Iron Tail - Egg
  (4, 400, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Charmander - Metal Claw - Egg
  (4, 400, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Charmander - Ancient Power - Egg
  (4, 400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Charmander - Dragon Rush - Egg
  (4, 400, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Charmander - Dragon Tail - Egg
  (4, 400, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Smokescreen - Level 1
  (5, 500, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charmeleon - Dragon Breath - Level 12
  (5, 500, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmeleon - Fire Fang - Level 19
  (5, 500, 424, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Charmeleon - Slash - Level 24
  (5, 500, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 30
  (5, 500, 53, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Charmeleon - Scary Face - Level 37
  (5, 500, 184, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Charmeleon - Inferno - Level 48
  (5, 500, 517, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Charmeleon - Flare Blitz - Level 54
  (5, 500, 394, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Charmeleon - Take Down - TM001
  (5, 500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Charmeleon - Scary Face - TM006
  (5, 500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 13),
  -- Charmeleon - Protect - TM007
  (5, 500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Charmeleon - Fire Fang - TM008
  (5, 500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 15),
  -- Charmeleon - Fire Spin - TM024
  (5, 500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 16),
  -- Charmeleon - Facade - TM025
  (5, 500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Charmeleon - Swift - TM032
  (5, 500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Charmeleon - Rock Tomb - TM036
  (5, 500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Charmeleon - Flame Charge - TM038
  (5, 500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 20),
  -- Charmeleon - Fling - TM043
  (5, 500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Charmeleon - Dragon Tail - TM044
  (5, 500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 22),
  -- Charmeleon - Endure - TM047
  (5, 500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Charmeleon - Sunny Day - TM049
  (5, 500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Charmeleon - Dig - TM055
  (5, 500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Charmeleon - False Swipe - TM057
  (5, 500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 26),
  -- Charmeleon - Brick Break - TM058
  (5, 500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Charmeleon - Shadow Claw - TM061
  (5, 500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Charmeleon - Body Slam - TM066
  (5, 500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Charmeleon - Fire Punch - TM067
  (5, 500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Charmeleon - Thunder Punch - TM068
  (5, 500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Charmeleon - Sleep Talk - TM070
  (5, 500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Charmeleon - Dragon Claw - TM078
  (5, 500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 33),
  -- Charmeleon - Rest - TM085
  (5, 500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Charmeleon - Rock Slide - TM086
  (5, 500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Charmeleon - Swords Dance - TM088
  (5, 500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Charmeleon - Dragon Dance - TM100
  (5, 500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 37),
  -- Charmeleon - Substitute - TM103
  (5, 500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Charmeleon - Will-O-Wisp - TM107
  (5, 500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 39),
  -- Charmeleon - Crunch - TM108
  (5, 500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Charmeleon - Dragon Pulse - TM115
  (5, 500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Charmeleon - Heat Wave - TM118
  (5, 500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Charmeleon - Flamethrower - TM125
  (5, 500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Charmeleon - Helping Hand - TM130
  (5, 500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Charmeleon - Fire Blast - TM141
  (5, 500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Charmeleon - Fire Pledge - TM144
  (5, 500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 46),
  -- Charmeleon - Outrage - TM156
  (5, 500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Charmeleon - Overheat - TM157
  (5, 500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 48),
  -- Charmeleon - Focus Blast - TM158
  (5, 500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 49),
  -- Charmeleon - Flare Blitz - TM165
  (5, 500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 50),
  -- Charmeleon - Tera Blast - TM171
  (5, 500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Charmeleon - Bite - Egg
  (5, 500, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Charmeleon - Counter - Egg
  (5, 500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Charmeleon - Belly Drum - Egg
  (5, 500, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmeleon - Iron Tail - Egg
  (5, 500, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmeleon - Metal Claw - Egg
  (5, 500, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmeleon - Ancient Power - Egg
  (5, 500, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Charmeleon - Dragon Rush - Egg
  (5, 500, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Charmeleon - Dragon Tail - Egg
  (5, 500, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Heat Wave - Level 1
  (6, 600, 257, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charizard - Dragon Claw - Level 1
  (6, 600, 337, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Charizard - Dragon Breath - Level 12
  (6, 600, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Charizard - Fire Fang - Level 19
  (6, 600, 424, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Charizard - Slash - Level 24
  (6, 600, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Charizard - Flamethrower - Level 30
  (6, 600, 53, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Charizard - Scary Face - Level 39
  (6, 600, 184, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Charizard - Fire Spin - Level 46
  (6, 600, 83, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Charizard - Inferno - Level 54
  (6, 600, 517, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Charizard - Flare Blitz - Level 62
  (6, 600, 394, 23, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Charizard - Take Down - TM001
  (6, 600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Charizard - Scary Face - TM006
  (6, 600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Charizard - Protect - TM007
  (6, 600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Charizard - Fire Fang - TM008
  (6, 600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Charizard - Acrobatics - TM014
  (6, 600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Charizard - Fire Spin - TM024
  (6, 600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Charizard - Facade - TM025
  (6, 600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Charizard - Aerial Ace - TM027
  (6, 600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Charizard - Bulldoze - TM028
  (6, 600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Charizard - Swift - TM032
  (6, 600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Charizard - Rock Tomb - TM036
  (6, 600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Charizard - Flame Charge - TM038
  (6, 600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Charizard - Air Cutter - TM040
  (6, 600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Charizard - Fling - TM043
  (6, 600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Charizard - Dragon Tail - TM044
  (6, 600, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Charizard - Endure - TM047
  (6, 600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Charizard - Sunny Day - TM049
  (6, 600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Charizard - Sandstorm - TM051
  (6, 600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Charizard - Dig - TM055
  (6, 600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Charizard - Brick Break - TM058
  (6, 600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Charizard - Shadow Claw - TM061
  (6, 600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Charizard - Air Slash - TM065
  (6, 600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 36),
  -- Charizard - Body Slam - TM066
  (6, 600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Charizard - Fire Punch - TM067
  (6, 600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Charizard - Thunder Punch - TM068
  (6, 600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Charizard - Sleep Talk - TM070
  (6, 600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Charizard - Dragon Claw - TM078
  (6, 600, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 41),
  -- Charizard - Rest - TM085
  (6, 600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Charizard - Rock Slide - TM086
  (6, 600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Charizard - Swords Dance - TM088
  (6, 600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Charizard - Fly - TM097
  (6, 600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 45),
  -- Charizard - Dragon Dance - TM100
  (6, 600, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 46),
  -- Charizard - Substitute - TM103
  (6, 600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Charizard - Will-O-Wisp - TM107
  (6, 600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 48),
  -- Charizard - Crunch - TM108
  (6, 600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Charizard - Dragon Pulse - TM115
  (6, 600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 50),
  -- Charizard - Heat Wave - TM118
  (6, 600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 51),
  -- Charizard - Flamethrower - TM125
  (6, 600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Charizard - Helping Hand - TM130
  (6, 600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Charizard - Fire Blast - TM141
  (6, 600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Charizard - Fire Pledge - TM144
  (6, 600, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 55),
  -- Charizard - Earthquake - TM149
  (6, 600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Charizard - Giga Impact - TM152
  (6, 600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Charizard - Blast Burn - TM153
  (6, 600, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 58),
  -- Charizard - Outrage - TM156
  (6, 600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Charizard - Overheat - TM157
  (6, 600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 60),
  -- Charizard - Focus Blast - TM158
  (6, 600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Charizard - Hurricane - TM160
  (6, 600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 62),
  -- Charizard - Hyper Beam - TM163
  (6, 600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Charizard - Flare Blitz - TM165
  (6, 600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 64),
  -- Charizard - Solar Beam - TM168
  (6, 600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Charizard - Tera Blast - TM171
  (6, 600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Charizard - Bite - Egg
  (6, 600, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Charizard - Counter - Egg
  (6, 600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Charizard - Belly Drum - Egg
  (6, 600, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Charizard - Iron Tail - Egg
  (6, 600, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Charizard - Metal Claw - Egg
  (6, 600, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Charizard - Ancient Power - Egg
  (6, 600, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Charizard - Dragon Rush - Egg
  (6, 600, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Charizard - Dragon Tail - Egg
  (6, 600, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Charizard - Air Slash - Evolution
  (6, 600, 403, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 1
  (7, 700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squirtle - Water Gun - Level 3
  (7, 700, 55, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 6
  (7, 700, 110, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Squirtle - Rapid Spin - Level 9
  (7, 700, 229, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 12
  (7, 700, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Squirtle - Water Pulse - Level 15
  (7, 700, 352, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 18
  (7, 700, 182, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Squirtle - Rain Dance - Level 21
  (7, 700, 240, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Squirtle - Aqua Tail - Level 24
  (7, 700, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Squirtle - Shell Smash - Level 27
  (7, 700, 504, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Squirtle - Iron Defense - Level 30
  (7, 700, 334, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Squirtle - Hydro Pump - Level 33
  (7, 700, 56, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Squirtle - Wave Crash - Level 36
  (7, 700, 834, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Squirtle - Take Down - TM001
  (7, 700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Squirtle - Protect - TM007
  (7, 700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Squirtle - Water Pulse - TM011
  (7, 700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Squirtle - Chilling Water - TM022
  (7, 700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Squirtle - Facade - TM025
  (7, 700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Squirtle - Icy Wind - TM034
  (7, 700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Squirtle - Mud Shot - TM035
  (7, 700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Squirtle - Fling - TM043
  (7, 700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Squirtle - Endure - TM047
  (7, 700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Squirtle - Rain Dance - TM050
  (7, 700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Squirtle - Dig - TM055
  (7, 700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Squirtle - Brick Break - TM058
  (7, 700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Squirtle - Zen Headbutt - TM059
  (7, 700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Squirtle - Body Slam - TM066
  (7, 700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Squirtle - Ice Punch - TM069
  (7, 700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 29),
  -- Squirtle - Sleep Talk - TM070
  (7, 700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Squirtle - Rest - TM085
  (7, 700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Squirtle - Substitute - TM103
  (7, 700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Squirtle - Iron Defense - TM104
  (7, 700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Squirtle - Liquidation - TM110
  (7, 700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Squirtle - Surf - TM123
  (7, 700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Squirtle - Ice Spinner - TM124
  (7, 700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Squirtle - Helping Hand - TM130
  (7, 700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Squirtle - Ice Beam - TM135
  (7, 700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Squirtle - Hydro Pump - TM142
  (7, 700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Squirtle - Blizzard - TM143
  (7, 700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Squirtle - Water Pledge - TM145
  (7, 700, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 41),
  -- Squirtle - Tera Blast - TM171
  (7, 700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Squirtle - Mist - Egg
  (7, 700, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Squirtle - Flail - Egg
  (7, 700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Squirtle - Mirror Coat - Egg
  (7, 700, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Squirtle - Fake Out - Egg
  (7, 700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Squirtle - Yawn - Egg
  (7, 700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Squirtle - Water Spout - Egg
  (7, 700, 323, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Squirtle - Aqua Ring - Egg
  (7, 700, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Squirtle - Aqua Jet - Egg
  (7, 700, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Squirtle - Life Dew - Egg
  (7, 700, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Water Gun - Level 1
  (8, 800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Withdraw - Level 1
  (8, 800, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wartortle - Rapid Spin - Level 9
  (8, 800, 229, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Wartortle - Bite - Level 12
  (8, 800, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wartortle - Water Pulse - Level 15
  (8, 800, 352, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wartortle - Protect - Level 20
  (8, 800, 182, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wartortle - Rain Dance - Level 25
  (8, 800, 240, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wartortle - Aqua Tail - Level 30
  (8, 800, 401, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wartortle - Shell Smash - Level 35
  (8, 800, 504, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Wartortle - Iron Defense - Level 40
  (8, 800, 334, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 45
  (8, 800, 56, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Wartortle - Wave Crash - Level 50
  (8, 800, 834, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Wartortle - Take Down - TM001
  (8, 800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Wartortle - Protect - TM007
  (8, 800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Wartortle - Water Pulse - TM011
  (8, 800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Wartortle - Chilling Water - TM022
  (8, 800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Wartortle - Facade - TM025
  (8, 800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Wartortle - Icy Wind - TM034
  (8, 800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Wartortle - Mud Shot - TM035
  (8, 800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Wartortle - Fling - TM043
  (8, 800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Wartortle - Endure - TM047
  (8, 800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Wartortle - Rain Dance - TM050
  (8, 800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Wartortle - Dig - TM055
  (8, 800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Wartortle - Brick Break - TM058
  (8, 800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Wartortle - Zen Headbutt - TM059
  (8, 800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Wartortle - Body Slam - TM066
  (8, 800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Wartortle - Ice Punch - TM069
  (8, 800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 29),
  -- Wartortle - Sleep Talk - TM070
  (8, 800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Wartortle - Rest - TM085
  (8, 800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Wartortle - Substitute - TM103
  (8, 800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Wartortle - Iron Defense - TM104
  (8, 800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Wartortle - Liquidation - TM110
  (8, 800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Wartortle - Surf - TM123
  (8, 800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Wartortle - Ice Spinner - TM124
  (8, 800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Wartortle - Helping Hand - TM130
  (8, 800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Wartortle - Ice Beam - TM135
  (8, 800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Wartortle - Hydro Pump - TM142
  (8, 800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Wartortle - Blizzard - TM143
  (8, 800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Wartortle - Water Pledge - TM145
  (8, 800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 41),
  -- Wartortle - Tera Blast - TM171
  (8, 800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Wartortle - Mist - Egg
  (8, 800, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wartortle - Flail - Egg
  (8, 800, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wartortle - Mirror Coat - Egg
  (8, 800, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wartortle - Fake Out - Egg
  (8, 800, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wartortle - Yawn - Egg
  (8, 800, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wartortle - Water Spout - Egg
  (8, 800, 323, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wartortle - Aqua Ring - Egg
  (8, 800, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wartortle - Aqua Jet - Egg
  (8, 800, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wartortle - Life Dew - Egg
  (8, 800, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Water Gun - Level 1
  (9, 900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Rapid Spin - Level 9
  (9, 900, 229, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Blastoise - Bite - Level 12
  (9, 900, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Blastoise - Water Pulse - Level 15
  (9, 900, 352, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Blastoise - Protect - Level 20
  (9, 900, 182, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Blastoise - Rain Dance - Level 25
  (9, 900, 240, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Blastoise - Aqua Tail - Level 30
  (9, 900, 401, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Blastoise - Shell Smash - Level 35
  (9, 900, 504, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Blastoise - Iron Defense - Level 42
  (9, 900, 334, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Blastoise - Hydro Pump - Level 49
  (9, 900, 56, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Blastoise - Wave Crash - Level 56
  (9, 900, 834, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Blastoise - Take Down - TM001
  (9, 900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Blastoise - Scary Face - TM006
  (9, 900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Blastoise - Protect - TM007
  (9, 900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Blastoise - Water Pulse - TM011
  (9, 900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Blastoise - Chilling Water - TM022
  (9, 900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Blastoise - Facade - TM025
  (9, 900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Blastoise - Icy Wind - TM034
  (9, 900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Blastoise - Mud Shot - TM035
  (9, 900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Blastoise - Rock Tomb - TM036
  (9, 900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Blastoise - Fling - TM043
  (9, 900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Blastoise - Avalanche - TM046
  (9, 900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 25),
  -- Blastoise - Endure - TM047
  (9, 900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Blastoise - Rain Dance - TM050
  (9, 900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Blastoise - Dig - TM055
  (9, 900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Blastoise - Brick Break - TM058
  (9, 900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Blastoise - Zen Headbutt - TM059
  (9, 900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Blastoise - Body Slam - TM066
  (9, 900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Blastoise - Ice Punch - TM069
  (9, 900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 32),
  -- Blastoise - Sleep Talk - TM070
  (9, 900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Blastoise - Rest - TM085
  (9, 900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Blastoise - Rock Slide - TM086
  (9, 900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Blastoise - Body Press - TM089
  (9, 900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Blastoise - Flash Cannon - TM093
  (9, 900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Blastoise - Dark Pulse - TM094
  (9, 900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Blastoise - Substitute - TM103
  (9, 900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Blastoise - Iron Defense - TM104
  (9, 900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Blastoise - Crunch - TM108
  (9, 900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Blastoise - Liquidation - TM110
  (9, 900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 42),
  -- Blastoise - Aura Sphere - TM112
  (9, 900, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 43),
  -- Blastoise - Dragon Pulse - TM115
  (9, 900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 44),
  -- Blastoise - Surf - TM123
  (9, 900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Blastoise - Ice Spinner - TM124
  (9, 900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 46),
  -- Blastoise - Helping Hand - TM130
  (9, 900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Blastoise - Ice Beam - TM135
  (9, 900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Blastoise - Hydro Pump - TM142
  (9, 900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Blastoise - Blizzard - TM143
  (9, 900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Blastoise - Water Pledge - TM145
  (9, 900, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 51),
  -- Blastoise - Earthquake - TM149
  (9, 900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Blastoise - Giga Impact - TM152
  (9, 900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Blastoise - Hydro Cannon - TM154
  (9, 900, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 54),
  -- Blastoise - Focus Blast - TM158
  (9, 900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 55),
  -- Blastoise - Hyper Beam - TM163
  (9, 900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Blastoise - Tera Blast - TM171
  (9, 900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Blastoise - Mist - Egg
  (9, 900, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Blastoise - Flail - Egg
  (9, 900, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Blastoise - Mirror Coat - Egg
  (9, 900, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Blastoise - Fake Out - Egg
  (9, 900, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Blastoise - Yawn - Egg
  (9, 900, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Blastoise - Water Spout - Egg
  (9, 900, 323, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Blastoise - Aqua Ring - Egg
  (9, 900, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Blastoise - Aqua Jet - Egg
  (9, 900, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Blastoise - Life Dew - Egg
  (9, 900, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Blastoise - Flash Cannon - Evolution
  (9, 900, 430, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 4
  (23, 2300, 40, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 9
  (23, 2300, 44, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 12
  (23, 2300, 137, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 17
  (23, 2300, 103, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 20
  (23, 2300, 51, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ekans - Stockpile - Level 25
  (23, 2300, 254, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ekans - Spit Up - Level 25
  (23, 2300, 255, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ekans - Swallow - Level 25
  (23, 2300, 256, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ekans - Acid Spray - Level 28
  (23, 2300, 491, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Ekans - Sludge Bomb - Level 33
  (23, 2300, 188, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ekans - Gastro Acid - Level 36
  (23, 2300, 380, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ekans - Belch - Level 38
  (23, 2300, 562, 23, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ekans - Haze - Level 41
  (23, 2300, 114, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ekans - Coil - Level 44
  (23, 2300, 489, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ekans - Gunk Shot - Level 49
  (23, 2300, 441, 23, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Ekans - Take Down - TM001
  (23, 2300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Ekans - Mud-Slap - TM005
  (23, 2300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Ekans - Scary Face - TM006
  (23, 2300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Ekans - Protect - TM007
  (23, 2300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Ekans - Fire Fang - TM008
  (23, 2300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Ekans - Acid Spray - TM013
  (23, 2300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 23),
  -- Ekans - Thief - TM018
  (23, 2300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Ekans - Trailblaze - TM020
  (23, 2300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Ekans - Facade - TM025
  (23, 2300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Ekans - Poison Tail - TM026
  (23, 2300, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 27),
  -- Ekans - Snarl - TM030
  (23, 2300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Ekans - Mud Shot - TM035
  (23, 2300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Ekans - Rock Tomb - TM036
  (23, 2300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Ekans - Venoshock - TM045
  (23, 2300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Ekans - Endure - TM047
  (23, 2300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Ekans - Sunny Day - TM049
  (23, 2300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Ekans - Rain Dance - TM050
  (23, 2300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Ekans - Dig - TM055
  (23, 2300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Ekans - Psychic Fangs - TM063
  (23, 2300, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Ekans - Sleep Talk - TM070
  (23, 2300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Ekans - Seed Bomb - TM071
  (23, 2300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Ekans - Poison Jab - TM083
  (23, 2300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Ekans - Rest - TM085
  (23, 2300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Ekans - Rock Slide - TM086
  (23, 2300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Ekans - Toxic Spikes - TM091
  (23, 2300, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 42),
  -- Ekans - Dark Pulse - TM094
  (23, 2300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Ekans - Leech Life - TM095
  (23, 2300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 44),
  -- Ekans - Gunk Shot - TM102
  (23, 2300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 45),
  -- Ekans - Substitute - TM103
  (23, 2300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Ekans - Crunch - TM108
  (23, 2300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Ekans - Giga Drain - TM111
  (23, 2300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Ekans - Sludge Bomb - TM148
  (23, 2300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 49),
  -- Ekans - Earthquake - TM149
  (23, 2300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Ekans - Tera Blast - TM171
  (23, 2300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Ekans - Spite - Egg
  (23, 2300, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ekans - Scary Face - Egg
  (23, 2300, 184, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ekans - Poison Fang - Egg
  (23, 2300, 305, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ekans - Poison Tail - Egg
  (23, 2300, 342, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ekans - Sucker Punch - Egg
  (23, 2300, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ekans - Switcheroo - Egg
  (23, 2300, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 1
  (24, 2400, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Thunder Fang - Level 1
  (24, 2400, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arbok - Ice Fang - Level 1
  (24, 2400, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arbok - Fire Fang - Level 1
  (24, 2400, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arbok - Glare - Level 12
  (24, 2400, 137, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Arbok - Screech - Level 17
  (24, 2400, 103, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Arbok - Acid - Level 20
  (24, 2400, 51, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Arbok - Stockpile - Level 27
  (24, 2400, 254, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Arbok - Spit Up - Level 27
  (24, 2400, 255, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Arbok - Swallow - Level 27
  (24, 2400, 256, 23, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Arbok - Acid Spray - Level 32
  (24, 2400, 491, 23, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Arbok - Sludge Bomb - Level 39
  (24, 2400, 188, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Arbok - Gastro Acid - Level 44
  (24, 2400, 380, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Arbok - Belch - Level 48
  (24, 2400, 562, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Arbok - Haze - Level 51
  (24, 2400, 114, 23, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Arbok - Coil - Level 56
  (24, 2400, 489, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Arbok - Gunk Shot - Level 63
  (24, 2400, 441, 23, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Arbok - Take Down - TM001
  (24, 2400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Arbok - Mud-Slap - TM005
  (24, 2400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 22),
  -- Arbok - Scary Face - TM006
  (24, 2400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 23),
  -- Arbok - Protect - TM007
  (24, 2400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Arbok - Fire Fang - TM008
  (24, 2400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 25),
  -- Arbok - Thunder Fang - TM009
  (24, 2400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 26),
  -- Arbok - Ice Fang - TM010
  (24, 2400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 27),
  -- Arbok - Acid Spray - TM013
  (24, 2400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 28),
  -- Arbok - Thief - TM018
  (24, 2400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 29),
  -- Arbok - Trailblaze - TM020
  (24, 2400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Arbok - Facade - TM025
  (24, 2400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Arbok - Poison Tail - TM026
  (24, 2400, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 32),
  -- Arbok - Bulldoze - TM028
  (24, 2400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Arbok - Snarl - TM030
  (24, 2400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Arbok - Mud Shot - TM035
  (24, 2400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 35),
  -- Arbok - Rock Tomb - TM036
  (24, 2400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 36),
  -- Arbok - Dragon Tail - TM044
  (24, 2400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 37),
  -- Arbok - Venoshock - TM045
  (24, 2400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 38),
  -- Arbok - Endure - TM047
  (24, 2400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Arbok - Sunny Day - TM049
  (24, 2400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Arbok - Rain Dance - TM050
  (24, 2400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 41),
  -- Arbok - Dig - TM055
  (24, 2400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Arbok - Psychic Fangs - TM063
  (24, 2400, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 43),
  -- Arbok - Body Slam - TM066
  (24, 2400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Arbok - Sleep Talk - TM070
  (24, 2400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Arbok - Seed Bomb - TM071
  (24, 2400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 46),
  -- Arbok - Poison Jab - TM083
  (24, 2400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Arbok - Stomping Tantrum - TM084
  (24, 2400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Arbok - Rest - TM085
  (24, 2400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Arbok - Rock Slide - TM086
  (24, 2400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Arbok - Toxic Spikes - TM091
  (24, 2400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 51),
  -- Arbok - Dark Pulse - TM094
  (24, 2400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 52),
  -- Arbok - Leech Life - TM095
  (24, 2400, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 53),
  -- Arbok - Gunk Shot - TM102
  (24, 2400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 54),
  -- Arbok - Substitute - TM103
  (24, 2400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Arbok - Crunch - TM108
  (24, 2400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 56),
  -- Arbok - Giga Drain - TM111
  (24, 2400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 57),
  -- Arbok - Sludge Bomb - TM148
  (24, 2400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 58),
  -- Arbok - Earthquake - TM149
  (24, 2400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Arbok - Giga Impact - TM152
  (24, 2400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Arbok - Hyper Beam - TM163
  (24, 2400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Arbok - Tera Blast - TM171
  (24, 2400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Arbok - Spite - Egg
  (24, 2400, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Arbok - Scary Face - Egg
  (24, 2400, 184, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Arbok - Poison Fang - Egg
  (24, 2400, 305, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Arbok - Poison Tail - Egg
  (24, 2400, 342, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Arbok - Sucker Punch - Egg
  (24, 2400, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Arbok - Switcheroo - Egg
  (24, 2400, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Arbok - Crunch - Evolution
  (24, 2400, 242, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Pikachu - Tail Whip - Level 1
  (25, 2500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pikachu - Quick Attack - Level 1
  (25, 2500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pikachu - Sweet Kiss - Level 1
  (25, 2500, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pikachu - Charm - Level 1
  (25, 2500, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pikachu - Nasty Plot - Level 1
  (25, 2500, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pikachu - Play Nice - Level 1
  (25, 2500, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Pikachu - Nuzzle - Level 1
  (25, 2500, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Pikachu - Thunder Wave - Level 4
  (25, 2500, 86, 23, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Pikachu - Double Team - Level 8
  (25, 2500, 104, 23, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Pikachu - Electro Ball - Level 12
  (25, 2500, 486, 23, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Pikachu - Feint - Level 16
  (25, 2500, 364, 23, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Pikachu - Spark - Level 20
  (25, 2500, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Pikachu - Agility - Level 24
  (25, 2500, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Pikachu - Iron Tail - Level 28
  (25, 2500, 231, 23, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Pikachu - Discharge - Level 32
  (25, 2500, 435, 23, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Pikachu - Thunderbolt - Level 36
  (25, 2500, 85, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Pikachu - Light Screen - Level 40
  (25, 2500, 113, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Pikachu - Thunder - Level 44
  (25, 2500, 87, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Pikachu - Take Down - TM001
  (25, 2500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Pikachu - Charm - TM002
  (25, 2500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Pikachu - Fake Tears - TM003
  (25, 2500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 23),
  -- Pikachu - Agility - TM004
  (25, 2500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 24),
  -- Pikachu - Protect - TM007
  (25, 2500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Pikachu - Thief - TM018
  (25, 2500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Pikachu - Disarming Voice - TM019
  (25, 2500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 27),
  -- Pikachu - Trailblaze - TM020
  (25, 2500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Pikachu - Charge Beam - TM023
  (25, 2500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 29),
  -- Pikachu - Facade - TM025
  (25, 2500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Pikachu - Swift - TM032
  (25, 2500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Pikachu - Draining Kiss - TM037
  (25, 2500, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Pikachu - Fling - TM043
  (25, 2500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Pikachu - Endure - TM047
  (25, 2500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Pikachu - Volt Switch - TM048
  (25, 2500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 35),
  -- Pikachu - Rain Dance - TM050
  (25, 2500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Pikachu - Dig - TM055
  (25, 2500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Pikachu - Brick Break - TM058
  (25, 2500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Pikachu - Body Slam - TM066
  (25, 2500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Pikachu - Thunder Punch - TM068
  (25, 2500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Pikachu - Sleep Talk - TM070
  (25, 2500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Pikachu - Electro Ball - TM072
  (25, 2500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 42),
  -- Pikachu - Reflect - TM074
  (25, 2500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Pikachu - Light Screen - TM075
  (25, 2500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Pikachu - Grass Knot - TM081
  (25, 2500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Pikachu - Thunder Wave - TM082
  (25, 2500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Pikachu - Rest - TM085
  (25, 2500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Pikachu - Eerie Impulse - TM096
  (25, 2500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Pikachu - Substitute - TM103
  (25, 2500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Pikachu - Encore - TM122
  (25, 2500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Pikachu - Surf - TM123
  (25, 2500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Pikachu - Thunderbolt - TM126
  (25, 2500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Pikachu - Play Rough - TM127
  (25, 2500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Pikachu - Helping Hand - TM130
  (25, 2500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Pikachu - Reversal - TM134
  (25, 2500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Pikachu - Electric Terrain - TM136
  (25, 2500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 56),
  -- Pikachu - Nasty Plot - TM140
  (25, 2500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Pikachu - Wild Charge - TM147
  (25, 2500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 58),
  -- Pikachu - Thunder - TM166
  (25, 2500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Pikachu - Tera Blast - TM171
  (25, 2500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Pikachu - Flail - Egg
  (25, 2500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pikachu - Present - Egg
  (25, 2500, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pikachu - Fake Out - Egg
  (25, 2500, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pikachu - Charge - Egg
  (25, 2500, 268, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pikachu - Wish - Egg
  (25, 2500, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Pikachu - Tickle - Egg
  (25, 2500, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Pikachu - Volt Tackle - Egg
  (25, 2500, 344, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Pikachu - Disarming Voice - Egg
  (25, 2500, 574, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Growl - Level 1
  (26, 2600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Thunder Wave - Level 1
  (26, 2600, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Thunder - Level 1
  (26, 2600, 87, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu - Agility - Level 1
  (26, 2600, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu - Double Team - Level 1
  (26, 2600, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Raichu - Light Screen - Level 1
  (26, 2600, 113, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Raichu - Sweet Kiss - Level 1
  (26, 2600, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Raichu - Charm - Level 1
  (26, 2600, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Raichu - Spark - Level 1
  (26, 2600, 209, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Raichu - Iron Tail - Level 1
  (26, 2600, 231, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Raichu - Feint - Level 1
  (26, 2600, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Raichu - Nasty Plot - Level 1
  (26, 2600, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Raichu - Discharge - Level 1
  (26, 2600, 435, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Raichu - Electro Ball - Level 1
  (26, 2600, 486, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Raichu - Play Nice - Level 1
  (26, 2600, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Raichu - Nuzzle - Level 1
  (26, 2600, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Raichu - Thunderbolt - Level 5
  (26, 2600, 85, 23, NULL, 1, 5, NULL, NULL, NULL, 20),
  -- Raichu - Take Down - TM001
  (26, 2600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Raichu - Charm - TM002
  (26, 2600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Raichu - Fake Tears - TM003
  (26, 2600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 23),
  -- Raichu - Agility - TM004
  (26, 2600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 24),
  -- Raichu - Protect - TM007
  (26, 2600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Raichu - Thief - TM018
  (26, 2600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Raichu - Disarming Voice - TM019
  (26, 2600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 27),
  -- Raichu - Trailblaze - TM020
  (26, 2600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Raichu - Charge Beam - TM023
  (26, 2600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 29),
  -- Raichu - Facade - TM025
  (26, 2600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Raichu - Swift - TM032
  (26, 2600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Raichu - Draining Kiss - TM037
  (26, 2600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Raichu - Fling - TM043
  (26, 2600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Raichu - Endure - TM047
  (26, 2600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Raichu - Volt Switch - TM048
  (26, 2600, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 35),
  -- Raichu - Rain Dance - TM050
  (26, 2600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Raichu - Dig - TM055
  (26, 2600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Raichu - Brick Break - TM058
  (26, 2600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Raichu - Body Slam - TM066
  (26, 2600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Raichu - Thunder Punch - TM068
  (26, 2600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Raichu - Sleep Talk - TM070
  (26, 2600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Raichu - Electro Ball - TM072
  (26, 2600, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 42),
  -- Raichu - Reflect - TM074
  (26, 2600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Raichu - Light Screen - TM075
  (26, 2600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Raichu - Grass Knot - TM081
  (26, 2600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Raichu - Thunder Wave - TM082
  (26, 2600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Raichu - Rest - TM085
  (26, 2600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Raichu - Eerie Impulse - TM096
  (26, 2600, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Raichu - Substitute - TM103
  (26, 2600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Raichu - Encore - TM122
  (26, 2600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Raichu - Surf - TM123
  (26, 2600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Raichu - Thunderbolt - TM126
  (26, 2600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Raichu - Play Rough - TM127
  (26, 2600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Raichu - Helping Hand - TM130
  (26, 2600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Raichu - Reversal - TM134
  (26, 2600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Raichu - Electric Terrain - TM136
  (26, 2600, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 56),
  -- Raichu - Nasty Plot - TM140
  (26, 2600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Raichu - Wild Charge - TM147
  (26, 2600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 58),
  -- Raichu - Giga Impact - TM152
  (26, 2600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Raichu - Focus Blast - TM158
  (26, 2600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Raichu - Hyper Beam - TM163
  (26, 2600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Raichu - Thunder - TM166
  (26, 2600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Raichu - Tera Blast - TM171
  (26, 2600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Raichu - Flail - Egg
  (26, 2600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Raichu - Present - Egg
  (26, 2600, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Raichu - Fake Out - Egg
  (26, 2600, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Raichu - Charge - Egg
  (26, 2600, 268, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Raichu - Wish - Egg
  (26, 2600, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Raichu - Tickle - Egg
  (26, 2600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Raichu - Volt Tackle - Egg
  (26, 2600, 344, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Raichu - Disarming Voice - Egg
  (26, 2600, 574, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Raichu - Thunder Punch - Evolution
  (26, 2600, 9, 23, NULL, 7, NULL, NULL, NULL, NULL, 72),
  -- Raichu (Alolan Raichu) - Tail Whip - Level 1
  (26, 2601, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu (Alolan Raichu) - Growl - Level 1
  (26, 2601, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu (Alolan Raichu) - Thunder Shock - Level 1
  (26, 2601, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu (Alolan Raichu) - Thunder Wave - Level 1
  (26, 2601, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu (Alolan Raichu) - Thunder - Level 1
  (26, 2601, 87, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu (Alolan Raichu) - Agility - Level 1
  (26, 2601, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu (Alolan Raichu) - Quick Attack - Level 1
  (26, 2601, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu (Alolan Raichu) - Double Team - Level 1
  (26, 2601, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Raichu (Alolan Raichu) - Light Screen - Level 1
  (26, 2601, 113, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Raichu (Alolan Raichu) - Sweet Kiss - Level 1
  (26, 2601, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Raichu (Alolan Raichu) - Charm - Level 1
  (26, 2601, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Raichu (Alolan Raichu) - Spark - Level 1
  (26, 2601, 209, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Raichu (Alolan Raichu) - Iron Tail - Level 1
  (26, 2601, 231, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Raichu (Alolan Raichu) - Feint - Level 1
  (26, 2601, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Raichu (Alolan Raichu) - Nasty Plot - Level 1
  (26, 2601, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Raichu (Alolan Raichu) - Discharge - Level 1
  (26, 2601, 435, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Raichu (Alolan Raichu) - Electro Ball - Level 1
  (26, 2601, 486, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Raichu (Alolan Raichu) - Play Nice - Level 1
  (26, 2601, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Raichu (Alolan Raichu) - Nuzzle - Level 1
  (26, 2601, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Raichu (Alolan Raichu) - Thunderbolt - Level 5
  (26, 2601, 85, 23, NULL, 1, 5, NULL, NULL, NULL, 20),
  -- Raichu (Alolan Raichu) - Take Down - TM001
  (26, 2601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Raichu (Alolan Raichu) - Charm - TM002
  (26, 2601, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Raichu (Alolan Raichu) - Fake Tears - TM003
  (26, 2601, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 23),
  -- Raichu (Alolan Raichu) - Agility - TM004
  (26, 2601, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 24),
  -- Raichu (Alolan Raichu) - Protect - TM007
  (26, 2601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Raichu (Alolan Raichu) - Thief - TM018
  (26, 2601, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Raichu (Alolan Raichu) - Disarming Voice - TM019
  (26, 2601, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 27),
  -- Raichu (Alolan Raichu) - Trailblaze - TM020
  (26, 2601, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Raichu (Alolan Raichu) - Charge Beam - TM023
  (26, 2601, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 29),
  -- Raichu (Alolan Raichu) - Facade - TM025
  (26, 2601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Raichu (Alolan Raichu) - Swift - TM032
  (26, 2601, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Raichu (Alolan Raichu) - Draining Kiss - TM037
  (26, 2601, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Raichu (Alolan Raichu) - Stored Power - TM041
  (26, 2601, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 33),
  -- Raichu (Alolan Raichu) - Fling - TM043
  (26, 2601, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 34),
  -- Raichu (Alolan Raichu) - Endure - TM047
  (26, 2601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Raichu (Alolan Raichu) - Volt Switch - TM048
  (26, 2601, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 36),
  -- Raichu (Alolan Raichu) - Rain Dance - TM050
  (26, 2601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 37),
  -- Raichu (Alolan Raichu) - Psyshock - TM054
  (26, 2601, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 38),
  -- Raichu (Alolan Raichu) - Dig - TM055
  (26, 2601, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Raichu (Alolan Raichu) - Brick Break - TM058
  (26, 2601, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Raichu (Alolan Raichu) - Body Slam - TM066
  (26, 2601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Raichu (Alolan Raichu) - Thunder Punch - TM068
  (26, 2601, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Raichu (Alolan Raichu) - Sleep Talk - TM070
  (26, 2601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Raichu (Alolan Raichu) - Electro Ball - TM072
  (26, 2601, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 44),
  -- Raichu (Alolan Raichu) - Reflect - TM074
  (26, 2601, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 45),
  -- Raichu (Alolan Raichu) - Light Screen - TM075
  (26, 2601, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 46),
  -- Raichu (Alolan Raichu) - Grass Knot - TM081
  (26, 2601, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Raichu (Alolan Raichu) - Thunder Wave - TM082
  (26, 2601, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Raichu (Alolan Raichu) - Rest - TM085
  (26, 2601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Raichu (Alolan Raichu) - Eerie Impulse - TM096
  (26, 2601, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 50),
  -- Raichu (Alolan Raichu) - Skill Swap - TM098
  (26, 2601, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 51),
  -- Raichu (Alolan Raichu) - Substitute - TM103
  (26, 2601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Raichu (Alolan Raichu) - Psychic - TM120
  (26, 2601, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Raichu (Alolan Raichu) - Encore - TM122
  (26, 2601, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Raichu (Alolan Raichu) - Surf - TM123
  (26, 2601, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 55),
  -- Raichu (Alolan Raichu) - Thunderbolt - TM126
  (26, 2601, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Raichu (Alolan Raichu) - Play Rough - TM127
  (26, 2601, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Raichu (Alolan Raichu) - Calm Mind - TM129
  (26, 2601, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Raichu (Alolan Raichu) - Helping Hand - TM130
  (26, 2601, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Raichu (Alolan Raichu) - Reversal - TM134
  (26, 2601, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 60),
  -- Raichu (Alolan Raichu) - Electric Terrain - TM136
  (26, 2601, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 61),
  -- Raichu (Alolan Raichu) - Psychic Terrain - TM138
  (26, 2601, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 62),
  -- Raichu (Alolan Raichu) - Nasty Plot - TM140
  (26, 2601, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Raichu (Alolan Raichu) - Wild Charge - TM147
  (26, 2601, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 64),
  -- Raichu (Alolan Raichu) - Giga Impact - TM152
  (26, 2601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Raichu (Alolan Raichu) - Focus Blast - TM158
  (26, 2601, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 66),
  -- Raichu (Alolan Raichu) - Hyper Beam - TM163
  (26, 2601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Raichu (Alolan Raichu) - Thunder - TM166
  (26, 2601, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Raichu (Alolan Raichu) - Tera Blast - TM171
  (26, 2601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Raichu (Alolan Raichu) - Psychic - Evolution
  (26, 2601, 94, 23, NULL, 7, NULL, NULL, NULL, NULL, 70),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 1
  (27, 2700, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew - Poison Sting - Level 3
  (27, 2700, 40, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew - Sand Attack - Level 6
  (27, 2700, 28, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandshrew - Rollout - Level 9
  (27, 2700, 205, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandshrew - Fury Cutter - Level 12
  (27, 2700, 210, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandshrew - Rapid Spin - Level 15
  (27, 2700, 229, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandshrew - Bulldoze - Level 18
  (27, 2700, 523, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandshrew - Swift - Level 21
  (27, 2700, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandshrew - Fury Swipes - Level 24
  (27, 2700, 154, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandshrew - Agility - Level 27
  (27, 2700, 97, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandshrew - Slash - Level 30
  (27, 2700, 163, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandshrew - Dig - Level 33
  (27, 2700, 91, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandshrew - Gyro Ball - Level 36
  (27, 2700, 360, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandshrew - Swords Dance - Level 39
  (27, 2700, 14, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandshrew - Sandstorm - Level 42
  (27, 2700, 201, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew - Earthquake - Level 45
  (27, 2700, 89, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sandshrew - Take Down - TM001
  (27, 2700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sandshrew - Agility - TM004
  (27, 2700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Sandshrew - Mud-Slap - TM005
  (27, 2700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Sandshrew - Protect - TM007
  (27, 2700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Sandshrew - Low Kick - TM012
  (27, 2700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Sandshrew - Thief - TM018
  (27, 2700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Sandshrew - Facade - TM025
  (27, 2700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Sandshrew - Aerial Ace - TM027
  (27, 2700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Sandshrew - Bulldoze - TM028
  (27, 2700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Sandshrew - Metal Claw - TM031
  (27, 2700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 27),
  -- Sandshrew - Swift - TM032
  (27, 2700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Sandshrew - Mud Shot - TM035
  (27, 2700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Sandshrew - Rock Tomb - TM036
  (27, 2700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Sandshrew - Fling - TM043
  (27, 2700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Sandshrew - Endure - TM047
  (27, 2700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Sandshrew - Sunny Day - TM049
  (27, 2700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Sandshrew - Sandstorm - TM051
  (27, 2700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Sandshrew - Dig - TM055
  (27, 2700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Sandshrew - False Swipe - TM057
  (27, 2700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Sandshrew - Brick Break - TM058
  (27, 2700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Sandshrew - Shadow Claw - TM061
  (27, 2700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Sandshrew - Body Slam - TM066
  (27, 2700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Sandshrew - Sleep Talk - TM070
  (27, 2700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Sandshrew - Poison Jab - TM083
  (27, 2700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Sandshrew - Stomping Tantrum - TM084
  (27, 2700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Sandshrew - Rest - TM085
  (27, 2700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Sandshrew - Rock Slide - TM086
  (27, 2700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Sandshrew - Swords Dance - TM088
  (27, 2700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Sandshrew - Spikes - TM090
  (27, 2700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 46),
  -- Sandshrew - Leech Life - TM095
  (27, 2700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 47),
  -- Sandshrew - Substitute - TM103
  (27, 2700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Sandshrew - X-Scissor - TM105
  (27, 2700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Sandshrew - Stealth Rock - TM116
  (27, 2700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Sandshrew - Amnesia - TM128
  (27, 2700, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Sandshrew - Earth Power - TM133
  (27, 2700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Sandshrew - Earthquake - TM149
  (27, 2700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Sandshrew - Stone Edge - TM150
  (27, 2700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Sandshrew - Tera Blast - TM171
  (27, 2700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Sandshrew - Counter - Egg
  (27, 2700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandshrew - Flail - Egg
  (27, 2700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew - Mud-Slap - Egg
  (27, 2700, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew - Metal Claw - Egg
  (27, 2700, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew - Night Slash - Egg
  (27, 2700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandshrew - Hone Claws - Egg
  (27, 2700, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandshrew (Alolan Sandshrew) - Scratch - Level 1
  (27, 2701, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew (Alolan Sandshrew) - Defense Curl - Level 1
  (27, 2701, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew (Alolan Sandshrew) - Mist - Level 3
  (27, 2701, 54, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew (Alolan Sandshrew) - Powder Snow - Level 6
  (27, 2701, 181, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandshrew (Alolan Sandshrew) - Rollout - Level 9
  (27, 2701, 205, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandshrew (Alolan Sandshrew) - Fury Cutter - Level 12
  (27, 2701, 210, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandshrew (Alolan Sandshrew) - Rapid Spin - Level 15
  (27, 2701, 229, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandshrew (Alolan Sandshrew) - Metal Claw - Level 18
  (27, 2701, 232, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandshrew (Alolan Sandshrew) - Swift - Level 21
  (27, 2701, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandshrew (Alolan Sandshrew) - Fury Swipes - Level 24
  (27, 2701, 154, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandshrew (Alolan Sandshrew) - Iron Defense - Level 27
  (27, 2701, 334, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandshrew (Alolan Sandshrew) - Slash - Level 30
  (27, 2701, 163, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandshrew (Alolan Sandshrew) - Iron Head - Level 33
  (27, 2701, 442, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandshrew (Alolan Sandshrew) - Gyro Ball - Level 36
  (27, 2701, 360, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandshrew (Alolan Sandshrew) - Swords Dance - Level 39
  (27, 2701, 14, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandshrew (Alolan Sandshrew) - Snowscape - Level 42
  (27, 2701, 883, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - Level 45
  (27, 2701, 59, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sandshrew (Alolan Sandshrew) - Take Down - TM001
  (27, 2701, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sandshrew (Alolan Sandshrew) - Protect - TM007
  (27, 2701, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Sandshrew (Alolan Sandshrew) - Low Kick - TM012
  (27, 2701, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Sandshrew (Alolan Sandshrew) - Thief - TM018
  (27, 2701, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Sandshrew (Alolan Sandshrew) - Facade - TM025
  (27, 2701, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Sandshrew (Alolan Sandshrew) - Aerial Ace - TM027
  (27, 2701, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Sandshrew (Alolan Sandshrew) - Bulldoze - TM028
  (27, 2701, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Sandshrew (Alolan Sandshrew) - Metal Claw - TM031
  (27, 2701, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Sandshrew (Alolan Sandshrew) - Swift - TM032
  (27, 2701, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Sandshrew (Alolan Sandshrew) - Icy Wind - TM034
  (27, 2701, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Sandshrew (Alolan Sandshrew) - Rock Tomb - TM036
  (27, 2701, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Sandshrew (Alolan Sandshrew) - Fling - TM043
  (27, 2701, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Sandshrew (Alolan Sandshrew) - Avalanche - TM046
  (27, 2701, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 30),
  -- Sandshrew (Alolan Sandshrew) - Endure - TM047
  (27, 2701, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Sandshrew (Alolan Sandshrew) - Snowscape - TM052
  (27, 2701, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Sandshrew (Alolan Sandshrew) - Dig - TM055
  (27, 2701, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Sandshrew (Alolan Sandshrew) - Brick Break - TM058
  (27, 2701, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Sandshrew (Alolan Sandshrew) - Shadow Claw - TM061
  (27, 2701, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Sandshrew (Alolan Sandshrew) - Body Slam - TM066
  (27, 2701, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Sandshrew (Alolan Sandshrew) - Ice Punch - TM069
  (27, 2701, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Sandshrew (Alolan Sandshrew) - Sleep Talk - TM070
  (27, 2701, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Sandshrew (Alolan Sandshrew) - Poison Jab - TM083
  (27, 2701, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Sandshrew (Alolan Sandshrew) - Rest - TM085
  (27, 2701, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Sandshrew (Alolan Sandshrew) - Rock Slide - TM086
  (27, 2701, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Sandshrew (Alolan Sandshrew) - Swords Dance - TM088
  (27, 2701, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Sandshrew (Alolan Sandshrew) - Flash Cannon - TM093
  (27, 2701, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Sandshrew (Alolan Sandshrew) - Leech Life - TM095
  (27, 2701, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 44),
  -- Sandshrew (Alolan Sandshrew) - Iron Head - TM099
  (27, 2701, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Sandshrew (Alolan Sandshrew) - Substitute - TM103
  (27, 2701, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Sandshrew (Alolan Sandshrew) - Iron Defense - TM104
  (27, 2701, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Sandshrew (Alolan Sandshrew) - X-Scissor - TM105
  (27, 2701, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 48),
  -- Sandshrew (Alolan Sandshrew) - Stealth Rock - TM116
  (27, 2701, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 49),
  -- Sandshrew (Alolan Sandshrew) - Ice Spinner - TM124
  (27, 2701, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Sandshrew (Alolan Sandshrew) - Amnesia - TM128
  (27, 2701, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Sandshrew (Alolan Sandshrew) - Ice Beam - TM135
  (27, 2701, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Sandshrew (Alolan Sandshrew) - Blizzard - TM143
  (27, 2701, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Sandshrew (Alolan Sandshrew) - Earthquake - TM149
  (27, 2701, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Sandshrew (Alolan Sandshrew) - Steel Beam - TM170
  (27, 2701, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 55),
  -- Sandshrew (Alolan Sandshrew) - Tera Blast - TM171
  (27, 2701, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Sandshrew (Alolan Sandshrew) - Counter - Egg
  (27, 2701, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew (Alolan Sandshrew) - Curse - Egg
  (27, 2701, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew (Alolan Sandshrew) - Flail - Egg
  (27, 2701, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew (Alolan Sandshrew) - Mirror Coat - Egg
  (27, 2701, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandshrew (Alolan Sandshrew) - Crush Claw - Egg
  (27, 2701, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandshrew (Alolan Sandshrew) - Night Slash - Egg
  (27, 2701, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sandshrew (Alolan Sandshrew) - Ice Shard - Egg
  (27, 2701, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sandshrew (Alolan Sandshrew) - Hone Claws - Egg
  (27, 2701, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Poison Sting - Level 1
  (28, 2800, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash - Crush Claw - Level 1
  (28, 2800, 306, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash - Rollout - Level 9
  (28, 2800, 205, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sandslash - Fury Cutter - Level 12
  (28, 2800, 210, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Sandslash - Rapid Spin - Level 15
  (28, 2800, 229, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Sandslash - Bulldoze - Level 18
  (28, 2800, 523, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Sandslash - Swift - Level 21
  (28, 2800, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sandslash - Fury Swipes - Level 26
  (28, 2800, 154, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Sandslash - Sand Tomb - Level 31
  (28, 2800, 328, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sandslash - Slash - Level 36
  (28, 2800, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Sandslash - Dig - Level 41
  (28, 2800, 91, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sandslash - Gyro Ball - Level 46
  (28, 2800, 360, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Sandslash - Swords Dance - Level 51
  (28, 2800, 14, 23, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Sandslash - Sandstorm - Level 56
  (28, 2800, 201, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Sandslash - Earthquake - Level 61
  (28, 2800, 89, 23, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Sandslash - Take Down - TM001
  (28, 2800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Sandslash - Agility - TM004
  (28, 2800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Sandslash - Mud-Slap - TM005
  (28, 2800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Sandslash - Protect - TM007
  (28, 2800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Sandslash - Low Kick - TM012
  (28, 2800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Sandslash - Thief - TM018
  (28, 2800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Sandslash - Facade - TM025
  (28, 2800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Sandslash - Aerial Ace - TM027
  (28, 2800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Sandslash - Bulldoze - TM028
  (28, 2800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Sandslash - Metal Claw - TM031
  (28, 2800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Sandslash - Swift - TM032
  (28, 2800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Sandslash - Mud Shot - TM035
  (28, 2800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Sandslash - Rock Tomb - TM036
  (28, 2800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Sandslash - Fling - TM043
  (28, 2800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Sandslash - Endure - TM047
  (28, 2800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Sandslash - Sunny Day - TM049
  (28, 2800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Sandslash - Sandstorm - TM051
  (28, 2800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Sandslash - Dig - TM055
  (28, 2800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Sandslash - False Swipe - TM057
  (28, 2800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 37),
  -- Sandslash - Brick Break - TM058
  (28, 2800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Sandslash - Shadow Claw - TM061
  (28, 2800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Sandslash - Body Slam - TM066
  (28, 2800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Sandslash - Sleep Talk - TM070
  (28, 2800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Sandslash - Poison Jab - TM083
  (28, 2800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 42),
  -- Sandslash - Stomping Tantrum - TM084
  (28, 2800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 43),
  -- Sandslash - Rest - TM085
  (28, 2800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Sandslash - Rock Slide - TM086
  (28, 2800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Sandslash - Swords Dance - TM088
  (28, 2800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Sandslash - Spikes - TM090
  (28, 2800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 47),
  -- Sandslash - Leech Life - TM095
  (28, 2800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 48),
  -- Sandslash - Gunk Shot - TM102
  (28, 2800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Sandslash - Substitute - TM103
  (28, 2800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Sandslash - X-Scissor - TM105
  (28, 2800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 51),
  -- Sandslash - Drill Run - TM106
  (28, 2800, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 52),
  -- Sandslash - Stealth Rock - TM116
  (28, 2800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Sandslash - Amnesia - TM128
  (28, 2800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Sandslash - Earth Power - TM133
  (28, 2800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 55),
  -- Sandslash - Earthquake - TM149
  (28, 2800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Sandslash - Stone Edge - TM150
  (28, 2800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Sandslash - Giga Impact - TM152
  (28, 2800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Sandslash - Focus Blast - TM158
  (28, 2800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Sandslash - Hyper Beam - TM163
  (28, 2800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Sandslash - Tera Blast - TM171
  (28, 2800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Sandslash - Counter - Egg
  (28, 2800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sandslash - Flail - Egg
  (28, 2800, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sandslash - Mud-Slap - Egg
  (28, 2800, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sandslash - Metal Claw - Egg
  (28, 2800, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sandslash - Night Slash - Egg
  (28, 2800, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sandslash - Hone Claws - Egg
  (28, 2800, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sandslash (Alolan Sandslash) - Swords Dance - Level 1
  (28, 2801, 14, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash (Alolan Sandslash) - Slash - Level 1
  (28, 2801, 163, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash (Alolan Sandslash) - Metal Claw - Level 1
  (28, 2801, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash (Alolan Sandslash) - Icicle Crash - Level 1
  (28, 2801, 556, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash (Alolan Sandslash) - Take Down - TM001
  (28, 2801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Sandslash (Alolan Sandslash) - Agility - TM004
  (28, 2801, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 6),
  -- Sandslash (Alolan Sandslash) - Protect - TM007
  (28, 2801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 7),
  -- Sandslash (Alolan Sandslash) - Low Kick - TM012
  (28, 2801, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 8),
  -- Sandslash (Alolan Sandslash) - Thief - TM018
  (28, 2801, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 9),
  -- Sandslash (Alolan Sandslash) - Facade - TM025
  (28, 2801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 10),
  -- Sandslash (Alolan Sandslash) - Aerial Ace - TM027
  (28, 2801, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 11),
  -- Sandslash (Alolan Sandslash) - Bulldoze - TM028
  (28, 2801, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 12),
  -- Sandslash (Alolan Sandslash) - Metal Claw - TM031
  (28, 2801, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 13),
  -- Sandslash (Alolan Sandslash) - Swift - TM032
  (28, 2801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Sandslash (Alolan Sandslash) - Icy Wind - TM034
  (28, 2801, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 15),
  -- Sandslash (Alolan Sandslash) - Rock Tomb - TM036
  (28, 2801, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 16),
  -- Sandslash (Alolan Sandslash) - Fling - TM043
  (28, 2801, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 17),
  -- Sandslash (Alolan Sandslash) - Avalanche - TM046
  (28, 2801, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 18),
  -- Sandslash (Alolan Sandslash) - Endure - TM047
  (28, 2801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Sandslash (Alolan Sandslash) - Snowscape - TM052
  (28, 2801, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 20),
  -- Sandslash (Alolan Sandslash) - Dig - TM055
  (28, 2801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 21),
  -- Sandslash (Alolan Sandslash) - False Swipe - TM057
  (28, 2801, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 22),
  -- Sandslash (Alolan Sandslash) - Brick Break - TM058
  (28, 2801, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 23),
  -- Sandslash (Alolan Sandslash) - Shadow Claw - TM061
  (28, 2801, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 24),
  -- Sandslash (Alolan Sandslash) - Body Slam - TM066
  (28, 2801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Sandslash (Alolan Sandslash) - Ice Punch - TM069
  (28, 2801, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 26),
  -- Sandslash (Alolan Sandslash) - Sleep Talk - TM070
  (28, 2801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Sandslash (Alolan Sandslash) - Poison Jab - TM083
  (28, 2801, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 28),
  -- Sandslash (Alolan Sandslash) - Rest - TM085
  (28, 2801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Sandslash (Alolan Sandslash) - Rock Slide - TM086
  (28, 2801, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Sandslash (Alolan Sandslash) - Swords Dance - TM088
  (28, 2801, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Sandslash (Alolan Sandslash) - Spikes - TM090
  (28, 2801, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 32),
  -- Sandslash (Alolan Sandslash) - Flash Cannon - TM093
  (28, 2801, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Sandslash (Alolan Sandslash) - Leech Life - TM095
  (28, 2801, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 34),
  -- Sandslash (Alolan Sandslash) - Iron Head - TM099
  (28, 2801, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Sandslash (Alolan Sandslash) - Substitute - TM103
  (28, 2801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Sandslash (Alolan Sandslash) - Iron Defense - TM104
  (28, 2801, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Sandslash (Alolan Sandslash) - X-Scissor - TM105
  (28, 2801, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 38),
  -- Sandslash (Alolan Sandslash) - Drill Run - TM106
  (28, 2801, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 39),
  -- Sandslash (Alolan Sandslash) - Stealth Rock - TM116
  (28, 2801, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Sandslash (Alolan Sandslash) - Ice Spinner - TM124
  (28, 2801, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Sandslash (Alolan Sandslash) - Amnesia - TM128
  (28, 2801, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Sandslash (Alolan Sandslash) - Ice Beam - TM135
  (28, 2801, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Sandslash (Alolan Sandslash) - Blizzard - TM143
  (28, 2801, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Sandslash (Alolan Sandslash) - Earthquake - TM149
  (28, 2801, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Sandslash (Alolan Sandslash) - Giga Impact - TM152
  (28, 2801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Sandslash (Alolan Sandslash) - Focus Blast - TM158
  (28, 2801, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 47),
  -- Sandslash (Alolan Sandslash) - Hyper Beam - TM163
  (28, 2801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Sandslash (Alolan Sandslash) - Steel Beam - TM170
  (28, 2801, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 49),
  -- Sandslash (Alolan Sandslash) - Tera Blast - TM171
  (28, 2801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Sandslash (Alolan Sandslash) - Counter - Egg
  (28, 2801, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandslash (Alolan Sandslash) - Curse - Egg
  (28, 2801, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandslash (Alolan Sandslash) - Flail - Egg
  (28, 2801, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandslash (Alolan Sandslash) - Mirror Coat - Egg
  (28, 2801, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandslash (Alolan Sandslash) - Crush Claw - Egg
  (28, 2801, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandslash (Alolan Sandslash) - Night Slash - Egg
  (28, 2801, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandslash (Alolan Sandslash) - Ice Shard - Egg
  (28, 2801, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandslash (Alolan Sandslash) - Hone Claws - Egg
  (28, 2801, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandslash (Alolan Sandslash) - Icicle Spear - Evolution
  (28, 2801, 333, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Sandslash (Alolan Sandslash) - Scratch - Reminder
  (28, 2801, 10, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Sandslash (Alolan Sandslash) - Mist - Reminder
  (28, 2801, 54, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Sandslash (Alolan Sandslash) - Blizzard - Reminder
  (28, 2801, 59, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Sandslash (Alolan Sandslash) - Defense Curl - Reminder
  (28, 2801, 111, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Sandslash (Alolan Sandslash) - Swift - Reminder
  (28, 2801, 129, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Sandslash (Alolan Sandslash) - Fury Swipes - Reminder
  (28, 2801, 154, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Sandslash (Alolan Sandslash) - Powder Snow - Reminder
  (28, 2801, 181, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Sandslash (Alolan Sandslash) - Rollout - Reminder
  (28, 2801, 205, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Sandslash (Alolan Sandslash) - Fury Cutter - Reminder
  (28, 2801, 210, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Sandslash (Alolan Sandslash) - Rapid Spin - Reminder
  (28, 2801, 229, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Sandslash (Alolan Sandslash) - Iron Defense - Reminder
  (28, 2801, 334, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Sandslash (Alolan Sandslash) - Gyro Ball - Reminder
  (28, 2801, 360, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Sandslash (Alolan Sandslash) - Metal Burst - Reminder
  (28, 2801, 368, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Sandslash (Alolan Sandslash) - Iron Head - Reminder
  (28, 2801, 442, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Sandslash (Alolan Sandslash) - Snowscape - Reminder
  (28, 2801, 883, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Sing - Level 1
  (35, 3500, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefairy - Defense Curl - Level 1
  (35, 3500, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefairy - Splash - Level 1
  (35, 3500, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefairy - Sweet Kiss - Level 1
  (35, 3500, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clefairy - Charm - Level 1
  (35, 3500, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Clefairy - Copycat - Level 1
  (35, 3500, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Clefairy - Disarming Voice - Level 1
  (35, 3500, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Clefairy - Stored Power - Level 4
  (35, 3500, 500, 23, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Clefairy - Encore - Level 8
  (35, 3500, 227, 23, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Clefairy - After You - Level 12
  (35, 3500, 495, 23, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Clefairy - Life Dew - Level 16
  (35, 3500, 791, 23, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Clefairy - Metronome - Level 20
  (35, 3500, 118, 23, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Clefairy - Moonlight - Level 24
  (35, 3500, 236, 23, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Clefairy - Gravity - Level 28
  (35, 3500, 356, 23, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Clefairy - Meteor Mash - Level 32
  (35, 3500, 309, 23, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Clefairy - Follow Me - Level 36
  (35, 3500, 266, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Clefairy - Cosmic Power - Level 40
  (35, 3500, 322, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Clefairy - Moonblast - Level 44
  (35, 3500, 585, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Clefairy - Healing Wish - Level 48
  (35, 3500, 361, 23, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Clefairy - Take Down - TM001
  (35, 3500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 22),
  -- Clefairy - Charm - TM002
  (35, 3500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 23),
  -- Clefairy - Fake Tears - TM003
  (35, 3500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 24),
  -- Clefairy - Protect - TM007
  (35, 3500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Clefairy - Water Pulse - TM011
  (35, 3500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 26),
  -- Clefairy - Psybeam - TM016
  (35, 3500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 27),
  -- Clefairy - Thief - TM018
  (35, 3500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Clefairy - Disarming Voice - TM019
  (35, 3500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 29),
  -- Clefairy - Chilling Water - TM022
  (35, 3500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 30),
  -- Clefairy - Charge Beam - TM023
  (35, 3500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 31),
  -- Clefairy - Facade - TM025
  (35, 3500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Clefairy - Swift - TM032
  (35, 3500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Clefairy - Magical Leaf - TM033
  (35, 3500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 34),
  -- Clefairy - Icy Wind - TM034
  (35, 3500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 35),
  -- Clefairy - Draining Kiss - TM037
  (35, 3500, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 36),
  -- Clefairy - Stored Power - TM041
  (35, 3500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 37),
  -- Clefairy - Night Shade - TM042
  (35, 3500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 38),
  -- Clefairy - Fling - TM043
  (35, 3500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 39),
  -- Clefairy - Endure - TM047
  (35, 3500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 40),
  -- Clefairy - Sunny Day - TM049
  (35, 3500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 41),
  -- Clefairy - Rain Dance - TM050
  (35, 3500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 42),
  -- Clefairy - Psyshock - TM054
  (35, 3500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 43),
  -- Clefairy - Dig - TM055
  (35, 3500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 44),
  -- Clefairy - Brick Break - TM058
  (35, 3500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 45),
  -- Clefairy - Zen Headbutt - TM059
  (35, 3500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 46),
  -- Clefairy - Body Slam - TM066
  (35, 3500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 47),
  -- Clefairy - Fire Punch - TM067
  (35, 3500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 48),
  -- Clefairy - Thunder Punch - TM068
  (35, 3500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 49),
  -- Clefairy - Ice Punch - TM069
  (35, 3500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 50),
  -- Clefairy - Sleep Talk - TM070
  (35, 3500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 51),
  -- Clefairy - Drain Punch - TM073
  (35, 3500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 52),
  -- Clefairy - Reflect - TM074
  (35, 3500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 53),
  -- Clefairy - Light Screen - TM075
  (35, 3500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 54),
  -- Clefairy - Dazzling Gleam - TM079
  (35, 3500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 55),
  -- Clefairy - Metronome - TM080
  (35, 3500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 56),
  -- Clefairy - Grass Knot - TM081
  (35, 3500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 57),
  -- Clefairy - Thunder Wave - TM082
  (35, 3500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 58),
  -- Clefairy - Rest - TM085
  (35, 3500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 59),
  -- Clefairy - Imprison - TM092
  (35, 3500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 60),
  -- Clefairy - Skill Swap - TM098
  (35, 3500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 61),
  -- Clefairy - Substitute - TM103
  (35, 3500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 62),
  -- Clefairy - Trick - TM109
  (35, 3500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 63),
  -- Clefairy - Shadow Ball - TM114
  (35, 3500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 64),
  -- Clefairy - Stealth Rock - TM116
  (35, 3500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 65),
  -- Clefairy - Hyper Voice - TM117
  (35, 3500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 66),
  -- Clefairy - Psychic - TM120
  (35, 3500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 67),
  -- Clefairy - Encore - TM122
  (35, 3500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 68),
  -- Clefairy - Flamethrower - TM125
  (35, 3500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 69),
  -- Clefairy - Thunderbolt - TM126
  (35, 3500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 70),
  -- Clefairy - Play Rough - TM127
  (35, 3500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 71),
  -- Clefairy - Amnesia - TM128
  (35, 3500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 72),
  -- Clefairy - Calm Mind - TM129
  (35, 3500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 73),
  -- Clefairy - Helping Hand - TM130
  (35, 3500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 74),
  -- Clefairy - Baton Pass - TM132
  (35, 3500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 75),
  -- Clefairy - Ice Beam - TM135
  (35, 3500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 76),
  -- Clefairy - Misty Terrain - TM139
  (35, 3500, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 77),
  -- Clefairy - Fire Blast - TM141
  (35, 3500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 78),
  -- Clefairy - Blizzard - TM143
  (35, 3500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 79),
  -- Clefairy - Thunder - TM166
  (35, 3500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 80),
  -- Clefairy - Solar Beam - TM168
  (35, 3500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 81),
  -- Clefairy - Tera Blast - TM171
  (35, 3500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 82),
  -- Clefairy - Present - Egg
  (35, 3500, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Clefairy - Wish - Egg
  (35, 3500, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Clefairy - Tickle - Egg
  (35, 3500, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Clefairy - Heal Pulse - Egg
  (35, 3500, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Meteor Mash - Level 1
  (36, 3600, 309, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Moonblast - Level 1
  (36, 3600, 585, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Life Dew - Level 1
  (36, 3600, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Take Down - TM001
  (36, 3600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Clefable - Charm - TM002
  (36, 3600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 6),
  -- Clefable - Fake Tears - TM003
  (36, 3600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 7),
  -- Clefable - Protect - TM007
  (36, 3600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 8),
  -- Clefable - Water Pulse - TM011
  (36, 3600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 9),
  -- Clefable - Psybeam - TM016
  (36, 3600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 10),
  -- Clefable - Thief - TM018
  (36, 3600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 11),
  -- Clefable - Disarming Voice - TM019
  (36, 3600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 12),
  -- Clefable - Chilling Water - TM022
  (36, 3600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 13),
  -- Clefable - Charge Beam - TM023
  (36, 3600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 14),
  -- Clefable - Facade - TM025
  (36, 3600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 15),
  -- Clefable - Swift - TM032
  (36, 3600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 16),
  -- Clefable - Magical Leaf - TM033
  (36, 3600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Clefable - Icy Wind - TM034
  (36, 3600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 18),
  -- Clefable - Draining Kiss - TM037
  (36, 3600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Clefable - Stored Power - TM041
  (36, 3600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 20),
  -- Clefable - Night Shade - TM042
  (36, 3600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 21),
  -- Clefable - Fling - TM043
  (36, 3600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Clefable - Endure - TM047
  (36, 3600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Clefable - Sunny Day - TM049
  (36, 3600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Clefable - Rain Dance - TM050
  (36, 3600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Clefable - Psyshock - TM054
  (36, 3600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 26),
  -- Clefable - Dig - TM055
  (36, 3600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Clefable - Brick Break - TM058
  (36, 3600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Clefable - Zen Headbutt - TM059
  (36, 3600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Clefable - Body Slam - TM066
  (36, 3600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Clefable - Fire Punch - TM067
  (36, 3600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 31),
  -- Clefable - Thunder Punch - TM068
  (36, 3600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 32),
  -- Clefable - Ice Punch - TM069
  (36, 3600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 33),
  -- Clefable - Sleep Talk - TM070
  (36, 3600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Clefable - Drain Punch - TM073
  (36, 3600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 35),
  -- Clefable - Reflect - TM074
  (36, 3600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Clefable - Light Screen - TM075
  (36, 3600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Clefable - Dazzling Gleam - TM079
  (36, 3600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Clefable - Metronome - TM080
  (36, 3600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 39),
  -- Clefable - Grass Knot - TM081
  (36, 3600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Clefable - Thunder Wave - TM082
  (36, 3600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Clefable - Rest - TM085
  (36, 3600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Clefable - Imprison - TM092
  (36, 3600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Clefable - Skill Swap - TM098
  (36, 3600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 44),
  -- Clefable - Substitute - TM103
  (36, 3600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Clefable - Trick - TM109
  (36, 3600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Clefable - Shadow Ball - TM114
  (36, 3600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Clefable - Stealth Rock - TM116
  (36, 3600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 48),
  -- Clefable - Hyper Voice - TM117
  (36, 3600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Clefable - Psychic - TM120
  (36, 3600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 50),
  -- Clefable - Encore - TM122
  (36, 3600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 51),
  -- Clefable - Flamethrower - TM125
  (36, 3600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Clefable - Thunderbolt - TM126
  (36, 3600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Clefable - Play Rough - TM127
  (36, 3600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 54),
  -- Clefable - Amnesia - TM128
  (36, 3600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 55),
  -- Clefable - Calm Mind - TM129
  (36, 3600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Clefable - Helping Hand - TM130
  (36, 3600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Clefable - Baton Pass - TM132
  (36, 3600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 58),
  -- Clefable - Ice Beam - TM135
  (36, 3600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 59),
  -- Clefable - Misty Terrain - TM139
  (36, 3600, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 60),
  -- Clefable - Fire Blast - TM141
  (36, 3600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 61),
  -- Clefable - Blizzard - TM143
  (36, 3600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 62),
  -- Clefable - Giga Impact - TM152
  (36, 3600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Clefable - Focus Blast - TM158
  (36, 3600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 64),
  -- Clefable - Hyper Beam - TM163
  (36, 3600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Clefable - Thunder - TM166
  (36, 3600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Clefable - Solar Beam - TM168
  (36, 3600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Clefable - Tera Blast - TM171
  (36, 3600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Clefable - Present - Egg
  (36, 3600, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Clefable - Wish - Egg
  (36, 3600, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Clefable - Tickle - Egg
  (36, 3600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Clefable - Heal Pulse - Egg
  (36, 3600, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Clefable - Pound - Reminder
  (36, 3600, 1, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Clefable - Growl - Reminder
  (36, 3600, 45, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Clefable - Sing - Reminder
  (36, 3600, 47, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Clefable - Defense Curl - Reminder
  (36, 3600, 111, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Clefable - Splash - Reminder
  (36, 3600, 150, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Clefable - Sweet Kiss - Reminder
  (36, 3600, 186, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Clefable - Charm - Reminder
  (36, 3600, 204, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Clefable - Encore - Reminder
  (36, 3600, 227, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Clefable - Moonlight - Reminder
  (36, 3600, 236, 23, NULL, 9, NULL, NULL, NULL, NULL, 81),
  -- Clefable - Follow Me - Reminder
  (36, 3600, 266, 23, NULL, 9, NULL, NULL, NULL, NULL, 82),
  -- Clefable - Cosmic Power - Reminder
  (36, 3600, 322, 23, NULL, 9, NULL, NULL, NULL, NULL, 83),
  -- Clefable - Gravity - Reminder
  (36, 3600, 356, 23, NULL, 9, NULL, NULL, NULL, NULL, 84),
  -- Clefable - Healing Wish - Reminder
  (36, 3600, 361, 23, NULL, 9, NULL, NULL, NULL, NULL, 85),
  -- Clefable - Copycat - Reminder
  (36, 3600, 383, 23, NULL, 9, NULL, NULL, NULL, NULL, 86),
  -- Clefable - After You - Reminder
  (36, 3600, 495, 23, NULL, 9, NULL, NULL, NULL, NULL, 87),
  -- Clefable - Stored Power - Reminder
  (36, 3600, 500, 23, NULL, 9, NULL, NULL, NULL, NULL, 88),
  -- Clefable - Disarming Voice - Reminder
  (36, 3600, 574, 23, NULL, 9, NULL, NULL, NULL, NULL, 89),
  -- Vulpix - Tail Whip - Level 1
  (37, 3700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix - Disable - Level 4
  (37, 3700, 50, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 8
  (37, 3700, 98, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vulpix - Spite - Level 12
  (37, 3700, 180, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vulpix - Incinerate - Level 16
  (37, 3700, 510, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vulpix - Confuse Ray - Level 20
  (37, 3700, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vulpix - Will-O-Wisp - Level 24
  (37, 3700, 261, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix - Extrasensory - Level 28
  (37, 3700, 326, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix - Flamethrower - Level 32
  (37, 3700, 53, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vulpix - Imprison - Level 36
  (37, 3700, 286, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vulpix - Fire Spin - Level 40
  (37, 3700, 83, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vulpix - Safeguard - Level 44
  (37, 3700, 219, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vulpix - Inferno - Level 48
  (37, 3700, 517, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vulpix - Fire Blast - Level 52
  (37, 3700, 126, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Vulpix - Take Down - TM001
  (37, 3700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Vulpix - Charm - TM002
  (37, 3700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Vulpix - Agility - TM004
  (37, 3700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Vulpix - Protect - TM007
  (37, 3700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Vulpix - Confuse Ray - TM017
  (37, 3700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Vulpix - Fire Spin - TM024
  (37, 3700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Vulpix - Facade - TM025
  (37, 3700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Vulpix - Hex - TM029
  (37, 3700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Vulpix - Snarl - TM030
  (37, 3700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Vulpix - Swift - TM032
  (37, 3700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Vulpix - Flame Charge - TM038
  (37, 3700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Vulpix - Endure - TM047
  (37, 3700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Vulpix - Sunny Day - TM049
  (37, 3700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Vulpix - Dig - TM055
  (37, 3700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Vulpix - Zen Headbutt - TM059
  (37, 3700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Vulpix - Foul Play - TM062
  (37, 3700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Vulpix - Body Slam - TM066
  (37, 3700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Vulpix - Sleep Talk - TM070
  (37, 3700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Vulpix - Rest - TM085
  (37, 3700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Vulpix - Imprison - TM092
  (37, 3700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Vulpix - Dark Pulse - TM094
  (37, 3700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Vulpix - Substitute - TM103
  (37, 3700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Vulpix - Will-O-Wisp - TM107
  (37, 3700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Vulpix - Heat Wave - TM118
  (37, 3700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 39),
  -- Vulpix - Energy Ball - TM119
  (37, 3700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 40),
  -- Vulpix - Encore - TM122
  (37, 3700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 41),
  -- Vulpix - Flamethrower - TM125
  (37, 3700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Vulpix - Helping Hand - TM130
  (37, 3700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Vulpix - Baton Pass - TM132
  (37, 3700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 44),
  -- Vulpix - Nasty Plot - TM140
  (37, 3700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 45),
  -- Vulpix - Fire Blast - TM141
  (37, 3700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Vulpix - Overheat - TM157
  (37, 3700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 47),
  -- Vulpix - Flare Blitz - TM165
  (37, 3700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 48),
  -- Vulpix - Tera Blast - TM171
  (37, 3700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Vulpix - Roar - Egg
  (37, 3700, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vulpix - Hypnosis - Egg
  (37, 3700, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vulpix - Flail - Egg
  (37, 3700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix - Memento - Egg
  (37, 3700, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix - Howl - Egg
  (37, 3700, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vulpix - Healing Wish - Egg
  (37, 3700, 361, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vulpix - Flame Charge - Egg
  (37, 3700, 488, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vulpix - Baby-Doll Eyes - Egg
  (37, 3700, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vulpix (Alolan Vulpix) - Tail Whip - Level 1
  (37, 3701, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Powder Snow - Level 1
  (37, 3701, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Disable - Level 4
  (37, 3701, 50, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Ice Shard - Level 8
  (37, 3701, 420, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vulpix (Alolan Vulpix) - Spite - Level 12
  (37, 3701, 180, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vulpix (Alolan Vulpix) - Icy Wind - Level 16
  (37, 3701, 196, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vulpix (Alolan Vulpix) - Confuse Ray - Level 20
  (37, 3701, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vulpix (Alolan Vulpix) - Aurora Beam - Level 24
  (37, 3701, 62, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix (Alolan Vulpix) - Extrasensory - Level 28
  (37, 3701, 326, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix (Alolan Vulpix) - Ice Beam - Level 32
  (37, 3701, 58, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vulpix (Alolan Vulpix) - Imprison - Level 36
  (37, 3701, 286, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vulpix (Alolan Vulpix) - Mist - Level 40
  (37, 3701, 54, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vulpix (Alolan Vulpix) - Aurora Veil - Level 44
  (37, 3701, 694, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vulpix (Alolan Vulpix) - Freeze-Dry - Level 48
  (37, 3701, 573, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vulpix (Alolan Vulpix) - Blizzard - Level 52
  (37, 3701, 59, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Vulpix (Alolan Vulpix) - Take Down - TM001
  (37, 3701, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Vulpix (Alolan Vulpix) - Charm - TM002
  (37, 3701, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Vulpix (Alolan Vulpix) - Fake Tears - TM003
  (37, 3701, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Vulpix (Alolan Vulpix) - Agility - TM004
  (37, 3701, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Vulpix (Alolan Vulpix) - Protect - TM007
  (37, 3701, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Vulpix (Alolan Vulpix) - Confuse Ray - TM017
  (37, 3701, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Vulpix (Alolan Vulpix) - Disarming Voice - TM019
  (37, 3701, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Vulpix (Alolan Vulpix) - Chilling Water - TM022
  (37, 3701, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Vulpix (Alolan Vulpix) - Facade - TM025
  (37, 3701, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Vulpix (Alolan Vulpix) - Hex - TM029
  (37, 3701, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Vulpix (Alolan Vulpix) - Swift - TM032
  (37, 3701, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Vulpix (Alolan Vulpix) - Icy Wind - TM034
  (37, 3701, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Vulpix (Alolan Vulpix) - Draining Kiss - TM037
  (37, 3701, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 28),
  -- Vulpix (Alolan Vulpix) - Stored Power - TM041
  (37, 3701, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Vulpix (Alolan Vulpix) - Endure - TM047
  (37, 3701, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Vulpix (Alolan Vulpix) - Rain Dance - TM050
  (37, 3701, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Vulpix (Alolan Vulpix) - Snowscape - TM052
  (37, 3701, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Vulpix (Alolan Vulpix) - Dig - TM055
  (37, 3701, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Vulpix (Alolan Vulpix) - Zen Headbutt - TM059
  (37, 3701, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Vulpix (Alolan Vulpix) - Foul Play - TM062
  (37, 3701, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Vulpix (Alolan Vulpix) - Body Slam - TM066
  (37, 3701, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Vulpix (Alolan Vulpix) - Sleep Talk - TM070
  (37, 3701, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Vulpix (Alolan Vulpix) - Dazzling Gleam - TM079
  (37, 3701, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Vulpix (Alolan Vulpix) - Rest - TM085
  (37, 3701, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Vulpix (Alolan Vulpix) - Imprison - TM092
  (37, 3701, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Vulpix (Alolan Vulpix) - Dark Pulse - TM094
  (37, 3701, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Vulpix (Alolan Vulpix) - Substitute - TM103
  (37, 3701, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Vulpix (Alolan Vulpix) - Encore - TM122
  (37, 3701, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Vulpix (Alolan Vulpix) - Play Rough - TM127
  (37, 3701, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Vulpix (Alolan Vulpix) - Helping Hand - TM130
  (37, 3701, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Vulpix (Alolan Vulpix) - Baton Pass - TM132
  (37, 3701, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Vulpix (Alolan Vulpix) - Ice Beam - TM135
  (37, 3701, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Vulpix (Alolan Vulpix) - Misty Terrain - TM139
  (37, 3701, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 48),
  -- Vulpix (Alolan Vulpix) - Nasty Plot - TM140
  (37, 3701, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Vulpix (Alolan Vulpix) - Blizzard - TM143
  (37, 3701, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Vulpix (Alolan Vulpix) - Tera Blast - TM171
  (37, 3701, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Vulpix (Alolan Vulpix) - Roar - Egg
  (37, 3701, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix (Alolan Vulpix) - Hypnosis - Egg
  (37, 3701, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix (Alolan Vulpix) - Flail - Egg
  (37, 3701, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vulpix (Alolan Vulpix) - Howl - Egg
  (37, 3701, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vulpix (Alolan Vulpix) - Moonblast - Egg
  (37, 3701, 585, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vulpix (Alolan Vulpix) - Baby-Doll Eyes - Egg
  (37, 3701, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ninetales - Tail Whip - Level 1
  (38, 3800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Flamethrower - Level 1
  (38, 3800, 53, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Take Down - TM001
  (38, 3800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 4),
  -- Ninetales - Charm - TM002
  (38, 3800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 5),
  -- Ninetales - Fake Tears - TM003
  (38, 3800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 6),
  -- Ninetales - Agility - TM004
  (38, 3800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 7),
  -- Ninetales - Protect - TM007
  (38, 3800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 8),
  -- Ninetales - Confuse Ray - TM017
  (38, 3800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 9),
  -- Ninetales - Fire Spin - TM024
  (38, 3800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 10),
  -- Ninetales - Facade - TM025
  (38, 3800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 11),
  -- Ninetales - Hex - TM029
  (38, 3800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 12),
  -- Ninetales - Snarl - TM030
  (38, 3800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 13),
  -- Ninetales - Swift - TM032
  (38, 3800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Ninetales - Flame Charge - TM038
  (38, 3800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 15),
  -- Ninetales - Stored Power - TM041
  (38, 3800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 16),
  -- Ninetales - Night Shade - TM042
  (38, 3800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 17),
  -- Ninetales - Endure - TM047
  (38, 3800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Ninetales - Sunny Day - TM049
  (38, 3800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Ninetales - Psyshock - TM054
  (38, 3800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 20),
  -- Ninetales - Dig - TM055
  (38, 3800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 21),
  -- Ninetales - Zen Headbutt - TM059
  (38, 3800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 22),
  -- Ninetales - Foul Play - TM062
  (38, 3800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 23),
  -- Ninetales - Body Slam - TM066
  (38, 3800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Ninetales - Sleep Talk - TM070
  (38, 3800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Ninetales - Rest - TM085
  (38, 3800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Ninetales - Imprison - TM092
  (38, 3800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 27),
  -- Ninetales - Dark Pulse - TM094
  (38, 3800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 28),
  -- Ninetales - Substitute - TM103
  (38, 3800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Ninetales - Will-O-Wisp - TM107
  (38, 3800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 30),
  -- Ninetales - Shadow Ball - TM114
  (38, 3800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 31),
  -- Ninetales - Heat Wave - TM118
  (38, 3800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 32),
  -- Ninetales - Energy Ball - TM119
  (38, 3800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 33),
  -- Ninetales - Encore - TM122
  (38, 3800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 34),
  -- Ninetales - Flamethrower - TM125
  (38, 3800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 35),
  -- Ninetales - Calm Mind - TM129
  (38, 3800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 36),
  -- Ninetales - Helping Hand - TM130
  (38, 3800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Ninetales - Baton Pass - TM132
  (38, 3800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Ninetales - Nasty Plot - TM140
  (38, 3800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 39),
  -- Ninetales - Fire Blast - TM141
  (38, 3800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 40),
  -- Ninetales - Giga Impact - TM152
  (38, 3800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Ninetales - Overheat - TM157
  (38, 3800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Ninetales - Hyper Beam - TM163
  (38, 3800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Ninetales - Flare Blitz - TM165
  (38, 3800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Ninetales - Solar Beam - TM168
  (38, 3800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Ninetales - Tera Blast - TM171
  (38, 3800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Ninetales - Roar - Egg
  (38, 3800, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ninetales - Hypnosis - Egg
  (38, 3800, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ninetales - Flail - Egg
  (38, 3800, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ninetales - Memento - Egg
  (38, 3800, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ninetales - Howl - Egg
  (38, 3800, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ninetales - Healing Wish - Egg
  (38, 3800, 361, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ninetales - Flame Charge - Egg
  (38, 3800, 488, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ninetales - Baby-Doll Eyes - Egg
  (38, 3800, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ninetales - Disable - Reminder
  (38, 3800, 50, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Ninetales - Ember - Reminder
  (38, 3800, 52, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ninetales - Fire Spin - Reminder
  (38, 3800, 83, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ninetales - Confuse Ray - Reminder
  (38, 3800, 109, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ninetales - Fire Blast - Reminder
  (38, 3800, 126, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ninetales - Spite - Reminder
  (38, 3800, 180, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Ninetales - Safeguard - Reminder
  (38, 3800, 219, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Ninetales - Will-O-Wisp - Reminder
  (38, 3800, 261, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Ninetales - Imprison - Reminder
  (38, 3800, 286, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Ninetales - Extrasensory - Reminder
  (38, 3800, 326, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Ninetales - Nasty Plot - Reminder
  (38, 3800, 417, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Ninetales - Incinerate - Reminder
  (38, 3800, 510, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Ninetales - Inferno - Reminder
  (38, 3800, 517, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Ninetales (Alolan Ninetales) - Tail Whip - Level 1
  (38, 3801, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Blizzard - Level 1
  (38, 3801, 59, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Icy Wind - Level 1
  (38, 3801, 196, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Imprison - Level 1
  (38, 3801, 286, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Take Down - TM001
  (38, 3801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Ninetales (Alolan Ninetales) - Charm - TM002
  (38, 3801, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 6),
  -- Ninetales (Alolan Ninetales) - Fake Tears - TM003
  (38, 3801, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 7),
  -- Ninetales (Alolan Ninetales) - Agility - TM004
  (38, 3801, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 8),
  -- Ninetales (Alolan Ninetales) - Protect - TM007
  (38, 3801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 9),
  -- Ninetales (Alolan Ninetales) - Confuse Ray - TM017
  (38, 3801, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 10),
  -- Ninetales (Alolan Ninetales) - Disarming Voice - TM019
  (38, 3801, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 11),
  -- Ninetales (Alolan Ninetales) - Chilling Water - TM022
  (38, 3801, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 12),
  -- Ninetales (Alolan Ninetales) - Facade - TM025
  (38, 3801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 13),
  -- Ninetales (Alolan Ninetales) - Hex - TM029
  (38, 3801, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 14),
  -- Ninetales (Alolan Ninetales) - Swift - TM032
  (38, 3801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 15),
  -- Ninetales (Alolan Ninetales) - Icy Wind - TM034
  (38, 3801, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 16),
  -- Ninetales (Alolan Ninetales) - Draining Kiss - TM037
  (38, 3801, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 17),
  -- Ninetales (Alolan Ninetales) - Stored Power - TM041
  (38, 3801, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 18),
  -- Ninetales (Alolan Ninetales) - Avalanche - TM046
  (38, 3801, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 19),
  -- Ninetales (Alolan Ninetales) - Endure - TM047
  (38, 3801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Ninetales (Alolan Ninetales) - Rain Dance - TM050
  (38, 3801, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Ninetales (Alolan Ninetales) - Snowscape - TM052
  (38, 3801, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 22),
  -- Ninetales (Alolan Ninetales) - Psyshock - TM054
  (38, 3801, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 23),
  -- Ninetales (Alolan Ninetales) - Dig - TM055
  (38, 3801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Ninetales (Alolan Ninetales) - Zen Headbutt - TM059
  (38, 3801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Ninetales (Alolan Ninetales) - Foul Play - TM062
  (38, 3801, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 26),
  -- Ninetales (Alolan Ninetales) - Body Slam - TM066
  (38, 3801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Ninetales (Alolan Ninetales) - Sleep Talk - TM070
  (38, 3801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - TM079
  (38, 3801, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 29),
  -- Ninetales (Alolan Ninetales) - Rest - TM085
  (38, 3801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Ninetales (Alolan Ninetales) - Imprison - TM092
  (38, 3801, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 31),
  -- Ninetales (Alolan Ninetales) - Dark Pulse - TM094
  (38, 3801, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 32),
  -- Ninetales (Alolan Ninetales) - Substitute - TM103
  (38, 3801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Ninetales (Alolan Ninetales) - Encore - TM122
  (38, 3801, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 34),
  -- Ninetales (Alolan Ninetales) - Play Rough - TM127
  (38, 3801, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 35),
  -- Ninetales (Alolan Ninetales) - Calm Mind - TM129
  (38, 3801, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 36),
  -- Ninetales (Alolan Ninetales) - Helping Hand - TM130
  (38, 3801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Ninetales (Alolan Ninetales) - Baton Pass - TM132
  (38, 3801, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Ninetales (Alolan Ninetales) - Ice Beam - TM135
  (38, 3801, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Ninetales (Alolan Ninetales) - Misty Terrain - TM139
  (38, 3801, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 40),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - TM140
  (38, 3801, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Ninetales (Alolan Ninetales) - Blizzard - TM143
  (38, 3801, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Ninetales (Alolan Ninetales) - Giga Impact - TM152
  (38, 3801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Ninetales (Alolan Ninetales) - Hyper Beam - TM163
  (38, 3801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Ninetales (Alolan Ninetales) - Tera Blast - TM171
  (38, 3801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Ninetales (Alolan Ninetales) - Roar - Egg
  (38, 3801, 46, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ninetales (Alolan Ninetales) - Hypnosis - Egg
  (38, 3801, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ninetales (Alolan Ninetales) - Flail - Egg
  (38, 3801, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ninetales (Alolan Ninetales) - Howl - Egg
  (38, 3801, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ninetales (Alolan Ninetales) - Moonblast - Egg
  (38, 3801, 585, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ninetales (Alolan Ninetales) - Baby-Doll Eyes - Egg
  (38, 3801, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ninetales (Alolan Ninetales) - Dazzling Gleam - Evolution
  (38, 3801, 605, 23, NULL, 7, NULL, NULL, NULL, NULL, 52),
  -- Ninetales (Alolan Ninetales) - Disable - Reminder
  (38, 3801, 50, 23, NULL, 9, NULL, NULL, NULL, NULL, 53),
  -- Ninetales (Alolan Ninetales) - Mist - Reminder
  (38, 3801, 54, 23, NULL, 9, NULL, NULL, NULL, NULL, 54),
  -- Ninetales (Alolan Ninetales) - Ice Beam - Reminder
  (38, 3801, 58, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Ninetales (Alolan Ninetales) - Aurora Beam - Reminder
  (38, 3801, 62, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Ninetales (Alolan Ninetales) - Confuse Ray - Reminder
  (38, 3801, 109, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Ninetales (Alolan Ninetales) - Spite - Reminder
  (38, 3801, 180, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Ninetales (Alolan Ninetales) - Powder Snow - Reminder
  (38, 3801, 181, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ninetales (Alolan Ninetales) - Extrasensory - Reminder
  (38, 3801, 326, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Ninetales (Alolan Ninetales) - Nasty Plot - Reminder
  (38, 3801, 417, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Ninetales (Alolan Ninetales) - Ice Shard - Reminder
  (38, 3801, 420, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Ninetales (Alolan Ninetales) - Freeze-Dry - Reminder
  (38, 3801, 573, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Ninetales (Alolan Ninetales) - Aurora Veil - Reminder
  (38, 3801, 694, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Jigglypuff - Pound - Level 1
  (39, 3900, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jigglypuff - Disable - Level 1
  (39, 3900, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jigglypuff - Defense Curl - Level 1
  (39, 3900, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jigglypuff - Sweet Kiss - Level 1
  (39, 3900, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jigglypuff - Charm - Level 1
  (39, 3900, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jigglypuff - Copycat - Level 1
  (39, 3900, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Jigglypuff - Disarming Voice - Level 1
  (39, 3900, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Jigglypuff - Echoed Voice - Level 4
  (39, 3900, 497, 23, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Jigglypuff - Covet - Level 8
  (39, 3900, 343, 23, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Jigglypuff - Stockpile - Level 12
  (39, 3900, 254, 23, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Jigglypuff - Spit Up - Level 12
  (39, 3900, 255, 23, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Jigglypuff - Swallow - Level 12
  (39, 3900, 256, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Jigglypuff - Round - Level 16
  (39, 3900, 496, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Jigglypuff - Rest - Level 20
  (39, 3900, 156, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Jigglypuff - Body Slam - Level 24
  (39, 3900, 34, 23, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Jigglypuff - Mimic - Level 28
  (39, 3900, 102, 23, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Jigglypuff - Gyro Ball - Level 32
  (39, 3900, 360, 23, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Jigglypuff - Hyper Voice - Level 36
  (39, 3900, 304, 23, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Jigglypuff - Double-Edge - Level 44
  (39, 3900, 38, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Jigglypuff - Take Down - TM001
  (39, 3900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Jigglypuff - Charm - TM002
  (39, 3900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Jigglypuff - Fake Tears - TM003
  (39, 3900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 23),
  -- Jigglypuff - Protect - TM007
  (39, 3900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Jigglypuff - Water Pulse - TM011
  (39, 3900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 25),
  -- Jigglypuff - Thief - TM018
  (39, 3900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Jigglypuff - Disarming Voice - TM019
  (39, 3900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 27),
  -- Jigglypuff - Trailblaze - TM020
  (39, 3900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Jigglypuff - Chilling Water - TM022
  (39, 3900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 29),
  -- Jigglypuff - Facade - TM025
  (39, 3900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Jigglypuff - Swift - TM032
  (39, 3900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Jigglypuff - Magical Leaf - TM033
  (39, 3900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 32),
  -- Jigglypuff - Icy Wind - TM034
  (39, 3900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 33),
  -- Jigglypuff - Draining Kiss - TM037
  (39, 3900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 34),
  -- Jigglypuff - Stored Power - TM041
  (39, 3900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Jigglypuff - Fling - TM043
  (39, 3900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Jigglypuff - Endure - TM047
  (39, 3900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Jigglypuff - Sunny Day - TM049
  (39, 3900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Jigglypuff - Rain Dance - TM050
  (39, 3900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Jigglypuff - Sandstorm - TM051
  (39, 3900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 40),
  -- Jigglypuff - Psyshock - TM054
  (39, 3900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 41),
  -- Jigglypuff - Dig - TM055
  (39, 3900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Jigglypuff - Brick Break - TM058
  (39, 3900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Jigglypuff - Zen Headbutt - TM059
  (39, 3900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Jigglypuff - Body Slam - TM066
  (39, 3900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 45),
  -- Jigglypuff - Fire Punch - TM067
  (39, 3900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 46),
  -- Jigglypuff - Thunder Punch - TM068
  (39, 3900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 47),
  -- Jigglypuff - Ice Punch - TM069
  (39, 3900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 48),
  -- Jigglypuff - Sleep Talk - TM070
  (39, 3900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 49),
  -- Jigglypuff - Drain Punch - TM073
  (39, 3900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 50),
  -- Jigglypuff - Reflect - TM074
  (39, 3900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 51),
  -- Jigglypuff - Light Screen - TM075
  (39, 3900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 52),
  -- Jigglypuff - Dazzling Gleam - TM079
  (39, 3900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 53),
  -- Jigglypuff - Metronome - TM080
  (39, 3900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 54),
  -- Jigglypuff - Grass Knot - TM081
  (39, 3900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 55),
  -- Jigglypuff - Thunder Wave - TM082
  (39, 3900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 56),
  -- Jigglypuff - Rest - TM085
  (39, 3900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 57),
  -- Jigglypuff - Taunt - TM087
  (39, 3900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 58),
  -- Jigglypuff - Body Press - TM089
  (39, 3900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 59),
  -- Jigglypuff - Dark Pulse - TM094
  (39, 3900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 60),
  -- Jigglypuff - Skill Swap - TM098
  (39, 3900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 61),
  -- Jigglypuff - Substitute - TM103
  (39, 3900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 62),
  -- Jigglypuff - Shadow Ball - TM114
  (39, 3900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 63),
  -- Jigglypuff - Stealth Rock - TM116
  (39, 3900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 64),
  -- Jigglypuff - Hyper Voice - TM117
  (39, 3900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 65),
  -- Jigglypuff - Energy Ball - TM119
  (39, 3900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 66),
  -- Jigglypuff - Psychic - TM120
  (39, 3900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 67),
  -- Jigglypuff - Encore - TM122
  (39, 3900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 68),
  -- Jigglypuff - Ice Spinner - TM124
  (39, 3900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 69),
  -- Jigglypuff - Flamethrower - TM125
  (39, 3900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 70),
  -- Jigglypuff - Thunderbolt - TM126
  (39, 3900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 71),
  -- Jigglypuff - Play Rough - TM127
  (39, 3900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 72),
  -- Jigglypuff - Amnesia - TM128
  (39, 3900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 73),
  -- Jigglypuff - Calm Mind - TM129
  (39, 3900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 74),
  -- Jigglypuff - Helping Hand - TM130
  (39, 3900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 75),
  -- Jigglypuff - Baton Pass - TM132
  (39, 3900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 76),
  -- Jigglypuff - Ice Beam - TM135
  (39, 3900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 77),
  -- Jigglypuff - Misty Terrain - TM139
  (39, 3900, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 78),
  -- Jigglypuff - Nasty Plot - TM140
  (39, 3900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 79),
  -- Jigglypuff - Fire Blast - TM141
  (39, 3900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 80),
  -- Jigglypuff - Blizzard - TM143
  (39, 3900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 81),
  -- Jigglypuff - Wild Charge - TM147
  (39, 3900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 82),
  -- Jigglypuff - Thunder - TM166
  (39, 3900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 83),
  -- Jigglypuff - Solar Beam - TM168
  (39, 3900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 84),
  -- Jigglypuff - Tera Blast - TM171
  (39, 3900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 85),
  -- Wigglytuff - Pound - Level 1
  (40, 4000, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Body Slam - Level 1
  (40, 4000, 34, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Double-Edge - Level 1
  (40, 4000, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wigglytuff - Mimic - Level 1
  (40, 4000, 102, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Wigglytuff - Rest - Level 1
  (40, 4000, 156, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Wigglytuff - Sweet Kiss - Level 1
  (40, 4000, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Wigglytuff - Charm - Level 1
  (40, 4000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Wigglytuff - Stockpile - Level 1
  (40, 4000, 254, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Wigglytuff - Spit Up - Level 1
  (40, 4000, 255, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Wigglytuff - Swallow - Level 1
  (40, 4000, 256, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Wigglytuff - Hyper Voice - Level 1
  (40, 4000, 304, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Wigglytuff - Covet - Level 1
  (40, 4000, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Wigglytuff - Gyro Ball - Level 1
  (40, 4000, 360, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Wigglytuff - Copycat - Level 1
  (40, 4000, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Wigglytuff - Round - Level 1
  (40, 4000, 496, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Wigglytuff - Echoed Voice - Level 1
  (40, 4000, 497, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Wigglytuff - Disarming Voice - Level 1
  (40, 4000, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Wigglytuff - Play Rough - Level 5
  (40, 4000, 583, 23, NULL, 1, 5, NULL, NULL, NULL, 21),
  -- Wigglytuff - Take Down - TM001
  (40, 4000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 22),
  -- Wigglytuff - Charm - TM002
  (40, 4000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 23),
  -- Wigglytuff - Fake Tears - TM003
  (40, 4000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 24),
  -- Wigglytuff - Protect - TM007
  (40, 4000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Wigglytuff - Water Pulse - TM011
  (40, 4000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 26),
  -- Wigglytuff - Thief - TM018
  (40, 4000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 27),
  -- Wigglytuff - Disarming Voice - TM019
  (40, 4000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 28),
  -- Wigglytuff - Trailblaze - TM020
  (40, 4000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Wigglytuff - Chilling Water - TM022
  (40, 4000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 30),
  -- Wigglytuff - Facade - TM025
  (40, 4000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Wigglytuff - Swift - TM032
  (40, 4000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Wigglytuff - Magical Leaf - TM033
  (40, 4000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 33),
  -- Wigglytuff - Icy Wind - TM034
  (40, 4000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 34),
  -- Wigglytuff - Draining Kiss - TM037
  (40, 4000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 35),
  -- Wigglytuff - Stored Power - TM041
  (40, 4000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Wigglytuff - Fling - TM043
  (40, 4000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 37),
  -- Wigglytuff - Endure - TM047
  (40, 4000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Wigglytuff - Sunny Day - TM049
  (40, 4000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Wigglytuff - Rain Dance - TM050
  (40, 4000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 40),
  -- Wigglytuff - Sandstorm - TM051
  (40, 4000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 41),
  -- Wigglytuff - Psyshock - TM054
  (40, 4000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 42),
  -- Wigglytuff - Dig - TM055
  (40, 4000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 43),
  -- Wigglytuff - Brick Break - TM058
  (40, 4000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 44),
  -- Wigglytuff - Zen Headbutt - TM059
  (40, 4000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 45),
  -- Wigglytuff - Body Slam - TM066
  (40, 4000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Wigglytuff - Fire Punch - TM067
  (40, 4000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 47),
  -- Wigglytuff - Thunder Punch - TM068
  (40, 4000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 48),
  -- Wigglytuff - Ice Punch - TM069
  (40, 4000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 49),
  -- Wigglytuff - Sleep Talk - TM070
  (40, 4000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 50),
  -- Wigglytuff - Drain Punch - TM073
  (40, 4000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 51),
  -- Wigglytuff - Reflect - TM074
  (40, 4000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 52),
  -- Wigglytuff - Light Screen - TM075
  (40, 4000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 53),
  -- Wigglytuff - Dazzling Gleam - TM079
  (40, 4000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 54),
  -- Wigglytuff - Metronome - TM080
  (40, 4000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 55),
  -- Wigglytuff - Grass Knot - TM081
  (40, 4000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 56),
  -- Wigglytuff - Thunder Wave - TM082
  (40, 4000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 57),
  -- Wigglytuff - Rest - TM085
  (40, 4000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 58),
  -- Wigglytuff - Taunt - TM087
  (40, 4000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 59),
  -- Wigglytuff - Body Press - TM089
  (40, 4000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 60),
  -- Wigglytuff - Dark Pulse - TM094
  (40, 4000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 61),
  -- Wigglytuff - Skill Swap - TM098
  (40, 4000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 62),
  -- Wigglytuff - Substitute - TM103
  (40, 4000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 63),
  -- Wigglytuff - Shadow Ball - TM114
  (40, 4000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 64),
  -- Wigglytuff - Stealth Rock - TM116
  (40, 4000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 65),
  -- Wigglytuff - Hyper Voice - TM117
  (40, 4000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 66),
  -- Wigglytuff - Energy Ball - TM119
  (40, 4000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 67),
  -- Wigglytuff - Psychic - TM120
  (40, 4000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 68),
  -- Wigglytuff - Encore - TM122
  (40, 4000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 69),
  -- Wigglytuff - Ice Spinner - TM124
  (40, 4000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 70),
  -- Wigglytuff - Flamethrower - TM125
  (40, 4000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 71),
  -- Wigglytuff - Thunderbolt - TM126
  (40, 4000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 72),
  -- Wigglytuff - Play Rough - TM127
  (40, 4000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 73),
  -- Wigglytuff - Amnesia - TM128
  (40, 4000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 74),
  -- Wigglytuff - Calm Mind - TM129
  (40, 4000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 75),
  -- Wigglytuff - Helping Hand - TM130
  (40, 4000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 76),
  -- Wigglytuff - Baton Pass - TM132
  (40, 4000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 77),
  -- Wigglytuff - Ice Beam - TM135
  (40, 4000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 78),
  -- Wigglytuff - Misty Terrain - TM139
  (40, 4000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 79),
  -- Wigglytuff - Nasty Plot - TM140
  (40, 4000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 80),
  -- Wigglytuff - Fire Blast - TM141
  (40, 4000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 81),
  -- Wigglytuff - Blizzard - TM143
  (40, 4000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 82),
  -- Wigglytuff - Wild Charge - TM147
  (40, 4000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 83),
  -- Wigglytuff - Giga Impact - TM152
  (40, 4000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 84),
  -- Wigglytuff - Focus Blast - TM158
  (40, 4000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 85),
  -- Wigglytuff - Hyper Beam - TM163
  (40, 4000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 86),
  -- Wigglytuff - Thunder - TM166
  (40, 4000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 87),
  -- Wigglytuff - Solar Beam - TM168
  (40, 4000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 88),
  -- Wigglytuff - Tera Blast - TM171
  (40, 4000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 89),
  -- Wigglytuff - Perish Song - Egg
  (40, 4000, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Wigglytuff - Rollout - Egg
  (40, 4000, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Wigglytuff - Present - Egg
  (40, 4000, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Wigglytuff - Wish - Egg
  (40, 4000, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Wigglytuff - Covet - Egg
  (40, 4000, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Wigglytuff - Gravity - Egg
  (40, 4000, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Wigglytuff - Last Resort - Egg
  (40, 4000, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Wigglytuff - Heal Pulse - Egg
  (40, 4000, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Growth - Level 1
  (43, 4300, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oddish - Acid - Level 4
  (43, 4300, 51, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Oddish - Sweet Scent - Level 8
  (43, 4300, 230, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Oddish - Mega Drain - Level 12
  (43, 4300, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Oddish - Poison Powder - Level 14
  (43, 4300, 77, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Oddish - Stun Spore - Level 16
  (43, 4300, 78, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Oddish - Sleep Powder - Level 18
  (43, 4300, 79, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Oddish - Giga Drain - Level 20
  (43, 4300, 202, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Oddish - Toxic - Level 24
  (43, 4300, 92, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Oddish - Moonblast - Level 28
  (43, 4300, 585, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Oddish - Grassy Terrain - Level 32
  (43, 4300, 580, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Oddish - Moonlight - Level 36
  (43, 4300, 236, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Oddish - Petal Dance - Level 40
  (43, 4300, 80, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Oddish - Charm - TM002
  (43, 4300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Oddish - Protect - TM007
  (43, 4300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Oddish - Acid Spray - TM013
  (43, 4300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Oddish - Trailblaze - TM020
  (43, 4300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Oddish - Facade - TM025
  (43, 4300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Oddish - Magical Leaf - TM033
  (43, 4300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Oddish - Venoshock - TM045
  (43, 4300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 21),
  -- Oddish - Endure - TM047
  (43, 4300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Oddish - Sunny Day - TM049
  (43, 4300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Oddish - Bullet Seed - TM056
  (43, 4300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Oddish - Sleep Talk - TM070
  (43, 4300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Oddish - Seed Bomb - TM071
  (43, 4300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Oddish - Grass Knot - TM081
  (43, 4300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Oddish - Rest - TM085
  (43, 4300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Oddish - Swords Dance - TM088
  (43, 4300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 29),
  -- Oddish - Substitute - TM103
  (43, 4300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Oddish - Giga Drain - TM111
  (43, 4300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 31),
  -- Oddish - Energy Ball - TM119
  (43, 4300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Oddish - Helping Hand - TM130
  (43, 4300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Oddish - Grassy Terrain - TM137
  (43, 4300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 34),
  -- Oddish - Sludge Bomb - TM148
  (43, 4300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 35),
  -- Oddish - Leaf Storm - TM159
  (43, 4300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 36),
  -- Oddish - Solar Beam - TM168
  (43, 4300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 37),
  -- Oddish - Tera Blast - TM171
  (43, 4300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Oddish - Leech Seed - Egg
  (43, 4300, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Oddish - Razor Leaf - Egg
  (43, 4300, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Oddish - Flail - Egg
  (43, 4300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Oddish - Synthesis - Egg
  (43, 4300, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Oddish - Ingrain - Egg
  (43, 4300, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Oddish - Teeter Dance - Egg
  (43, 4300, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oddish - Tickle - Egg
  (43, 4300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oddish - After You - Egg
  (43, 4300, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oddish - Strength Sap - Egg
  (43, 4300, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gloom - Acid - Level 1
  (44, 4400, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Growth - Level 1
  (44, 4400, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gloom - Mega Drain - Level 12
  (44, 4400, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gloom - Poison Powder - Level 14
  (44, 4400, 77, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gloom - Stun Spore - Level 16
  (44, 4400, 78, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gloom - Sleep Powder - Level 18
  (44, 4400, 79, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Gloom - Giga Drain - Level 20
  (44, 4400, 202, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gloom - Toxic - Level 26
  (44, 4400, 92, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gloom - Moonblast - Level 32
  (44, 4400, 585, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Gloom - Grassy Terrain - Level 38
  (44, 4400, 580, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Gloom - Moonlight - Level 44
  (44, 4400, 236, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gloom - Petal Dance - Level 50
  (44, 4400, 80, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gloom - Charm - TM002
  (44, 4400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Gloom - Protect - TM007
  (44, 4400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Gloom - Acid Spray - TM013
  (44, 4400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Gloom - Trailblaze - TM020
  (44, 4400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Gloom - Facade - TM025
  (44, 4400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Gloom - Magical Leaf - TM033
  (44, 4400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Gloom - Venoshock - TM045
  (44, 4400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 21),
  -- Gloom - Endure - TM047
  (44, 4400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Gloom - Sunny Day - TM049
  (44, 4400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Gloom - Bullet Seed - TM056
  (44, 4400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Gloom - Sleep Talk - TM070
  (44, 4400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Gloom - Seed Bomb - TM071
  (44, 4400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Gloom - Grass Knot - TM081
  (44, 4400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Gloom - Rest - TM085
  (44, 4400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Gloom - Swords Dance - TM088
  (44, 4400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 29),
  -- Gloom - Substitute - TM103
  (44, 4400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Gloom - Giga Drain - TM111
  (44, 4400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 31),
  -- Gloom - Energy Ball - TM119
  (44, 4400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Gloom - Helping Hand - TM130
  (44, 4400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Gloom - Pollen Puff - TM131
  (44, 4400, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 34),
  -- Gloom - Grassy Terrain - TM137
  (44, 4400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 35),
  -- Gloom - Sludge Bomb - TM148
  (44, 4400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 36),
  -- Gloom - Leaf Storm - TM159
  (44, 4400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 37),
  -- Gloom - Solar Beam - TM168
  (44, 4400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 38),
  -- Gloom - Tera Blast - TM171
  (44, 4400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Gloom - Leech Seed - Egg
  (44, 4400, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gloom - Razor Leaf - Egg
  (44, 4400, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gloom - Flail - Egg
  (44, 4400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gloom - Synthesis - Egg
  (44, 4400, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gloom - Ingrain - Egg
  (44, 4400, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gloom - Teeter Dance - Egg
  (44, 4400, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gloom - Tickle - Egg
  (44, 4400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gloom - After You - Egg
  (44, 4400, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gloom - Strength Sap - Egg
  (44, 4400, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Acid - Level 1
  (45, 4500, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Absorb - Level 1
  (45, 4500, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Mega Drain - Level 1
  (45, 4500, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Growth - Level 1
  (45, 4500, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Poison Powder - Level 1
  (45, 4500, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vileplume - Sleep Powder - Level 1
  (45, 4500, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vileplume - Petal Dance - Level 1
  (45, 4500, 80, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vileplume - Toxic - Level 1
  (45, 4500, 92, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vileplume - Giga Drain - Level 1
  (45, 4500, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vileplume - Sweet Scent - Level 1
  (45, 4500, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vileplume - Moonlight - Level 1
  (45, 4500, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Vileplume - Grassy Terrain - Level 1
  (45, 4500, 580, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Vileplume - Moonblast - Level 1
  (45, 4500, 585, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Vileplume - Charm - TM002
  (45, 4500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Vileplume - Protect - TM007
  (45, 4500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Vileplume - Acid Spray - TM013
  (45, 4500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Vileplume - Trailblaze - TM020
  (45, 4500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Vileplume - Facade - TM025
  (45, 4500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Vileplume - Magical Leaf - TM033
  (45, 4500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Vileplume - Fling - TM043
  (45, 4500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Vileplume - Venoshock - TM045
  (45, 4500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 22),
  -- Vileplume - Endure - TM047
  (45, 4500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Vileplume - Sunny Day - TM049
  (45, 4500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Vileplume - Bullet Seed - TM056
  (45, 4500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Vileplume - Body Slam - TM066
  (45, 4500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Vileplume - Sleep Talk - TM070
  (45, 4500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Vileplume - Seed Bomb - TM071
  (45, 4500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Vileplume - Dazzling Gleam - TM079
  (45, 4500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 29),
  -- Vileplume - Grass Knot - TM081
  (45, 4500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 30),
  -- Vileplume - Rest - TM085
  (45, 4500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Vileplume - Swords Dance - TM088
  (45, 4500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Vileplume - Substitute - TM103
  (45, 4500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Vileplume - Giga Drain - TM111
  (45, 4500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Vileplume - Energy Ball - TM119
  (45, 4500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Vileplume - Helping Hand - TM130
  (45, 4500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Vileplume - Pollen Puff - TM131
  (45, 4500, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 37),
  -- Vileplume - Grassy Terrain - TM137
  (45, 4500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Vileplume - Sludge Bomb - TM148
  (45, 4500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 39),
  -- Vileplume - Giga Impact - TM152
  (45, 4500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Vileplume - Leaf Storm - TM159
  (45, 4500, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Vileplume - Hyper Beam - TM163
  (45, 4500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Vileplume - Solar Beam - TM168
  (45, 4500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Vileplume - Tera Blast - TM171
  (45, 4500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Vileplume - Leech Seed - Egg
  (45, 4500, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vileplume - Razor Leaf - Egg
  (45, 4500, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vileplume - Flail - Egg
  (45, 4500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vileplume - Synthesis - Egg
  (45, 4500, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Ingrain - Egg
  (45, 4500, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vileplume - Teeter Dance - Egg
  (45, 4500, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vileplume - Tickle - Egg
  (45, 4500, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vileplume - After You - Egg
  (45, 4500, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vileplume - Strength Sap - Egg
  (45, 4500, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vileplume - Petal Blizzard - Evolution
  (45, 4500, 572, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Supersonic - Level 5
  (48, 4800, 48, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Venonat - Confusion - Level 11
  (48, 4800, 93, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Venonat - Poison Powder - Level 13
  (48, 4800, 77, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Venonat - Psybeam - Level 17
  (48, 4800, 60, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Venonat - Stun Spore - Level 23
  (48, 4800, 78, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Venonat - Bug Buzz - Level 25
  (48, 4800, 405, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Venonat - Sleep Powder - Level 29
  (48, 4800, 79, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Venonat - Leech Life - Level 35
  (48, 4800, 141, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Venonat - Zen Headbutt - Level 37
  (48, 4800, 428, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Venonat - Poison Fang - Level 41
  (48, 4800, 305, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Venonat - Psychic - Level 47
  (48, 4800, 94, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Venonat - Take Down - TM001
  (48, 4800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Venonat - Agility - TM004
  (48, 4800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Venonat - Protect - TM007
  (48, 4800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Venonat - Acid Spray - TM013
  (48, 4800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Venonat - Struggle Bug - TM015
  (48, 4800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Venonat - Psybeam - TM016
  (48, 4800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Venonat - Confuse Ray - TM017
  (48, 4800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Venonat - Thief - TM018
  (48, 4800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Venonat - Pounce - TM021
  (48, 4800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Venonat - Facade - TM025
  (48, 4800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Venonat - Swift - TM032
  (48, 4800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Venonat - Night Shade - TM042
  (48, 4800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 25),
  -- Venonat - Venoshock - TM045
  (48, 4800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Venonat - Endure - TM047
  (48, 4800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Venonat - Sunny Day - TM049
  (48, 4800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Venonat - Zen Headbutt - TM059
  (48, 4800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Venonat - Sleep Talk - TM070
  (48, 4800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Venonat - Rest - TM085
  (48, 4800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Venonat - Toxic Spikes - TM091
  (48, 4800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 32),
  -- Venonat - Leech Life - TM095
  (48, 4800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 33),
  -- Venonat - Skill Swap - TM098
  (48, 4800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 34),
  -- Venonat - Substitute - TM103
  (48, 4800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Venonat - Giga Drain - TM111
  (48, 4800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Venonat - Energy Ball - TM119
  (48, 4800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Venonat - Psychic - TM120
  (48, 4800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Venonat - Baton Pass - TM132
  (48, 4800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 39),
  -- Venonat - Sludge Bomb - TM148
  (48, 4800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Venonat - Bug Buzz - TM162
  (48, 4800, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 41),
  -- Venonat - Solar Beam - TM168
  (48, 4800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Venonat - Tera Blast - TM171
  (48, 4800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Venonat - Agility - Egg
  (48, 4800, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Venonat - Screech - Egg
  (48, 4800, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Venonat - Baton Pass - Egg
  (48, 4800, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Venonat - Morning Sun - Egg
  (48, 4800, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Venonat - Toxic Spikes - Egg
  (48, 4800, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Venonat - Bug Bite - Egg
  (48, 4800, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Venonat - Venoshock - Egg
  (48, 4800, 474, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Venonat - Rage Powder - Egg
  (48, 4800, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Quiver Dance - Level 1
  (49, 4900, 483, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Confusion - Level 11
  (49, 4900, 93, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Venomoth - Poison Powder - Level 13
  (49, 4900, 77, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Venomoth - Psybeam - Level 17
  (49, 4900, 60, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Venomoth - Stun Spore - Level 23
  (49, 4900, 78, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Venomoth - Bug Buzz - Level 25
  (49, 4900, 405, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venomoth - Sleep Powder - Level 29
  (49, 4900, 79, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venomoth - Leech Life - Level 37
  (49, 4900, 141, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Venomoth - Zen Headbutt - Level 41
  (49, 4900, 428, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Venomoth - Poison Fang - Level 47
  (49, 4900, 305, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Venomoth - Psychic - Level 55
  (49, 4900, 94, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Venomoth - Take Down - TM001
  (49, 4900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Venomoth - Agility - TM004
  (49, 4900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Venomoth - Protect - TM007
  (49, 4900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Venomoth - Acid Spray - TM013
  (49, 4900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Venomoth - Acrobatics - TM014
  (49, 4900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Venomoth - Struggle Bug - TM015
  (49, 4900, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 20),
  -- Venomoth - Psybeam - TM016
  (49, 4900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Venomoth - Confuse Ray - TM017
  (49, 4900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Venomoth - Thief - TM018
  (49, 4900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Venomoth - Pounce - TM021
  (49, 4900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Venomoth - Facade - TM025
  (49, 4900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Venomoth - Swift - TM032
  (49, 4900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Venomoth - Air Cutter - TM040
  (49, 4900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Venomoth - Night Shade - TM042
  (49, 4900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 28),
  -- Venomoth - Venoshock - TM045
  (49, 4900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Venomoth - Endure - TM047
  (49, 4900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Venomoth - Sunny Day - TM049
  (49, 4900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Venomoth - Zen Headbutt - TM059
  (49, 4900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Venomoth - U-turn - TM060
  (49, 4900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Venomoth - Air Slash - TM065
  (49, 4900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Venomoth - Sleep Talk - TM070
  (49, 4900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Venomoth - Rest - TM085
  (49, 4900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Venomoth - Toxic Spikes - TM091
  (49, 4900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 37),
  -- Venomoth - Leech Life - TM095
  (49, 4900, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 38),
  -- Venomoth - Skill Swap - TM098
  (49, 4900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Venomoth - Substitute - TM103
  (49, 4900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Venomoth - Giga Drain - TM111
  (49, 4900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Venomoth - Energy Ball - TM119
  (49, 4900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Venomoth - Psychic - TM120
  (49, 4900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Venomoth - Baton Pass - TM132
  (49, 4900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 44),
  -- Venomoth - Sludge Bomb - TM148
  (49, 4900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 45),
  -- Venomoth - Giga Impact - TM152
  (49, 4900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Venomoth - Bug Buzz - TM162
  (49, 4900, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 47),
  -- Venomoth - Hyper Beam - TM163
  (49, 4900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Venomoth - Solar Beam - TM168
  (49, 4900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Venomoth - Tera Blast - TM171
  (49, 4900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Venomoth - Agility - Egg
  (49, 4900, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Venomoth - Screech - Egg
  (49, 4900, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Venomoth - Baton Pass - Egg
  (49, 4900, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Venomoth - Morning Sun - Egg
  (49, 4900, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Venomoth - Toxic Spikes - Egg
  (49, 4900, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Venomoth - Bug Bite - Egg
  (49, 4900, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Venomoth - Venoshock - Egg
  (49, 4900, 474, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Venomoth - Rage Powder - Egg
  (49, 4900, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Venomoth - Air Slash - Evolution
  (49, 4900, 403, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 1
  (50, 5000, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 4
  (50, 5000, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett - Astonish - Level 8
  (50, 5000, 310, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diglett - Mud-Slap - Level 12
  (50, 5000, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett - Bulldoze - Level 16
  (50, 5000, 523, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Diglett - Sucker Punch - Level 20
  (50, 5000, 389, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Diglett - Slash - Level 24
  (50, 5000, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Diglett - Sandstorm - Level 28
  (50, 5000, 201, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Diglett - Dig - Level 32
  (50, 5000, 91, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Diglett - Earth Power - Level 36
  (50, 5000, 414, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Diglett - Earthquake - Level 40
  (50, 5000, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Diglett - Fissure - Level 44
  (50, 5000, 90, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Diglett - Take Down - TM001
  (50, 5000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Diglett - Charm - TM002
  (50, 5000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Diglett - Agility - TM004
  (50, 5000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Diglett - Mud-Slap - TM005
  (50, 5000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Diglett - Protect - TM007
  (50, 5000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Diglett - Thief - TM018
  (50, 5000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Diglett - Facade - TM025
  (50, 5000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Diglett - Bulldoze - TM028
  (50, 5000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Diglett - Mud Shot - TM035
  (50, 5000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Diglett - Rock Tomb - TM036
  (50, 5000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Diglett - Endure - TM047
  (50, 5000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Diglett - Sunny Day - TM049
  (50, 5000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Diglett - Sandstorm - TM051
  (50, 5000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Diglett - Dig - TM055
  (50, 5000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Diglett - Shadow Claw - TM061
  (50, 5000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 28),
  -- Diglett - Foul Play - TM062
  (50, 5000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Diglett - Body Slam - TM066
  (50, 5000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Diglett - Sleep Talk - TM070
  (50, 5000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Diglett - Rock Blast - TM076
  (50, 5000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 32),
  -- Diglett - Stomping Tantrum - TM084
  (50, 5000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Diglett - Rest - TM085
  (50, 5000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Diglett - Rock Slide - TM086
  (50, 5000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Diglett - Swords Dance - TM088
  (50, 5000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Diglett - Substitute - TM103
  (50, 5000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Diglett - Stealth Rock - TM116
  (50, 5000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 38),
  -- Diglett - Helping Hand - TM130
  (50, 5000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Diglett - Earth Power - TM133
  (50, 5000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 40),
  -- Diglett - Reversal - TM134
  (50, 5000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 41),
  -- Diglett - Sludge Bomb - TM148
  (50, 5000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 42),
  -- Diglett - Earthquake - TM149
  (50, 5000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Diglett - Stone Edge - TM150
  (50, 5000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Diglett - Tera Blast - TM171
  (50, 5000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Diglett - Headbutt - Egg
  (50, 5000, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Diglett - Ancient Power - Egg
  (50, 5000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Diglett - Memento - Egg
  (50, 5000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Diglett - Hone Claws - Egg
  (50, 5000, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Diglett - Final Gambit - Egg
  (50, 5000, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Diglett (Alolan Diglett) - Sand Attack - Level 1
  (50, 5001, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett (Alolan Diglett) - Metal Claw - Level 1
  (50, 5001, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett (Alolan Diglett) - Growl - Level 4
  (50, 5001, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett (Alolan Diglett) - Astonish - Level 8
  (50, 5001, 310, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diglett (Alolan Diglett) - Mud-Slap - Level 12
  (50, 5001, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett (Alolan Diglett) - Bulldoze - Level 16
  (50, 5001, 523, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Diglett (Alolan Diglett) - Sucker Punch - Level 20
  (50, 5001, 389, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Diglett (Alolan Diglett) - Iron Head - Level 24
  (50, 5001, 442, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Diglett (Alolan Diglett) - Sandstorm - Level 28
  (50, 5001, 201, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Diglett (Alolan Diglett) - Dig - Level 32
  (50, 5001, 91, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Diglett (Alolan Diglett) - Earth Power - Level 36
  (50, 5001, 414, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Diglett (Alolan Diglett) - Earthquake - Level 40
  (50, 5001, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Diglett (Alolan Diglett) - Fissure - Level 44
  (50, 5001, 90, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Diglett (Alolan Diglett) - Take Down - TM001
  (50, 5001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Diglett (Alolan Diglett) - Charm - TM002
  (50, 5001, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Diglett (Alolan Diglett) - Agility - TM004
  (50, 5001, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Diglett (Alolan Diglett) - Mud-Slap - TM005
  (50, 5001, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Diglett (Alolan Diglett) - Scary Face - TM006
  (50, 5001, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Diglett (Alolan Diglett) - Protect - TM007
  (50, 5001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Diglett (Alolan Diglett) - Thief - TM018
  (50, 5001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Diglett (Alolan Diglett) - Facade - TM025
  (50, 5001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Diglett (Alolan Diglett) - Bulldoze - TM028
  (50, 5001, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Diglett (Alolan Diglett) - Metal Claw - TM031
  (50, 5001, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Diglett (Alolan Diglett) - Mud Shot - TM035
  (50, 5001, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Diglett (Alolan Diglett) - Rock Tomb - TM036
  (50, 5001, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Diglett (Alolan Diglett) - Endure - TM047
  (50, 5001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Diglett (Alolan Diglett) - Sunny Day - TM049
  (50, 5001, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Diglett (Alolan Diglett) - Sandstorm - TM051
  (50, 5001, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Diglett (Alolan Diglett) - Dig - TM055
  (50, 5001, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Diglett (Alolan Diglett) - Shadow Claw - TM061
  (50, 5001, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Diglett (Alolan Diglett) - Foul Play - TM062
  (50, 5001, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Diglett (Alolan Diglett) - Body Slam - TM066
  (50, 5001, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Diglett (Alolan Diglett) - Sleep Talk - TM070
  (50, 5001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Diglett (Alolan Diglett) - Rock Blast - TM076
  (50, 5001, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Diglett (Alolan Diglett) - Stomping Tantrum - TM084
  (50, 5001, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Diglett (Alolan Diglett) - Rest - TM085
  (50, 5001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Diglett (Alolan Diglett) - Rock Slide - TM086
  (50, 5001, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Diglett (Alolan Diglett) - Swords Dance - TM088
  (50, 5001, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Diglett (Alolan Diglett) - Flash Cannon - TM093
  (50, 5001, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Diglett (Alolan Diglett) - Iron Head - TM099
  (50, 5001, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Diglett (Alolan Diglett) - Substitute - TM103
  (50, 5001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Diglett (Alolan Diglett) - Iron Defense - TM104
  (50, 5001, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Diglett (Alolan Diglett) - Stealth Rock - TM116
  (50, 5001, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 43),
  -- Diglett (Alolan Diglett) - Helping Hand - TM130
  (50, 5001, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Diglett (Alolan Diglett) - Earth Power - TM133
  (50, 5001, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Diglett (Alolan Diglett) - Reversal - TM134
  (50, 5001, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 46),
  -- Diglett (Alolan Diglett) - Sludge Bomb - TM148
  (50, 5001, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Diglett (Alolan Diglett) - Earthquake - TM149
  (50, 5001, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Diglett (Alolan Diglett) - Stone Edge - TM150
  (50, 5001, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Diglett (Alolan Diglett) - Steel Beam - TM170
  (50, 5001, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 50),
  -- Diglett (Alolan Diglett) - Tera Blast - TM171
  (50, 5001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Diglett (Alolan Diglett) - Headbutt - Egg
  (50, 5001, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Diglett (Alolan Diglett) - Thrash - Egg
  (50, 5001, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Diglett (Alolan Diglett) - Ancient Power - Egg
  (50, 5001, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Diglett (Alolan Diglett) - Memento - Egg
  (50, 5001, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Diglett (Alolan Diglett) - Metal Sound - Egg
  (50, 5001, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Diglett (Alolan Diglett) - Hone Claws - Egg
  (50, 5001, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Diglett (Alolan Diglett) - Final Gambit - Egg
  (50, 5001, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 58);
