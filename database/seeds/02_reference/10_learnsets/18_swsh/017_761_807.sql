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
-- Sword / Shield learnsets for default forms, species 761-807.
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
  -- Bounsweet - Splash - Level 1
  (761, 76100, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bounsweet - Play Nice - Level 4
  (761, 76100, 589, 18, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bounsweet - Rapid Spin - Level 8
  (761, 76100, 229, 18, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Bounsweet - Razor Leaf - Level 12
  (761, 76100, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bounsweet - Sweet Scent - Level 16
  (761, 76100, 230, 18, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Bounsweet - Magical Leaf - Level 20
  (761, 76100, 345, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bounsweet - Flail - Level 24
  (761, 76100, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Bounsweet - Teeter Dance - Level 28
  (761, 76100, 298, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Bounsweet - Aromatic Mist - Level 32
  (761, 76100, 597, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Bounsweet - Aromatherapy - Level 36
  (761, 76100, 312, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Bounsweet - Magical Leaf - TM10
  (761, 76100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 11),
  -- Bounsweet - Solar Beam - TM11
  (761, 76100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 12),
  -- Bounsweet - Light Screen - TM17
  (761, 76100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 13),
  -- Bounsweet - Reflect - TM18
  (761, 76100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 14),
  -- Bounsweet - Safeguard - TM19
  (761, 76100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Bounsweet - Rest - TM21
  (761, 76100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Bounsweet - Snore - TM24
  (761, 76100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Bounsweet - Protect - TM25
  (761, 76100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Bounsweet - Giga Drain - TM28
  (761, 76100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Bounsweet - Charm - TM29
  (761, 76100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Bounsweet - Attract - TM31
  (761, 76100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Bounsweet - Sunny Day - TM34
  (761, 76100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Bounsweet - Facade - TM39
  (761, 76100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Bounsweet - Helping Hand - TM41
  (761, 76100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Bounsweet - Bounce - TM52
  (761, 76100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Bounsweet - Round - TM76
  (761, 76100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Bounsweet - Draining Kiss - TM87
  (761, 76100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 27),
  -- Bounsweet - Substitute - TR20
  (761, 76100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 28),
  -- Bounsweet - Endure - TR26
  (761, 76100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 29),
  -- Bounsweet - Sleep Talk - TR27
  (761, 76100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 30),
  -- Bounsweet - Seed Bomb - TR59
  (761, 76100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 31),
  -- Bounsweet - Energy Ball - TR65
  (761, 76100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 32),
  -- Bounsweet - Zen Headbutt - TR69
  (761, 76100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 33),
  -- Bounsweet - Grass Knot - TR77
  (761, 76100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 34),
  -- Bounsweet - Play Rough - TR90
  (761, 76100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 35),
  -- Bounsweet - Dazzling Gleam - TR92
  (761, 76100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 36),
  -- Bounsweet - Synthesis - Egg
  (761, 76100, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bounsweet - Endeavor - Egg
  (761, 76100, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bounsweet - Acupressure - Egg
  (761, 76100, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Steenee - Razor Leaf - Level 1
  (762, 76200, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steenee - Splash - Level 1
  (762, 76200, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steenee - Flail - Level 1
  (762, 76200, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steenee - Rapid Spin - Level 1
  (762, 76200, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steenee - Play Nice - Level 1
  (762, 76200, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steenee - Sweet Scent - Level 16
  (762, 76200, 230, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Steenee - Magical Leaf - Level 22
  (762, 76200, 345, 18, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Steenee - Stomp - Level 28
  (762, 76200, 23, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Steenee - Teeter Dance - Level 34
  (762, 76200, 298, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Steenee - Aromatic Mist - Level 40
  (762, 76200, 597, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Steenee - Aromatherapy - Level 46
  (762, 76200, 312, 18, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Steenee - Leaf Storm - Level 52
  (762, 76200, 437, 18, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Steenee - Magical Leaf - TM10
  (762, 76200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 13),
  -- Steenee - Solar Beam - TM11
  (762, 76200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Steenee - Light Screen - TM17
  (762, 76200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Steenee - Reflect - TM18
  (762, 76200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Steenee - Safeguard - TM19
  (762, 76200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Steenee - Rest - TM21
  (762, 76200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Steenee - Snore - TM24
  (762, 76200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Steenee - Protect - TM25
  (762, 76200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Steenee - Giga Drain - TM28
  (762, 76200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Steenee - Charm - TM29
  (762, 76200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Steenee - Attract - TM31
  (762, 76200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Steenee - Sunny Day - TM34
  (762, 76200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Steenee - Facade - TM39
  (762, 76200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Steenee - Helping Hand - TM41
  (762, 76200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Steenee - Bounce - TM52
  (762, 76200, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 27),
  -- Steenee - Payback - TM57
  (762, 76200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Steenee - Fling - TM59
  (762, 76200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Steenee - Low Sweep - TM75
  (762, 76200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 30),
  -- Steenee - Round - TM76
  (762, 76200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Steenee - Draining Kiss - TM87
  (762, 76200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 32),
  -- Steenee - Substitute - TR20
  (762, 76200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Steenee - Endure - TR26
  (762, 76200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Steenee - Sleep Talk - TR27
  (762, 76200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Steenee - Seed Bomb - TR59
  (762, 76200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 36),
  -- Steenee - Energy Ball - TR65
  (762, 76200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 37),
  -- Steenee - Zen Headbutt - TR69
  (762, 76200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 38),
  -- Steenee - Leaf Storm - TR71
  (762, 76200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 39),
  -- Steenee - Grass Knot - TR77
  (762, 76200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Steenee - Play Rough - TR90
  (762, 76200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 41),
  -- Steenee - Dazzling Gleam - TR92
  (762, 76200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 42),
  -- Tsareena - Razor Leaf - Level 1
  (763, 76300, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tsareena - Splash - Level 1
  (763, 76300, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tsareena - Flail - Level 1
  (763, 76300, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tsareena - Swagger - Level 1
  (763, 76300, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tsareena - Rapid Spin - Level 1
  (763, 76300, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tsareena - Power Whip - Level 1
  (763, 76300, 438, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tsareena - Play Nice - Level 1
  (763, 76300, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tsareena - Trop Kick - Level 1
  (763, 76300, 688, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tsareena - Sweet Scent - Level 16
  (763, 76300, 230, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Tsareena - Magical Leaf - Level 22
  (763, 76300, 345, 18, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Tsareena - Stomp - Level 28
  (763, 76300, 23, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Tsareena - Teeter Dance - Level 34
  (763, 76300, 298, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Tsareena - Aromatic Mist - Level 40
  (763, 76300, 597, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tsareena - Aromatherapy - Level 46
  (763, 76300, 312, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Tsareena - Leaf Storm - Level 52
  (763, 76300, 437, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Tsareena - High Jump Kick - Level 58
  (763, 76300, 136, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Tsareena - Trop Kick - Evolution
  (763, 76300, 688, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Tsareena - Mega Kick - TM01
  (763, 76300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Tsareena - Hyper Beam - TM08
  (763, 76300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Tsareena - Giga Impact - TM09
  (763, 76300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Tsareena - Magical Leaf - TM10
  (763, 76300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 21),
  -- Tsareena - Solar Beam - TM11
  (763, 76300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Tsareena - Solar Blade - TM12
  (763, 76300, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 23),
  -- Tsareena - Light Screen - TM17
  (763, 76300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Tsareena - Reflect - TM18
  (763, 76300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Tsareena - Safeguard - TM19
  (763, 76300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 26),
  -- Tsareena - Rest - TM21
  (763, 76300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Tsareena - Snore - TM24
  (763, 76300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Tsareena - Protect - TM25
  (763, 76300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Tsareena - Giga Drain - TM28
  (763, 76300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Tsareena - Charm - TM29
  (763, 76300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Tsareena - Attract - TM31
  (763, 76300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Tsareena - Sunny Day - TM34
  (763, 76300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Tsareena - Facade - TM39
  (763, 76300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Tsareena - Helping Hand - TM41
  (763, 76300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Tsareena - Bounce - TM52
  (763, 76300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Tsareena - U-turn - TM56
  (763, 76300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Tsareena - Payback - TM57
  (763, 76300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Tsareena - Fling - TM59
  (763, 76300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Tsareena - Low Sweep - TM75
  (763, 76300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Tsareena - Round - TM76
  (763, 76300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Tsareena - Acrobatics - TM78
  (763, 76300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 42),
  -- Tsareena - Draining Kiss - TM87
  (763, 76300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 43),
  -- Tsareena - Low Kick - TR07
  (763, 76300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Tsareena - Substitute - TR20
  (763, 76300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Tsareena - Endure - TR26
  (763, 76300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Tsareena - Sleep Talk - TR27
  (763, 76300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Tsareena - Taunt - TR37
  (763, 76300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Tsareena - Seed Bomb - TR59
  (763, 76300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Tsareena - Energy Ball - TR65
  (763, 76300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Tsareena - Zen Headbutt - TR69
  (763, 76300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Tsareena - Leaf Storm - TR71
  (763, 76300, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 52),
  -- Tsareena - Power Whip - TR72
  (763, 76300, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 53),
  -- Tsareena - Grass Knot - TR77
  (763, 76300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Tsareena - Play Rough - TR90
  (763, 76300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 55),
  -- Tsareena - Dazzling Gleam - TR92
  (763, 76300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 56),
  -- Comfey - Wrap - Level 1
  (764, 76400, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Comfey - Growth - Level 1
  (764, 76400, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Comfey - Vine Whip - Level 3
  (764, 76400, 22, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Comfey - Helping Hand - Level 6
  (764, 76400, 270, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Comfey - Draining Kiss - Level 9
  (764, 76400, 577, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Comfey - Flower Shield - Level 12
  (764, 76400, 579, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Comfey - Magical Leaf - Level 15
  (764, 76400, 345, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Comfey - Synthesis - Level 18
  (764, 76400, 235, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Comfey - Leech Seed - Level 21
  (764, 76400, 73, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Comfey - Grass Knot - Level 24
  (764, 76400, 447, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Comfey - Sweet Kiss - Level 27
  (764, 76400, 186, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Comfey - Floral Healing - Level 30
  (764, 76400, 666, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Comfey - Petal Blizzard - Level 33
  (764, 76400, 572, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Comfey - Aromatherapy - Level 36
  (764, 76400, 312, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Comfey - Play Rough - Level 39
  (764, 76400, 583, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Comfey - Sweet Scent - Level 42
  (764, 76400, 230, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Comfey - Petal Dance - Level 45
  (764, 76400, 80, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Comfey - Grassy Terrain - Level 48
  (764, 76400, 580, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Comfey - Hyper Beam - TM08
  (764, 76400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Comfey - Magical Leaf - TM10
  (764, 76400, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 20),
  -- Comfey - Solar Beam - TM11
  (764, 76400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Comfey - Light Screen - TM17
  (764, 76400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Comfey - Safeguard - TM19
  (764, 76400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Comfey - Rest - TM21
  (764, 76400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Comfey - Thief - TM23
  (764, 76400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Comfey - Snore - TM24
  (764, 76400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Comfey - Protect - TM25
  (764, 76400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Comfey - Giga Drain - TM28
  (764, 76400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Comfey - Charm - TM29
  (764, 76400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 29),
  -- Comfey - Attract - TM31
  (764, 76400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Comfey - Sunny Day - TM34
  (764, 76400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Comfey - Facade - TM39
  (764, 76400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Comfey - Helping Hand - TM41
  (764, 76400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Comfey - Bullet Seed - TM50
  (764, 76400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 34),
  -- Comfey - U-turn - TM56
  (764, 76400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Comfey - Fling - TM59
  (764, 76400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Comfey - Trick Room - TM70
  (764, 76400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Comfey - Round - TM76
  (764, 76400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Comfey - Acrobatics - TM78
  (764, 76400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Comfey - Draining Kiss - TM87
  (764, 76400, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 40),
  -- Comfey - Grassy Terrain - TM88
  (764, 76400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 41),
  -- Comfey - Amnesia - TR17
  (764, 76400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Comfey - Substitute - TR20
  (764, 76400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Comfey - Endure - TR26
  (764, 76400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Comfey - Sleep Talk - TR27
  (764, 76400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Comfey - Encore - TR30
  (764, 76400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 46),
  -- Comfey - Taunt - TR37
  (764, 76400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Comfey - Trick - TR38
  (764, 76400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 48),
  -- Comfey - Calm Mind - TR49
  (764, 76400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Comfey - Seed Bomb - TR59
  (764, 76400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 50),
  -- Comfey - Energy Ball - TR65
  (764, 76400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Comfey - Grass Knot - TR77
  (764, 76400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Comfey - Stored Power - TR82
  (764, 76400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 53),
  -- Comfey - Ally Switch - TR83
  (764, 76400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Comfey - Play Rough - TR90
  (764, 76400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 55),
  -- Comfey - Dazzling Gleam - TR92
  (764, 76400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 56),
  -- Comfey - Pollen Puff - TR96
  (764, 76400, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 57),
  -- Comfey - Worry Seed - Egg
  (764, 76400, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Comfey - After You - Egg
  (764, 76400, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Comfey - Leaf Tornado - Egg
  (764, 76400, 536, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Oranguru - Confusion - Level 1
  (765, 76500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oranguru - Taunt - Level 1
  (765, 76500, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oranguru - After You - Level 5
  (765, 76500, 495, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Oranguru - Calm Mind - Level 10
  (765, 76500, 347, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oranguru - Stored Power - Level 15
  (765, 76500, 500, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Oranguru - Psych Up - Level 20
  (765, 76500, 244, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Oranguru - Quash - Level 25
  (765, 76500, 511, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Oranguru - Nasty Plot - Level 30
  (765, 76500, 417, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Oranguru - Zen Headbutt - Level 35
  (765, 76500, 428, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Oranguru - Trick Room - Level 40
  (765, 76500, 433, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Oranguru - Psychic - Level 45
  (765, 76500, 94, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Oranguru - Instruct - Level 50
  (765, 76500, 689, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Oranguru - Foul Play - Level 55
  (765, 76500, 492, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Oranguru - Future Sight - Level 60
  (765, 76500, 248, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Oranguru - Mega Punch - TM00
  (765, 76500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Oranguru - Mega Kick - TM01
  (765, 76500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Oranguru - Hyper Beam - TM08
  (765, 76500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Oranguru - Giga Impact - TM09
  (765, 76500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Oranguru - Light Screen - TM17
  (765, 76500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Oranguru - Reflect - TM18
  (765, 76500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Oranguru - Safeguard - TM19
  (765, 76500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Oranguru - Rest - TM21
  (765, 76500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Oranguru - Rock Slide - TM22
  (765, 76500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Oranguru - Snore - TM24
  (765, 76500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Oranguru - Protect - TM25
  (765, 76500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Oranguru - Attract - TM31
  (765, 76500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Oranguru - Rain Dance - TM33
  (765, 76500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Oranguru - Sunny Day - TM34
  (765, 76500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Oranguru - Facade - TM39
  (765, 76500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Oranguru - Brick Break - TM43
  (765, 76500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Oranguru - Imprison - TM44
  (765, 76500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Oranguru - Payback - TM57
  (765, 76500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Oranguru - Fling - TM59
  (765, 76500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Oranguru - Trick Room - TM70
  (765, 76500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Oranguru - Wonder Room - TM71
  (765, 76500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 35),
  -- Oranguru - Magic Room - TM72
  (765, 76500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 36),
  -- Oranguru - Round - TM76
  (765, 76500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Oranguru - Bulldoze - TM81
  (765, 76500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Oranguru - Psychic Terrain - TM91
  (765, 76500, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 39),
  -- Oranguru - Brutal Swing - TM97
  (765, 76500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Oranguru - Thunderbolt - TR08
  (765, 76500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Oranguru - Thunder - TR09
  (765, 76500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Oranguru - Earthquake - TR10
  (765, 76500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Oranguru - Psychic - TR11
  (765, 76500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Oranguru - Substitute - TR20
  (765, 76500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Oranguru - Psyshock - TR25
  (765, 76500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 46),
  -- Oranguru - Endure - TR26
  (765, 76500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Oranguru - Sleep Talk - TR27
  (765, 76500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Oranguru - Encore - TR30
  (765, 76500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 49),
  -- Oranguru - Shadow Ball - TR33
  (765, 76500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Oranguru - Future Sight - TR34
  (765, 76500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 51),
  -- Oranguru - Taunt - TR37
  (765, 76500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Oranguru - Trick - TR38
  (765, 76500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 53),
  -- Oranguru - Calm Mind - TR49
  (765, 76500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Oranguru - Focus Blast - TR64
  (765, 76500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Oranguru - Energy Ball - TR65
  (765, 76500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Oranguru - Nasty Plot - TR68
  (765, 76500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 57),
  -- Oranguru - Zen Headbutt - TR69
  (765, 76500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Oranguru - Foul Play - TR81
  (765, 76500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 59),
  -- Oranguru - Stored Power - TR82
  (765, 76500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 60),
  -- Oranguru - Ally Switch - TR83
  (765, 76500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Oranguru - Work Up - TR85
  (765, 76500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 62),
  -- Oranguru - Dream Eater - Egg
  (765, 76500, 138, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Oranguru - Yawn - Egg
  (765, 76500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Oranguru - Extrasensory - Egg
  (765, 76500, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Oranguru - Last Resort - Egg
  (765, 76500, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Passimian - Tackle - Level 1
  (766, 76600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Passimian - Leer - Level 1
  (766, 76600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Passimian - Rock Smash - Level 5
  (766, 76600, 249, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Passimian - Focus Energy - Level 10
  (766, 76600, 116, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Passimian - Beat Up - Level 15
  (766, 76600, 251, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Passimian - Scary Face - Level 20
  (766, 76600, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Passimian - Take Down - Level 25
  (766, 76600, 36, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Passimian - Fling - Level 30
  (766, 76600, 374, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Passimian - Bulk Up - Level 35
  (766, 76600, 339, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Passimian - Thrash - Level 40
  (766, 76600, 37, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Passimian - Double-Edge - Level 45
  (766, 76600, 38, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Passimian - Close Combat - Level 50
  (766, 76600, 370, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Passimian - Reversal - Level 55
  (766, 76600, 179, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Passimian - Giga Impact - Level 60
  (766, 76600, 416, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Passimian - Mega Punch - TM00
  (766, 76600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Passimian - Mega Kick - TM01
  (766, 76600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Passimian - Hyper Beam - TM08
  (766, 76600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Passimian - Giga Impact - TM09
  (766, 76600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Passimian - Rest - TM21
  (766, 76600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Passimian - Rock Slide - TM22
  (766, 76600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Passimian - Thief - TM23
  (766, 76600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Passimian - Snore - TM24
  (766, 76600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Passimian - Protect - TM25
  (766, 76600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Passimian - Scary Face - TM26
  (766, 76600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Passimian - Attract - TM31
  (766, 76600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Passimian - Rain Dance - TM33
  (766, 76600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Passimian - Sunny Day - TM34
  (766, 76600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Passimian - Beat Up - TM37
  (766, 76600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 28),
  -- Passimian - Facade - TM39
  (766, 76600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Passimian - Revenge - TM42
  (766, 76600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Passimian - Brick Break - TM43
  (766, 76600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Passimian - Rock Tomb - TM48
  (766, 76600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Passimian - U-turn - TM56
  (766, 76600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Passimian - Payback - TM57
  (766, 76600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Passimian - Assurance - TM58
  (766, 76600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Passimian - Fling - TM59
  (766, 76600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Passimian - Drain Punch - TM63
  (766, 76600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 37),
  -- Passimian - Low Sweep - TM75
  (766, 76600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 38),
  -- Passimian - Round - TM76
  (766, 76600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Passimian - Acrobatics - TM78
  (766, 76600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Passimian - Retaliate - TM79
  (766, 76600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Passimian - Bulldoze - TM81
  (766, 76600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Passimian - Electroweb - TM82
  (766, 76600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 43),
  -- Passimian - Brutal Swing - TM97
  (766, 76600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Passimian - Earthquake - TR10
  (766, 76600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Passimian - Focus Energy - TR13
  (766, 76600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 46),
  -- Passimian - Substitute - TR20
  (766, 76600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Passimian - Reversal - TR21
  (766, 76600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 48),
  -- Passimian - Endure - TR26
  (766, 76600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Passimian - Sleep Talk - TR27
  (766, 76600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Passimian - Iron Tail - TR31
  (766, 76600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Passimian - Shadow Ball - TR33
  (766, 76600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Passimian - Uproar - TR35
  (766, 76600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 53),
  -- Passimian - Taunt - TR37
  (766, 76600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 54),
  -- Passimian - Superpower - TR39
  (766, 76600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 55),
  -- Passimian - Bulk Up - TR48
  (766, 76600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Passimian - Gyro Ball - TR52
  (766, 76600, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 57),
  -- Passimian - Close Combat - TR53
  (766, 76600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 58),
  -- Passimian - Seed Bomb - TR59
  (766, 76600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 59),
  -- Passimian - Focus Blast - TR64
  (766, 76600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 60),
  -- Passimian - Energy Ball - TR65
  (766, 76600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 61),
  -- Passimian - Gunk Shot - TR73
  (766, 76600, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 62),
  -- Passimian - Iron Head - TR74
  (766, 76600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 63),
  -- Passimian - Grass Knot - TR77
  (766, 76600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 64),
  -- Passimian - Work Up - TR85
  (766, 76600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 65),
  -- Passimian - Counter - Egg
  (766, 76600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Passimian - Seismic Toss - Egg
  (766, 76600, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Passimian - Quick Attack - Egg
  (766, 76600, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Passimian - Vital Throw - Egg
  (766, 76600, 233, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Passimian - Knock Off - Egg
  (766, 76600, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Passimian - Feint - Egg
  (766, 76600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Passimian - Quick Guard - Egg
  (766, 76600, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Wimpod - Sand Attack - Level 1
  (767, 76700, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wimpod - Defense Curl - Level 1
  (767, 76700, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wimpod - Struggle Bug - Level 1
  (767, 76700, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wimpod - Screech - TM16
  (767, 76700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 4),
  -- Wimpod - Rest - TM21
  (767, 76700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 5),
  -- Wimpod - Snore - TM24
  (767, 76700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 6),
  -- Wimpod - Protect - TM25
  (767, 76700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 7),
  -- Wimpod - Attract - TM31
  (767, 76700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 8),
  -- Wimpod - Rain Dance - TM33
  (767, 76700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 9),
  -- Wimpod - Hail - TM35
  (767, 76700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 10),
  -- Wimpod - Facade - TM39
  (767, 76700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 11),
  -- Wimpod - Swift - TM40
  (767, 76700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 12),
  -- Wimpod - Mud Shot - TM53
  (767, 76700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 13),
  -- Wimpod - Assurance - TM58
  (767, 76700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 14),
  -- Wimpod - Round - TM76
  (767, 76700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 15),
  -- Wimpod - Surf - TR04
  (767, 76700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 16),
  -- Wimpod - Waterfall - TR16
  (767, 76700, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 17),
  -- Wimpod - Leech Life - TR18
  (767, 76700, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 18),
  -- Wimpod - Substitute - TR20
  (767, 76700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 19),
  -- Wimpod - Spikes - TR23
  (767, 76700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 20),
  -- Wimpod - Endure - TR26
  (767, 76700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 21),
  -- Wimpod - Sleep Talk - TR27
  (767, 76700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 22),
  -- Wimpod - Taunt - TR37
  (767, 76700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 23),
  -- Wimpod - Bug Buzz - TR61
  (767, 76700, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 24),
  -- Wimpod - Scald - TR84
  (767, 76700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 25),
  -- Wimpod - Harden - Egg
  (767, 76700, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Wimpod - Rollout - Egg
  (767, 76700, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Wimpod - Metal Claw - Egg
  (767, 76700, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Wimpod - Aqua Jet - Egg
  (767, 76700, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Wimpod - Wide Guard - Egg
  (767, 76700, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Golisopod - Sand Attack - Level 1
  (768, 76800, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golisopod - Defense Curl - Level 1
  (768, 76800, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golisopod - Spite - Level 1
  (768, 76800, 180, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golisopod - Struggle Bug - Level 1
  (768, 76800, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golisopod - First Impression - Level 1
  (768, 76800, 660, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golisopod - Rock Smash - Level 4
  (768, 76800, 249, 18, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golisopod - Fury Cutter - Level 8
  (768, 76800, 210, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Golisopod - Mud Shot - Level 12
  (768, 76800, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Golisopod - Bug Bite - Level 16
  (768, 76800, 450, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Golisopod - Iron Defense - Level 20
  (768, 76800, 334, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Golisopod - Sucker Punch - Level 24
  (768, 76800, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Golisopod - Slash - Level 28
  (768, 76800, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Golisopod - Razor Shell - Level 32
  (768, 76800, 534, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Golisopod - Pin Missile - Level 36
  (768, 76800, 42, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golisopod - Swords Dance - Level 40
  (768, 76800, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golisopod - Liquidation - Level 44
  (768, 76800, 710, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Golisopod - First Impression - Evolution
  (768, 76800, 660, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Golisopod - Pin Missile - TM07
  (768, 76800, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 18),
  -- Golisopod - Hyper Beam - TM08
  (768, 76800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Golisopod - Giga Impact - TM09
  (768, 76800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Golisopod - Screech - TM16
  (768, 76800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Golisopod - Rest - TM21
  (768, 76800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Golisopod - Rock Slide - TM22
  (768, 76800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Golisopod - Snore - TM24
  (768, 76800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Golisopod - Protect - TM25
  (768, 76800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Golisopod - Icy Wind - TM27
  (768, 76800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Golisopod - Attract - TM31
  (768, 76800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Golisopod - Rain Dance - TM33
  (768, 76800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Golisopod - Hail - TM35
  (768, 76800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Golisopod - Facade - TM39
  (768, 76800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Golisopod - Swift - TM40
  (768, 76800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Golisopod - Brick Break - TM43
  (768, 76800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Golisopod - Dive - TM45
  (768, 76800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 33),
  -- Golisopod - Rock Tomb - TM48
  (768, 76800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Golisopod - Mud Shot - TM53
  (768, 76800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 35),
  -- Golisopod - Payback - TM57
  (768, 76800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Golisopod - Assurance - TM58
  (768, 76800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Golisopod - Fling - TM59
  (768, 76800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Golisopod - Shadow Claw - TM65
  (768, 76800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Golisopod - Venoshock - TM74
  (768, 76800, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 40),
  -- Golisopod - Round - TM76
  (768, 76800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Golisopod - Razor Shell - TM83
  (768, 76800, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 42),
  -- Golisopod - Snarl - TM85
  (768, 76800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Golisopod - False Swipe - TM94
  (768, 76800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 44),
  -- Golisopod - Swords Dance - TR00
  (768, 76800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Golisopod - Surf - TR04
  (768, 76800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Golisopod - Ice Beam - TR05
  (768, 76800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Golisopod - Blizzard - TR06
  (768, 76800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Golisopod - Waterfall - TR16
  (768, 76800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 49),
  -- Golisopod - Leech Life - TR18
  (768, 76800, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 50),
  -- Golisopod - Substitute - TR20
  (768, 76800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Golisopod - Sludge Bomb - TR22
  (768, 76800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Golisopod - Spikes - TR23
  (768, 76800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 53),
  -- Golisopod - Endure - TR26
  (768, 76800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Golisopod - Sleep Talk - TR27
  (768, 76800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Golisopod - Taunt - TR37
  (768, 76800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 56),
  -- Golisopod - Muddy Water - TR45
  (768, 76800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 57),
  -- Golisopod - Iron Defense - TR46
  (768, 76800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 58),
  -- Golisopod - Bulk Up - TR48
  (768, 76800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 59),
  -- Golisopod - Close Combat - TR53
  (768, 76800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 60),
  -- Golisopod - Poison Jab - TR57
  (768, 76800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 61),
  -- Golisopod - Dark Pulse - TR58
  (768, 76800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 62),
  -- Golisopod - X-Scissor - TR60
  (768, 76800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 63),
  -- Golisopod - Bug Buzz - TR61
  (768, 76800, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 64),
  -- Golisopod - Focus Blast - TR64
  (768, 76800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Golisopod - Iron Head - TR74
  (768, 76800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Golisopod - Sludge Wave - TR78
  (768, 76800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 67),
  -- Golisopod - Scald - TR84
  (768, 76800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 68),
  -- Golisopod - Drill Run - TR87
  (768, 76800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 69),
  -- Golisopod - Throat Chop - TR95
  (768, 76800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 70),
  -- Golisopod - Liquidation - TR98
  (768, 76800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 71),
  -- Sandygast - Absorb - Level 1
  (769, 76900, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandygast - Harden - Level 1
  (769, 76900, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandygast - Astonish - Level 5
  (769, 76900, 310, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sandygast - Sand Tomb - Level 10
  (769, 76900, 328, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sandygast - Mega Drain - Level 15
  (769, 76900, 72, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sandygast - Sand Attack - Level 20
  (769, 76900, 28, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sandygast - Bulldoze - Level 25
  (769, 76900, 523, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sandygast - Hypnosis - Level 30
  (769, 76900, 95, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sandygast - Giga Drain - Level 35
  (769, 76900, 202, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sandygast - Iron Defense - Level 40
  (769, 76900, 334, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sandygast - Shadow Ball - Level 45
  (769, 76900, 247, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sandygast - Earth Power - Level 50
  (769, 76900, 414, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sandygast - Shore Up - Level 55
  (769, 76900, 659, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Sandygast - Sandstorm - Level 60
  (769, 76900, 201, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Sandygast - Rest - TM21
  (769, 76900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Sandygast - Rock Slide - TM22
  (769, 76900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Sandygast - Snore - TM24
  (769, 76900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Sandygast - Protect - TM25
  (769, 76900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Sandygast - Giga Drain - TM28
  (769, 76900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Sandygast - Attract - TM31
  (769, 76900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Sandygast - Sandstorm - TM32
  (769, 76900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Sandygast - Facade - TM39
  (769, 76900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Sandygast - Rock Tomb - TM48
  (769, 76900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 23),
  -- Sandygast - Sand Tomb - TM49
  (769, 76900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 24),
  -- Sandygast - Mud Shot - TM53
  (769, 76900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Sandygast - Brine - TM55
  (769, 76900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 26),
  -- Sandygast - Round - TM76
  (769, 76900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Sandygast - Bulldoze - TM81
  (769, 76900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 28),
  -- Sandygast - Earthquake - TR10
  (769, 76900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 29),
  -- Sandygast - Psychic - TR11
  (769, 76900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 30),
  -- Sandygast - Amnesia - TR17
  (769, 76900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 31),
  -- Sandygast - Substitute - TR20
  (769, 76900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Sandygast - Sludge Bomb - TR22
  (769, 76900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 33),
  -- Sandygast - Endure - TR26
  (769, 76900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Sandygast - Sleep Talk - TR27
  (769, 76900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Sandygast - Shadow Ball - TR33
  (769, 76900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 36),
  -- Sandygast - Trick - TR38
  (769, 76900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 37),
  -- Sandygast - Skill Swap - TR40
  (769, 76900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 38),
  -- Sandygast - Iron Defense - TR46
  (769, 76900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 39),
  -- Sandygast - Energy Ball - TR65
  (769, 76900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Sandygast - Earth Power - TR67
  (769, 76900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 41),
  -- Sandygast - Stone Edge - TR75
  (769, 76900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 42),
  -- Sandygast - Stealth Rock - TR76
  (769, 76900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 43),
  -- Sandygast - Curse - Egg
  (769, 76900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sandygast - Destiny Bond - Egg
  (769, 76900, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sandygast - Ancient Power - Egg
  (769, 76900, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sandygast - Stockpile - Egg
  (769, 76900, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sandygast - Spit Up - Egg
  (769, 76900, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sandygast - Swallow - Egg
  (769, 76900, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Palossand - Absorb - Level 1
  (770, 77000, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palossand - Harden - Level 1
  (770, 77000, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palossand - Astonish - Level 1
  (770, 77000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palossand - Sand Tomb - Level 1
  (770, 77000, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palossand - Mega Drain - Level 15
  (770, 77000, 72, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palossand - Sand Attack - Level 20
  (770, 77000, 28, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Palossand - Bulldoze - Level 25
  (770, 77000, 523, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Palossand - Hypnosis - Level 30
  (770, 77000, 95, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Palossand - Giga Drain - Level 35
  (770, 77000, 202, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Palossand - Iron Defense - Level 40
  (770, 77000, 334, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Palossand - Shadow Ball - Level 47
  (770, 77000, 247, 18, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Palossand - Earth Power - Level 54
  (770, 77000, 414, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Palossand - Shore Up - Level 61
  (770, 77000, 659, 18, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Palossand - Sandstorm - Level 68
  (770, 77000, 201, 18, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Palossand - Giga Impact - TM09
  (770, 77000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Palossand - Rest - TM21
  (770, 77000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Palossand - Rock Slide - TM22
  (770, 77000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Palossand - Snore - TM24
  (770, 77000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Palossand - Protect - TM25
  (770, 77000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Palossand - Giga Drain - TM28
  (770, 77000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Palossand - Attract - TM31
  (770, 77000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Palossand - Sandstorm - TM32
  (770, 77000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Palossand - Facade - TM39
  (770, 77000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Palossand - Rock Tomb - TM48
  (770, 77000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 24),
  -- Palossand - Sand Tomb - TM49
  (770, 77000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 25),
  -- Palossand - Mud Shot - TM53
  (770, 77000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Palossand - Brine - TM55
  (770, 77000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 27),
  -- Palossand - Fling - TM59
  (770, 77000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 28),
  -- Palossand - Round - TM76
  (770, 77000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Palossand - Bulldoze - TM81
  (770, 77000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Palossand - Earthquake - TR10
  (770, 77000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 31),
  -- Palossand - Psychic - TR11
  (770, 77000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 32),
  -- Palossand - Amnesia - TR17
  (770, 77000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 33),
  -- Palossand - Substitute - TR20
  (770, 77000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Palossand - Sludge Bomb - TR22
  (770, 77000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 35),
  -- Palossand - Endure - TR26
  (770, 77000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Palossand - Sleep Talk - TR27
  (770, 77000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Palossand - Shadow Ball - TR33
  (770, 77000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Palossand - Trick - TR38
  (770, 77000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 39),
  -- Palossand - Skill Swap - TR40
  (770, 77000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 40),
  -- Palossand - Iron Defense - TR46
  (770, 77000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Palossand - Energy Ball - TR65
  (770, 77000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 42),
  -- Palossand - Earth Power - TR67
  (770, 77000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Palossand - Stone Edge - TR75
  (770, 77000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 44),
  -- Palossand - Stealth Rock - TR76
  (770, 77000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 45),
  -- Pyukumuku - Harden - Level 1
  (771, 77100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pyukumuku - Baton Pass - Level 1
  (771, 77100, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pyukumuku - Helping Hand - Level 5
  (771, 77100, 270, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pyukumuku - Taunt - Level 10
  (771, 77100, 269, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pyukumuku - Safeguard - Level 15
  (771, 77100, 219, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pyukumuku - Counter - Level 20
  (771, 77100, 68, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pyukumuku - Purify - Level 25
  (771, 77100, 685, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pyukumuku - Curse - Level 30
  (771, 77100, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pyukumuku - Gastro Acid - Level 35
  (771, 77100, 380, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pyukumuku - Pain Split - Level 40
  (771, 77100, 220, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pyukumuku - Recover - Level 45
  (771, 77100, 105, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pyukumuku - Soak - Level 50
  (771, 77100, 487, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pyukumuku - Toxic - Level 55
  (771, 77100, 92, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pyukumuku - Memento - Level 60
  (771, 77100, 262, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pyukumuku - Screech - TM16
  (771, 77100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Pyukumuku - Light Screen - TM17
  (771, 77100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Pyukumuku - Reflect - TM18
  (771, 77100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Pyukumuku - Safeguard - TM19
  (771, 77100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Pyukumuku - Rest - TM21
  (771, 77100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Pyukumuku - Protect - TM25
  (771, 77100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Pyukumuku - Attract - TM31
  (771, 77100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Pyukumuku - Rain Dance - TM33
  (771, 77100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Pyukumuku - Hail - TM35
  (771, 77100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Pyukumuku - Helping Hand - TM41
  (771, 77100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Pyukumuku - Substitute - TR20
  (771, 77100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 25),
  -- Pyukumuku - Endure - TR26
  (771, 77100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 26),
  -- Pyukumuku - Sleep Talk - TR27
  (771, 77100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 27),
  -- Pyukumuku - Baton Pass - TR29
  (771, 77100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 28),
  -- Pyukumuku - Taunt - TR37
  (771, 77100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 29),
  -- Pyukumuku - Venom Drench - TR91
  (771, 77100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 30),
  -- Pyukumuku - Spite - Egg
  (771, 77100, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Pyukumuku - Swagger - Egg
  (771, 77100, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pyukumuku - Mirror Coat - Egg
  (771, 77100, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pyukumuku - Tickle - Egg
  (771, 77100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Type: Null - Tackle - Level 1
  (772, 77200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Type: Null - Imprison - Level 1
  (772, 77200, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Type: Null - Aerial Ace - Level 5
  (772, 77200, 332, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Type: Null - Scary Face - Level 10
  (772, 77200, 184, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Type: Null - Double Hit - Level 15
  (772, 77200, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Type: Null - Metal Sound - Level 20
  (772, 77200, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Type: Null - Crush Claw - Level 25
  (772, 77200, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Type: Null - Air Slash - Level 30
  (772, 77200, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Type: Null - Tri Attack - Level 35
  (772, 77200, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Type: Null - X-Scissor - Level 40
  (772, 77200, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Type: Null - Iron Head - Level 45
  (772, 77200, 442, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Type: Null - Take Down - Level 50
  (772, 77200, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Type: Null - Double-Edge - Level 55
  (772, 77200, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Type: Null - Hyper Beam - TM08
  (772, 77200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Type: Null - Giga Impact - TM09
  (772, 77200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Type: Null - Thunder Wave - TM14
  (772, 77200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Type: Null - Rest - TM21
  (772, 77200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Type: Null - Rock Slide - TM22
  (772, 77200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Type: Null - Snore - TM24
  (772, 77200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Type: Null - Protect - TM25
  (772, 77200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Type: Null - Scary Face - TM26
  (772, 77200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Type: Null - Icy Wind - TM27
  (772, 77200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Type: Null - Sandstorm - TM32
  (772, 77200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Type: Null - Rain Dance - TM33
  (772, 77200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Type: Null - Sunny Day - TM34
  (772, 77200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Type: Null - Hail - TM35
  (772, 77200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Type: Null - Facade - TM39
  (772, 77200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Type: Null - Swift - TM40
  (772, 77200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Type: Null - Imprison - TM44
  (772, 77200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Type: Null - U-turn - TM56
  (772, 77200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Type: Null - Payback - TM57
  (772, 77200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Type: Null - Shadow Claw - TM65
  (772, 77200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Type: Null - Round - TM76
  (772, 77200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Type: Null - Air Slash - TM95
  (772, 77200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 34),
  -- Type: Null - Swords Dance - TR00
  (772, 77200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Type: Null - Tri Attack - TR19
  (772, 77200, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 36),
  -- Type: Null - Substitute - TR20
  (772, 77200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Type: Null - Endure - TR26
  (772, 77200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Type: Null - Sleep Talk - TR27
  (772, 77200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Type: Null - Iron Defense - TR46
  (772, 77200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 40),
  -- Type: Null - Dragon Claw - TR47
  (772, 77200, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 41),
  -- Type: Null - X-Scissor - TR60
  (772, 77200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 42),
  -- Type: Null - Iron Head - TR74
  (772, 77200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 43),
  -- Type: Null - Work Up - TR85
  (772, 77200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 44),
  -- Silvally - Tackle - Level 1
  (773, 77300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally - Bite - Level 1
  (773, 77300, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally - Explosion - Level 1
  (773, 77300, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally - Scary Face - Level 1
  (773, 77300, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally - Imprison - Level 1
  (773, 77300, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally - Poison Fang - Level 1
  (773, 77300, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally - Aerial Ace - Level 1
  (773, 77300, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally - Thunder Fang - Level 1
  (773, 77300, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally - Ice Fang - Level 1
  (773, 77300, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally - Fire Fang - Level 1
  (773, 77300, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Silvally - Iron Head - Level 1
  (773, 77300, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Silvally - Multi-Attack - Level 1
  (773, 77300, 718, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Silvally - Double Hit - Level 15
  (773, 77300, 458, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Silvally - Metal Sound - Level 20
  (773, 77300, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Silvally - Crush Claw - Level 25
  (773, 77300, 306, 18, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Silvally - Air Slash - Level 30
  (773, 77300, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Silvally - Tri Attack - Level 35
  (773, 77300, 161, 18, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Silvally - X-Scissor - Level 40
  (773, 77300, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Silvally - Crunch - Level 45
  (773, 77300, 242, 18, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Silvally - Take Down - Level 50
  (773, 77300, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Silvally - Double-Edge - Level 55
  (773, 77300, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Silvally - Parting Shot - Level 60
  (773, 77300, 575, 18, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Silvally - Multi-Attack - Evolution
  (773, 77300, 718, 18, NULL, 7, NULL, NULL, NULL, NULL, 23),
  -- Silvally - Hyper Beam - TM08
  (773, 77300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Silvally - Giga Impact - TM09
  (773, 77300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Silvally - Thunder Wave - TM14
  (773, 77300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 26),
  -- Silvally - Self-Destruct - TM20
  (773, 77300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 27),
  -- Silvally - Rest - TM21
  (773, 77300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Silvally - Rock Slide - TM22
  (773, 77300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Silvally - Snore - TM24
  (773, 77300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Silvally - Protect - TM25
  (773, 77300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Silvally - Scary Face - TM26
  (773, 77300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 32),
  -- Silvally - Icy Wind - TM27
  (773, 77300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Silvally - Steel Wing - TM30
  (773, 77300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 34),
  -- Silvally - Sandstorm - TM32
  (773, 77300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 35),
  -- Silvally - Rain Dance - TM33
  (773, 77300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Silvally - Sunny Day - TM34
  (773, 77300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Silvally - Hail - TM35
  (773, 77300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 38),
  -- Silvally - Facade - TM39
  (773, 77300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Silvally - Swift - TM40
  (773, 77300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 40),
  -- Silvally - Imprison - TM44
  (773, 77300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 41),
  -- Silvally - U-turn - TM56
  (773, 77300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 42),
  -- Silvally - Payback - TM57
  (773, 77300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 43),
  -- Silvally - Shadow Claw - TM65
  (773, 77300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Silvally - Thunder Fang - TM66
  (773, 77300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 45),
  -- Silvally - Ice Fang - TM67
  (773, 77300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 46),
  -- Silvally - Fire Fang - TM68
  (773, 77300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 47),
  -- Silvally - Round - TM76
  (773, 77300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Silvally - Snarl - TM85
  (773, 77300, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 49),
  -- Silvally - Air Slash - TM95
  (773, 77300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 50),
  -- Silvally - Swords Dance - TR00
  (773, 77300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 51),
  -- Silvally - Flamethrower - TR02
  (773, 77300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 52),
  -- Silvally - Surf - TR04
  (773, 77300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 53),
  -- Silvally - Ice Beam - TR05
  (773, 77300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 54),
  -- Silvally - Thunderbolt - TR08
  (773, 77300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 55),
  -- Silvally - Tri Attack - TR19
  (773, 77300, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 56),
  -- Silvally - Substitute - TR20
  (773, 77300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Silvally - Reversal - TR21
  (773, 77300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 58),
  -- Silvally - Outrage - TR24
  (773, 77300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 59),
  -- Silvally - Endure - TR26
  (773, 77300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 60),
  -- Silvally - Sleep Talk - TR27
  (773, 77300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 61),
  -- Silvally - Crunch - TR32
  (773, 77300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 62),
  -- Silvally - Shadow Ball - TR33
  (773, 77300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 63),
  -- Silvally - Heat Wave - TR36
  (773, 77300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 64),
  -- Silvally - Hyper Voice - TR42
  (773, 77300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 65),
  -- Silvally - Iron Defense - TR46
  (773, 77300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 66),
  -- Silvally - Dragon Claw - TR47
  (773, 77300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 67),
  -- Silvally - X-Scissor - TR60
  (773, 77300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 68),
  -- Silvally - Zen Headbutt - TR69
  (773, 77300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Silvally - Flash Cannon - TR70
  (773, 77300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 70),
  -- Silvally - Iron Head - TR74
  (773, 77300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 71),
  -- Silvally - Work Up - TR85
  (773, 77300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 72),
  -- Silvally - Psychic Fangs - TR97
  (773, 77300, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 73),
  -- Silvally - Draco Meteor - Tutor
  (773, 77300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Silvally - Grass Pledge - Tutor
  (773, 77300, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Silvally - Steel Beam - Tutor
  (773, 77300, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 76),
  -- Turtonator - Tackle - Level 1
  (776, 77600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtonator - Smog - Level 1
  (776, 77600, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Turtonator - Ember - Level 4
  (776, 77600, 52, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Turtonator - Protect - Level 8
  (776, 77600, 182, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Turtonator - Endure - Level 12
  (776, 77600, 203, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Turtonator - Flail - Level 16
  (776, 77600, 175, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Turtonator - Incinerate - Level 20
  (776, 77600, 510, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Turtonator - Iron Defense - Level 24
  (776, 77600, 334, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Turtonator - Dragon Pulse - Level 28
  (776, 77600, 406, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Turtonator - Body Slam - Level 32
  (776, 77600, 34, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Turtonator - Flamethrower - Level 36
  (776, 77600, 53, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Turtonator - Shell Trap - Level 40
  (776, 77600, 704, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Turtonator - Shell Smash - Level 44
  (776, 77600, 504, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Turtonator - Overheat - Level 48
  (776, 77600, 315, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Turtonator - Explosion - Level 52
  (776, 77600, 153, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Turtonator - Mega Punch - TM00
  (776, 77600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Turtonator - Mega Kick - TM01
  (776, 77600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Turtonator - Hyper Beam - TM08
  (776, 77600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Turtonator - Giga Impact - TM09
  (776, 77600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Turtonator - Solar Beam - TM11
  (776, 77600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Turtonator - Fire Spin - TM13
  (776, 77600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Turtonator - Rest - TM21
  (776, 77600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Turtonator - Snore - TM24
  (776, 77600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Turtonator - Protect - TM25
  (776, 77600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Turtonator - Attract - TM31
  (776, 77600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Turtonator - Sunny Day - TM34
  (776, 77600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Turtonator - Will-O-Wisp - TM38
  (776, 77600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 27),
  -- Turtonator - Facade - TM39
  (776, 77600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Turtonator - Revenge - TM42
  (776, 77600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Turtonator - Rock Tomb - TM48
  (776, 77600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Turtonator - Payback - TM57
  (776, 77600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Turtonator - Fling - TM59
  (776, 77600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Turtonator - Venoshock - TM74
  (776, 77600, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 33),
  -- Turtonator - Round - TM76
  (776, 77600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Turtonator - Bulldoze - TM81
  (776, 77600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Turtonator - Brutal Swing - TM97
  (776, 77600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Turtonator - Stomping Tantrum - TM98
  (776, 77600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Turtonator - Body Slam - TR01
  (776, 77600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Turtonator - Flamethrower - TR02
  (776, 77600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 39),
  -- Turtonator - Earthquake - TR10
  (776, 77600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Turtonator - Fire Blast - TR15
  (776, 77600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 41),
  -- Turtonator - Substitute - TR20
  (776, 77600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Turtonator - Outrage - TR24
  (776, 77600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 43),
  -- Turtonator - Endure - TR26
  (776, 77600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Turtonator - Sleep Talk - TR27
  (776, 77600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Turtonator - Iron Tail - TR31
  (776, 77600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Turtonator - Uproar - TR35
  (776, 77600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Turtonator - Heat Wave - TR36
  (776, 77600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 48),
  -- Turtonator - Taunt - TR37
  (776, 77600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Turtonator - Hyper Voice - TR42
  (776, 77600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Turtonator - Overheat - TR43
  (776, 77600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Turtonator - Iron Defense - TR46
  (776, 77600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Turtonator - Dragon Claw - TR47
  (776, 77600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 53),
  -- Turtonator - Bulk Up - TR48
  (776, 77600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 54),
  -- Turtonator - Dragon Pulse - TR62
  (776, 77600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Turtonator - Focus Blast - TR64
  (776, 77600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Turtonator - Flash Cannon - TR70
  (776, 77600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 57),
  -- Turtonator - Iron Head - TR74
  (776, 77600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Turtonator - Stone Edge - TR75
  (776, 77600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Turtonator - Heavy Slam - TR79
  (776, 77600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 60),
  -- Turtonator - Work Up - TR85
  (776, 77600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Turtonator - Heat Crash - TR88
  (776, 77600, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 62),
  -- Turtonator - Body Press - TR99
  (776, 77600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 63),
  -- Turtonator - Curse - Egg
  (776, 77600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Turtonator - Rapid Spin - Egg
  (776, 77600, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Turtonator - Head Smash - Egg
  (776, 77600, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Turtonator - Wide Guard - Egg
  (776, 77600, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Turtonator - Draco Meteor - Tutor
  (776, 77600, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 68),
  -- Togedemaru - Tackle - Level 1
  (777, 77700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togedemaru - Nuzzle - Level 1
  (777, 77700, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togedemaru - Defense Curl - Level 5
  (777, 77700, 111, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Togedemaru - Charge - Level 10
  (777, 77700, 268, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Togedemaru - Thunder Shock - Level 15
  (777, 77700, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Togedemaru - Fell Stinger - Level 20
  (777, 77700, 565, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Togedemaru - Spark - Level 25
  (777, 77700, 209, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Togedemaru - Pin Missile - Level 30
  (777, 77700, 42, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Togedemaru - Magnet Rise - Level 35
  (777, 77700, 393, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Togedemaru - Zing Zap - Level 40
  (777, 77700, 716, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Togedemaru - Discharge - Level 45
  (777, 77700, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Togedemaru - Electric Terrain - Level 50
  (777, 77700, 604, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Togedemaru - Wild Charge - Level 55
  (777, 77700, 528, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Togedemaru - Spiky Shield - Level 60
  (777, 77700, 596, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Togedemaru - Pin Missile - TM07
  (777, 77700, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Togedemaru - Hyper Beam - TM08
  (777, 77700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Togedemaru - Giga Impact - TM09
  (777, 77700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Togedemaru - Thunder Wave - TM14
  (777, 77700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Togedemaru - Reflect - TM18
  (777, 77700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Togedemaru - Rest - TM21
  (777, 77700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Togedemaru - Thief - TM23
  (777, 77700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Togedemaru - Snore - TM24
  (777, 77700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Togedemaru - Protect - TM25
  (777, 77700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Togedemaru - Attract - TM31
  (777, 77700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Togedemaru - Facade - TM39
  (777, 77700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Togedemaru - Swift - TM40
  (777, 77700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Togedemaru - Helping Hand - TM41
  (777, 77700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Togedemaru - Bounce - TM52
  (777, 77700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 28),
  -- Togedemaru - U-turn - TM56
  (777, 77700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Togedemaru - Payback - TM57
  (777, 77700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Togedemaru - Assurance - TM58
  (777, 77700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Togedemaru - Fling - TM59
  (777, 77700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Togedemaru - Round - TM76
  (777, 77700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Togedemaru - Volt Switch - TM80
  (777, 77700, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 34),
  -- Togedemaru - Electroweb - TM82
  (777, 77700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 35),
  -- Togedemaru - Electric Terrain - TM90
  (777, 77700, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 36),
  -- Togedemaru - Eerie Impulse - TM93
  (777, 77700, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 37),
  -- Togedemaru - Thunderbolt - TR08
  (777, 77700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Togedemaru - Thunder - TR09
  (777, 77700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Togedemaru - Agility - TR12
  (777, 77700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Togedemaru - Substitute - TR20
  (777, 77700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Togedemaru - Reversal - TR21
  (777, 77700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Togedemaru - Endure - TR26
  (777, 77700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Togedemaru - Sleep Talk - TR27
  (777, 77700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Togedemaru - Encore - TR30
  (777, 77700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 45),
  -- Togedemaru - Iron Tail - TR31
  (777, 77700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Togedemaru - Gyro Ball - TR52
  (777, 77700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Togedemaru - Poison Jab - TR57
  (777, 77700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 48),
  -- Togedemaru - Zen Headbutt - TR69
  (777, 77700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 49),
  -- Togedemaru - Iron Head - TR74
  (777, 77700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 50),
  -- Togedemaru - Grass Knot - TR77
  (777, 77700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Togedemaru - Electro Ball - TR80
  (777, 77700, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 52),
  -- Togedemaru - Work Up - TR85
  (777, 77700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 53),
  -- Togedemaru - Wild Charge - TR86
  (777, 77700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 54),
  -- Togedemaru - Flail - Egg
  (777, 77700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Togedemaru - Present - Egg
  (777, 77700, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Togedemaru - Fake Out - Egg
  (777, 77700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Togedemaru - Wish - Egg
  (777, 77700, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Togedemaru - Tickle - Egg
  (777, 77700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Togedemaru - Disarming Voice - Egg
  (777, 77700, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Togedemaru - Steel Beam - Tutor
  (777, 77700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 61),
  -- Mimikyu - Scratch - Level 1
  (778, 77800, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mimikyu - Splash - Level 1
  (778, 77800, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mimikyu - Astonish - Level 1
  (778, 77800, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mimikyu - Copycat - Level 1
  (778, 77800, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mimikyu - Wood Hammer - Level 1
  (778, 77800, 452, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mimikyu - Shadow Sneak - Level 6
  (778, 77800, 425, 18, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Mimikyu - Double Team - Level 12
  (778, 77800, 104, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Mimikyu - Baby-Doll Eyes - Level 18
  (778, 77800, 608, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mimikyu - Mimic - Level 24
  (778, 77800, 102, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Mimikyu - Hone Claws - Level 30
  (778, 77800, 468, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Mimikyu - Slash - Level 36
  (778, 77800, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mimikyu - Shadow Claw - Level 42
  (778, 77800, 421, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Mimikyu - Charm - Level 48
  (778, 77800, 204, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Mimikyu - Play Rough - Level 54
  (778, 77800, 583, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Mimikyu - Pain Split - Level 60
  (778, 77800, 220, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Mimikyu - Hyper Beam - TM08
  (778, 77800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Mimikyu - Giga Impact - TM09
  (778, 77800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Mimikyu - Thunder Wave - TM14
  (778, 77800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Mimikyu - Screech - TM16
  (778, 77800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Mimikyu - Light Screen - TM17
  (778, 77800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Mimikyu - Safeguard - TM19
  (778, 77800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Mimikyu - Rest - TM21
  (778, 77800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Mimikyu - Thief - TM23
  (778, 77800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Mimikyu - Snore - TM24
  (778, 77800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Mimikyu - Protect - TM25
  (778, 77800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Mimikyu - Giga Drain - TM28
  (778, 77800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Mimikyu - Charm - TM29
  (778, 77800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Mimikyu - Attract - TM31
  (778, 77800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Mimikyu - Beat Up - TM37
  (778, 77800, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 29),
  -- Mimikyu - Will-O-Wisp - TM38
  (778, 77800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Mimikyu - Facade - TM39
  (778, 77800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Mimikyu - Payback - TM57
  (778, 77800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Mimikyu - Fling - TM59
  (778, 77800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Mimikyu - Drain Punch - TM63
  (778, 77800, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 34),
  -- Mimikyu - Shadow Claw - TM65
  (778, 77800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Mimikyu - Trick Room - TM70
  (778, 77800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 36),
  -- Mimikyu - Magic Room - TM72
  (778, 77800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 37),
  -- Mimikyu - Round - TM76
  (778, 77800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Mimikyu - Hex - TM77
  (778, 77800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 39),
  -- Mimikyu - Phantom Force - TM86
  (778, 77800, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 40),
  -- Mimikyu - Draining Kiss - TM87
  (778, 77800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 41),
  -- Mimikyu - Swords Dance - TR00
  (778, 77800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Mimikyu - Thunderbolt - TR08
  (778, 77800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Mimikyu - Thunder - TR09
  (778, 77800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Mimikyu - Psychic - TR11
  (778, 77800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Mimikyu - Leech Life - TR18
  (778, 77800, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 46),
  -- Mimikyu - Substitute - TR20
  (778, 77800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Mimikyu - Endure - TR26
  (778, 77800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Mimikyu - Sleep Talk - TR27
  (778, 77800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Mimikyu - Shadow Ball - TR33
  (778, 77800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Mimikyu - Taunt - TR37
  (778, 77800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Mimikyu - Trick - TR38
  (778, 77800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Mimikyu - Bulk Up - TR48
  (778, 77800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Mimikyu - Dark Pulse - TR58
  (778, 77800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Mimikyu - X-Scissor - TR60
  (778, 77800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 55),
  -- Mimikyu - Work Up - TR85
  (778, 77800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Mimikyu - Play Rough - TR90
  (778, 77800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Mimikyu - Dazzling Gleam - TR92
  (778, 77800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 58),
  -- Mimikyu - Curse - Egg
  (778, 77800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mimikyu - Destiny Bond - Egg
  (778, 77800, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mimikyu - Grudge - Egg
  (778, 77800, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drampa - Echoed Voice - Level 1
  (780, 78000, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drampa - Play Nice - Level 1
  (780, 78000, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drampa - Twister - Level 5
  (780, 78000, 239, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drampa - Protect - Level 10
  (780, 78000, 182, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Drampa - Glare - Level 15
  (780, 78000, 137, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Drampa - Safeguard - Level 20
  (780, 78000, 219, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Drampa - Dragon Breath - Level 25
  (780, 78000, 225, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Drampa - Extrasensory - Level 30
  (780, 78000, 326, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Drampa - Dragon Pulse - Level 35
  (780, 78000, 406, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Drampa - Light Screen - Level 40
  (780, 78000, 113, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Drampa - Fly - Level 45
  (780, 78000, 19, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Drampa - Hyper Voice - Level 50
  (780, 78000, 304, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Drampa - Outrage - Level 55
  (780, 78000, 200, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Drampa - Fly - TM06
  (780, 78000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Drampa - Hyper Beam - TM08
  (780, 78000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Drampa - Giga Impact - TM09
  (780, 78000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Drampa - Solar Beam - TM11
  (780, 78000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Drampa - Thunder Wave - TM14
  (780, 78000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Drampa - Light Screen - TM17
  (780, 78000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Drampa - Safeguard - TM19
  (780, 78000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Drampa - Rest - TM21
  (780, 78000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Drampa - Rock Slide - TM22
  (780, 78000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Drampa - Snore - TM24
  (780, 78000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Drampa - Protect - TM25
  (780, 78000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Drampa - Icy Wind - TM27
  (780, 78000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Drampa - Steel Wing - TM30
  (780, 78000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Drampa - Attract - TM31
  (780, 78000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Drampa - Rain Dance - TM33
  (780, 78000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Drampa - Sunny Day - TM34
  (780, 78000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Drampa - Facade - TM39
  (780, 78000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Drampa - Swift - TM40
  (780, 78000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Drampa - Helping Hand - TM41
  (780, 78000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Drampa - Fling - TM59
  (780, 78000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Drampa - Shadow Claw - TM65
  (780, 78000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 34),
  -- Drampa - Round - TM76
  (780, 78000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Drampa - Bulldoze - TM81
  (780, 78000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Drampa - Snarl - TM85
  (780, 78000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 37),
  -- Drampa - Stomping Tantrum - TM98
  (780, 78000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Drampa - Breaking Swipe - TM99
  (780, 78000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 39),
  -- Drampa - Flamethrower - TR02
  (780, 78000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Drampa - Hydro Pump - TR03
  (780, 78000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 41),
  -- Drampa - Surf - TR04
  (780, 78000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Drampa - Ice Beam - TR05
  (780, 78000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Drampa - Blizzard - TR06
  (780, 78000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Drampa - Thunderbolt - TR08
  (780, 78000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Drampa - Thunder - TR09
  (780, 78000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Drampa - Earthquake - TR10
  (780, 78000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Drampa - Fire Blast - TR15
  (780, 78000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Drampa - Amnesia - TR17
  (780, 78000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 49),
  -- Drampa - Substitute - TR20
  (780, 78000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Drampa - Outrage - TR24
  (780, 78000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 51),
  -- Drampa - Endure - TR26
  (780, 78000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Drampa - Sleep Talk - TR27
  (780, 78000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Drampa - Shadow Ball - TR33
  (780, 78000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Drampa - Uproar - TR35
  (780, 78000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Drampa - Heat Wave - TR36
  (780, 78000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 56),
  -- Drampa - Superpower - TR39
  (780, 78000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 57),
  -- Drampa - Hyper Voice - TR42
  (780, 78000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 58),
  -- Drampa - Dragon Claw - TR47
  (780, 78000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 59),
  -- Drampa - Calm Mind - TR49
  (780, 78000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Drampa - Dragon Dance - TR51
  (780, 78000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 61),
  -- Drampa - Dragon Pulse - TR62
  (780, 78000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Drampa - Focus Blast - TR64
  (780, 78000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Drampa - Energy Ball - TR65
  (780, 78000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 64),
  -- Drampa - Grass Knot - TR77
  (780, 78000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Drampa - Work Up - TR85
  (780, 78000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Drampa - Hurricane - TR89
  (780, 78000, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 67),
  -- Drampa - Play Rough - TR90
  (780, 78000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 68),
  -- Drampa - Mist - Egg
  (780, 78000, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drampa - Tickle - Egg
  (780, 78000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Drampa - Dragon Rush - Egg
  (780, 78000, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Drampa - Draco Meteor - Tutor
  (780, 78000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 72),
  -- Dhelmise - Absorb - Level 1
  (781, 78100, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dhelmise - Rapid Spin - Level 1
  (781, 78100, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dhelmise - Astonish - Level 4
  (781, 78100, 310, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dhelmise - Wrap - Level 8
  (781, 78100, 35, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dhelmise - Mega Drain - Level 12
  (781, 78100, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dhelmise - Growth - Level 16
  (781, 78100, 74, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dhelmise - Gyro Ball - Level 20
  (781, 78100, 360, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dhelmise - Switcheroo - Level 24
  (781, 78100, 415, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dhelmise - Giga Drain - Level 28
  (781, 78100, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dhelmise - Whirlpool - Level 32
  (781, 78100, 250, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dhelmise - Heavy Slam - Level 36
  (781, 78100, 484, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dhelmise - Slam - Level 40
  (781, 78100, 21, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dhelmise - Shadow Ball - Level 44
  (781, 78100, 247, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dhelmise - Metal Sound - Level 48
  (781, 78100, 319, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dhelmise - Anchor Shot - Level 52
  (781, 78100, 677, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dhelmise - Energy Ball - Level 56
  (781, 78100, 412, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Dhelmise - Phantom Force - Level 60
  (781, 78100, 566, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Dhelmise - Power Whip - Level 64
  (781, 78100, 438, 18, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Dhelmise - Hyper Beam - TM08
  (781, 78100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Dhelmise - Giga Impact - TM09
  (781, 78100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Dhelmise - Solar Beam - TM11
  (781, 78100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Dhelmise - Solar Blade - TM12
  (781, 78100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 22),
  -- Dhelmise - Rest - TM21
  (781, 78100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Dhelmise - Rock Slide - TM22
  (781, 78100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Dhelmise - Thief - TM23
  (781, 78100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Dhelmise - Snore - TM24
  (781, 78100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Dhelmise - Protect - TM25
  (781, 78100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Dhelmise - Giga Drain - TM28
  (781, 78100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Dhelmise - Rain Dance - TM33
  (781, 78100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Dhelmise - Sunny Day - TM34
  (781, 78100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Dhelmise - Whirlpool - TM36
  (781, 78100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Dhelmise - Facade - TM39
  (781, 78100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Dhelmise - Helping Hand - TM41
  (781, 78100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Dhelmise - Brick Break - TM43
  (781, 78100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Dhelmise - Brine - TM55
  (781, 78100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Dhelmise - Payback - TM57
  (781, 78100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Dhelmise - Assurance - TM58
  (781, 78100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Dhelmise - Shadow Claw - TM65
  (781, 78100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Dhelmise - Round - TM76
  (781, 78100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Dhelmise - Hex - TM77
  (781, 78100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Dhelmise - Bulldoze - TM81
  (781, 78100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Dhelmise - Phantom Force - TM86
  (781, 78100, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 42),
  -- Dhelmise - Brutal Swing - TM97
  (781, 78100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Dhelmise - Swords Dance - TR00
  (781, 78100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Dhelmise - Hydro Pump - TR03
  (781, 78100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Dhelmise - Surf - TR04
  (781, 78100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Dhelmise - Earthquake - TR10
  (781, 78100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Dhelmise - Substitute - TR20
  (781, 78100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Dhelmise - Endure - TR26
  (781, 78100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Dhelmise - Sleep Talk - TR27
  (781, 78100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Dhelmise - Shadow Ball - TR33
  (781, 78100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Dhelmise - Muddy Water - TR45
  (781, 78100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 52),
  -- Dhelmise - Iron Defense - TR46
  (781, 78100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Dhelmise - Gyro Ball - TR52
  (781, 78100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Dhelmise - Energy Ball - TR65
  (781, 78100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Dhelmise - Flash Cannon - TR70
  (781, 78100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 56),
  -- Dhelmise - Power Whip - TR72
  (781, 78100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 57),
  -- Dhelmise - Iron Head - TR74
  (781, 78100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Dhelmise - Grass Knot - TR77
  (781, 78100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 59),
  -- Dhelmise - Sludge Wave - TR78
  (781, 78100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 60),
  -- Dhelmise - Heavy Slam - TR79
  (781, 78100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 61),
  -- Dhelmise - Ally Switch - TR83
  (781, 78100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 62),
  -- Dhelmise - Liquidation - TR98
  (781, 78100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 63),
  -- Dhelmise - Body Press - TR99
  (781, 78100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 64),
  -- Jangmo-o - Tackle - Level 1
  (782, 78200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jangmo-o - Leer - Level 1
  (782, 78200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jangmo-o - Protect - Level 4
  (782, 78200, 182, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Jangmo-o - Dragon Tail - Level 8
  (782, 78200, 525, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Jangmo-o - Scary Face - Level 12
  (782, 78200, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Jangmo-o - Headbutt - Level 16
  (782, 78200, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Jangmo-o - Work Up - Level 20
  (782, 78200, 526, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Jangmo-o - Screech - Level 24
  (782, 78200, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Jangmo-o - Iron Defense - Level 28
  (782, 78200, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Jangmo-o - Dragon Claw - Level 32
  (782, 78200, 337, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Jangmo-o - Noble Roar - Level 36
  (782, 78200, 568, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Jangmo-o - Dragon Dance - Level 40
  (782, 78200, 349, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Jangmo-o - Outrage - Level 44
  (782, 78200, 200, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Jangmo-o - Screech - TM16
  (782, 78200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 14),
  -- Jangmo-o - Safeguard - TM19
  (782, 78200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Jangmo-o - Rest - TM21
  (782, 78200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Jangmo-o - Rock Slide - TM22
  (782, 78200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Jangmo-o - Snore - TM24
  (782, 78200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Jangmo-o - Protect - TM25
  (782, 78200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Jangmo-o - Scary Face - TM26
  (782, 78200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Jangmo-o - Attract - TM31
  (782, 78200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Jangmo-o - Sandstorm - TM32
  (782, 78200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Jangmo-o - Facade - TM39
  (782, 78200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Jangmo-o - Brick Break - TM43
  (782, 78200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 24),
  -- Jangmo-o - Rock Tomb - TM48
  (782, 78200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Jangmo-o - Payback - TM57
  (782, 78200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Jangmo-o - Fling - TM59
  (782, 78200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 27),
  -- Jangmo-o - Shadow Claw - TM65
  (782, 78200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Jangmo-o - Round - TM76
  (782, 78200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Jangmo-o - Bulldoze - TM81
  (782, 78200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Jangmo-o - False Swipe - TM94
  (782, 78200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 31),
  -- Jangmo-o - Swords Dance - TR00
  (782, 78200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Jangmo-o - Low Kick - TR07
  (782, 78200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 33),
  -- Jangmo-o - Earthquake - TR10
  (782, 78200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 34),
  -- Jangmo-o - Substitute - TR20
  (782, 78200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Jangmo-o - Reversal - TR21
  (782, 78200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 36),
  -- Jangmo-o - Outrage - TR24
  (782, 78200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 37),
  -- Jangmo-o - Endure - TR26
  (782, 78200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Jangmo-o - Sleep Talk - TR27
  (782, 78200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Jangmo-o - Iron Tail - TR31
  (782, 78200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Jangmo-o - Uproar - TR35
  (782, 78200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Jangmo-o - Taunt - TR37
  (782, 78200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Jangmo-o - Iron Defense - TR46
  (782, 78200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Jangmo-o - Dragon Claw - TR47
  (782, 78200, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 44),
  -- Jangmo-o - Bulk Up - TR48
  (782, 78200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 45),
  -- Jangmo-o - Dragon Dance - TR51
  (782, 78200, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 46),
  -- Jangmo-o - X-Scissor - TR60
  (782, 78200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 47),
  -- Jangmo-o - Dragon Pulse - TR62
  (782, 78200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 48),
  -- Jangmo-o - Focus Blast - TR64
  (782, 78200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 49),
  -- Jangmo-o - Iron Head - TR74
  (782, 78200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 50),
  -- Jangmo-o - Work Up - TR85
  (782, 78200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 51),
  -- Jangmo-o - Counter - Egg
  (782, 78200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Jangmo-o - Dragon Breath - Egg
  (782, 78200, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Jangmo-o - Focus Punch - Egg
  (782, 78200, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Jangmo-o - Draco Meteor - Tutor
  (782, 78200, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 55),
  -- Hakamo-o - Tackle - Level 1
  (783, 78300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hakamo-o - Leer - Level 1
  (783, 78300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hakamo-o - Protect - Level 1
  (783, 78300, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hakamo-o - Autotomize - Level 1
  (783, 78300, 475, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hakamo-o - Dragon Tail - Level 1
  (783, 78300, 525, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hakamo-o - Scary Face - Level 12
  (783, 78300, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hakamo-o - Headbutt - Level 16
  (783, 78300, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Hakamo-o - Work Up - Level 20
  (783, 78300, 526, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Hakamo-o - Screech - Level 24
  (783, 78300, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Hakamo-o - Iron Defense - Level 28
  (783, 78300, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Hakamo-o - Dragon Claw - Level 32
  (783, 78300, 337, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Hakamo-o - Noble Roar - Level 38
  (783, 78300, 568, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Hakamo-o - Dragon Dance - Level 44
  (783, 78300, 349, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hakamo-o - Outrage - Level 50
  (783, 78300, 200, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hakamo-o - Close Combat - Level 56
  (783, 78300, 370, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Hakamo-o - Mega Punch - TM00
  (783, 78300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Hakamo-o - Mega Kick - TM01
  (783, 78300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Hakamo-o - Screech - TM16
  (783, 78300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Hakamo-o - Safeguard - TM19
  (783, 78300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Hakamo-o - Rest - TM21
  (783, 78300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Hakamo-o - Rock Slide - TM22
  (783, 78300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Hakamo-o - Snore - TM24
  (783, 78300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Hakamo-o - Protect - TM25
  (783, 78300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Hakamo-o - Scary Face - TM26
  (783, 78300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Hakamo-o - Attract - TM31
  (783, 78300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Hakamo-o - Sandstorm - TM32
  (783, 78300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Hakamo-o - Facade - TM39
  (783, 78300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Hakamo-o - Brick Break - TM43
  (783, 78300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 28),
  -- Hakamo-o - Rock Tomb - TM48
  (783, 78300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Hakamo-o - Payback - TM57
  (783, 78300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Hakamo-o - Fling - TM59
  (783, 78300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Hakamo-o - Drain Punch - TM63
  (783, 78300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Hakamo-o - Shadow Claw - TM65
  (783, 78300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Hakamo-o - Round - TM76
  (783, 78300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Hakamo-o - Bulldoze - TM81
  (783, 78300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Hakamo-o - False Swipe - TM94
  (783, 78300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Hakamo-o - Brutal Swing - TM97
  (783, 78300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Hakamo-o - Swords Dance - TR00
  (783, 78300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Hakamo-o - Low Kick - TR07
  (783, 78300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 39),
  -- Hakamo-o - Earthquake - TR10
  (783, 78300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Hakamo-o - Substitute - TR20
  (783, 78300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Hakamo-o - Reversal - TR21
  (783, 78300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Hakamo-o - Outrage - TR24
  (783, 78300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 43),
  -- Hakamo-o - Endure - TR26
  (783, 78300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Hakamo-o - Sleep Talk - TR27
  (783, 78300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Hakamo-o - Iron Tail - TR31
  (783, 78300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Hakamo-o - Uproar - TR35
  (783, 78300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Hakamo-o - Taunt - TR37
  (783, 78300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Hakamo-o - Iron Defense - TR46
  (783, 78300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 49),
  -- Hakamo-o - Dragon Claw - TR47
  (783, 78300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 50),
  -- Hakamo-o - Bulk Up - TR48
  (783, 78300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 51),
  -- Hakamo-o - Dragon Dance - TR51
  (783, 78300, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 52),
  -- Hakamo-o - Close Combat - TR53
  (783, 78300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 53),
  -- Hakamo-o - X-Scissor - TR60
  (783, 78300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 54),
  -- Hakamo-o - Dragon Pulse - TR62
  (783, 78300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Hakamo-o - Focus Blast - TR64
  (783, 78300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Hakamo-o - Iron Head - TR74
  (783, 78300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Hakamo-o - Work Up - TR85
  (783, 78300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Hakamo-o - Draco Meteor - Tutor
  (783, 78300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Kommo-o - Tackle - Level 1
  (784, 78400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kommo-o - Leer - Level 1
  (784, 78400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kommo-o - Protect - Level 1
  (784, 78400, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kommo-o - Belly Drum - Level 1
  (784, 78400, 187, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kommo-o - Autotomize - Level 1
  (784, 78400, 475, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kommo-o - Dragon Tail - Level 1
  (784, 78400, 525, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kommo-o - Clanging Scales - Level 1
  (784, 78400, 691, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Kommo-o - Scary Face - Level 12
  (784, 78400, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Kommo-o - Headbutt - Level 16
  (784, 78400, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Kommo-o - Work Up - Level 20
  (784, 78400, 526, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Kommo-o - Screech - Level 24
  (784, 78400, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Kommo-o - Iron Defense - Level 28
  (784, 78400, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Kommo-o - Dragon Claw - Level 32
  (784, 78400, 337, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kommo-o - Noble Roar - Level 38
  (784, 78400, 568, 18, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Kommo-o - Dragon Dance - Level 44
  (784, 78400, 349, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Kommo-o - Outrage - Level 52
  (784, 78400, 200, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Kommo-o - Close Combat - Level 60
  (784, 78400, 370, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Kommo-o - Clangorous Soul - Level 68
  (784, 78400, 775, 18, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Kommo-o - Boomburst - Level 76
  (784, 78400, 586, 18, NULL, 1, 76, NULL, NULL, NULL, 19),
  -- Kommo-o - Clanging Scales - Evolution
  (784, 78400, 691, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Kommo-o - Mega Punch - TM00
  (784, 78400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Kommo-o - Mega Kick - TM01
  (784, 78400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Kommo-o - Fire Punch - TM03
  (784, 78400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Kommo-o - Ice Punch - TM04
  (784, 78400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Kommo-o - Thunder Punch - TM05
  (784, 78400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 25),
  -- Kommo-o - Hyper Beam - TM08
  (784, 78400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Kommo-o - Giga Impact - TM09
  (784, 78400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Kommo-o - Screech - TM16
  (784, 78400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 28),
  -- Kommo-o - Safeguard - TM19
  (784, 78400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 29),
  -- Kommo-o - Rest - TM21
  (784, 78400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Kommo-o - Rock Slide - TM22
  (784, 78400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 31),
  -- Kommo-o - Snore - TM24
  (784, 78400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Kommo-o - Protect - TM25
  (784, 78400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Kommo-o - Scary Face - TM26
  (784, 78400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 34),
  -- Kommo-o - Attract - TM31
  (784, 78400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Kommo-o - Sandstorm - TM32
  (784, 78400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 36),
  -- Kommo-o - Facade - TM39
  (784, 78400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Kommo-o - Revenge - TM42
  (784, 78400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 38),
  -- Kommo-o - Brick Break - TM43
  (784, 78400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Kommo-o - Rock Tomb - TM48
  (784, 78400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Kommo-o - Payback - TM57
  (784, 78400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 41),
  -- Kommo-o - Fling - TM59
  (784, 78400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Kommo-o - Drain Punch - TM63
  (784, 78400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Kommo-o - Shadow Claw - TM65
  (784, 78400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Kommo-o - Round - TM76
  (784, 78400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Kommo-o - Bulldoze - TM81
  (784, 78400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 46),
  -- Kommo-o - False Swipe - TM94
  (784, 78400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 47),
  -- Kommo-o - Brutal Swing - TM97
  (784, 78400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 48),
  -- Kommo-o - Stomping Tantrum - TM98
  (784, 78400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Kommo-o - Breaking Swipe - TM99
  (784, 78400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 50),
  -- Kommo-o - Swords Dance - TR00
  (784, 78400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 51),
  -- Kommo-o - Flamethrower - TR02
  (784, 78400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 52),
  -- Kommo-o - Low Kick - TR07
  (784, 78400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 53),
  -- Kommo-o - Earthquake - TR10
  (784, 78400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Kommo-o - Substitute - TR20
  (784, 78400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Kommo-o - Reversal - TR21
  (784, 78400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 56),
  -- Kommo-o - Outrage - TR24
  (784, 78400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 57),
  -- Kommo-o - Endure - TR26
  (784, 78400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Kommo-o - Sleep Talk - TR27
  (784, 78400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Kommo-o - Iron Tail - TR31
  (784, 78400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Kommo-o - Uproar - TR35
  (784, 78400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 61),
  -- Kommo-o - Taunt - TR37
  (784, 78400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Kommo-o - Superpower - TR39
  (784, 78400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 63),
  -- Kommo-o - Hyper Voice - TR42
  (784, 78400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Kommo-o - Iron Defense - TR46
  (784, 78400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 65),
  -- Kommo-o - Dragon Claw - TR47
  (784, 78400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Kommo-o - Bulk Up - TR48
  (784, 78400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 67),
  -- Kommo-o - Dragon Dance - TR51
  (784, 78400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 68),
  -- Kommo-o - Close Combat - TR53
  (784, 78400, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 69),
  -- Kommo-o - Aura Sphere - TR56
  (784, 78400, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 70),
  -- Kommo-o - Poison Jab - TR57
  (784, 78400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 71),
  -- Kommo-o - X-Scissor - TR60
  (784, 78400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 72),
  -- Kommo-o - Dragon Pulse - TR62
  (784, 78400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 73),
  -- Kommo-o - Focus Blast - TR64
  (784, 78400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 74),
  -- Kommo-o - Flash Cannon - TR70
  (784, 78400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 75),
  -- Kommo-o - Iron Head - TR74
  (784, 78400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 76),
  -- Kommo-o - Stealth Rock - TR76
  (784, 78400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 77),
  -- Kommo-o - Work Up - TR85
  (784, 78400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 78),
  -- Kommo-o - Body Press - TR99
  (784, 78400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 79),
  -- Kommo-o - Draco Meteor - Tutor
  (784, 78400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 80),
  -- Tapu Koko - Thunder Shock - Level 1
  (785, 78500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Koko - Quick Attack - Level 1
  (785, 78500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Koko - Withdraw - Level 5
  (785, 78500, 110, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tapu Koko - Fairy Wind - Level 10
  (785, 78500, 584, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tapu Koko - False Swipe - Level 15
  (785, 78500, 206, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tapu Koko - Spark - Level 20
  (785, 78500, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tapu Koko - Shock Wave - Level 25
  (785, 78500, 351, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tapu Koko - Charge - Level 30
  (785, 78500, 268, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tapu Koko - Agility - Level 35
  (785, 78500, 97, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tapu Koko - Screech - Level 40
  (785, 78500, 103, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tapu Koko - Discharge - Level 45
  (785, 78500, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tapu Koko - Mean Look - Level 50
  (785, 78500, 212, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tapu Koko - Nature's Madness - Level 55
  (785, 78500, 717, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tapu Koko - Wild Charge - Level 60
  (785, 78500, 528, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tapu Koko - Brave Bird - Level 65
  (785, 78500, 413, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tapu Koko - Power Swap - Level 70
  (785, 78500, 384, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tapu Koko - Electric Terrain - Level 75
  (785, 78500, 604, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Tapu Koko - Thunder Punch - TM05
  (785, 78500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Tapu Koko - Fly - TM06
  (785, 78500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Tapu Koko - Hyper Beam - TM08
  (785, 78500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Tapu Koko - Giga Impact - TM09
  (785, 78500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Tapu Koko - Thunder Wave - TM14
  (785, 78500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Tapu Koko - Screech - TM16
  (785, 78500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Tapu Koko - Light Screen - TM17
  (785, 78500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Tapu Koko - Reflect - TM18
  (785, 78500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Tapu Koko - Safeguard - TM19
  (785, 78500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 26),
  -- Tapu Koko - Rest - TM21
  (785, 78500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Tapu Koko - Thief - TM23
  (785, 78500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Tapu Koko - Snore - TM24
  (785, 78500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Tapu Koko - Protect - TM25
  (785, 78500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Tapu Koko - Steel Wing - TM30
  (785, 78500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 31),
  -- Tapu Koko - Rain Dance - TM33
  (785, 78500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Tapu Koko - Facade - TM39
  (785, 78500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Tapu Koko - Swift - TM40
  (785, 78500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Tapu Koko - U-turn - TM56
  (785, 78500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Tapu Koko - Assurance - TM58
  (785, 78500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Tapu Koko - Power Swap - TM60
  (785, 78500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 37),
  -- Tapu Koko - Round - TM76
  (785, 78500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Tapu Koko - Acrobatics - TM78
  (785, 78500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Tapu Koko - Volt Switch - TM80
  (785, 78500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 40),
  -- Tapu Koko - Electroweb - TM82
  (785, 78500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 41),
  -- Tapu Koko - Electric Terrain - TM90
  (785, 78500, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 42),
  -- Tapu Koko - Eerie Impulse - TM93
  (785, 78500, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 43),
  -- Tapu Koko - False Swipe - TM94
  (785, 78500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 44),
  -- Tapu Koko - Thunderbolt - TR08
  (785, 78500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Tapu Koko - Thunder - TR09
  (785, 78500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Tapu Koko - Agility - TR12
  (785, 78500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 47),
  -- Tapu Koko - Substitute - TR20
  (785, 78500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Tapu Koko - Endure - TR26
  (785, 78500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Tapu Koko - Sleep Talk - TR27
  (785, 78500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Tapu Koko - Taunt - TR37
  (785, 78500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Tapu Koko - Hyper Voice - TR42
  (785, 78500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 52),
  -- Tapu Koko - Iron Defense - TR46
  (785, 78500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Tapu Koko - Calm Mind - TR49
  (785, 78500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Tapu Koko - Brave Bird - TR66
  (785, 78500, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 55),
  -- Tapu Koko - Iron Head - TR74
  (785, 78500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 56),
  -- Tapu Koko - Grass Knot - TR77
  (785, 78500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Tapu Koko - Electro Ball - TR80
  (785, 78500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 58),
  -- Tapu Koko - Stored Power - TR82
  (785, 78500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 59),
  -- Tapu Koko - Work Up - TR85
  (785, 78500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 60),
  -- Tapu Koko - Wild Charge - TR86
  (785, 78500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 61),
  -- Tapu Koko - Dazzling Gleam - TR92
  (785, 78500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 62),
  -- Tapu Lele - Confusion - Level 1
  (786, 78600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Lele - Astonish - Level 1
  (786, 78600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Lele - Withdraw - Level 5
  (786, 78600, 110, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tapu Lele - Aromatherapy - Level 10
  (786, 78600, 312, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tapu Lele - Draining Kiss - Level 15
  (786, 78600, 577, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tapu Lele - Psybeam - Level 20
  (786, 78600, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tapu Lele - Flatter - Level 25
  (786, 78600, 260, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tapu Lele - Aromatic Mist - Level 30
  (786, 78600, 597, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tapu Lele - Sweet Scent - Level 35
  (786, 78600, 230, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tapu Lele - Extrasensory - Level 40
  (786, 78600, 326, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tapu Lele - Psyshock - Level 45
  (786, 78600, 473, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tapu Lele - Mean Look - Level 50
  (786, 78600, 212, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tapu Lele - Nature's Madness - Level 55
  (786, 78600, 717, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tapu Lele - Moonblast - Level 60
  (786, 78600, 585, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tapu Lele - Tickle - Level 65
  (786, 78600, 321, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tapu Lele - Skill Swap - Level 70
  (786, 78600, 285, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tapu Lele - Psychic Terrain - Level 75
  (786, 78600, 678, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Tapu Lele - Hyper Beam - TM08
  (786, 78600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Tapu Lele - Giga Impact - TM09
  (786, 78600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Tapu Lele - Light Screen - TM17
  (786, 78600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Tapu Lele - Reflect - TM18
  (786, 78600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Tapu Lele - Safeguard - TM19
  (786, 78600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Tapu Lele - Rest - TM21
  (786, 78600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Tapu Lele - Thief - TM23
  (786, 78600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Tapu Lele - Snore - TM24
  (786, 78600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Tapu Lele - Protect - TM25
  (786, 78600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Tapu Lele - Charm - TM29
  (786, 78600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Tapu Lele - Sunny Day - TM34
  (786, 78600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Tapu Lele - Facade - TM39
  (786, 78600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Tapu Lele - Fling - TM59
  (786, 78600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 30),
  -- Tapu Lele - Power Swap - TM60
  (786, 78600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Tapu Lele - Guard Swap - TM61
  (786, 78600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Tapu Lele - Speed Swap - TM62
  (786, 78600, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 33),
  -- Tapu Lele - Psycho Cut - TM69
  (786, 78600, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 34),
  -- Tapu Lele - Wonder Room - TM71
  (786, 78600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 35),
  -- Tapu Lele - Magic Room - TM72
  (786, 78600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 36),
  -- Tapu Lele - Round - TM76
  (786, 78600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Tapu Lele - Draining Kiss - TM87
  (786, 78600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 38),
  -- Tapu Lele - Psychic Terrain - TM91
  (786, 78600, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 39),
  -- Tapu Lele - Thunderbolt - TR08
  (786, 78600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Tapu Lele - Thunder - TR09
  (786, 78600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Tapu Lele - Psychic - TR11
  (786, 78600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Tapu Lele - Substitute - TR20
  (786, 78600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Tapu Lele - Psyshock - TR25
  (786, 78600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Tapu Lele - Endure - TR26
  (786, 78600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Tapu Lele - Sleep Talk - TR27
  (786, 78600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Tapu Lele - Shadow Ball - TR33
  (786, 78600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 47),
  -- Tapu Lele - Future Sight - TR34
  (786, 78600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 48),
  -- Tapu Lele - Taunt - TR37
  (786, 78600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Tapu Lele - Skill Swap - TR40
  (786, 78600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 50),
  -- Tapu Lele - Iron Defense - TR46
  (786, 78600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Tapu Lele - Calm Mind - TR49
  (786, 78600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Tapu Lele - Focus Blast - TR64
  (786, 78600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Tapu Lele - Energy Ball - TR65
  (786, 78600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 54),
  -- Tapu Lele - Grass Knot - TR77
  (786, 78600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Tapu Lele - Stored Power - TR82
  (786, 78600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 56),
  -- Tapu Lele - Ally Switch - TR83
  (786, 78600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 57),
  -- Tapu Lele - Play Rough - TR90
  (786, 78600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Tapu Lele - Dazzling Gleam - TR92
  (786, 78600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 59),
  -- Tapu Bulu - Rock Smash - Level 1
  (787, 78700, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Bulu - Leafage - Level 1
  (787, 78700, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Bulu - Withdraw - Level 5
  (787, 78700, 110, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tapu Bulu - Disable - Level 10
  (787, 78700, 50, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tapu Bulu - Leech Seed - Level 15
  (787, 78700, 73, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tapu Bulu - Mega Drain - Level 20
  (787, 78700, 72, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tapu Bulu - Whirlwind - Level 25
  (787, 78700, 18, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tapu Bulu - Horn Attack - Level 30
  (787, 78700, 30, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tapu Bulu - Scary Face - Level 35
  (787, 78700, 184, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tapu Bulu - Horn Leech - Level 40
  (787, 78700, 532, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tapu Bulu - Zen Headbutt - Level 45
  (787, 78700, 428, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tapu Bulu - Mean Look - Level 50
  (787, 78700, 212, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tapu Bulu - Nature's Madness - Level 55
  (787, 78700, 717, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tapu Bulu - Wood Hammer - Level 60
  (787, 78700, 452, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tapu Bulu - Megahorn - Level 65
  (787, 78700, 224, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tapu Bulu - Skull Bash - Level 70
  (787, 78700, 130, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tapu Bulu - Grassy Terrain - Level 75
  (787, 78700, 580, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Tapu Bulu - Mega Punch - TM00
  (787, 78700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Tapu Bulu - Hyper Beam - TM08
  (787, 78700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Tapu Bulu - Giga Impact - TM09
  (787, 78700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Tapu Bulu - Solar Beam - TM11
  (787, 78700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Tapu Bulu - Light Screen - TM17
  (787, 78700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Tapu Bulu - Reflect - TM18
  (787, 78700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Tapu Bulu - Safeguard - TM19
  (787, 78700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Tapu Bulu - Rest - TM21
  (787, 78700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Tapu Bulu - Rock Slide - TM22
  (787, 78700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Tapu Bulu - Snore - TM24
  (787, 78700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Tapu Bulu - Protect - TM25
  (787, 78700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Tapu Bulu - Scary Face - TM26
  (787, 78700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Tapu Bulu - Giga Drain - TM28
  (787, 78700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Tapu Bulu - Sunny Day - TM34
  (787, 78700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Tapu Bulu - Facade - TM39
  (787, 78700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Tapu Bulu - Revenge - TM42
  (787, 78700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Tapu Bulu - Brick Break - TM43
  (787, 78700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Tapu Bulu - Rock Tomb - TM48
  (787, 78700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Tapu Bulu - Bullet Seed - TM50
  (787, 78700, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 36),
  -- Tapu Bulu - Payback - TM57
  (787, 78700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Tapu Bulu - Fling - TM59
  (787, 78700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Tapu Bulu - Power Swap - TM60
  (787, 78700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 39),
  -- Tapu Bulu - Guard Swap - TM61
  (787, 78700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 40),
  -- Tapu Bulu - Round - TM76
  (787, 78700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Tapu Bulu - Snarl - TM85
  (787, 78700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Tapu Bulu - Grassy Terrain - TM88
  (787, 78700, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 43),
  -- Tapu Bulu - False Swipe - TM94
  (787, 78700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 44),
  -- Tapu Bulu - Smart Strike - TM96
  (787, 78700, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 45),
  -- Tapu Bulu - Brutal Swing - TM97
  (787, 78700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 46),
  -- Tapu Bulu - Swords Dance - TR00
  (787, 78700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Tapu Bulu - Substitute - TR20
  (787, 78700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Tapu Bulu - Endure - TR26
  (787, 78700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Tapu Bulu - Sleep Talk - TR27
  (787, 78700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Tapu Bulu - Megahorn - TR28
  (787, 78700, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 51),
  -- Tapu Bulu - Taunt - TR37
  (787, 78700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Tapu Bulu - Superpower - TR39
  (787, 78700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Tapu Bulu - Iron Defense - TR46
  (787, 78700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Tapu Bulu - Bulk Up - TR48
  (787, 78700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Tapu Bulu - Calm Mind - TR49
  (787, 78700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 56),
  -- Tapu Bulu - Close Combat - TR53
  (787, 78700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 57),
  -- Tapu Bulu - Seed Bomb - TR59
  (787, 78700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 58),
  -- Tapu Bulu - Focus Blast - TR64
  (787, 78700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Tapu Bulu - Energy Ball - TR65
  (787, 78700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 60),
  -- Tapu Bulu - Zen Headbutt - TR69
  (787, 78700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 61),
  -- Tapu Bulu - Stone Edge - TR75
  (787, 78700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Tapu Bulu - Grass Knot - TR77
  (787, 78700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Tapu Bulu - Stored Power - TR82
  (787, 78700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Tapu Bulu - Work Up - TR85
  (787, 78700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 65),
  -- Tapu Bulu - Dazzling Gleam - TR92
  (787, 78700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 66),
  -- Tapu Bulu - Darkest Lariat - TR93
  (787, 78700, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 67),
  -- Tapu Bulu - High Horsepower - TR94
  (787, 78700, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 68),
  -- Tapu Fini - Water Gun - Level 1
  (788, 78800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Fini - Disarming Voice - Level 1
  (788, 78800, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Fini - Withdraw - Level 5
  (788, 78800, 110, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tapu Fini - Mist - Level 10
  (788, 78800, 54, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tapu Fini - Haze - Level 10
  (788, 78800, 114, 18, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Tapu Fini - Aqua Ring - Level 15
  (788, 78800, 392, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tapu Fini - Water Pulse - Level 20
  (788, 78800, 352, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tapu Fini - Brine - Level 25
  (788, 78800, 362, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Tapu Fini - Defog - Level 30
  (788, 78800, 432, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Tapu Fini - Heal Pulse - Level 35
  (788, 78800, 505, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Tapu Fini - Surf - Level 40
  (788, 78800, 57, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Tapu Fini - Muddy Water - Level 45
  (788, 78800, 330, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Tapu Fini - Mean Look - Level 50
  (788, 78800, 212, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Tapu Fini - Nature's Madness - Level 55
  (788, 78800, 717, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Tapu Fini - Moonblast - Level 60
  (788, 78800, 585, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Tapu Fini - Hydro Pump - Level 65
  (788, 78800, 56, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Tapu Fini - Soak - Level 70
  (788, 78800, 487, 18, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Tapu Fini - Misty Terrain - Level 75
  (788, 78800, 581, 18, NULL, 1, 75, NULL, NULL, NULL, 18),
  -- Tapu Fini - Ice Punch - TM04
  (788, 78800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Tapu Fini - Hyper Beam - TM08
  (788, 78800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Tapu Fini - Giga Impact - TM09
  (788, 78800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Tapu Fini - Light Screen - TM17
  (788, 78800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Tapu Fini - Reflect - TM18
  (788, 78800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Tapu Fini - Safeguard - TM19
  (788, 78800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Tapu Fini - Rest - TM21
  (788, 78800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Tapu Fini - Snore - TM24
  (788, 78800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Tapu Fini - Protect - TM25
  (788, 78800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Tapu Fini - Icy Wind - TM27
  (788, 78800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Tapu Fini - Rain Dance - TM33
  (788, 78800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Tapu Fini - Whirlpool - TM36
  (788, 78800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Tapu Fini - Facade - TM39
  (788, 78800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Tapu Fini - Dive - TM45
  (788, 78800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Tapu Fini - Brine - TM55
  (788, 78800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Tapu Fini - Fling - TM59
  (788, 78800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Tapu Fini - Guard Swap - TM61
  (788, 78800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 35),
  -- Tapu Fini - Wonder Room - TM71
  (788, 78800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Tapu Fini - Magic Room - TM72
  (788, 78800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 37),
  -- Tapu Fini - Round - TM76
  (788, 78800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Tapu Fini - Draining Kiss - TM87
  (788, 78800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 39),
  -- Tapu Fini - Misty Terrain - TM89
  (788, 78800, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 40),
  -- Tapu Fini - Smart Strike - TM96
  (788, 78800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Tapu Fini - Hydro Pump - TR03
  (788, 78800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 42),
  -- Tapu Fini - Surf - TR04
  (788, 78800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 43),
  -- Tapu Fini - Ice Beam - TR05
  (788, 78800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Tapu Fini - Blizzard - TR06
  (788, 78800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Tapu Fini - Waterfall - TR16
  (788, 78800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 46),
  -- Tapu Fini - Substitute - TR20
  (788, 78800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Tapu Fini - Endure - TR26
  (788, 78800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Tapu Fini - Sleep Talk - TR27
  (788, 78800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Tapu Fini - Shadow Ball - TR33
  (788, 78800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Tapu Fini - Taunt - TR37
  (788, 78800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Tapu Fini - Trick - TR38
  (788, 78800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Tapu Fini - Muddy Water - TR45
  (788, 78800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 53),
  -- Tapu Fini - Iron Defense - TR46
  (788, 78800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Tapu Fini - Calm Mind - TR49
  (788, 78800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Tapu Fini - Grass Knot - TR77
  (788, 78800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 56),
  -- Tapu Fini - Stored Power - TR82
  (788, 78800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 57),
  -- Tapu Fini - Scald - TR84
  (788, 78800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 58),
  -- Tapu Fini - Play Rough - TR90
  (788, 78800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 59),
  -- Tapu Fini - Dazzling Gleam - TR92
  (788, 78800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 60),
  -- Cosmog - Teleport - Level 1
  (789, 78900, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmog - Splash - Level 1
  (789, 78900, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cosmoem - Teleport - Level 1
  (790, 79000, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmoem - Cosmic Power - Level 1
  (790, 79000, 322, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cosmoem - Cosmic Power - Evolution
  (790, 79000, 322, 18, NULL, 7, NULL, NULL, NULL, NULL, 3),
  -- Cosmoem - Cosmic Power - TR44
  (790, 79000, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 4),
  -- Solgaleo - Teleport - Level 1
  (791, 79100, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solgaleo - Metal Claw - Level 1
  (791, 79100, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solgaleo - Cosmic Power - Level 1
  (791, 79100, 322, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solgaleo - Noble Roar - Level 1
  (791, 79100, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solgaleo - Sunsteel Strike - Level 1
  (791, 79100, 713, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Solgaleo - Iron Head - Level 7
  (791, 79100, 442, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Solgaleo - Metal Sound - Level 14
  (791, 79100, 319, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Solgaleo - Zen Headbutt - Level 21
  (791, 79100, 428, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Solgaleo - Flash Cannon - Level 28
  (791, 79100, 430, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Solgaleo - Morning Sun - Level 35
  (791, 79100, 234, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Solgaleo - Crunch - Level 42
  (791, 79100, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Solgaleo - Metal Burst - Level 49
  (791, 79100, 368, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Solgaleo - Wild Charge - Level 56
  (791, 79100, 528, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Solgaleo - Solar Beam - Level 63
  (791, 79100, 76, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Solgaleo - Flare Blitz - Level 70
  (791, 79100, 394, 18, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Solgaleo - Wide Guard - Level 77
  (791, 79100, 469, 18, NULL, 1, 77, NULL, NULL, NULL, 16),
  -- Solgaleo - Giga Impact - Level 84
  (791, 79100, 416, 18, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Solgaleo - Sunsteel Strike - Evolution
  (791, 79100, 713, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Solgaleo - Hyper Beam - TM08
  (791, 79100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Solgaleo - Giga Impact - TM09
  (791, 79100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Solgaleo - Solar Beam - TM11
  (791, 79100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Solgaleo - Fire Spin - TM13
  (791, 79100, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Solgaleo - Thunder Wave - TM14
  (791, 79100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Solgaleo - Light Screen - TM17
  (791, 79100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Solgaleo - Reflect - TM18
  (791, 79100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Solgaleo - Safeguard - TM19
  (791, 79100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 26),
  -- Solgaleo - Rest - TM21
  (791, 79100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Solgaleo - Rock Slide - TM22
  (791, 79100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Solgaleo - Snore - TM24
  (791, 79100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Solgaleo - Protect - TM25
  (791, 79100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Solgaleo - Scary Face - TM26
  (791, 79100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Solgaleo - Sunny Day - TM34
  (791, 79100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Solgaleo - Facade - TM39
  (791, 79100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Solgaleo - Swift - TM40
  (791, 79100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Solgaleo - Helping Hand - TM41
  (791, 79100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Solgaleo - Rock Tomb - TM48
  (791, 79100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Solgaleo - Trick Room - TM70
  (791, 79100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Solgaleo - Round - TM76
  (791, 79100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Solgaleo - Bulldoze - TM81
  (791, 79100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Solgaleo - Snarl - TM85
  (791, 79100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Solgaleo - Mystical Fire - TM92
  (791, 79100, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 41),
  -- Solgaleo - Flamethrower - TR02
  (791, 79100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 42),
  -- Solgaleo - Thunderbolt - TR08
  (791, 79100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Solgaleo - Thunder - TR09
  (791, 79100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Solgaleo - Earthquake - TR10
  (791, 79100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Solgaleo - Psychic - TR11
  (791, 79100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Solgaleo - Agility - TR12
  (791, 79100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 47),
  -- Solgaleo - Fire Blast - TR15
  (791, 79100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Solgaleo - Substitute - TR20
  (791, 79100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Solgaleo - Outrage - TR24
  (791, 79100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 50),
  -- Solgaleo - Psyshock - TR25
  (791, 79100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 51),
  -- Solgaleo - Endure - TR26
  (791, 79100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Solgaleo - Sleep Talk - TR27
  (791, 79100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Solgaleo - Iron Tail - TR31
  (791, 79100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Solgaleo - Crunch - TR32
  (791, 79100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 55),
  -- Solgaleo - Future Sight - TR34
  (791, 79100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 56),
  -- Solgaleo - Superpower - TR39
  (791, 79100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 57),
  -- Solgaleo - Hyper Voice - TR42
  (791, 79100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 58),
  -- Solgaleo - Cosmic Power - TR44
  (791, 79100, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 59),
  -- Solgaleo - Iron Defense - TR46
  (791, 79100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Solgaleo - Calm Mind - TR49
  (791, 79100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Solgaleo - Gyro Ball - TR52
  (791, 79100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 62),
  -- Solgaleo - Close Combat - TR53
  (791, 79100, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 63),
  -- Solgaleo - Flare Blitz - TR55
  (791, 79100, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 64),
  -- Solgaleo - Focus Blast - TR64
  (791, 79100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Solgaleo - Zen Headbutt - TR69
  (791, 79100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Solgaleo - Flash Cannon - TR70
  (791, 79100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 67),
  -- Solgaleo - Iron Head - TR74
  (791, 79100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 68),
  -- Solgaleo - Stone Edge - TR75
  (791, 79100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 69),
  -- Solgaleo - Heavy Slam - TR79
  (791, 79100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 70),
  -- Solgaleo - Work Up - TR85
  (791, 79100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Solgaleo - Wild Charge - TR86
  (791, 79100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 72),
  -- Solgaleo - Heat Crash - TR88
  (791, 79100, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 73),
  -- Solgaleo - Psychic Fangs - TR97
  (791, 79100, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 74),
  -- Solgaleo - Steel Beam - Tutor
  (791, 79100, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 75),
  -- Lunala - Confusion - Level 1
  (792, 79200, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunala - Hypnosis - Level 1
  (792, 79200, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunala - Teleport - Level 1
  (792, 79200, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunala - Cosmic Power - Level 1
  (792, 79200, 322, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunala - Moongeist Beam - Level 1
  (792, 79200, 714, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lunala - Night Shade - Level 7
  (792, 79200, 101, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Lunala - Confuse Ray - Level 14
  (792, 79200, 109, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Lunala - Air Slash - Level 21
  (792, 79200, 403, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lunala - Shadow Ball - Level 28
  (792, 79200, 247, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lunala - Moonlight - Level 35
  (792, 79200, 236, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Lunala - Night Daze - Level 42
  (792, 79200, 539, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Lunala - Magic Coat - Level 49
  (792, 79200, 277, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Lunala - Moonblast - Level 56
  (792, 79200, 585, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Lunala - Phantom Force - Level 63
  (792, 79200, 566, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Lunala - Dream Eater - Level 70
  (792, 79200, 138, 18, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Lunala - Wide Guard - Level 77
  (792, 79200, 469, 18, NULL, 1, 77, NULL, NULL, NULL, 16),
  -- Lunala - Hyper Beam - Level 84
  (792, 79200, 63, 18, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Lunala - Moongeist Beam - Evolution
  (792, 79200, 714, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Lunala - Fly - TM06
  (792, 79200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Lunala - Hyper Beam - TM08
  (792, 79200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Lunala - Giga Impact - TM09
  (792, 79200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Lunala - Solar Beam - TM11
  (792, 79200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Lunala - Thunder Wave - TM14
  (792, 79200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Lunala - Light Screen - TM17
  (792, 79200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Lunala - Reflect - TM18
  (792, 79200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Lunala - Safeguard - TM19
  (792, 79200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 26),
  -- Lunala - Rest - TM21
  (792, 79200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Lunala - Snore - TM24
  (792, 79200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Lunala - Protect - TM25
  (792, 79200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Lunala - Scary Face - TM26
  (792, 79200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Lunala - Icy Wind - TM27
  (792, 79200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Lunala - Sunny Day - TM34
  (792, 79200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Lunala - Will-O-Wisp - TM38
  (792, 79200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Lunala - Facade - TM39
  (792, 79200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Lunala - Swift - TM40
  (792, 79200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Lunala - Helping Hand - TM41
  (792, 79200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Lunala - Shadow Claw - TM65
  (792, 79200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Lunala - Psycho Cut - TM69
  (792, 79200, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 38),
  -- Lunala - Trick Room - TM70
  (792, 79200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Lunala - Wonder Room - TM71
  (792, 79200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Lunala - Magic Room - TM72
  (792, 79200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 41),
  -- Lunala - Round - TM76
  (792, 79200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Lunala - Hex - TM77
  (792, 79200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 43),
  -- Lunala - Acrobatics - TM78
  (792, 79200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 44),
  -- Lunala - Phantom Force - TM86
  (792, 79200, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 45),
  -- Lunala - Air Slash - TM95
  (792, 79200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 46),
  -- Lunala - Ice Beam - TR05
  (792, 79200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Lunala - Blizzard - TR06
  (792, 79200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Lunala - Thunderbolt - TR08
  (792, 79200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Lunala - Thunder - TR09
  (792, 79200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 50),
  -- Lunala - Psychic - TR11
  (792, 79200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Lunala - Agility - TR12
  (792, 79200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 52),
  -- Lunala - Substitute - TR20
  (792, 79200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Lunala - Psyshock - TR25
  (792, 79200, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 54),
  -- Lunala - Endure - TR26
  (792, 79200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Lunala - Sleep Talk - TR27
  (792, 79200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Lunala - Shadow Ball - TR33
  (792, 79200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Lunala - Future Sight - TR34
  (792, 79200, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 58),
  -- Lunala - Heat Wave - TR36
  (792, 79200, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 59),
  -- Lunala - Trick - TR38
  (792, 79200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Lunala - Cosmic Power - TR44
  (792, 79200, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 61),
  -- Lunala - Calm Mind - TR49
  (792, 79200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Lunala - Focus Blast - TR64
  (792, 79200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Lunala - Work Up - TR85
  (792, 79200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Lunala - Dazzling Gleam - TR92
  (792, 79200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 65),
  -- Nihilego - Pound - Level 1
  (793, 79300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nihilego - Wrap - Level 1
  (793, 79300, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nihilego - Acid - Level 5
  (793, 79300, 51, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nihilego - Tickle - Level 10
  (793, 79300, 321, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nihilego - Acid Spray - Level 15
  (793, 79300, 491, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nihilego - Clear Smog - Level 20
  (793, 79300, 499, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nihilego - Guard Split - Level 25
  (793, 79300, 470, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nihilego - Power Split - Level 25
  (793, 79300, 471, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nihilego - Venoshock - Level 30
  (793, 79300, 474, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Nihilego - Headbutt - Level 35
  (793, 79300, 29, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Nihilego - Toxic Spikes - Level 40
  (793, 79300, 390, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Nihilego - Venom Drench - Level 45
  (793, 79300, 599, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Nihilego - Power Gem - Level 50
  (793, 79300, 408, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Nihilego - Stealth Rock - Level 55
  (793, 79300, 446, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Nihilego - Mirror Coat - Level 60
  (793, 79300, 243, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Nihilego - Wonder Room - Level 65
  (793, 79300, 472, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Nihilego - Head Smash - Level 70
  (793, 79300, 457, 18, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Nihilego - Thunder Wave - TM14
  (793, 79300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Nihilego - Light Screen - TM17
  (793, 79300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Nihilego - Safeguard - TM19
  (793, 79300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Nihilego - Rest - TM21
  (793, 79300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Nihilego - Rock Slide - TM22
  (793, 79300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Nihilego - Snore - TM24
  (793, 79300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Nihilego - Protect - TM25
  (793, 79300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Nihilego - Sandstorm - TM32
  (793, 79300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Nihilego - Facade - TM39
  (793, 79300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Nihilego - Rock Tomb - TM48
  (793, 79300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Nihilego - Trick Room - TM70
  (793, 79300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 28),
  -- Nihilego - Wonder Room - TM71
  (793, 79300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 29),
  -- Nihilego - Cross Poison - TM73
  (793, 79300, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 30),
  -- Nihilego - Venoshock - TM74
  (793, 79300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Nihilego - Round - TM76
  (793, 79300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Nihilego - Hex - TM77
  (793, 79300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 33),
  -- Nihilego - Brutal Swing - TM97
  (793, 79300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Nihilego - Body Slam - TR01
  (793, 79300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Nihilego - Thunderbolt - TR08
  (793, 79300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Nihilego - Thunder - TR09
  (793, 79300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Nihilego - Psychic - TR11
  (793, 79300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Nihilego - Substitute - TR20
  (793, 79300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Nihilego - Sludge Bomb - TR22
  (793, 79300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Nihilego - Psyshock - TR25
  (793, 79300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 41),
  -- Nihilego - Endure - TR26
  (793, 79300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Nihilego - Sleep Talk - TR27
  (793, 79300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Nihilego - Toxic Spikes - TR54
  (793, 79300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 44),
  -- Nihilego - Poison Jab - TR57
  (793, 79300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Nihilego - Power Gem - TR63
  (793, 79300, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 46),
  -- Nihilego - Zen Headbutt - TR69
  (793, 79300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 47),
  -- Nihilego - Gunk Shot - TR73
  (793, 79300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 48),
  -- Nihilego - Iron Head - TR74
  (793, 79300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 49),
  -- Nihilego - Stealth Rock - TR76
  (793, 79300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 50),
  -- Nihilego - Grass Knot - TR77
  (793, 79300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Nihilego - Sludge Wave - TR78
  (793, 79300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 52),
  -- Nihilego - Foul Play - TR81
  (793, 79300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 53),
  -- Nihilego - Ally Switch - TR83
  (793, 79300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Nihilego - Venom Drench - TR91
  (793, 79300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 55),
  -- Nihilego - Dazzling Gleam - TR92
  (793, 79300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 56),
  -- Buzzwole - Harden - Level 1
  (794, 79400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buzzwole - Power-Up Punch - Level 1
  (794, 79400, 612, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buzzwole - Taunt - Level 5
  (794, 79400, 269, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Buzzwole - Fell Stinger - Level 10
  (794, 79400, 565, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Buzzwole - Vital Throw - Level 15
  (794, 79400, 233, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buzzwole - Bulk Up - Level 20
  (794, 79400, 339, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Buzzwole - Endure - Level 25
  (794, 79400, 203, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Buzzwole - Reversal - Level 30
  (794, 79400, 179, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Buzzwole - Mega Punch - Level 35
  (794, 79400, 5, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Buzzwole - Lunge - Level 40
  (794, 79400, 679, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Buzzwole - Focus Energy - Level 45
  (794, 79400, 116, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Buzzwole - Dynamic Punch - Level 50
  (794, 79400, 223, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Buzzwole - Counter - Level 55
  (794, 79400, 68, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Buzzwole - Hammer Arm - Level 60
  (794, 79400, 359, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Buzzwole - Superpower - Level 65
  (794, 79400, 276, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Buzzwole - Focus Punch - Level 70
  (794, 79400, 264, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Buzzwole - Mega Punch - TM00
  (794, 79400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Buzzwole - Ice Punch - TM04
  (794, 79400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Buzzwole - Thunder Punch - TM05
  (794, 79400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Buzzwole - Giga Impact - TM09
  (794, 79400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Buzzwole - Rest - TM21
  (794, 79400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Buzzwole - Rock Slide - TM22
  (794, 79400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Buzzwole - Snore - TM24
  (794, 79400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Buzzwole - Protect - TM25
  (794, 79400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Buzzwole - Facade - TM39
  (794, 79400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Buzzwole - Revenge - TM42
  (794, 79400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 26),
  -- Buzzwole - Brick Break - TM43
  (794, 79400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Buzzwole - Rock Tomb - TM48
  (794, 79400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Buzzwole - Bounce - TM52
  (794, 79400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Buzzwole - Payback - TM57
  (794, 79400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Buzzwole - Fling - TM59
  (794, 79400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Buzzwole - Drain Punch - TM63
  (794, 79400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Buzzwole - Low Sweep - TM75
  (794, 79400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 33),
  -- Buzzwole - Round - TM76
  (794, 79400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Buzzwole - Bulldoze - TM81
  (794, 79400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Buzzwole - False Swipe - TM94
  (794, 79400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Buzzwole - Stomping Tantrum - TM98
  (794, 79400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Buzzwole - Body Slam - TR01
  (794, 79400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Buzzwole - Earthquake - TR10
  (794, 79400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Buzzwole - Focus Energy - TR13
  (794, 79400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 40),
  -- Buzzwole - Leech Life - TR18
  (794, 79400, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 41),
  -- Buzzwole - Substitute - TR20
  (794, 79400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Buzzwole - Reversal - TR21
  (794, 79400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 43),
  -- Buzzwole - Outrage - TR24
  (794, 79400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 44),
  -- Buzzwole - Endure - TR26
  (794, 79400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Buzzwole - Sleep Talk - TR27
  (794, 79400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Buzzwole - Taunt - TR37
  (794, 79400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Buzzwole - Superpower - TR39
  (794, 79400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Buzzwole - Bulk Up - TR48
  (794, 79400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 49),
  -- Buzzwole - Gyro Ball - TR52
  (794, 79400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 50),
  -- Buzzwole - Close Combat - TR53
  (794, 79400, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Buzzwole - Poison Jab - TR57
  (794, 79400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 52),
  -- Buzzwole - Iron Head - TR74
  (794, 79400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 53),
  -- Buzzwole - Stone Edge - TR75
  (794, 79400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Buzzwole - Work Up - TR85
  (794, 79400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 55),
  -- Buzzwole - Darkest Lariat - TR93
  (794, 79400, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 56),
  -- Buzzwole - High Horsepower - TR94
  (794, 79400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Pheromosa - Rapid Spin - Level 1
  (795, 79500, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pheromosa - Feint - Level 1
  (795, 79500, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pheromosa - Leer - Level 5
  (795, 79500, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pheromosa - Quick Guard - Level 10
  (795, 79500, 501, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pheromosa - Bug Bite - Level 15
  (795, 79500, 450, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pheromosa - Low Kick - Level 20
  (795, 79500, 67, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pheromosa - Double Kick - Level 25
  (795, 79500, 24, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pheromosa - Triple Kick - Level 30
  (795, 79500, 167, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pheromosa - Stomp - Level 35
  (795, 79500, 23, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pheromosa - Agility - Level 40
  (795, 79500, 97, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pheromosa - Lunge - Level 45
  (795, 79500, 679, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pheromosa - Bounce - Level 50
  (795, 79500, 340, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pheromosa - Speed Swap - Level 55
  (795, 79500, 683, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pheromosa - Bug Buzz - Level 60
  (795, 79500, 405, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pheromosa - Quiver Dance - Level 65
  (795, 79500, 483, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Pheromosa - High Jump Kick - Level 70
  (795, 79500, 136, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Pheromosa - Hyper Beam - TM08
  (795, 79500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Pheromosa - Giga Impact - TM09
  (795, 79500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Pheromosa - Rest - TM21
  (795, 79500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Pheromosa - Snore - TM24
  (795, 79500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Pheromosa - Protect - TM25
  (795, 79500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Pheromosa - Icy Wind - TM27
  (795, 79500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Pheromosa - Facade - TM39
  (795, 79500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Pheromosa - Swift - TM40
  (795, 79500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Pheromosa - Brick Break - TM43
  (795, 79500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 25),
  -- Pheromosa - Bounce - TM52
  (795, 79500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 26),
  -- Pheromosa - U-turn - TM56
  (795, 79500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Pheromosa - Assurance - TM58
  (795, 79500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 28),
  -- Pheromosa - Fling - TM59
  (795, 79500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Pheromosa - Speed Swap - TM62
  (795, 79500, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 30),
  -- Pheromosa - Low Sweep - TM75
  (795, 79500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 31),
  -- Pheromosa - Round - TM76
  (795, 79500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Pheromosa - Electroweb - TM82
  (795, 79500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 33),
  -- Pheromosa - False Swipe - TM94
  (795, 79500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Pheromosa - Ice Beam - TR05
  (795, 79500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Pheromosa - Blizzard - TR06
  (795, 79500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Pheromosa - Low Kick - TR07
  (795, 79500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 37),
  -- Pheromosa - Agility - TR12
  (795, 79500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Pheromosa - Substitute - TR20
  (795, 79500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Pheromosa - Outrage - TR24
  (795, 79500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 40),
  -- Pheromosa - Endure - TR26
  (795, 79500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Pheromosa - Sleep Talk - TR27
  (795, 79500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Pheromosa - Taunt - TR37
  (795, 79500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Pheromosa - Close Combat - TR53
  (795, 79500, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 44),
  -- Pheromosa - Poison Jab - TR57
  (795, 79500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Pheromosa - Bug Buzz - TR61
  (795, 79500, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 46),
  -- Pheromosa - Focus Blast - TR64
  (795, 79500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 47),
  -- Pheromosa - Foul Play - TR81
  (795, 79500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Pheromosa - Drill Run - TR87
  (795, 79500, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 49),
  -- Pheromosa - Throat Chop - TR95
  (795, 79500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 50),
  -- Xurkitree - Wrap - Level 1
  (796, 79600, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xurkitree - Thunder Shock - Level 1
  (796, 79600, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xurkitree - Charge - Level 5
  (796, 79600, 268, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Xurkitree - Thunder Wave - Level 10
  (796, 79600, 86, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Xurkitree - Ingrain - Level 15
  (796, 79600, 275, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Xurkitree - Spark - Level 20
  (796, 79600, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Xurkitree - Shock Wave - Level 25
  (796, 79600, 351, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Xurkitree - Hypnosis - Level 30
  (796, 79600, 95, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Xurkitree - Eerie Impulse - Level 35
  (796, 79600, 598, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Xurkitree - Thunder Punch - Level 40
  (796, 79600, 9, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Xurkitree - Discharge - Level 45
  (796, 79600, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Xurkitree - Magnet Rise - Level 50
  (796, 79600, 393, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Xurkitree - Thunderbolt - Level 55
  (796, 79600, 85, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Xurkitree - Electric Terrain - Level 60
  (796, 79600, 604, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Xurkitree - Power Whip - Level 65
  (796, 79600, 438, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Xurkitree - Zap Cannon - Level 70
  (796, 79600, 192, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Xurkitree - Thunder Punch - TM05
  (796, 79600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Xurkitree - Hyper Beam - TM08
  (796, 79600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Xurkitree - Giga Impact - TM09
  (796, 79600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Xurkitree - Solar Beam - TM11
  (796, 79600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Xurkitree - Thunder Wave - TM14
  (796, 79600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Xurkitree - Light Screen - TM17
  (796, 79600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Xurkitree - Reflect - TM18
  (796, 79600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Xurkitree - Rest - TM21
  (796, 79600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Xurkitree - Snore - TM24
  (796, 79600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Xurkitree - Protect - TM25
  (796, 79600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Xurkitree - Rain Dance - TM33
  (796, 79600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Xurkitree - Sunny Day - TM34
  (796, 79600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Xurkitree - Facade - TM39
  (796, 79600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Xurkitree - Fling - TM59
  (796, 79600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 30),
  -- Xurkitree - Round - TM76
  (796, 79600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Xurkitree - Volt Switch - TM80
  (796, 79600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 32),
  -- Xurkitree - Electroweb - TM82
  (796, 79600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 33),
  -- Xurkitree - Electric Terrain - TM90
  (796, 79600, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 34),
  -- Xurkitree - Eerie Impulse - TM93
  (796, 79600, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 35),
  -- Xurkitree - Brutal Swing - TM97
  (796, 79600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Xurkitree - Thunderbolt - TR08
  (796, 79600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Xurkitree - Thunder - TR09
  (796, 79600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 38),
  -- Xurkitree - Substitute - TR20
  (796, 79600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Xurkitree - Endure - TR26
  (796, 79600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Xurkitree - Sleep Talk - TR27
  (796, 79600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Xurkitree - Calm Mind - TR49
  (796, 79600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 42),
  -- Xurkitree - Energy Ball - TR65
  (796, 79600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Xurkitree - Power Whip - TR72
  (796, 79600, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 44),
  -- Xurkitree - Grass Knot - TR77
  (796, 79600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 45),
  -- Xurkitree - Electro Ball - TR80
  (796, 79600, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 46),
  -- Xurkitree - Wild Charge - TR86
  (796, 79600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 47),
  -- Xurkitree - Dazzling Gleam - TR92
  (796, 79600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 48),
  -- Celesteela - Tackle - Level 1
  (797, 79700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celesteela - Absorb - Level 1
  (797, 79700, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celesteela - Harden - Level 5
  (797, 79700, 106, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Celesteela - Wide Guard - Level 10
  (797, 79700, 469, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Celesteela - Mega Drain - Level 15
  (797, 79700, 72, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Celesteela - Smack Down - Level 20
  (797, 79700, 479, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Celesteela - Ingrain - Level 25
  (797, 79700, 275, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Celesteela - Autotomize - Level 30
  (797, 79700, 475, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Celesteela - Giga Drain - Level 35
  (797, 79700, 202, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Celesteela - Flash Cannon - Level 40
  (797, 79700, 430, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Celesteela - Metal Sound - Level 45
  (797, 79700, 319, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Celesteela - Iron Defense - Level 50
  (797, 79700, 334, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Celesteela - Leech Seed - Level 55
  (797, 79700, 73, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Celesteela - Heavy Slam - Level 60
  (797, 79700, 484, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Celesteela - Double-Edge - Level 65
  (797, 79700, 38, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Celesteela - Skull Bash - Level 70
  (797, 79700, 130, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Celesteela - Fly - TM06
  (797, 79700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Celesteela - Hyper Beam - TM08
  (797, 79700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Celesteela - Giga Impact - TM09
  (797, 79700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Celesteela - Solar Beam - TM11
  (797, 79700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Celesteela - Self-Destruct - TM20
  (797, 79700, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 21),
  -- Celesteela - Rest - TM21
  (797, 79700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Celesteela - Rock Slide - TM22
  (797, 79700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Celesteela - Snore - TM24
  (797, 79700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Celesteela - Protect - TM25
  (797, 79700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Celesteela - Giga Drain - TM28
  (797, 79700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Celesteela - Facade - TM39
  (797, 79700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Celesteela - Round - TM76
  (797, 79700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Celesteela - Acrobatics - TM78
  (797, 79700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 29),
  -- Celesteela - Bulldoze - TM81
  (797, 79700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Celesteela - Air Slash - TM95
  (797, 79700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 31),
  -- Celesteela - Smart Strike - TM96
  (797, 79700, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 32),
  -- Celesteela - Brutal Swing - TM97
  (797, 79700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 33),
  -- Celesteela - Stomping Tantrum - TM98
  (797, 79700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 34),
  -- Celesteela - Body Slam - TR01
  (797, 79700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Celesteela - Flamethrower - TR02
  (797, 79700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Celesteela - Earthquake - TR10
  (797, 79700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Celesteela - Fire Blast - TR15
  (797, 79700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Celesteela - Substitute - TR20
  (797, 79700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Celesteela - Endure - TR26
  (797, 79700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Celesteela - Sleep Talk - TR27
  (797, 79700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Celesteela - Megahorn - TR28
  (797, 79700, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 42),
  -- Celesteela - Superpower - TR39
  (797, 79700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 43),
  -- Celesteela - Iron Defense - TR46
  (797, 79700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Celesteela - Gyro Ball - TR52
  (797, 79700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Celesteela - Seed Bomb - TR59
  (797, 79700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Celesteela - Energy Ball - TR65
  (797, 79700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Celesteela - Zen Headbutt - TR69
  (797, 79700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 48),
  -- Celesteela - Flash Cannon - TR70
  (797, 79700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 49),
  -- Celesteela - Iron Head - TR74
  (797, 79700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 50),
  -- Celesteela - Stone Edge - TR75
  (797, 79700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 51),
  -- Celesteela - Grass Knot - TR77
  (797, 79700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Celesteela - Heavy Slam - TR79
  (797, 79700, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 53),
  -- Celesteela - Steel Beam - Tutor
  (797, 79700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Kartana - Fury Cutter - Level 1
  (798, 79800, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kartana - Vacuum Wave - Level 1
  (798, 79800, 410, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kartana - Razor Leaf - Level 5
  (798, 79800, 75, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Kartana - False Swipe - Level 10
  (798, 79800, 206, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kartana - Cut - Level 15
  (798, 79800, 15, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Kartana - Air Cutter - Level 20
  (798, 79800, 314, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Kartana - Aerial Ace - Level 25
  (798, 79800, 332, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Kartana - Detect - Level 30
  (798, 79800, 197, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kartana - Night Slash - Level 35
  (798, 79800, 400, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Kartana - Synthesis - Level 40
  (798, 79800, 235, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Kartana - Laser Focus - Level 45
  (798, 79800, 673, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Kartana - Defog - Level 50
  (798, 79800, 432, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Kartana - Leaf Blade - Level 55
  (798, 79800, 348, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Kartana - Sacred Sword - Level 60
  (798, 79800, 533, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Kartana - Swords Dance - Level 65
  (798, 79800, 14, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Kartana - Guillotine - Level 70
  (798, 79800, 12, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Kartana - Giga Impact - TM09
  (798, 79800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Kartana - Solar Blade - TM12
  (798, 79800, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 18),
  -- Kartana - Screech - TM16
  (798, 79800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Kartana - Rest - TM21
  (798, 79800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Kartana - Snore - TM24
  (798, 79800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Kartana - Protect - TM25
  (798, 79800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Kartana - Giga Drain - TM28
  (798, 79800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Kartana - Brick Break - TM43
  (798, 79800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 24),
  -- Kartana - Psycho Cut - TM69
  (798, 79800, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 25),
  -- Kartana - Round - TM76
  (798, 79800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Kartana - False Swipe - TM94
  (798, 79800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 27),
  -- Kartana - Air Slash - TM95
  (798, 79800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 28),
  -- Kartana - Smart Strike - TM96
  (798, 79800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 29),
  -- Kartana - Swords Dance - TR00
  (798, 79800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Kartana - Substitute - TR20
  (798, 79800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Kartana - Endure - TR26
  (798, 79800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Kartana - Sleep Talk - TR27
  (798, 79800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Kartana - Iron Defense - TR46
  (798, 79800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 34),
  -- Kartana - Calm Mind - TR49
  (798, 79800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 35),
  -- Kartana - Leaf Blade - TR50
  (798, 79800, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 36),
  -- Kartana - X-Scissor - TR60
  (798, 79800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 37),
  -- Kartana - Steel Beam - Tutor
  (798, 79800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 38),
  -- Guzzlord - Bite - Level 1
  (799, 79900, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Guzzlord - Dragon Tail - Level 1
  (799, 79900, 525, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Guzzlord - Stockpile - Level 5
  (799, 79900, 254, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Guzzlord - Swallow - Level 5
  (799, 79900, 256, 18, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Guzzlord - Knock Off - Level 10
  (799, 79900, 282, 18, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Guzzlord - Stomp - Level 15
  (799, 79900, 23, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Guzzlord - Stomping Tantrum - Level 20
  (799, 79900, 707, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Guzzlord - Wide Guard - Level 25
  (799, 79900, 469, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Guzzlord - Crunch - Level 30
  (799, 79900, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Guzzlord - Body Slam - Level 35
  (799, 79900, 34, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Guzzlord - Gastro Acid - Level 40
  (799, 79900, 380, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Guzzlord - Hammer Arm - Level 45
  (799, 79900, 359, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Guzzlord - Heavy Slam - Level 50
  (799, 79900, 484, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Guzzlord - Dragon Rush - Level 55
  (799, 79900, 407, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Guzzlord - Belch - Level 60
  (799, 79900, 562, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Guzzlord - Thrash - Level 65
  (799, 79900, 37, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Guzzlord - Giga Impact - Level 70
  (799, 79900, 416, 18, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Guzzlord - Mega Punch - TM00
  (799, 79900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Guzzlord - Mega Kick - TM01
  (799, 79900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Guzzlord - Hyper Beam - TM08
  (799, 79900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Guzzlord - Giga Impact - TM09
  (799, 79900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Guzzlord - Rest - TM21
  (799, 79900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Guzzlord - Rock Slide - TM22
  (799, 79900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Guzzlord - Thief - TM23
  (799, 79900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Guzzlord - Snore - TM24
  (799, 79900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Guzzlord - Protect - TM25
  (799, 79900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Guzzlord - Facade - TM39
  (799, 79900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Guzzlord - Brick Break - TM43
  (799, 79900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 28),
  -- Guzzlord - Rock Tomb - TM48
  (799, 79900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Guzzlord - Payback - TM57
  (799, 79900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Guzzlord - Fling - TM59
  (799, 79900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Guzzlord - Drain Punch - TM63
  (799, 79900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Guzzlord - Shadow Claw - TM65
  (799, 79900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Guzzlord - Round - TM76
  (799, 79900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Guzzlord - Bulldoze - TM81
  (799, 79900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Guzzlord - Snarl - TM85
  (799, 79900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 36),
  -- Guzzlord - Brutal Swing - TM97
  (799, 79900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Guzzlord - Stomping Tantrum - TM98
  (799, 79900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Guzzlord - Body Slam - TR01
  (799, 79900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Guzzlord - Flamethrower - TR02
  (799, 79900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Guzzlord - Earthquake - TR10
  (799, 79900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Guzzlord - Fire Blast - TR15
  (799, 79900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 42),
  -- Guzzlord - Amnesia - TR17
  (799, 79900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 43),
  -- Guzzlord - Substitute - TR20
  (799, 79900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Guzzlord - Sludge Bomb - TR22
  (799, 79900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 45),
  -- Guzzlord - Outrage - TR24
  (799, 79900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 46),
  -- Guzzlord - Endure - TR26
  (799, 79900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Guzzlord - Sleep Talk - TR27
  (799, 79900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Guzzlord - Iron Tail - TR31
  (799, 79900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Guzzlord - Crunch - TR32
  (799, 79900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 50),
  -- Guzzlord - Heat Wave - TR36
  (799, 79900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 51),
  -- Guzzlord - Iron Defense - TR46
  (799, 79900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Guzzlord - Dragon Claw - TR47
  (799, 79900, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 53),
  -- Guzzlord - Gyro Ball - TR52
  (799, 79900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Guzzlord - Poison Jab - TR57
  (799, 79900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 55),
  -- Guzzlord - Dark Pulse - TR58
  (799, 79900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Guzzlord - Dragon Pulse - TR62
  (799, 79900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 57),
  -- Guzzlord - Iron Head - TR74
  (799, 79900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Guzzlord - Stone Edge - TR75
  (799, 79900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Guzzlord - Sludge Wave - TR78
  (799, 79900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 60),
  -- Guzzlord - Heavy Slam - TR79
  (799, 79900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 61),
  -- Guzzlord - Heat Crash - TR88
  (799, 79900, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 62),
  -- Guzzlord - High Horsepower - TR94
  (799, 79900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 63),
  -- Guzzlord - Body Press - TR99
  (799, 79900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 64),
  -- Guzzlord - Draco Meteor - Tutor
  (799, 79900, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Necrozma - Confusion - Level 1
  (800, 80000, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma - Metal Claw - Level 1
  (800, 80000, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma - Morning Sun - Level 1
  (800, 80000, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma - Moonlight - Level 1
  (800, 80000, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma - Gravity - Level 1
  (800, 80000, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma - Charge Beam - Level 1
  (800, 80000, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Necrozma - Stealth Rock - Level 8
  (800, 80000, 446, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Necrozma - Slash - Level 16
  (800, 80000, 163, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Necrozma - Night Slash - Level 24
  (800, 80000, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Necrozma - Psycho Cut - Level 32
  (800, 80000, 427, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Necrozma - Stored Power - Level 40
  (800, 80000, 500, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Necrozma - Rock Blast - Level 48
  (800, 80000, 350, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Necrozma - Iron Defense - Level 56
  (800, 80000, 334, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Necrozma - Power Gem - Level 64
  (800, 80000, 408, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Necrozma - Photon Geyser - Level 72
  (800, 80000, 722, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Necrozma - Autotomize - Level 80
  (800, 80000, 475, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Necrozma - Prismatic Laser - Level 88
  (800, 80000, 711, 18, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Necrozma - Hyper Beam - TM08
  (800, 80000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Necrozma - Giga Impact - TM09
  (800, 80000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Necrozma - Solar Beam - TM11
  (800, 80000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Necrozma - Thunder Wave - TM14
  (800, 80000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Necrozma - Light Screen - TM17
  (800, 80000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Necrozma - Reflect - TM18
  (800, 80000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Necrozma - Rest - TM21
  (800, 80000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Necrozma - Rock Slide - TM22
  (800, 80000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Necrozma - Thief - TM23
  (800, 80000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Necrozma - Snore - TM24
  (800, 80000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Necrozma - Protect - TM25
  (800, 80000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Necrozma - Scary Face - TM26
  (800, 80000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Necrozma - Facade - TM39
  (800, 80000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Necrozma - Brick Break - TM43
  (800, 80000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Necrozma - Imprison - TM44
  (800, 80000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Necrozma - Rock Tomb - TM48
  (800, 80000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Necrozma - Rock Blast - TM54
  (800, 80000, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Necrozma - Fling - TM59
  (800, 80000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Necrozma - Shadow Claw - TM65
  (800, 80000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Necrozma - Psycho Cut - TM69
  (800, 80000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Necrozma - Trick Room - TM70
  (800, 80000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Necrozma - Round - TM76
  (800, 80000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Necrozma - Bulldoze - TM81
  (800, 80000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Necrozma - Smart Strike - TM96
  (800, 80000, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Necrozma - Brutal Swing - TM97
  (800, 80000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Necrozma - Breaking Swipe - TM99
  (800, 80000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Necrozma - Swords Dance - TR00
  (800, 80000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Necrozma - Earthquake - TR10
  (800, 80000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Necrozma - Psychic - TR11
  (800, 80000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Necrozma - Substitute - TR20
  (800, 80000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Necrozma - Outrage - TR24
  (800, 80000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 48),
  -- Necrozma - Psyshock - TR25
  (800, 80000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Necrozma - Endure - TR26
  (800, 80000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Necrozma - Sleep Talk - TR27
  (800, 80000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Necrozma - Future Sight - TR34
  (800, 80000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 52),
  -- Necrozma - Heat Wave - TR36
  (800, 80000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 53),
  -- Necrozma - Hyper Voice - TR42
  (800, 80000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Necrozma - Cosmic Power - TR44
  (800, 80000, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 55),
  -- Necrozma - Iron Defense - TR46
  (800, 80000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Necrozma - Calm Mind - TR49
  (800, 80000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Necrozma - Dragon Dance - TR51
  (800, 80000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 58),
  -- Necrozma - Gyro Ball - TR52
  (800, 80000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 59),
  -- Necrozma - Dark Pulse - TR58
  (800, 80000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Necrozma - X-Scissor - TR60
  (800, 80000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Necrozma - Dragon Pulse - TR62
  (800, 80000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Necrozma - Power Gem - TR63
  (800, 80000, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 63),
  -- Necrozma - Earth Power - TR67
  (800, 80000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 64),
  -- Necrozma - Flash Cannon - TR70
  (800, 80000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Necrozma - Iron Head - TR74
  (800, 80000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Necrozma - Stone Edge - TR75
  (800, 80000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Necrozma - Stealth Rock - TR76
  (800, 80000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Necrozma - Stored Power - TR82
  (800, 80000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 69),
  -- Necrozma - Ally Switch - TR83
  (800, 80000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Necrozma - Psychic Fangs - TR97
  (800, 80000, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 71),
  -- Magearna - Helping Hand - Level 1
  (801, 80100, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magearna - Gyro Ball - Level 1
  (801, 80100, 360, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magearna - Defense Curl - Level 6
  (801, 80100, 111, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magearna - Rollout - Level 12
  (801, 80100, 205, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Magearna - Iron Defense - Level 18
  (801, 80100, 334, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Magearna - Gear Up - Level 24
  (801, 80100, 674, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Magearna - Psybeam - Level 30
  (801, 80100, 60, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Magearna - Aurora Beam - Level 36
  (801, 80100, 62, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Magearna - Mind Reader - Level 42
  (801, 80100, 170, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Magearna - Shift Gear - Level 48
  (801, 80100, 508, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Magearna - Crafty Shield - Level 54
  (801, 80100, 578, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Magearna - Iron Head - Level 60
  (801, 80100, 442, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Magearna - Aura Sphere - Level 66
  (801, 80100, 396, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Magearna - Flash Cannon - Level 72
  (801, 80100, 430, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Magearna - Pain Split - Level 78
  (801, 80100, 220, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Magearna - Zap Cannon - Level 84
  (801, 80100, 192, 18, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Magearna - Fleur Cannon - Level 90
  (801, 80100, 705, 18, NULL, 1, 90, NULL, NULL, NULL, 17),
  -- Magearna - Hyper Beam - TM08
  (801, 80100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Magearna - Giga Impact - TM09
  (801, 80100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Magearna - Solar Beam - TM11
  (801, 80100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Magearna - Thunder Wave - TM14
  (801, 80100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Magearna - Light Screen - TM17
  (801, 80100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Magearna - Reflect - TM18
  (801, 80100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Magearna - Self-Destruct - TM20
  (801, 80100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Magearna - Rest - TM21
  (801, 80100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Magearna - Snore - TM24
  (801, 80100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Magearna - Protect - TM25
  (801, 80100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Magearna - Helping Hand - TM41
  (801, 80100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Magearna - Brick Break - TM43
  (801, 80100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Magearna - Imprison - TM44
  (801, 80100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Magearna - Power Swap - TM60
  (801, 80100, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Magearna - Guard Swap - TM61
  (801, 80100, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Magearna - Speed Swap - TM62
  (801, 80100, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 33),
  -- Magearna - Trick Room - TM70
  (801, 80100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Magearna - Round - TM76
  (801, 80100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Magearna - Volt Switch - TM80
  (801, 80100, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 36),
  -- Magearna - Electroweb - TM82
  (801, 80100, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 37),
  -- Magearna - Draining Kiss - TM87
  (801, 80100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 38),
  -- Magearna - Eerie Impulse - TM93
  (801, 80100, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 39),
  -- Magearna - False Swipe - TM94
  (801, 80100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 40),
  -- Magearna - Ice Beam - TR05
  (801, 80100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Magearna - Thunderbolt - TR08
  (801, 80100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Magearna - Agility - TR12
  (801, 80100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Magearna - Tri Attack - TR19
  (801, 80100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 44),
  -- Magearna - Substitute - TR20
  (801, 80100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Magearna - Endure - TR26
  (801, 80100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Magearna - Baton Pass - TR29
  (801, 80100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 47),
  -- Magearna - Encore - TR30
  (801, 80100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 48),
  -- Magearna - Shadow Ball - TR33
  (801, 80100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Magearna - Trick - TR38
  (801, 80100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 50),
  -- Magearna - Iron Defense - TR46
  (801, 80100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Magearna - Calm Mind - TR49
  (801, 80100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Magearna - Gyro Ball - TR52
  (801, 80100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 53),
  -- Magearna - Aura Sphere - TR56
  (801, 80100, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 54),
  -- Magearna - Focus Blast - TR64
  (801, 80100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Magearna - Energy Ball - TR65
  (801, 80100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Magearna - Zen Headbutt - TR69
  (801, 80100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Magearna - Flash Cannon - TR70
  (801, 80100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 58),
  -- Magearna - Iron Head - TR74
  (801, 80100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Magearna - Grass Knot - TR77
  (801, 80100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Magearna - Electro Ball - TR80
  (801, 80100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 61),
  -- Magearna - Stored Power - TR82
  (801, 80100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Magearna - Dazzling Gleam - TR92
  (801, 80100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 63),
  -- Magearna - Steel Beam - Tutor
  (801, 80100, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Marshadow - Fire Punch - Level 1
  (802, 80200, 7, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshadow - Ice Punch - Level 1
  (802, 80200, 8, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshadow - Thunder Punch - Level 1
  (802, 80200, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshadow - Counter - Level 1
  (802, 80200, 68, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshadow - Feint - Level 1
  (802, 80200, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marshadow - Copycat - Level 1
  (802, 80200, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marshadow - Shadow Sneak - Level 1
  (802, 80200, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marshadow - Role Play - Level 9
  (802, 80200, 272, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Marshadow - Shadow Punch - Level 18
  (802, 80200, 325, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Marshadow - Force Palm - Level 27
  (802, 80200, 395, 18, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Marshadow - Assurance - Level 36
  (802, 80200, 372, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Marshadow - Sucker Punch - Level 45
  (802, 80200, 389, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Marshadow - Drain Punch - Level 54
  (802, 80200, 409, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Marshadow - Psych Up - Level 63
  (802, 80200, 244, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Marshadow - Spectral Thief - Level 72
  (802, 80200, 712, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Marshadow - Laser Focus - Level 81
  (802, 80200, 673, 18, NULL, 1, 81, NULL, NULL, NULL, 16),
  -- Marshadow - Endeavor - Level 90
  (802, 80200, 283, 18, NULL, 1, 90, NULL, NULL, NULL, 17),
  -- Marshadow - Close Combat - Level 99
  (802, 80200, 370, 18, NULL, 1, 99, NULL, NULL, NULL, 18),
  -- Marshadow - Mega Punch - TM00
  (802, 80200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Marshadow - Mega Kick - TM01
  (802, 80200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Marshadow - Fire Punch - TM03
  (802, 80200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Marshadow - Ice Punch - TM04
  (802, 80200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Marshadow - Thunder Punch - TM05
  (802, 80200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Marshadow - Hyper Beam - TM08
  (802, 80200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Marshadow - Giga Impact - TM09
  (802, 80200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Marshadow - Rest - TM21
  (802, 80200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Marshadow - Rock Slide - TM22
  (802, 80200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Marshadow - Thief - TM23
  (802, 80200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Marshadow - Snore - TM24
  (802, 80200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Marshadow - Protect - TM25
  (802, 80200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Marshadow - Will-O-Wisp - TM38
  (802, 80200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Marshadow - Facade - TM39
  (802, 80200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Marshadow - Swift - TM40
  (802, 80200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Marshadow - Revenge - TM42
  (802, 80200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Marshadow - Brick Break - TM43
  (802, 80200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Marshadow - Rock Tomb - TM48
  (802, 80200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Marshadow - Bounce - TM52
  (802, 80200, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 37),
  -- Marshadow - Payback - TM57
  (802, 80200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Marshadow - Assurance - TM58
  (802, 80200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Marshadow - Fling - TM59
  (802, 80200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Marshadow - Drain Punch - TM63
  (802, 80200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Marshadow - Shadow Claw - TM65
  (802, 80200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 42),
  -- Marshadow - Low Sweep - TM75
  (802, 80200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 43),
  -- Marshadow - Round - TM76
  (802, 80200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Marshadow - Hex - TM77
  (802, 80200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 45),
  -- Marshadow - Acrobatics - TM78
  (802, 80200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Marshadow - Phantom Force - TM86
  (802, 80200, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 47),
  -- Marshadow - False Swipe - TM94
  (802, 80200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 48),
  -- Marshadow - Low Kick - TR07
  (802, 80200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Marshadow - Agility - TR12
  (802, 80200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Marshadow - Substitute - TR20
  (802, 80200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Marshadow - Reversal - TR21
  (802, 80200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Marshadow - Outrage - TR24
  (802, 80200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 53),
  -- Marshadow - Endure - TR26
  (802, 80200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Marshadow - Sleep Talk - TR27
  (802, 80200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Marshadow - Shadow Ball - TR33
  (802, 80200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 56),
  -- Marshadow - Superpower - TR39
  (802, 80200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 57),
  -- Marshadow - Blaze Kick - TR41
  (802, 80200, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 58),
  -- Marshadow - Bulk Up - TR48
  (802, 80200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 59),
  -- Marshadow - Calm Mind - TR49
  (802, 80200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Marshadow - Close Combat - TR53
  (802, 80200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 61),
  -- Marshadow - Aura Sphere - TR56
  (802, 80200, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 62),
  -- Marshadow - Poison Jab - TR57
  (802, 80200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 63),
  -- Marshadow - Focus Blast - TR64
  (802, 80200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Marshadow - Zen Headbutt - TR69
  (802, 80200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Marshadow - Iron Head - TR74
  (802, 80200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Marshadow - Stone Edge - TR75
  (802, 80200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Marshadow - Grass Knot - TR77
  (802, 80200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 68),
  -- Marshadow - Foul Play - TR81
  (802, 80200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 69),
  -- Marshadow - Work Up - TR85
  (802, 80200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 70),
  -- Marshadow - Throat Chop - TR95
  (802, 80200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 71),
  -- Poipole - Growl - Level 1
  (803, 80300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poipole - Acid - Level 1
  (803, 80300, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poipole - Peck - Level 1
  (803, 80300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poipole - Helping Hand - Level 1
  (803, 80300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poipole - Dragon Pulse - Level 1
  (803, 80300, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poipole - Fury Attack - Level 7
  (803, 80300, 31, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Poipole - Fell Stinger - Level 14
  (803, 80300, 565, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Poipole - Charm - Level 21
  (803, 80300, 204, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Poipole - Venoshock - Level 28
  (803, 80300, 474, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Poipole - Venom Drench - Level 35
  (803, 80300, 599, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Poipole - Nasty Plot - Level 42
  (803, 80300, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Poipole - Poison Jab - Level 49
  (803, 80300, 398, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Poipole - Gastro Acid - Level 56
  (803, 80300, 380, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Poipole - Toxic - Level 63
  (803, 80300, 92, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Poipole - Pin Missile - TM07
  (803, 80300, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Poipole - Rest - TM21
  (803, 80300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Poipole - Snore - TM24
  (803, 80300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Poipole - Protect - TM25
  (803, 80300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Poipole - Charm - TM29
  (803, 80300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Poipole - Facade - TM39
  (803, 80300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Poipole - Helping Hand - TM41
  (803, 80300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 21),
  -- Poipole - Venoshock - TM74
  (803, 80300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 22),
  -- Poipole - Round - TM76
  (803, 80300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 23),
  -- Poipole - Substitute - TR20
  (803, 80300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 24),
  -- Poipole - Sludge Bomb - TR22
  (803, 80300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 25),
  -- Poipole - Endure - TR26
  (803, 80300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 26),
  -- Poipole - Sleep Talk - TR27
  (803, 80300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 27),
  -- Poipole - Iron Tail - TR31
  (803, 80300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 28),
  -- Poipole - Uproar - TR35
  (803, 80300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 29),
  -- Poipole - Toxic Spikes - TR54
  (803, 80300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 30),
  -- Poipole - Poison Jab - TR57
  (803, 80300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 31),
  -- Poipole - Dragon Pulse - TR62
  (803, 80300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 32),
  -- Poipole - Nasty Plot - TR68
  (803, 80300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 33),
  -- Poipole - Gunk Shot - TR73
  (803, 80300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 34),
  -- Poipole - Sludge Wave - TR78
  (803, 80300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 35),
  -- Poipole - Venom Drench - TR91
  (803, 80300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 36),
  -- Naganadel - Growl - Level 1
  (804, 80400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Naganadel - Acid - Level 1
  (804, 80400, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Naganadel - Peck - Level 1
  (804, 80400, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Naganadel - Helping Hand - Level 1
  (804, 80400, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Naganadel - Air Cutter - Level 1
  (804, 80400, 314, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Naganadel - Air Slash - Level 1
  (804, 80400, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Naganadel - Dragon Pulse - Level 1
  (804, 80400, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Naganadel - Fury Attack - Level 7
  (804, 80400, 31, 18, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Naganadel - Fell Stinger - Level 14
  (804, 80400, 565, 18, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Naganadel - Charm - Level 21
  (804, 80400, 204, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Naganadel - Venoshock - Level 28
  (804, 80400, 474, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Naganadel - Venom Drench - Level 35
  (804, 80400, 599, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Naganadel - Nasty Plot - Level 42
  (804, 80400, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Naganadel - Poison Jab - Level 49
  (804, 80400, 398, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Naganadel - Gastro Acid - Level 56
  (804, 80400, 380, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Naganadel - Toxic - Level 63
  (804, 80400, 92, 18, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Naganadel - Dragon Rush - Level 70
  (804, 80400, 407, 18, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Naganadel - Air Cutter - Evolution
  (804, 80400, 314, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Naganadel - Fly - TM06
  (804, 80400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Naganadel - Pin Missile - TM07
  (804, 80400, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Naganadel - Hyper Beam - TM08
  (804, 80400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Naganadel - Giga Impact - TM09
  (804, 80400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Naganadel - Rest - TM21
  (804, 80400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Naganadel - Thief - TM23
  (804, 80400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Naganadel - Snore - TM24
  (804, 80400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Naganadel - Protect - TM25
  (804, 80400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Naganadel - Charm - TM29
  (804, 80400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Naganadel - Facade - TM39
  (804, 80400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Naganadel - Swift - TM40
  (804, 80400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Naganadel - Helping Hand - TM41
  (804, 80400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Naganadel - U-turn - TM56
  (804, 80400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 31),
  -- Naganadel - Assurance - TM58
  (804, 80400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Naganadel - Shadow Claw - TM65
  (804, 80400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Naganadel - Cross Poison - TM73
  (804, 80400, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 34),
  -- Naganadel - Venoshock - TM74
  (804, 80400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 35),
  -- Naganadel - Round - TM76
  (804, 80400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Naganadel - Hex - TM77
  (804, 80400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 37),
  -- Naganadel - Acrobatics - TM78
  (804, 80400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Naganadel - Snarl - TM85
  (804, 80400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 39),
  -- Naganadel - Air Slash - TM95
  (804, 80400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 40),
  -- Naganadel - Smart Strike - TM96
  (804, 80400, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 41),
  -- Naganadel - Breaking Swipe - TM99
  (804, 80400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 42),
  -- Naganadel - Flamethrower - TR02
  (804, 80400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Naganadel - Thunderbolt - TR08
  (804, 80400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Naganadel - Fire Blast - TR15
  (804, 80400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 45),
  -- Naganadel - Leech Life - TR18
  (804, 80400, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 46),
  -- Naganadel - Substitute - TR20
  (804, 80400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Naganadel - Sludge Bomb - TR22
  (804, 80400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Naganadel - Spikes - TR23
  (804, 80400, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 49),
  -- Naganadel - Outrage - TR24
  (804, 80400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 50),
  -- Naganadel - Endure - TR26
  (804, 80400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Naganadel - Sleep Talk - TR27
  (804, 80400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Naganadel - Iron Tail - TR31
  (804, 80400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Naganadel - Uproar - TR35
  (804, 80400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Naganadel - Heat Wave - TR36
  (804, 80400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 55),
  -- Naganadel - Dragon Claw - TR47
  (804, 80400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 56),
  -- Naganadel - Dragon Dance - TR51
  (804, 80400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 57),
  -- Naganadel - Toxic Spikes - TR54
  (804, 80400, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 58),
  -- Naganadel - Poison Jab - TR57
  (804, 80400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 59),
  -- Naganadel - Dark Pulse - TR58
  (804, 80400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Naganadel - X-Scissor - TR60
  (804, 80400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Naganadel - Dragon Pulse - TR62
  (804, 80400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 62),
  -- Naganadel - Nasty Plot - TR68
  (804, 80400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 63),
  -- Naganadel - Gunk Shot - TR73
  (804, 80400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 64),
  -- Naganadel - Sludge Wave - TR78
  (804, 80400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 65),
  -- Naganadel - Ally Switch - TR83
  (804, 80400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 66),
  -- Naganadel - Venom Drench - TR91
  (804, 80400, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 67),
  -- Naganadel - Throat Chop - TR95
  (804, 80400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 68),
  -- Naganadel - Draco Meteor - Tutor
  (804, 80400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 69),
  -- Stakataka - Tackle - Level 1
  (805, 80500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stakataka - Harden - Level 1
  (805, 80500, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stakataka - Rock Throw - Level 5
  (805, 80500, 88, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Stakataka - Protect - Level 10
  (805, 80500, 182, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stakataka - Stomp - Level 15
  (805, 80500, 23, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Stakataka - Block - Level 20
  (805, 80500, 335, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Stakataka - Rock Slide - Level 25
  (805, 80500, 157, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Stakataka - Wide Guard - Level 30
  (805, 80500, 469, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Stakataka - Autotomize - Level 35
  (805, 80500, 475, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Stakataka - Rock Blast - Level 40
  (805, 80500, 350, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Stakataka - Magnet Rise - Level 45
  (805, 80500, 393, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Stakataka - Iron Defense - Level 50
  (805, 80500, 334, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Stakataka - Iron Head - Level 55
  (805, 80500, 442, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Stakataka - Take Down - Level 60
  (805, 80500, 36, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Stakataka - Stealth Rock - Level 65
  (805, 80500, 446, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Stakataka - Double-Edge - Level 70
  (805, 80500, 38, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Stakataka - Mega Kick - TM01
  (805, 80500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Stakataka - Giga Impact - TM09
  (805, 80500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Stakataka - Light Screen - TM17
  (805, 80500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Stakataka - Reflect - TM18
  (805, 80500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Stakataka - Safeguard - TM19
  (805, 80500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Stakataka - Rest - TM21
  (805, 80500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Stakataka - Rock Slide - TM22
  (805, 80500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Stakataka - Snore - TM24
  (805, 80500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Stakataka - Protect - TM25
  (805, 80500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Stakataka - Sandstorm - TM32
  (805, 80500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Stakataka - Facade - TM39
  (805, 80500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Stakataka - Rock Tomb - TM48
  (805, 80500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Stakataka - Rock Blast - TM54
  (805, 80500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Stakataka - Trick Room - TM70
  (805, 80500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 30),
  -- Stakataka - Wonder Room - TM71
  (805, 80500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 31),
  -- Stakataka - Magic Room - TM72
  (805, 80500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 32),
  -- Stakataka - Round - TM76
  (805, 80500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Stakataka - Bulldoze - TM81
  (805, 80500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Stakataka - Brutal Swing - TM97
  (805, 80500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 35),
  -- Stakataka - Stomping Tantrum - TM98
  (805, 80500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Stakataka - Body Slam - TR01
  (805, 80500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Stakataka - Earthquake - TR10
  (805, 80500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 38),
  -- Stakataka - Substitute - TR20
  (805, 80500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Stakataka - Endure - TR26
  (805, 80500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Stakataka - Sleep Talk - TR27
  (805, 80500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Stakataka - Superpower - TR39
  (805, 80500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 42),
  -- Stakataka - Skill Swap - TR40
  (805, 80500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 43),
  -- Stakataka - Iron Defense - TR46
  (805, 80500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Stakataka - Gyro Ball - TR52
  (805, 80500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Stakataka - Zen Headbutt - TR69
  (805, 80500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Stakataka - Flash Cannon - TR70
  (805, 80500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Stakataka - Iron Head - TR74
  (805, 80500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 48),
  -- Stakataka - Stone Edge - TR75
  (805, 80500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 49),
  -- Stakataka - Stealth Rock - TR76
  (805, 80500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 50),
  -- Stakataka - Heavy Slam - TR79
  (805, 80500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 51),
  -- Stakataka - Ally Switch - TR83
  (805, 80500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 52),
  -- Stakataka - Heat Crash - TR88
  (805, 80500, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 53),
  -- Stakataka - High Horsepower - TR94
  (805, 80500, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 54),
  -- Stakataka - Body Press - TR99
  (805, 80500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 55),
  -- Stakataka - Steel Beam - Tutor
  (805, 80500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 56),
  -- Blacephalon - Fire Spin - Level 1
  (806, 80600, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blacephalon - Astonish - Level 1
  (806, 80600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blacephalon - Light Screen - Level 5
  (806, 80600, 113, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Blacephalon - Ember - Level 10
  (806, 80600, 52, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Blacephalon - Night Shade - Level 15
  (806, 80600, 101, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Blacephalon - Confuse Ray - Level 20
  (806, 80600, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Blacephalon - Magic Coat - Level 25
  (806, 80600, 277, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Blacephalon - Incinerate - Level 30
  (806, 80600, 510, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Blacephalon - Hypnosis - Level 35
  (806, 80600, 95, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Blacephalon - Mystical Fire - Level 40
  (806, 80600, 595, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Blacephalon - Shadow Ball - Level 45
  (806, 80600, 247, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Blacephalon - Calm Mind - Level 50
  (806, 80600, 347, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Blacephalon - Will-O-Wisp - Level 55
  (806, 80600, 261, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Blacephalon - Trick - Level 60
  (806, 80600, 271, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Blacephalon - Fire Blast - Level 65
  (806, 80600, 126, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Blacephalon - Mind Blown - Level 70
  (806, 80600, 720, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Blacephalon - Fire Punch - TM03
  (806, 80600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Blacephalon - Hyper Beam - TM08
  (806, 80600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Blacephalon - Solar Beam - TM11
  (806, 80600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Blacephalon - Fire Spin - TM13
  (806, 80600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Blacephalon - Light Screen - TM17
  (806, 80600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Blacephalon - Self-Destruct - TM20
  (806, 80600, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Blacephalon - Rest - TM21
  (806, 80600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Blacephalon - Thief - TM23
  (806, 80600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Blacephalon - Snore - TM24
  (806, 80600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Blacephalon - Protect - TM25
  (806, 80600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Blacephalon - Sunny Day - TM34
  (806, 80600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Blacephalon - Will-O-Wisp - TM38
  (806, 80600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Blacephalon - Facade - TM39
  (806, 80600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Blacephalon - Rock Blast - TM54
  (806, 80600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 30),
  -- Blacephalon - Payback - TM57
  (806, 80600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Blacephalon - Fling - TM59
  (806, 80600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Blacephalon - Shadow Claw - TM65
  (806, 80600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Blacephalon - Round - TM76
  (806, 80600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Blacephalon - Mystical Fire - TM92
  (806, 80600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 35),
  -- Blacephalon - Flamethrower - TR02
  (806, 80600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Blacephalon - Psychic - TR11
  (806, 80600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 37),
  -- Blacephalon - Fire Blast - TR15
  (806, 80600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Blacephalon - Substitute - TR20
  (806, 80600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Blacephalon - Psyshock - TR25
  (806, 80600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Blacephalon - Endure - TR26
  (806, 80600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Blacephalon - Sleep Talk - TR27
  (806, 80600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Blacephalon - Encore - TR30
  (806, 80600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 43),
  -- Blacephalon - Shadow Ball - TR33
  (806, 80600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Blacephalon - Uproar - TR35
  (806, 80600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Blacephalon - Heat Wave - TR36
  (806, 80600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Blacephalon - Taunt - TR37
  (806, 80600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Blacephalon - Trick - TR38
  (806, 80600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 48),
  -- Blacephalon - Overheat - TR43
  (806, 80600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 49),
  -- Blacephalon - Calm Mind - TR49
  (806, 80600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Blacephalon - Dark Pulse - TR58
  (806, 80600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 51),
  -- Blacephalon - Zen Headbutt - TR69
  (806, 80600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Blacephalon - Foul Play - TR81
  (806, 80600, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 53),
  -- Blacephalon - Stored Power - TR82
  (806, 80600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 54),
  -- Zeraora - Scratch - Level 1
  (807, 80700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zeraora - Quick Attack - Level 1
  (807, 80700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zeraora - Spark - Level 1
  (807, 80700, 209, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zeraora - Fake Out - Level 1
  (807, 80700, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zeraora - Snarl - Level 1
  (807, 80700, 555, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zeraora - Power-Up Punch - Level 1
  (807, 80700, 612, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zeraora - Fury Swipes - Level 8
  (807, 80700, 154, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Zeraora - Quick Guard - Level 16
  (807, 80700, 501, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Zeraora - Slash - Level 24
  (807, 80700, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Zeraora - Volt Switch - Level 32
  (807, 80700, 521, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Zeraora - Charge - Level 40
  (807, 80700, 268, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Zeraora - Thunder Punch - Level 48
  (807, 80700, 9, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Zeraora - Hone Claws - Level 56
  (807, 80700, 468, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Zeraora - Discharge - Level 64
  (807, 80700, 435, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Zeraora - Wild Charge - Level 72
  (807, 80700, 528, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Zeraora - Agility - Level 80
  (807, 80700, 97, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Zeraora - Plasma Fists - Level 88
  (807, 80700, 721, 18, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Zeraora - Close Combat - Level 96
  (807, 80700, 370, 18, NULL, 1, 96, NULL, NULL, NULL, 18),
  -- Zeraora - Mega Punch - TM00
  (807, 80700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Zeraora - Mega Kick - TM01
  (807, 80700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Zeraora - Pay Day - TM02
  (807, 80700, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 21),
  -- Zeraora - Fire Punch - TM03
  (807, 80700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Zeraora - Thunder Punch - TM05
  (807, 80700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Zeraora - Hyper Beam - TM08
  (807, 80700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Zeraora - Giga Impact - TM09
  (807, 80700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Zeraora - Thunder Wave - TM14
  (807, 80700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 26),
  -- Zeraora - Rest - TM21
  (807, 80700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Zeraora - Snore - TM24
  (807, 80700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Zeraora - Protect - TM25
  (807, 80700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Zeraora - Scary Face - TM26
  (807, 80700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Zeraora - Facade - TM39
  (807, 80700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Zeraora - Swift - TM40
  (807, 80700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Zeraora - Helping Hand - TM41
  (807, 80700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Zeraora - Revenge - TM42
  (807, 80700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Zeraora - Brick Break - TM43
  (807, 80700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Zeraora - Bounce - TM52
  (807, 80700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Zeraora - Assurance - TM58
  (807, 80700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Zeraora - Fling - TM59
  (807, 80700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Zeraora - Drain Punch - TM63
  (807, 80700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Zeraora - Low Sweep - TM75
  (807, 80700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Zeraora - Round - TM76
  (807, 80700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Zeraora - Acrobatics - TM78
  (807, 80700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 42),
  -- Zeraora - Volt Switch - TM80
  (807, 80700, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 43),
  -- Zeraora - Electroweb - TM82
  (807, 80700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 44),
  -- Zeraora - Snarl - TM85
  (807, 80700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 45),
  -- Zeraora - Electric Terrain - TM90
  (807, 80700, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 46),
  -- Zeraora - False Swipe - TM94
  (807, 80700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 47),
  -- Zeraora - Brutal Swing - TM97
  (807, 80700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 48),
  -- Zeraora - Low Kick - TR07
  (807, 80700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Zeraora - Thunderbolt - TR08
  (807, 80700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 50),
  -- Zeraora - Thunder - TR09
  (807, 80700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 51),
  -- Zeraora - Agility - TR12
  (807, 80700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 52),
  -- Zeraora - Substitute - TR20
  (807, 80700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Zeraora - Reversal - TR21
  (807, 80700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 54),
  -- Zeraora - Outrage - TR24
  (807, 80700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 55),
  -- Zeraora - Endure - TR26
  (807, 80700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Zeraora - Sleep Talk - TR27
  (807, 80700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Zeraora - Iron Tail - TR31
  (807, 80700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Zeraora - Taunt - TR37
  (807, 80700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Zeraora - Superpower - TR39
  (807, 80700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 60),
  -- Zeraora - Blaze Kick - TR41
  (807, 80700, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 61),
  -- Zeraora - Bulk Up - TR48
  (807, 80700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 62),
  -- Zeraora - Calm Mind - TR49
  (807, 80700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 63),
  -- Zeraora - Close Combat - TR53
  (807, 80700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 64),
  -- Zeraora - Aura Sphere - TR56
  (807, 80700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 65),
  -- Zeraora - Focus Blast - TR64
  (807, 80700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Zeraora - Grass Knot - TR77
  (807, 80700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Zeraora - Electro Ball - TR80
  (807, 80700, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 68),
  -- Zeraora - Work Up - TR85
  (807, 80700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 69),
  -- Zeraora - Wild Charge - TR86
  (807, 80700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 70),
  -- Zeraora - Play Rough - TR90
  (807, 80700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 71),
  -- Zeraora - Throat Chop - TR95
  (807, 80700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72);

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
  -- Steenee - Synthesis - Egg
  (762, 76200, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Steenee - Endeavor - Egg
  (762, 76200, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Steenee - Acupressure - Egg
  (762, 76200, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tsareena - Synthesis - Egg
  (763, 76300, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tsareena - Endeavor - Egg
  (763, 76300, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tsareena - Acupressure - Egg
  (763, 76300, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Golisopod - Harden - Egg
  (768, 76800, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Golisopod - Rollout - Egg
  (768, 76800, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Golisopod - Metal Claw - Egg
  (768, 76800, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Golisopod - Aqua Jet - Egg
  (768, 76800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Golisopod - Wide Guard - Egg
  (768, 76800, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Palossand - Curse - Egg
  (770, 77000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Palossand - Destiny Bond - Egg
  (770, 77000, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Palossand - Ancient Power - Egg
  (770, 77000, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Palossand - Stockpile - Egg
  (770, 77000, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Palossand - Spit Up - Egg
  (770, 77000, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Palossand - Swallow - Egg
  (770, 77000, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hakamo-o - Counter - Egg
  (783, 78300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hakamo-o - Dragon Breath - Egg
  (783, 78300, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hakamo-o - Focus Punch - Egg
  (783, 78300, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kommo-o - Counter - Egg
  (784, 78400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Kommo-o - Dragon Breath - Egg
  (784, 78400, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Kommo-o - Focus Punch - Egg
  (784, 78400, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 83);
