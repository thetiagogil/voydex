-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Sun / Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon learnsets for default forms, species 761-802.
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
  (761, 76100, 150, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bounsweet - Play Nice - Level 5
  (761, 76100, 589, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bounsweet - Rapid Spin - Level 9
  (761, 76100, 229, 15, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bounsweet - Razor Leaf - Level 13
  (761, 76100, 75, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bounsweet - Sweet Scent - Level 17
  (761, 76100, 230, 15, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bounsweet - Magical Leaf - Level 21
  (761, 76100, 345, 15, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bounsweet - Teeter Dance - Level 25
  (761, 76100, 298, 15, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bounsweet - Flail - Level 29
  (761, 76100, 175, 15, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Bounsweet - Aromatic Mist - Level 33
  (761, 76100, 597, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Bounsweet - Toxic - TM06
  (761, 76100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 10),
  -- Bounsweet - Hidden Power - TM10
  (761, 76100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 11),
  -- Bounsweet - Sunny Day - TM11
  (761, 76100, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 12),
  -- Bounsweet - Light Screen - TM16
  (761, 76100, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 13),
  -- Bounsweet - Protect - TM17
  (761, 76100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 14),
  -- Bounsweet - Safeguard - TM20
  (761, 76100, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 15),
  -- Bounsweet - Frustration - TM21
  (761, 76100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 16),
  -- Bounsweet - Solar Beam - TM22
  (761, 76100, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 17),
  -- Bounsweet - Return - TM27
  (761, 76100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 18),
  -- Bounsweet - Double Team - TM32
  (761, 76100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 19),
  -- Bounsweet - Reflect - TM33
  (761, 76100, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 20),
  -- Bounsweet - Facade - TM42
  (761, 76100, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 21),
  -- Bounsweet - Rest - TM44
  (761, 76100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 22),
  -- Bounsweet - Attract - TM45
  (761, 76100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 23),
  -- Bounsweet - Round - TM48
  (761, 76100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 24),
  -- Bounsweet - Energy Ball - TM53
  (761, 76100, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 25),
  -- Bounsweet - Grass Knot - TM86
  (761, 76100, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 26),
  -- Bounsweet - Swagger - TM87
  (761, 76100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 27),
  -- Bounsweet - Sleep Talk - TM88
  (761, 76100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 28),
  -- Bounsweet - Substitute - TM90
  (761, 76100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 29),
  -- Bounsweet - Nature Power - TM96
  (761, 76100, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 30),
  -- Bounsweet - Dazzling Gleam - TM99
  (761, 76100, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 31),
  -- Bounsweet - Confide - TM100
  (761, 76100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 32),
  -- Bounsweet - Charm - Egg
  (761, 76100, 204, 15, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Bounsweet - Synthesis - Egg
  (761, 76100, 235, 15, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bounsweet - Grass Whistle - Egg
  (761, 76100, 320, 15, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bounsweet - Feint - Egg
  (761, 76100, 364, 15, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bounsweet - Acupressure - Egg
  (761, 76100, 367, 15, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bounsweet - Play Rough - Egg
  (761, 76100, 583, 15, NULL, 5, NULL, NULL, NULL, NULL, 38),

  -- Steenee - Double Slap - Level 1
  (762, 76200, 3, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steenee - Razor Leaf - Level 1
  (762, 76200, 75, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steenee - Splash - Level 1
  (762, 76200, 150, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steenee - Rapid Spin - Level 1
  (762, 76200, 229, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steenee - Play Nice - Level 1
  (762, 76200, 589, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steenee - Play Nice - Level 5
  (762, 76200, 589, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Steenee - Rapid Spin - Level 9
  (762, 76200, 229, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Steenee - Razor Leaf - Level 13
  (762, 76200, 75, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Steenee - Sweet Scent - Level 17
  (762, 76200, 230, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Steenee - Magical Leaf - Level 21
  (762, 76200, 345, 15, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Steenee - Teeter Dance - Level 25
  (762, 76200, 298, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Steenee - Stomp - Level 29
  (762, 76200, 23, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Steenee - Aromatic Mist - Level 33
  (762, 76200, 597, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Steenee - Captivate - Level 37
  (762, 76200, 445, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Steenee - Aromatherapy - Level 41
  (762, 76200, 312, 15, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Steenee - Leaf Storm - Level 45
  (762, 76200, 437, 15, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Steenee - Toxic - TM06
  (762, 76200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Steenee - Hidden Power - TM10
  (762, 76200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Steenee - Sunny Day - TM11
  (762, 76200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Steenee - Light Screen - TM16
  (762, 76200, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Steenee - Protect - TM17
  (762, 76200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Steenee - Safeguard - TM20
  (762, 76200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 22),
  -- Steenee - Frustration - TM21
  (762, 76200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Steenee - Solar Beam - TM22
  (762, 76200, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 24),
  -- Steenee - Return - TM27
  (762, 76200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Steenee - Double Team - TM32
  (762, 76200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 26),
  -- Steenee - Reflect - TM33
  (762, 76200, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 27),
  -- Steenee - Facade - TM42
  (762, 76200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 28),
  -- Steenee - Rest - TM44
  (762, 76200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Steenee - Attract - TM45
  (762, 76200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 30),
  -- Steenee - Low Sweep - TM47
  (762, 76200, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 31),
  -- Steenee - Round - TM48
  (762, 76200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Steenee - Energy Ball - TM53
  (762, 76200, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 33),
  -- Steenee - Fling - TM56
  (762, 76200, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 34),
  -- Steenee - Payback - TM66
  (762, 76200, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 35),
  -- Steenee - Grass Knot - TM86
  (762, 76200, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 36),
  -- Steenee - Swagger - TM87
  (762, 76200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 37),
  -- Steenee - Sleep Talk - TM88
  (762, 76200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 38),
  -- Steenee - Substitute - TM90
  (762, 76200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 39),
  -- Steenee - Nature Power - TM96
  (762, 76200, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 40),
  -- Steenee - Dazzling Gleam - TM99
  (762, 76200, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 41),
  -- Steenee - Confide - TM100
  (762, 76200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 42),
  -- Steenee - Double Slap - Evolution
  (762, 76200, 3, 15, NULL, 7, NULL, NULL, NULL, NULL, 43),

  -- Tsareena - Double Slap - Level 1
  (763, 76300, 3, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tsareena - Razor Leaf - Level 1
  (763, 76300, 75, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tsareena - Splash - Level 1
  (763, 76300, 150, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tsareena - Swagger - Level 1
  (763, 76300, 207, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tsareena - Rapid Spin - Level 1
  (763, 76300, 229, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tsareena - Trop Kick - Level 1
  (763, 76300, 688, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tsareena - Swagger - Level 5
  (763, 76300, 207, 15, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Tsareena - Rapid Spin - Level 9
  (763, 76300, 229, 15, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Tsareena - Razor Leaf - Level 13
  (763, 76300, 75, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Tsareena - Sweet Scent - Level 17
  (763, 76300, 230, 15, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Tsareena - Magical Leaf - Level 21
  (763, 76300, 345, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Tsareena - Teeter Dance - Level 25
  (763, 76300, 298, 15, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Tsareena - Stomp - Level 29
  (763, 76300, 23, 15, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Tsareena - Aromatic Mist - Level 33
  (763, 76300, 597, 15, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Tsareena - Captivate - Level 37
  (763, 76300, 445, 15, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Tsareena - Aromatherapy - Level 41
  (763, 76300, 312, 15, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Tsareena - Leaf Storm - Level 45
  (763, 76300, 437, 15, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Tsareena - High Jump Kick - Level 49
  (763, 76300, 136, 15, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Tsareena - Toxic - TM06
  (763, 76300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Tsareena - Hidden Power - TM10
  (763, 76300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Tsareena - Sunny Day - TM11
  (763, 76300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Tsareena - Light Screen - TM16
  (763, 76300, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 22),
  -- Tsareena - Protect - TM17
  (763, 76300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Tsareena - Safeguard - TM20
  (763, 76300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Tsareena - Frustration - TM21
  (763, 76300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Tsareena - Solar Beam - TM22
  (763, 76300, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 26),
  -- Tsareena - Return - TM27
  (763, 76300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 27),
  -- Tsareena - Double Team - TM32
  (763, 76300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Tsareena - Reflect - TM33
  (763, 76300, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Tsareena - Facade - TM42
  (763, 76300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 30),
  -- Tsareena - Rest - TM44
  (763, 76300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 31),
  -- Tsareena - Attract - TM45
  (763, 76300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 32),
  -- Tsareena - Low Sweep - TM47
  (763, 76300, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 33),
  -- Tsareena - Round - TM48
  (763, 76300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 34),
  -- Tsareena - Energy Ball - TM53
  (763, 76300, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 35),
  -- Tsareena - Fling - TM56
  (763, 76300, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 36),
  -- Tsareena - Acrobatics - TM62
  (763, 76300, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 37),
  -- Tsareena - Payback - TM66
  (763, 76300, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 38),
  -- Tsareena - Giga Impact - TM68
  (763, 76300, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 39),
  -- Tsareena - Grass Knot - TM86
  (763, 76300, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 40),
  -- Tsareena - Swagger - TM87
  (763, 76300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 41),
  -- Tsareena - Sleep Talk - TM88
  (763, 76300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 42),
  -- Tsareena - U-turn - TM89
  (763, 76300, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 43),
  -- Tsareena - Substitute - TM90
  (763, 76300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 44),
  -- Tsareena - Nature Power - TM96
  (763, 76300, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 45),
  -- Tsareena - Dazzling Gleam - TM99
  (763, 76300, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 46),
  -- Tsareena - Confide - TM100
  (763, 76300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),
  -- Tsareena - Trop Kick - Evolution
  (763, 76300, 688, 15, NULL, 7, NULL, NULL, NULL, NULL, 48),

  -- Comfey - Vine Whip - Level 1
  (764, 76400, 22, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Comfey - Helping Hand - Level 1
  (764, 76400, 270, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Comfey - Flower Shield - Level 1
  (764, 76400, 579, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Comfey - Leech Seed - Level 4
  (764, 76400, 73, 15, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Comfey - Draining Kiss - Level 7
  (764, 76400, 577, 15, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Comfey - Magical Leaf - Level 10
  (764, 76400, 345, 15, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Comfey - Growth - Level 13
  (764, 76400, 74, 15, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Comfey - Wrap - Level 16
  (764, 76400, 35, 15, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Comfey - Sweet Kiss - Level 19
  (764, 76400, 186, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Comfey - Natural Gift - Level 22
  (764, 76400, 363, 15, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Comfey - Petal Blizzard - Level 25
  (764, 76400, 572, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Comfey - Synthesis - Level 28
  (764, 76400, 235, 15, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Comfey - Sweet Scent - Level 31
  (764, 76400, 230, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Comfey - Grass Knot - Level 34
  (764, 76400, 447, 15, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Comfey - Floral Healing - Level 37
  (764, 76400, 666, 15, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Comfey - Petal Dance - Level 40
  (764, 76400, 80, 15, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Comfey - Aromatherapy - Level 43
  (764, 76400, 312, 15, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Comfey - Grassy Terrain - Level 46
  (764, 76400, 580, 15, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Comfey - Play Rough - Level 49
  (764, 76400, 583, 15, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Comfey - Calm Mind - TM04
  (764, 76400, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Comfey - Toxic - TM06
  (764, 76400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Comfey - Hidden Power - TM10
  (764, 76400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Comfey - Sunny Day - TM11
  (764, 76400, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Comfey - Taunt - TM12
  (764, 76400, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Comfey - Hyper Beam - TM15
  (764, 76400, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Comfey - Light Screen - TM16
  (764, 76400, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Comfey - Protect - TM17
  (764, 76400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Comfey - Safeguard - TM20
  (764, 76400, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Comfey - Frustration - TM21
  (764, 76400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Comfey - Solar Beam - TM22
  (764, 76400, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Comfey - Return - TM27
  (764, 76400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Comfey - Double Team - TM32
  (764, 76400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Comfey - Facade - TM42
  (764, 76400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Comfey - Rest - TM44
  (764, 76400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Comfey - Attract - TM45
  (764, 76400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 35),
  -- Comfey - Thief - TM46
  (764, 76400, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 36),
  -- Comfey - Round - TM48
  (764, 76400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Comfey - Echoed Voice - TM49
  (764, 76400, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 38),
  -- Comfey - Energy Ball - TM53
  (764, 76400, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 39),
  -- Comfey - Fling - TM56
  (764, 76400, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 40),
  -- Comfey - Acrobatics - TM62
  (764, 76400, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 41),
  -- Comfey - Psych Up - TM77
  (764, 76400, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 42),
  -- Comfey - Grass Knot - TM86
  (764, 76400, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 43),
  -- Comfey - Swagger - TM87
  (764, 76400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Comfey - Sleep Talk - TM88
  (764, 76400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Comfey - U-turn - TM89
  (764, 76400, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 46),
  -- Comfey - Substitute - TM90
  (764, 76400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Comfey - Trick Room - TM92
  (764, 76400, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 48),
  -- Comfey - Nature Power - TM96
  (764, 76400, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Comfey - Dazzling Gleam - TM99
  (764, 76400, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 50),
  -- Comfey - Confide - TM100
  (764, 76400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),
  -- Comfey - Amnesia - Egg
  (764, 76400, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Comfey - Endure - Egg
  (764, 76400, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Comfey - Lucky Chant - Egg
  (764, 76400, 381, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Comfey - After You - Egg
  (764, 76400, 495, 15, NULL, 5, NULL, NULL, NULL, NULL, 55),

  -- Oranguru - Confusion - Level 1
  (765, 76500, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oranguru - After You - Level 4
  (765, 76500, 495, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oranguru - Taunt - Level 8
  (765, 76500, 269, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Oranguru - Quash - Level 11
  (765, 76500, 511, 15, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Oranguru - Stored Power - Level 15
  (765, 76500, 500, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Oranguru - Psych Up - Level 18
  (765, 76500, 244, 15, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Oranguru - Feint Attack - Level 22
  (765, 76500, 185, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Oranguru - Nasty Plot - Level 25
  (765, 76500, 417, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Oranguru - Zen Headbutt - Level 29
  (765, 76500, 428, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Oranguru - Instruct - Level 32
  (765, 76500, 689, 15, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Oranguru - Foul Play - Level 36
  (765, 76500, 492, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Oranguru - Calm Mind - Level 39
  (765, 76500, 347, 15, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Oranguru - Psychic - Level 43
  (765, 76500, 94, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Oranguru - Future Sight - Level 46
  (765, 76500, 248, 15, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Oranguru - Trick Room - Level 50
  (765, 76500, 433, 15, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Oranguru - Work Up - TM01
  (765, 76500, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Oranguru - Psyshock - TM03
  (765, 76500, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 17),
  -- Oranguru - Calm Mind - TM04
  (765, 76500, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Oranguru - Toxic - TM06
  (765, 76500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Oranguru - Hidden Power - TM10
  (765, 76500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Oranguru - Sunny Day - TM11
  (765, 76500, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Oranguru - Taunt - TM12
  (765, 76500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Oranguru - Light Screen - TM16
  (765, 76500, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 23),
  -- Oranguru - Protect - TM17
  (765, 76500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Oranguru - Rain Dance - TM18
  (765, 76500, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 25),
  -- Oranguru - Safeguard - TM20
  (765, 76500, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 26),
  -- Oranguru - Frustration - TM21
  (765, 76500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Oranguru - Thunderbolt - TM24
  (765, 76500, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 28),
  -- Oranguru - Thunder - TM25
  (765, 76500, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 29),
  -- Oranguru - Earthquake - TM26
  (765, 76500, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 30),
  -- Oranguru - Return - TM27
  (765, 76500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Oranguru - Psychic - TM29
  (765, 76500, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 32),
  -- Oranguru - Shadow Ball - TM30
  (765, 76500, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 33),
  -- Oranguru - Brick Break - TM31
  (765, 76500, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 34),
  -- Oranguru - Double Team - TM32
  (765, 76500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Oranguru - Reflect - TM33
  (765, 76500, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 36),
  -- Oranguru - Facade - TM42
  (765, 76500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 37),
  -- Oranguru - Rest - TM44
  (765, 76500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 38),
  -- Oranguru - Round - TM48
  (765, 76500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Oranguru - Focus Blast - TM52
  (765, 76500, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 40),
  -- Oranguru - Energy Ball - TM53
  (765, 76500, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 41),
  -- Oranguru - Fling - TM56
  (765, 76500, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 42),
  -- Oranguru - Charge Beam - TM57
  (765, 76500, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 43),
  -- Oranguru - Brutal Swing - TM59
  (765, 76500, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 44),
  -- Oranguru - Quash - TM60
  (765, 76500, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 45),
  -- Oranguru - Embargo - TM63
  (765, 76500, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 46),
  -- Oranguru - Payback - TM66
  (765, 76500, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 47),
  -- Oranguru - Giga Impact - TM68
  (765, 76500, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 48),
  -- Oranguru - Psych Up - TM77
  (765, 76500, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 49),
  -- Oranguru - Bulldoze - TM78
  (765, 76500, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 50),
  -- Oranguru - Rock Slide - TM80
  (765, 76500, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 51),
  -- Oranguru - Dream Eater - TM85
  (765, 76500, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 52),
  -- Oranguru - Swagger - TM87
  (765, 76500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Oranguru - Sleep Talk - TM88
  (765, 76500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Oranguru - Substitute - TM90
  (765, 76500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 55),
  -- Oranguru - Trick Room - TM92
  (765, 76500, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 56),
  -- Oranguru - Nature Power - TM96
  (765, 76500, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 57),
  -- Oranguru - Confide - TM100
  (765, 76500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 58),
  -- Oranguru - Extrasensory - Egg
  (765, 76500, 326, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Oranguru - Wonder Room - Egg
  (765, 76500, 472, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Oranguru - Psychic Terrain - Egg
  (765, 76500, 678, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),

  -- Passimian - Tackle - Level 1
  (766, 76600, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Passimian - Leer - Level 4
  (766, 76600, 43, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Passimian - Rock Smash - Level 8
  (766, 76600, 249, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Passimian - Focus Energy - Level 11
  (766, 76600, 116, 15, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Passimian - Beat Up - Level 15
  (766, 76600, 251, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Passimian - Scary Face - Level 18
  (766, 76600, 184, 15, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Passimian - Take Down - Level 22
  (766, 76600, 36, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Passimian - Bestow - Level 25
  (766, 76600, 516, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Passimian - Thrash - Level 29
  (766, 76600, 37, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Passimian - Bulk Up - Level 32
  (766, 76600, 339, 15, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Passimian - Double-Edge - Level 36
  (766, 76600, 38, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Passimian - Fling - Level 39
  (766, 76600, 374, 15, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Passimian - Close Combat - Level 43
  (766, 76600, 370, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Passimian - Reversal - Level 46
  (766, 76600, 179, 15, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Passimian - Giga Impact - Level 50
  (766, 76600, 416, 15, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Passimian - Work Up - TM01
  (766, 76600, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Passimian - Toxic - TM06
  (766, 76600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Passimian - Bulk Up - TM08
  (766, 76600, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 18),
  -- Passimian - Hidden Power - TM10
  (766, 76600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 19),
  -- Passimian - Sunny Day - TM11
  (766, 76600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 20),
  -- Passimian - Taunt - TM12
  (766, 76600, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Passimian - Hyper Beam - TM15
  (766, 76600, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Passimian - Protect - TM17
  (766, 76600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Passimian - Rain Dance - TM18
  (766, 76600, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 24),
  -- Passimian - Frustration - TM21
  (766, 76600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Passimian - Smack Down - TM23
  (766, 76600, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 26),
  -- Passimian - Earthquake - TM26
  (766, 76600, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Passimian - Return - TM27
  (766, 76600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Passimian - Shadow Ball - TM30
  (766, 76600, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 29),
  -- Passimian - Brick Break - TM31
  (766, 76600, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 30),
  -- Passimian - Double Team - TM32
  (766, 76600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Passimian - Rock Tomb - TM39
  (766, 76600, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 32),
  -- Passimian - Aerial Ace - TM40
  (766, 76600, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 33),
  -- Passimian - Facade - TM42
  (766, 76600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Passimian - Rest - TM44
  (766, 76600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Passimian - Attract - TM45
  (766, 76600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Passimian - Thief - TM46
  (766, 76600, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Passimian - Low Sweep - TM47
  (766, 76600, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 38),
  -- Passimian - Round - TM48
  (766, 76600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Passimian - Focus Blast - TM52
  (766, 76600, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 40),
  -- Passimian - Energy Ball - TM53
  (766, 76600, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 41),
  -- Passimian - Fling - TM56
  (766, 76600, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 42),
  -- Passimian - Brutal Swing - TM59
  (766, 76600, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 43),
  -- Passimian - Acrobatics - TM62
  (766, 76600, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 44),
  -- Passimian - Payback - TM66
  (766, 76600, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 45),
  -- Passimian - Giga Impact - TM68
  (766, 76600, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Passimian - Gyro Ball - TM74
  (766, 76600, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 47),
  -- Passimian - Bulldoze - TM78
  (766, 76600, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 48),
  -- Passimian - Rock Slide - TM80
  (766, 76600, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 49),
  -- Passimian - Grass Knot - TM86
  (766, 76600, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 50),
  -- Passimian - Swagger - TM87
  (766, 76600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 51),
  -- Passimian - Sleep Talk - TM88
  (766, 76600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 52),
  -- Passimian - U-turn - TM89
  (766, 76600, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 53),
  -- Passimian - Substitute - TM90
  (766, 76600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 54),
  -- Passimian - Confide - TM100
  (766, 76600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 55),
  -- Passimian - Seismic Toss - Egg
  (766, 76600, 69, 15, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Passimian - Quick Attack - Egg
  (766, 76600, 98, 15, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Passimian - Vital Throw - Egg
  (766, 76600, 233, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Passimian - Feint - Egg
  (766, 76600, 364, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Passimian - Iron Head - Egg
  (766, 76600, 442, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Passimian - Quick Guard - Egg
  (766, 76600, 501, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),

  -- Wimpod - Sand Attack - Level 1
  (767, 76700, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wimpod - Struggle Bug - Level 1
  (767, 76700, 522, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wimpod - Toxic - TM06
  (767, 76700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 3),
  -- Wimpod - Hail - TM07
  (767, 76700, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 4),
  -- Wimpod - Hidden Power - TM10
  (767, 76700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 5),
  -- Wimpod - Taunt - TM12
  (767, 76700, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 6),
  -- Wimpod - Protect - TM17
  (767, 76700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 7),
  -- Wimpod - Rain Dance - TM18
  (767, 76700, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 8),
  -- Wimpod - Frustration - TM21
  (767, 76700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 9),
  -- Wimpod - Return - TM27
  (767, 76700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 10),
  -- Wimpod - Leech Life - TM28
  (767, 76700, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 11),
  -- Wimpod - Double Team - TM32
  (767, 76700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 12),
  -- Wimpod - Facade - TM42
  (767, 76700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 13),
  -- Wimpod - Rest - TM44
  (767, 76700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 14),
  -- Wimpod - Attract - TM45
  (767, 76700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 15),
  -- Wimpod - Round - TM48
  (767, 76700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 16),
  -- Wimpod - Scald - TM55
  (767, 76700, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 17),
  -- Wimpod - Swagger - TM87
  (767, 76700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 18),
  -- Wimpod - Sleep Talk - TM88
  (767, 76700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 19),
  -- Wimpod - Substitute - TM90
  (767, 76700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 20),
  -- Wimpod - Surf - TM94
  (767, 76700, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 21),
  -- Wimpod - Waterfall - TM98
  (767, 76700, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 22),
  -- Wimpod - Confide - TM100
  (767, 76700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 23),
  -- Wimpod - Harden - Egg
  (767, 76700, 106, 15, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Wimpod - Spikes - Egg
  (767, 76700, 191, 15, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Wimpod - Metal Claw - Egg
  (767, 76700, 232, 15, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Wimpod - Aqua Jet - Egg
  (767, 76700, 453, 15, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Wimpod - Wide Guard - Egg
  (767, 76700, 469, 15, NULL, 5, NULL, NULL, NULL, NULL, 28),

  -- Golisopod - Sand Attack - Level 1
  (768, 76800, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golisopod - Fury Cutter - Level 1
  (768, 76800, 210, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golisopod - Rock Smash - Level 1
  (768, 76800, 249, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golisopod - Struggle Bug - Level 1
  (768, 76800, 522, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golisopod - First Impression - Level 1
  (768, 76800, 660, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golisopod - Fury Cutter - Level 4
  (768, 76800, 210, 15, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golisopod - Rock Smash - Level 7
  (768, 76800, 249, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Golisopod - Bug Bite - Level 10
  (768, 76800, 450, 15, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Golisopod - Spite - Level 13
  (768, 76800, 180, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Golisopod - Swords Dance - Level 16
  (768, 76800, 14, 15, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Golisopod - Slash - Level 21
  (768, 76800, 163, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Golisopod - Razor Shell - Level 26
  (768, 76800, 534, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Golisopod - Sucker Punch - Level 31
  (768, 76800, 389, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Golisopod - Iron Defense - Level 36
  (768, 76800, 334, 15, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golisopod - Pin Missile - Level 41
  (768, 76800, 42, 15, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Golisopod - Liquidation - Level 48
  (768, 76800, 710, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Golisopod - Toxic - TM06
  (768, 76800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Golisopod - Hail - TM07
  (768, 76800, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 18),
  -- Golisopod - Bulk Up - TM08
  (768, 76800, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 19),
  -- Golisopod - Venoshock - TM09
  (768, 76800, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 20),
  -- Golisopod - Hidden Power - TM10
  (768, 76800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Golisopod - Taunt - TM12
  (768, 76800, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Golisopod - Ice Beam - TM13
  (768, 76800, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Golisopod - Blizzard - TM14
  (768, 76800, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Golisopod - Protect - TM17
  (768, 76800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Golisopod - Rain Dance - TM18
  (768, 76800, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Golisopod - Frustration - TM21
  (768, 76800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Golisopod - Return - TM27
  (768, 76800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Golisopod - Leech Life - TM28
  (768, 76800, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 29),
  -- Golisopod - Brick Break - TM31
  (768, 76800, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 30),
  -- Golisopod - Double Team - TM32
  (768, 76800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Golisopod - Sludge Wave - TM34
  (768, 76800, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 32),
  -- Golisopod - Sludge Bomb - TM36
  (768, 76800, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 33),
  -- Golisopod - Rock Tomb - TM39
  (768, 76800, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 34),
  -- Golisopod - Aerial Ace - TM40
  (768, 76800, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 35),
  -- Golisopod - Facade - TM42
  (768, 76800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Golisopod - Rest - TM44
  (768, 76800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Golisopod - Attract - TM45
  (768, 76800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 38),
  -- Golisopod - Round - TM48
  (768, 76800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Golisopod - Focus Blast - TM52
  (768, 76800, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 40),
  -- Golisopod - False Swipe - TM54
  (768, 76800, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 41),
  -- Golisopod - Scald - TM55
  (768, 76800, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 42),
  -- Golisopod - Fling - TM56
  (768, 76800, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 43),
  -- Golisopod - Shadow Claw - TM65
  (768, 76800, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Golisopod - Payback - TM66
  (768, 76800, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 45),
  -- Golisopod - Giga Impact - TM68
  (768, 76800, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Golisopod - Swords Dance - TM75
  (768, 76800, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 47),
  -- Golisopod - Psych Up - TM77
  (768, 76800, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 48),
  -- Golisopod - Frost Breath - TM79
  (768, 76800, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 49),
  -- Golisopod - Rock Slide - TM80
  (768, 76800, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 50),
  -- Golisopod - X-Scissor - TM81
  (768, 76800, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 51),
  -- Golisopod - Poison Jab - TM84
  (768, 76800, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 52),
  -- Golisopod - Swagger - TM87
  (768, 76800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Golisopod - Sleep Talk - TM88
  (768, 76800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Golisopod - Substitute - TM90
  (768, 76800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 55),
  -- Golisopod - Surf - TM94
  (768, 76800, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 56),
  -- Golisopod - Snarl - TM95
  (768, 76800, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 57),
  -- Golisopod - Dark Pulse - TM97
  (768, 76800, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 58),
  -- Golisopod - Waterfall - TM98
  (768, 76800, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 59),
  -- Golisopod - Confide - TM100
  (768, 76800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),
  -- Golisopod - First Impression - Evolution
  (768, 76800, 660, 15, NULL, 7, NULL, NULL, NULL, NULL, 61),

  -- Sandygast - Absorb - Level 1
  (769, 76900, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandygast - Harden - Level 1
  (769, 76900, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandygast - Astonish - Level 5
  (769, 76900, 310, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sandygast - Sand Attack - Level 9
  (769, 76900, 28, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sandygast - Sand Tomb - Level 14
  (769, 76900, 328, 15, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Sandygast - Mega Drain - Level 18
  (769, 76900, 72, 15, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Sandygast - Bulldoze - Level 23
  (769, 76900, 523, 15, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Sandygast - Hypnosis - Level 27
  (769, 76900, 95, 15, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Sandygast - Iron Defense - Level 32
  (769, 76900, 334, 15, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Sandygast - Giga Drain - Level 36
  (769, 76900, 202, 15, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Sandygast - Shadow Ball - Level 41
  (769, 76900, 247, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Sandygast - Earth Power - Level 45
  (769, 76900, 414, 15, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Sandygast - Shore Up - Level 50
  (769, 76900, 659, 15, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Sandygast - Sandstorm - Level 54
  (769, 76900, 201, 15, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Sandygast - Toxic - TM06
  (769, 76900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 15),
  -- Sandygast - Hidden Power - TM10
  (769, 76900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 16),
  -- Sandygast - Protect - TM17
  (769, 76900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 17),
  -- Sandygast - Frustration - TM21
  (769, 76900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 18),
  -- Sandygast - Earthquake - TM26
  (769, 76900, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 19),
  -- Sandygast - Return - TM27
  (769, 76900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 20),
  -- Sandygast - Psychic - TM29
  (769, 76900, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 21),
  -- Sandygast - Shadow Ball - TM30
  (769, 76900, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 22),
  -- Sandygast - Double Team - TM32
  (769, 76900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 23),
  -- Sandygast - Sandstorm - TM37
  (769, 76900, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 24),
  -- Sandygast - Rock Tomb - TM39
  (769, 76900, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 25),
  -- Sandygast - Facade - TM42
  (769, 76900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 26),
  -- Sandygast - Rest - TM44
  (769, 76900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Sandygast - Attract - TM45
  (769, 76900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Sandygast - Round - TM48
  (769, 76900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 29),
  -- Sandygast - Energy Ball - TM53
  (769, 76900, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 30),
  -- Sandygast - Rock Polish - TM69
  (769, 76900, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 31),
  -- Sandygast - Stone Edge - TM71
  (769, 76900, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 32),
  -- Sandygast - Bulldoze - TM78
  (769, 76900, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 33),
  -- Sandygast - Rock Slide - TM80
  (769, 76900, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 34),
  -- Sandygast - Infestation - TM83
  (769, 76900, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 35),
  -- Sandygast - Swagger - TM87
  (769, 76900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 36),
  -- Sandygast - Sleep Talk - TM88
  (769, 76900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 37),
  -- Sandygast - Substitute - TM90
  (769, 76900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 38),
  -- Sandygast - Confide - TM100
  (769, 76900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),
  -- Sandygast - Amnesia - Egg
  (769, 76900, 133, 15, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sandygast - Curse - Egg
  (769, 76900, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sandygast - Destiny Bond - Egg
  (769, 76900, 194, 15, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sandygast - Ancient Power - Egg
  (769, 76900, 246, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sandygast - Stockpile - Egg
  (769, 76900, 254, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sandygast - Spit Up - Egg
  (769, 76900, 255, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sandygast - Swallow - Egg
  (769, 76900, 256, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),

  -- Palossand - Sand Attack - Level 1
  (770, 77000, 28, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palossand - Absorb - Level 1
  (770, 77000, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palossand - Harden - Level 1
  (770, 77000, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palossand - Astonish - Level 1
  (770, 77000, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palossand - Astonish - Level 5
  (770, 77000, 310, 15, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Palossand - Sand Attack - Level 9
  (770, 77000, 28, 15, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Palossand - Sand Tomb - Level 14
  (770, 77000, 328, 15, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Palossand - Mega Drain - Level 18
  (770, 77000, 72, 15, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Palossand - Bulldoze - Level 23
  (770, 77000, 523, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Palossand - Hypnosis - Level 27
  (770, 77000, 95, 15, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Palossand - Iron Defense - Level 32
  (770, 77000, 334, 15, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Palossand - Giga Drain - Level 36
  (770, 77000, 202, 15, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Palossand - Shadow Ball - Level 41
  (770, 77000, 247, 15, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Palossand - Earth Power - Level 47
  (770, 77000, 414, 15, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Palossand - Shore Up - Level 54
  (770, 77000, 659, 15, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Palossand - Sandstorm - Level 60
  (770, 77000, 201, 15, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Palossand - Toxic - TM06
  (770, 77000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Palossand - Hidden Power - TM10
  (770, 77000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Palossand - Protect - TM17
  (770, 77000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Palossand - Frustration - TM21
  (770, 77000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Palossand - Earthquake - TM26
  (770, 77000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 21),
  -- Palossand - Return - TM27
  (770, 77000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 22),
  -- Palossand - Psychic - TM29
  (770, 77000, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 23),
  -- Palossand - Shadow Ball - TM30
  (770, 77000, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 24),
  -- Palossand - Double Team - TM32
  (770, 77000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Palossand - Sludge Bomb - TM36
  (770, 77000, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 26),
  -- Palossand - Sandstorm - TM37
  (770, 77000, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 27),
  -- Palossand - Rock Tomb - TM39
  (770, 77000, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 28),
  -- Palossand - Facade - TM42
  (770, 77000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 29),
  -- Palossand - Rest - TM44
  (770, 77000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 30),
  -- Palossand - Attract - TM45
  (770, 77000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 31),
  -- Palossand - Round - TM48
  (770, 77000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 32),
  -- Palossand - Energy Ball - TM53
  (770, 77000, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 33),
  -- Palossand - Fling - TM56
  (770, 77000, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 34),
  -- Palossand - Quash - TM60
  (770, 77000, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 35),
  -- Palossand - Embargo - TM63
  (770, 77000, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 36),
  -- Palossand - Giga Impact - TM68
  (770, 77000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 37),
  -- Palossand - Rock Polish - TM69
  (770, 77000, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 38),
  -- Palossand - Stone Edge - TM71
  (770, 77000, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 39),
  -- Palossand - Bulldoze - TM78
  (770, 77000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 40),
  -- Palossand - Rock Slide - TM80
  (770, 77000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 41),
  -- Palossand - Infestation - TM83
  (770, 77000, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 42),
  -- Palossand - Swagger - TM87
  (770, 77000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Palossand - Sleep Talk - TM88
  (770, 77000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Palossand - Substitute - TM90
  (770, 77000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 45),
  -- Palossand - Confide - TM100
  (770, 77000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 46),

  -- Pyukumuku - Harden - Level 1
  (771, 77100, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pyukumuku - Bide - Level 1
  (771, 77100, 117, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pyukumuku - Baton Pass - Level 1
  (771, 77100, 226, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pyukumuku - Mud Sport - Level 1
  (771, 77100, 300, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pyukumuku - Water Sport - Level 1
  (771, 77100, 346, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pyukumuku - Helping Hand - Level 5
  (771, 77100, 270, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Pyukumuku - Taunt - Level 9
  (771, 77100, 269, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pyukumuku - Safeguard - Level 13
  (771, 77100, 219, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Pyukumuku - Counter - Level 17
  (771, 77100, 68, 15, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Pyukumuku - Purify - Level 21
  (771, 77100, 685, 15, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Pyukumuku - Curse - Level 25
  (771, 77100, 174, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Pyukumuku - Gastro Acid - Level 29
  (771, 77100, 380, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Pyukumuku - Pain Split - Level 33
  (771, 77100, 220, 15, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Pyukumuku - Recover - Level 37
  (771, 77100, 105, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pyukumuku - Soak - Level 41
  (771, 77100, 487, 15, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Pyukumuku - Toxic - Level 45
  (771, 77100, 92, 15, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Pyukumuku - Memento - Level 49
  (771, 77100, 262, 15, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Pyukumuku - Toxic - TM06
  (771, 77100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Pyukumuku - Hail - TM07
  (771, 77100, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 19),
  -- Pyukumuku - Taunt - TM12
  (771, 77100, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 20),
  -- Pyukumuku - Light Screen - TM16
  (771, 77100, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 21),
  -- Pyukumuku - Protect - TM17
  (771, 77100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Pyukumuku - Rain Dance - TM18
  (771, 77100, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 23),
  -- Pyukumuku - Safeguard - TM20
  (771, 77100, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Pyukumuku - Double Team - TM32
  (771, 77100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Pyukumuku - Reflect - TM33
  (771, 77100, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 26),
  -- Pyukumuku - Rest - TM44
  (771, 77100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Pyukumuku - Attract - TM45
  (771, 77100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Pyukumuku - Quash - TM60
  (771, 77100, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 29),
  -- Pyukumuku - Psych Up - TM77
  (771, 77100, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 30),
  -- Pyukumuku - Swagger - TM87
  (771, 77100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 31),
  -- Pyukumuku - Sleep Talk - TM88
  (771, 77100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 32),
  -- Pyukumuku - Substitute - TM90
  (771, 77100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 33),
  -- Pyukumuku - Confide - TM100
  (771, 77100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 34),
  -- Pyukumuku - Spite - Egg
  (771, 77100, 180, 15, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pyukumuku - Endure - Egg
  (771, 77100, 203, 15, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pyukumuku - Tickle - Egg
  (771, 77100, 321, 15, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pyukumuku - Bestow - Egg
  (771, 77100, 516, 15, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pyukumuku - Venom Drench - Egg
  (771, 77100, 599, 15, NULL, 5, NULL, NULL, NULL, NULL, 39),

  -- Type: Null - Tackle - Level 1
  (772, 77200, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Type: Null - Rage - Level 5
  (772, 77200, 99, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Type: Null - Pursuit - Level 10
  (772, 77200, 228, 15, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Type: Null - Imprison - Level 15
  (772, 77200, 286, 15, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Type: Null - Aerial Ace - Level 20
  (772, 77200, 332, 15, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Type: Null - Crush Claw - Level 25
  (772, 77200, 306, 15, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Type: Null - Scary Face - Level 30
  (772, 77200, 184, 15, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Type: Null - X-Scissor - Level 35
  (772, 77200, 404, 15, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Type: Null - Take Down - Level 40
  (772, 77200, 36, 15, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Type: Null - Metal Sound - Level 45
  (772, 77200, 319, 15, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Type: Null - Iron Head - Level 50
  (772, 77200, 442, 15, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Type: Null - Double Hit - Level 55
  (772, 77200, 458, 15, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Type: Null - Air Slash - Level 60
  (772, 77200, 403, 15, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Type: Null - Punishment - Level 65
  (772, 77200, 386, 15, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Type: Null - Razor Wind - Level 70
  (772, 77200, 13, 15, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Type: Null - Tri Attack - Level 75
  (772, 77200, 161, 15, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Type: Null - Double-Edge - Level 80
  (772, 77200, 38, 15, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Type: Null - Heal Block - Level 85
  (772, 77200, 377, 15, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Type: Null - Work Up - TM01
  (772, 77200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 19),
  -- Type: Null - Dragon Claw - TM02
  (772, 77200, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 20),
  -- Type: Null - Roar - TM05
  (772, 77200, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Type: Null - Toxic - TM06
  (772, 77200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Type: Null - Hail - TM07
  (772, 77200, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 23),
  -- Type: Null - Hidden Power - TM10
  (772, 77200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Type: Null - Sunny Day - TM11
  (772, 77200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 25),
  -- Type: Null - Protect - TM17
  (772, 77200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Type: Null - Rain Dance - TM18
  (772, 77200, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 27),
  -- Type: Null - Frustration - TM21
  (772, 77200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Type: Null - Return - TM27
  (772, 77200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Type: Null - Double Team - TM32
  (772, 77200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 30),
  -- Type: Null - Sandstorm - TM37
  (772, 77200, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 31),
  -- Type: Null - Aerial Ace - TM40
  (772, 77200, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 32),
  -- Type: Null - Facade - TM42
  (772, 77200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Type: Null - Flame Charge - TM43
  (772, 77200, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 34),
  -- Type: Null - Rest - TM44
  (772, 77200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Type: Null - Round - TM48
  (772, 77200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Type: Null - Shadow Claw - TM65
  (772, 77200, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 37),
  -- Type: Null - Payback - TM66
  (772, 77200, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 38),
  -- Type: Null - Giga Impact - TM68
  (772, 77200, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 39),
  -- Type: Null - Thunder Wave - TM73
  (772, 77200, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 40),
  -- Type: Null - Swords Dance - TM75
  (772, 77200, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 41),
  -- Type: Null - Rock Slide - TM80
  (772, 77200, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 42),
  -- Type: Null - X-Scissor - TM81
  (772, 77200, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 43),
  -- Type: Null - Swagger - TM87
  (772, 77200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Type: Null - Sleep Talk - TM88
  (772, 77200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Type: Null - U-turn - TM89
  (772, 77200, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 46),
  -- Type: Null - Substitute - TM90
  (772, 77200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Type: Null - Confide - TM100
  (772, 77200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 48),

  -- Silvally - Tackle - Level 1
  (773, 77300, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silvally - Imprison - Level 1
  (773, 77300, 286, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silvally - Poison Fang - Level 1
  (773, 77300, 305, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Silvally - Heal Block - Level 1
  (773, 77300, 377, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Silvally - Thunder Fang - Level 1
  (773, 77300, 422, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Silvally - Ice Fang - Level 1
  (773, 77300, 423, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Silvally - Fire Fang - Level 1
  (773, 77300, 424, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Silvally - Iron Head - Level 1
  (773, 77300, 442, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Silvally - Multi-Attack - Level 1
  (773, 77300, 718, 15, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Silvally - Rage - Level 5
  (773, 77300, 99, 15, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Silvally - Pursuit - Level 10
  (773, 77300, 228, 15, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Silvally - Bite - Level 15
  (773, 77300, 44, 15, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Silvally - Aerial Ace - Level 20
  (773, 77300, 332, 15, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Silvally - Crush Claw - Level 25
  (773, 77300, 306, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Silvally - Scary Face - Level 30
  (773, 77300, 184, 15, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Silvally - X-Scissor - Level 35
  (773, 77300, 404, 15, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Silvally - Take Down - Level 40
  (773, 77300, 36, 15, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Silvally - Metal Sound - Level 45
  (773, 77300, 319, 15, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Silvally - Crunch - Level 50
  (773, 77300, 242, 15, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Silvally - Double Hit - Level 55
  (773, 77300, 458, 15, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Silvally - Air Slash - Level 60
  (773, 77300, 403, 15, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Silvally - Punishment - Level 65
  (773, 77300, 386, 15, NULL, 1, 65, NULL, NULL, NULL, 22),
  -- Silvally - Razor Wind - Level 70
  (773, 77300, 13, 15, NULL, 1, 70, NULL, NULL, NULL, 23),
  -- Silvally - Tri Attack - Level 75
  (773, 77300, 161, 15, NULL, 1, 75, NULL, NULL, NULL, 24),
  -- Silvally - Double-Edge - Level 80
  (773, 77300, 38, 15, NULL, 1, 80, NULL, NULL, NULL, 25),
  -- Silvally - Parting Shot - Level 85
  (773, 77300, 575, 15, NULL, 1, 85, NULL, NULL, NULL, 26),
  -- Silvally - Work Up - TM01
  (773, 77300, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 27),
  -- Silvally - Dragon Claw - TM02
  (773, 77300, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 28),
  -- Silvally - Roar - TM05
  (773, 77300, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 29),
  -- Silvally - Toxic - TM06
  (773, 77300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 30),
  -- Silvally - Hail - TM07
  (773, 77300, 258, 15, NULL, 2, NULL, NULL, 15002007, NULL, 31),
  -- Silvally - Hidden Power - TM10
  (773, 77300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 32),
  -- Silvally - Sunny Day - TM11
  (773, 77300, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 33),
  -- Silvally - Ice Beam - TM13
  (773, 77300, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 34),
  -- Silvally - Hyper Beam - TM15
  (773, 77300, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 35),
  -- Silvally - Protect - TM17
  (773, 77300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 36),
  -- Silvally - Rain Dance - TM18
  (773, 77300, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 37),
  -- Silvally - Frustration - TM21
  (773, 77300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 38),
  -- Silvally - Thunderbolt - TM24
  (773, 77300, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 39),
  -- Silvally - Return - TM27
  (773, 77300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 40),
  -- Silvally - Shadow Ball - TM30
  (773, 77300, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 41),
  -- Silvally - Double Team - TM32
  (773, 77300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 42),
  -- Silvally - Flamethrower - TM35
  (773, 77300, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 43),
  -- Silvally - Sandstorm - TM37
  (773, 77300, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 44),
  -- Silvally - Aerial Ace - TM40
  (773, 77300, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 45),
  -- Silvally - Facade - TM42
  (773, 77300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 46),
  -- Silvally - Flame Charge - TM43
  (773, 77300, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 47),
  -- Silvally - Rest - TM44
  (773, 77300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 48),
  -- Silvally - Round - TM48
  (773, 77300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 49),
  -- Silvally - Steel Wing - TM51
  (773, 77300, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 50),
  -- Silvally - Explosion - TM64
  (773, 77300, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 51),
  -- Silvally - Shadow Claw - TM65
  (773, 77300, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 52),
  -- Silvally - Payback - TM66
  (773, 77300, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 53),
  -- Silvally - Giga Impact - TM68
  (773, 77300, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 54),
  -- Silvally - Thunder Wave - TM73
  (773, 77300, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 55),
  -- Silvally - Swords Dance - TM75
  (773, 77300, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 56),
  -- Silvally - Rock Slide - TM80
  (773, 77300, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 57),
  -- Silvally - X-Scissor - TM81
  (773, 77300, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 58),
  -- Silvally - Swagger - TM87
  (773, 77300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 59),
  -- Silvally - Sleep Talk - TM88
  (773, 77300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 60),
  -- Silvally - U-turn - TM89
  (773, 77300, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 61),
  -- Silvally - Substitute - TM90
  (773, 77300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 62),
  -- Silvally - Flash Cannon - TM91
  (773, 77300, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 63),
  -- Silvally - Surf - TM94
  (773, 77300, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 64),
  -- Silvally - Snarl - TM95
  (773, 77300, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 65),
  -- Silvally - Confide - TM100
  (773, 77300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 66),
  -- Silvally - Draco Meteor - Tutor
  (773, 77300, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 67),
  -- Silvally - Multi-Attack - Evolution
  (773, 77300, 718, 15, NULL, 7, NULL, NULL, NULL, NULL, 68),

  -- Minior - Tackle - Level 1
  (774, 77400, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minior - Defense Curl - Level 3
  (774, 77400, 111, 15, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minior - Rollout - Level 8
  (774, 77400, 205, 15, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Minior - Confuse Ray - Level 10
  (774, 77400, 109, 15, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Minior - Swift - Level 15
  (774, 77400, 129, 15, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Minior - Ancient Power - Level 17
  (774, 77400, 246, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Minior - Self-Destruct - Level 22
  (774, 77400, 120, 15, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Minior - Stealth Rock - Level 24
  (774, 77400, 446, 15, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minior - Take Down - Level 29
  (774, 77400, 36, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Minior - Autotomize - Level 31
  (774, 77400, 475, 15, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Minior - Cosmic Power - Level 36
  (774, 77400, 322, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Minior - Power Gem - Level 38
  (774, 77400, 408, 15, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Minior - Double-Edge - Level 43
  (774, 77400, 38, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Minior - Shell Smash - Level 45
  (774, 77400, 504, 15, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Minior - Explosion - Level 50
  (774, 77400, 153, 15, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Minior - Calm Mind - TM04
  (774, 77400, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 16),
  -- Minior - Toxic - TM06
  (774, 77400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Minior - Hidden Power - TM10
  (774, 77400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Minior - Hyper Beam - TM15
  (774, 77400, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 19),
  -- Minior - Light Screen - TM16
  (774, 77400, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 20),
  -- Minior - Protect - TM17
  (774, 77400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 21),
  -- Minior - Safeguard - TM20
  (774, 77400, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 22),
  -- Minior - Frustration - TM21
  (774, 77400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 23),
  -- Minior - Solar Beam - TM22
  (774, 77400, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 24),
  -- Minior - Earthquake - TM26
  (774, 77400, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 25),
  -- Minior - Return - TM27
  (774, 77400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Minior - Psychic - TM29
  (774, 77400, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 27),
  -- Minior - Double Team - TM32
  (774, 77400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Minior - Reflect - TM33
  (774, 77400, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Minior - Sandstorm - TM37
  (774, 77400, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 30),
  -- Minior - Rock Tomb - TM39
  (774, 77400, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 31),
  -- Minior - Facade - TM42
  (774, 77400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Minior - Rest - TM44
  (774, 77400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Minior - Attract - TM45
  (774, 77400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Minior - Round - TM48
  (774, 77400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Minior - Charge Beam - TM57
  (774, 77400, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 36),
  -- Minior - Acrobatics - TM62
  (774, 77400, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 37),
  -- Minior - Explosion - TM64
  (774, 77400, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 38),
  -- Minior - Giga Impact - TM68
  (774, 77400, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 39),
  -- Minior - Rock Polish - TM69
  (774, 77400, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 40),
  -- Minior - Stone Edge - TM71
  (774, 77400, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 41),
  -- Minior - Gyro Ball - TM74
  (774, 77400, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 42),
  -- Minior - Psych Up - TM77
  (774, 77400, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 43),
  -- Minior - Bulldoze - TM78
  (774, 77400, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 44),
  -- Minior - Rock Slide - TM80
  (774, 77400, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 45),
  -- Minior - Swagger - TM87
  (774, 77400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 46),
  -- Minior - Sleep Talk - TM88
  (774, 77400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 47),
  -- Minior - U-turn - TM89
  (774, 77400, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 48),
  -- Minior - Substitute - TM90
  (774, 77400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 49),
  -- Minior - Dazzling Gleam - TM99
  (774, 77400, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 50),
  -- Minior - Confide - TM100
  (774, 77400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),

  -- Komala - Defense Curl - Level 1
  (775, 77500, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Komala - Rollout - Level 1
  (775, 77500, 205, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Komala - Stockpile - Level 6
  (775, 77500, 254, 15, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Komala - Spit Up - Level 6
  (775, 77500, 255, 15, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Komala - Swallow - Level 6
  (775, 77500, 256, 15, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Komala - Rapid Spin - Level 11
  (775, 77500, 229, 15, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Komala - Yawn - Level 16
  (775, 77500, 281, 15, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Komala - Slam - Level 21
  (775, 77500, 21, 15, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Komala - Flail - Level 26
  (775, 77500, 175, 15, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Komala - Sucker Punch - Level 31
  (775, 77500, 389, 15, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Komala - Psych Up - Level 36
  (775, 77500, 244, 15, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Komala - Wood Hammer - Level 41
  (775, 77500, 452, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Komala - Thrash - Level 46
  (775, 77500, 37, 15, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Komala - Work Up - TM01
  (775, 77500, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 14),
  -- Komala - Calm Mind - TM04
  (775, 77500, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 15),
  -- Komala - Toxic - TM06
  (775, 77500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 16),
  -- Komala - Bulk Up - TM08
  (775, 77500, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 17),
  -- Komala - Hidden Power - TM10
  (775, 77500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Komala - Sunny Day - TM11
  (775, 77500, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 19),
  -- Komala - Protect - TM17
  (775, 77500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 20),
  -- Komala - Frustration - TM21
  (775, 77500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 21),
  -- Komala - Earthquake - TM26
  (775, 77500, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 22),
  -- Komala - Return - TM27
  (775, 77500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Komala - Brick Break - TM31
  (775, 77500, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 24),
  -- Komala - Double Team - TM32
  (775, 77500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 25),
  -- Komala - Facade - TM42
  (775, 77500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 26),
  -- Komala - Attract - TM45
  (775, 77500, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 27),
  -- Komala - Low Sweep - TM47
  (775, 77500, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 28),
  -- Komala - Round - TM48
  (775, 77500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 29),
  -- Komala - Quash - TM60
  (775, 77500, 511, 15, NULL, 2, NULL, NULL, 15002060, NULL, 30),
  -- Komala - Acrobatics - TM62
  (775, 77500, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 31),
  -- Komala - Shadow Claw - TM65
  (775, 77500, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 32),
  -- Komala - Payback - TM66
  (775, 77500, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 33),
  -- Komala - Swords Dance - TM75
  (775, 77500, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 34),
  -- Komala - Psych Up - TM77
  (775, 77500, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 35),
  -- Komala - Bulldoze - TM78
  (775, 77500, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 36),
  -- Komala - Rock Slide - TM80
  (775, 77500, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 37),
  -- Komala - Swagger - TM87
  (775, 77500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 38),
  -- Komala - Sleep Talk - TM88
  (775, 77500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 39),
  -- Komala - U-turn - TM89
  (775, 77500, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 40),
  -- Komala - Substitute - TM90
  (775, 77500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 41),
  -- Komala - Confide - TM100
  (775, 77500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 42),
  -- Komala - Sing - Egg
  (775, 77500, 47, 15, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Komala - Charm - Egg
  (775, 77500, 204, 15, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Komala - Wish - Egg
  (775, 77500, 273, 15, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Komala - Play Rough - Egg
  (775, 77500, 583, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),

  -- Turtonator - Tackle - Level 1
  (776, 77600, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtonator - Ember - Level 1
  (776, 77600, 52, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Turtonator - Smog - Level 5
  (776, 77600, 123, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Turtonator - Protect - Level 9
  (776, 77600, 182, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Turtonator - Incinerate - Level 13
  (776, 77600, 510, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Turtonator - Flail - Level 17
  (776, 77600, 175, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Turtonator - Endure - Level 21
  (776, 77600, 203, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Turtonator - Iron Defense - Level 25
  (776, 77600, 334, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Turtonator - Flamethrower - Level 29
  (776, 77600, 53, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Turtonator - Body Slam - Level 33
  (776, 77600, 34, 15, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Turtonator - Shell Smash - Level 37
  (776, 77600, 504, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Turtonator - Dragon Pulse - Level 41
  (776, 77600, 406, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Turtonator - Shell Trap - Level 45
  (776, 77600, 704, 15, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Turtonator - Overheat - Level 49
  (776, 77600, 315, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Turtonator - Explosion - Level 53
  (776, 77600, 153, 15, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Turtonator - Work Up - TM01
  (776, 77600, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Turtonator - Dragon Claw - TM02
  (776, 77600, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 17),
  -- Turtonator - Roar - TM05
  (776, 77600, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 18),
  -- Turtonator - Toxic - TM06
  (776, 77600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Turtonator - Bulk Up - TM08
  (776, 77600, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 20),
  -- Turtonator - Venoshock - TM09
  (776, 77600, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 21),
  -- Turtonator - Hidden Power - TM10
  (776, 77600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Turtonator - Sunny Day - TM11
  (776, 77600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Turtonator - Taunt - TM12
  (776, 77600, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Turtonator - Hyper Beam - TM15
  (776, 77600, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Turtonator - Protect - TM17
  (776, 77600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Turtonator - Frustration - TM21
  (776, 77600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Turtonator - Solar Beam - TM22
  (776, 77600, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 28),
  -- Turtonator - Smack Down - TM23
  (776, 77600, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Turtonator - Earthquake - TM26
  (776, 77600, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 30),
  -- Turtonator - Return - TM27
  (776, 77600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Turtonator - Double Team - TM32
  (776, 77600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Turtonator - Flamethrower - TM35
  (776, 77600, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 33),
  -- Turtonator - Fire Blast - TM38
  (776, 77600, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 34),
  -- Turtonator - Rock Tomb - TM39
  (776, 77600, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Turtonator - Facade - TM42
  (776, 77600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Turtonator - Flame Charge - TM43
  (776, 77600, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 37),
  -- Turtonator - Rest - TM44
  (776, 77600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 38),
  -- Turtonator - Attract - TM45
  (776, 77600, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 39),
  -- Turtonator - Round - TM48
  (776, 77600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 40),
  -- Turtonator - Overheat - TM50
  (776, 77600, 315, 15, NULL, 2, NULL, NULL, 15002050, NULL, 41),
  -- Turtonator - Focus Blast - TM52
  (776, 77600, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 42),
  -- Turtonator - Fling - TM56
  (776, 77600, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 43),
  -- Turtonator - Charge Beam - TM57
  (776, 77600, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 44),
  -- Turtonator - Brutal Swing - TM59
  (776, 77600, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 45),
  -- Turtonator - Will-O-Wisp - TM61
  (776, 77600, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 46),
  -- Turtonator - Explosion - TM64
  (776, 77600, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 47),
  -- Turtonator - Payback - TM66
  (776, 77600, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 48),
  -- Turtonator - Giga Impact - TM68
  (776, 77600, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 49),
  -- Turtonator - Stone Edge - TM71
  (776, 77600, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 50),
  -- Turtonator - Bulldoze - TM78
  (776, 77600, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 51),
  -- Turtonator - Dragon Tail - TM82
  (776, 77600, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 52),
  -- Turtonator - Swagger - TM87
  (776, 77600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Turtonator - Sleep Talk - TM88
  (776, 77600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Turtonator - Substitute - TM90
  (776, 77600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 55),
  -- Turtonator - Flash Cannon - TM91
  (776, 77600, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 56),
  -- Turtonator - Confide - TM100
  (776, 77600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 57),
  -- Turtonator - Fire Spin - Egg
  (776, 77600, 83, 15, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Turtonator - Revenge - Egg
  (776, 77600, 279, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Turtonator - Head Smash - Egg
  (776, 77600, 457, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Turtonator - Wide Guard - Egg
  (776, 77600, 469, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Turtonator - Draco Meteor - Tutor
  (776, 77600, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 62),

  -- Togedemaru - Tackle - Level 1
  (777, 77700, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togedemaru - Thunder Shock - Level 1
  (777, 77700, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togedemaru - Defense Curl - Level 5
  (777, 77700, 111, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Togedemaru - Rollout - Level 9
  (777, 77700, 205, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Togedemaru - Charge - Level 13
  (777, 77700, 268, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Togedemaru - Spark - Level 17
  (777, 77700, 209, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Togedemaru - Nuzzle - Level 21
  (777, 77700, 609, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Togedemaru - Magnet Rise - Level 25
  (777, 77700, 393, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Togedemaru - Discharge - Level 29
  (777, 77700, 435, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Togedemaru - Zing Zap - Level 33
  (777, 77700, 716, 15, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Togedemaru - Electric Terrain - Level 37
  (777, 77700, 604, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Togedemaru - Wild Charge - Level 41
  (777, 77700, 528, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Togedemaru - Pin Missile - Level 45
  (777, 77700, 42, 15, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Togedemaru - Spiky Shield - Level 49
  (777, 77700, 596, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Togedemaru - Fell Stinger - Level 53
  (777, 77700, 565, 15, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Togedemaru - Work Up - TM01
  (777, 77700, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Togedemaru - Toxic - TM06
  (777, 77700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 17),
  -- Togedemaru - Hidden Power - TM10
  (777, 77700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 18),
  -- Togedemaru - Protect - TM17
  (777, 77700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 19),
  -- Togedemaru - Frustration - TM21
  (777, 77700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 20),
  -- Togedemaru - Thunderbolt - TM24
  (777, 77700, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 21),
  -- Togedemaru - Thunder - TM25
  (777, 77700, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 22),
  -- Togedemaru - Return - TM27
  (777, 77700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 23),
  -- Togedemaru - Double Team - TM32
  (777, 77700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 24),
  -- Togedemaru - Reflect - TM33
  (777, 77700, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 25),
  -- Togedemaru - Facade - TM42
  (777, 77700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 26),
  -- Togedemaru - Rest - TM44
  (777, 77700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 27),
  -- Togedemaru - Attract - TM45
  (777, 77700, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 28),
  -- Togedemaru - Thief - TM46
  (777, 77700, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 29),
  -- Togedemaru - Round - TM48
  (777, 77700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 30),
  -- Togedemaru - Fling - TM56
  (777, 77700, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 31),
  -- Togedemaru - Charge Beam - TM57
  (777, 77700, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 32),
  -- Togedemaru - Payback - TM66
  (777, 77700, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 33),
  -- Togedemaru - Giga Impact - TM68
  (777, 77700, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 34),
  -- Togedemaru - Volt Switch - TM72
  (777, 77700, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 35),
  -- Togedemaru - Thunder Wave - TM73
  (777, 77700, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 36),
  -- Togedemaru - Gyro Ball - TM74
  (777, 77700, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 37),
  -- Togedemaru - Poison Jab - TM84
  (777, 77700, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 38),
  -- Togedemaru - Grass Knot - TM86
  (777, 77700, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 39),
  -- Togedemaru - Swagger - TM87
  (777, 77700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 40),
  -- Togedemaru - Sleep Talk - TM88
  (777, 77700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 41),
  -- Togedemaru - U-turn - TM89
  (777, 77700, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 42),
  -- Togedemaru - Substitute - TM90
  (777, 77700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 43),
  -- Togedemaru - Wild Charge - TM93
  (777, 77700, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 44),
  -- Togedemaru - Confide - TM100
  (777, 77700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 45),
  -- Togedemaru - Twineedle - Egg
  (777, 77700, 41, 15, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Togedemaru - Flail - Egg
  (777, 77700, 175, 15, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Togedemaru - Reversal - Egg
  (777, 77700, 179, 15, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Togedemaru - Present - Egg
  (777, 77700, 217, 15, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Togedemaru - Encore - Egg
  (777, 77700, 227, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togedemaru - Fake Out - Egg
  (777, 77700, 252, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Togedemaru - Wish - Egg
  (777, 77700, 273, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Togedemaru - Tickle - Egg
  (777, 77700, 321, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Togedemaru - Disarming Voice - Egg
  (777, 77700, 574, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),

  -- Mimikyu - Scratch - Level 1
  (778, 77800, 10, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mimikyu - Splash - Level 1
  (778, 77800, 150, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mimikyu - Astonish - Level 1
  (778, 77800, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mimikyu - Copycat - Level 1
  (778, 77800, 383, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mimikyu - Wood Hammer - Level 1
  (778, 77800, 452, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mimikyu - Double Team - Level 5
  (778, 77800, 104, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Mimikyu - Baby-Doll Eyes - Level 10
  (778, 77800, 608, 15, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Mimikyu - Shadow Sneak - Level 14
  (778, 77800, 425, 15, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Mimikyu - Mimic - Level 19
  (778, 77800, 102, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Mimikyu - Feint Attack - Level 23
  (778, 77800, 185, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Mimikyu - Charm - Level 28
  (778, 77800, 204, 15, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mimikyu - Slash - Level 32
  (778, 77800, 163, 15, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mimikyu - Shadow Claw - Level 37
  (778, 77800, 421, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Mimikyu - Hone Claws - Level 41
  (778, 77800, 468, 15, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Mimikyu - Play Rough - Level 46
  (778, 77800, 583, 15, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Mimikyu - Pain Split - Level 50
  (778, 77800, 220, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Mimikyu - Work Up - TM01
  (778, 77800, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 17),
  -- Mimikyu - Toxic - TM06
  (778, 77800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Mimikyu - Bulk Up - TM08
  (778, 77800, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 19),
  -- Mimikyu - Hidden Power - TM10
  (778, 77800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Mimikyu - Taunt - TM12
  (778, 77800, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Mimikyu - Hyper Beam - TM15
  (778, 77800, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Mimikyu - Light Screen - TM16
  (778, 77800, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 23),
  -- Mimikyu - Protect - TM17
  (778, 77800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Mimikyu - Safeguard - TM20
  (778, 77800, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 25),
  -- Mimikyu - Frustration - TM21
  (778, 77800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Mimikyu - Thunderbolt - TM24
  (778, 77800, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 27),
  -- Mimikyu - Thunder - TM25
  (778, 77800, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 28),
  -- Mimikyu - Return - TM27
  (778, 77800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Mimikyu - Leech Life - TM28
  (778, 77800, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 30),
  -- Mimikyu - Psychic - TM29
  (778, 77800, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Mimikyu - Shadow Ball - TM30
  (778, 77800, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Mimikyu - Double Team - TM32
  (778, 77800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Mimikyu - Facade - TM42
  (778, 77800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Mimikyu - Rest - TM44
  (778, 77800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Mimikyu - Attract - TM45
  (778, 77800, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Mimikyu - Thief - TM46
  (778, 77800, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Mimikyu - Round - TM48
  (778, 77800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Mimikyu - Fling - TM56
  (778, 77800, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 39),
  -- Mimikyu - Charge Beam - TM57
  (778, 77800, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 40),
  -- Mimikyu - Will-O-Wisp - TM61
  (778, 77800, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 41),
  -- Mimikyu - Embargo - TM63
  (778, 77800, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 42),
  -- Mimikyu - Shadow Claw - TM65
  (778, 77800, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 43),
  -- Mimikyu - Payback - TM66
  (778, 77800, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 44),
  -- Mimikyu - Thunder Wave - TM73
  (778, 77800, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 45),
  -- Mimikyu - Swords Dance - TM75
  (778, 77800, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 46),
  -- Mimikyu - Psych Up - TM77
  (778, 77800, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 47),
  -- Mimikyu - X-Scissor - TM81
  (778, 77800, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 48),
  -- Mimikyu - Infestation - TM83
  (778, 77800, 611, 15, NULL, 2, NULL, NULL, 15002083, NULL, 49),
  -- Mimikyu - Dream Eater - TM85
  (778, 77800, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 50),
  -- Mimikyu - Swagger - TM87
  (778, 77800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 51),
  -- Mimikyu - Sleep Talk - TM88
  (778, 77800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 52),
  -- Mimikyu - Substitute - TM90
  (778, 77800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 53),
  -- Mimikyu - Trick Room - TM92
  (778, 77800, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 54),
  -- Mimikyu - Surf - TM94
  (778, 77800, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 55),
  -- Mimikyu - Dark Pulse - TM97
  (778, 77800, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 56),
  -- Mimikyu - Dazzling Gleam - TM99
  (778, 77800, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 57),
  -- Mimikyu - Confide - TM100
  (778, 77800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 58),
  -- Mimikyu - Nightmare - Egg
  (778, 77800, 171, 15, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mimikyu - Curse - Egg
  (778, 77800, 174, 15, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mimikyu - Destiny Bond - Egg
  (778, 77800, 194, 15, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mimikyu - Grudge - Egg
  (778, 77800, 288, 15, NULL, 5, NULL, NULL, NULL, NULL, 62),

  -- Bruxish - Water Gun - Level 1
  (779, 77900, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bruxish - Astonish - Level 4
  (779, 77900, 310, 15, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bruxish - Confusion - Level 9
  (779, 77900, 93, 15, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bruxish - Bite - Level 12
  (779, 77900, 44, 15, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bruxish - Aqua Jet - Level 17
  (779, 77900, 453, 15, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bruxish - Disable - Level 20
  (779, 77900, 50, 15, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bruxish - Psywave - Level 25
  (779, 77900, 149, 15, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bruxish - Crunch - Level 28
  (779, 77900, 242, 15, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Bruxish - Aqua Tail - Level 33
  (779, 77900, 401, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Bruxish - Screech - Level 36
  (779, 77900, 103, 15, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Bruxish - Psychic Fangs - Level 41
  (779, 77900, 706, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Bruxish - Synchronoise - Level 44
  (779, 77900, 485, 15, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Bruxish - Calm Mind - TM04
  (779, 77900, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 13),
  -- Bruxish - Toxic - TM06
  (779, 77900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 14),
  -- Bruxish - Bulk Up - TM08
  (779, 77900, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 15),
  -- Bruxish - Venoshock - TM09
  (779, 77900, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 16),
  -- Bruxish - Hidden Power - TM10
  (779, 77900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 17),
  -- Bruxish - Taunt - TM12
  (779, 77900, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 18),
  -- Bruxish - Ice Beam - TM13
  (779, 77900, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 19),
  -- Bruxish - Blizzard - TM14
  (779, 77900, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 20),
  -- Bruxish - Light Screen - TM16
  (779, 77900, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 21),
  -- Bruxish - Protect - TM17
  (779, 77900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Bruxish - Rain Dance - TM18
  (779, 77900, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 23),
  -- Bruxish - Safeguard - TM20
  (779, 77900, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 24),
  -- Bruxish - Frustration - TM21
  (779, 77900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Bruxish - Return - TM27
  (779, 77900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Bruxish - Psychic - TM29
  (779, 77900, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 27),
  -- Bruxish - Double Team - TM32
  (779, 77900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Bruxish - Reflect - TM33
  (779, 77900, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 29),
  -- Bruxish - Aerial Ace - TM40
  (779, 77900, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 30),
  -- Bruxish - Torment - TM41
  (779, 77900, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 31),
  -- Bruxish - Facade - TM42
  (779, 77900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Bruxish - Rest - TM44
  (779, 77900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Bruxish - Attract - TM45
  (779, 77900, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Bruxish - Round - TM48
  (779, 77900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Bruxish - Scald - TM55
  (779, 77900, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 36),
  -- Bruxish - Fling - TM56
  (779, 77900, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 37),
  -- Bruxish - Embargo - TM63
  (779, 77900, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 38),
  -- Bruxish - Payback - TM66
  (779, 77900, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 39),
  -- Bruxish - Giga Impact - TM68
  (779, 77900, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 40),
  -- Bruxish - Swords Dance - TM75
  (779, 77900, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 41),
  -- Bruxish - Frost Breath - TM79
  (779, 77900, 524, 15, NULL, 2, NULL, NULL, 15002079, NULL, 42),
  -- Bruxish - Dream Eater - TM85
  (779, 77900, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 43),
  -- Bruxish - Swagger - TM87
  (779, 77900, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 44),
  -- Bruxish - Sleep Talk - TM88
  (779, 77900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 45),
  -- Bruxish - Substitute - TM90
  (779, 77900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Bruxish - Trick Room - TM92
  (779, 77900, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 47),
  -- Bruxish - Surf - TM94
  (779, 77900, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 48),
  -- Bruxish - Waterfall - TM98
  (779, 77900, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 49),
  -- Bruxish - Confide - TM100
  (779, 77900, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 50),
  -- Bruxish - Rage - Egg
  (779, 77900, 99, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bruxish - Poison Fang - Egg
  (779, 77900, 305, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bruxish - Water Pulse - Egg
  (779, 77900, 352, 15, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bruxish - Ice Fang - Egg
  (779, 77900, 423, 15, NULL, 5, NULL, NULL, NULL, NULL, 54),

  -- Drampa - Echoed Voice - Level 1
  (780, 78000, 497, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drampa - Play Nice - Level 1
  (780, 78000, 589, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drampa - Twister - Level 5
  (780, 78000, 239, 15, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drampa - Protect - Level 9
  (780, 78000, 182, 15, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drampa - Glare - Level 13
  (780, 78000, 137, 15, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drampa - Light Screen - Level 17
  (780, 78000, 113, 15, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drampa - Dragon Rage - Level 21
  (780, 78000, 82, 15, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drampa - Natural Gift - Level 25
  (780, 78000, 363, 15, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drampa - Dragon Breath - Level 29
  (780, 78000, 225, 15, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drampa - Safeguard - Level 33
  (780, 78000, 219, 15, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drampa - Extrasensory - Level 37
  (780, 78000, 326, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drampa - Dragon Pulse - Level 41
  (780, 78000, 406, 15, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drampa - Fly - Level 45
  (780, 78000, 19, 15, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drampa - Hyper Voice - Level 49
  (780, 78000, 304, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drampa - Outrage - Level 53
  (780, 78000, 200, 15, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drampa - Work Up - TM01
  (780, 78000, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 16),
  -- Drampa - Dragon Claw - TM02
  (780, 78000, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 17),
  -- Drampa - Calm Mind - TM04
  (780, 78000, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 18),
  -- Drampa - Roar - TM05
  (780, 78000, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 19),
  -- Drampa - Toxic - TM06
  (780, 78000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Drampa - Hidden Power - TM10
  (780, 78000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Drampa - Sunny Day - TM11
  (780, 78000, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Drampa - Ice Beam - TM13
  (780, 78000, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Drampa - Blizzard - TM14
  (780, 78000, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Drampa - Hyper Beam - TM15
  (780, 78000, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Drampa - Light Screen - TM16
  (780, 78000, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Drampa - Protect - TM17
  (780, 78000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Drampa - Rain Dance - TM18
  (780, 78000, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 28),
  -- Drampa - Roost - TM19
  (780, 78000, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 29),
  -- Drampa - Safeguard - TM20
  (780, 78000, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 30),
  -- Drampa - Frustration - TM21
  (780, 78000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 31),
  -- Drampa - Solar Beam - TM22
  (780, 78000, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 32),
  -- Drampa - Thunderbolt - TM24
  (780, 78000, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 33),
  -- Drampa - Thunder - TM25
  (780, 78000, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 34),
  -- Drampa - Earthquake - TM26
  (780, 78000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 35),
  -- Drampa - Return - TM27
  (780, 78000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 36),
  -- Drampa - Shadow Ball - TM30
  (780, 78000, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 37),
  -- Drampa - Double Team - TM32
  (780, 78000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 38),
  -- Drampa - Flamethrower - TM35
  (780, 78000, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 39),
  -- Drampa - Fire Blast - TM38
  (780, 78000, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 40),
  -- Drampa - Facade - TM42
  (780, 78000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 41),
  -- Drampa - Rest - TM44
  (780, 78000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 42),
  -- Drampa - Attract - TM45
  (780, 78000, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 43),
  -- Drampa - Round - TM48
  (780, 78000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 44),
  -- Drampa - Echoed Voice - TM49
  (780, 78000, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 45),
  -- Drampa - Steel Wing - TM51
  (780, 78000, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 46),
  -- Drampa - Focus Blast - TM52
  (780, 78000, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 47),
  -- Drampa - Energy Ball - TM53
  (780, 78000, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 48),
  -- Drampa - Fling - TM56
  (780, 78000, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 49),
  -- Drampa - Shadow Claw - TM65
  (780, 78000, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 50),
  -- Drampa - Giga Impact - TM68
  (780, 78000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 51),
  -- Drampa - Thunder Wave - TM73
  (780, 78000, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 52),
  -- Drampa - Fly - TM76
  (780, 78000, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 53),
  -- Drampa - Psych Up - TM77
  (780, 78000, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 54),
  -- Drampa - Bulldoze - TM78
  (780, 78000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 55),
  -- Drampa - Rock Slide - TM80
  (780, 78000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 56),
  -- Drampa - Dragon Tail - TM82
  (780, 78000, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 57),
  -- Drampa - Grass Knot - TM86
  (780, 78000, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 58),
  -- Drampa - Sleep Talk - TM88
  (780, 78000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 59),
  -- Drampa - Substitute - TM90
  (780, 78000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 60),
  -- Drampa - Surf - TM94
  (780, 78000, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 61),
  -- Drampa - Snarl - TM95
  (780, 78000, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 62),
  -- Drampa - Nature Power - TM96
  (780, 78000, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 63),
  -- Drampa - Confide - TM100
  (780, 78000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),
  -- Drampa - Razor Wind - Egg
  (780, 78000, 13, 15, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drampa - Mist - Egg
  (780, 78000, 54, 15, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Drampa - Dragon Rush - Egg
  (780, 78000, 407, 15, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Drampa - Hurricane - Egg
  (780, 78000, 542, 15, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Drampa - Play Rough - Egg
  (780, 78000, 583, 15, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drampa - Draco Meteor - Tutor
  (780, 78000, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 70),

  -- Dhelmise - Absorb - Level 1
  (781, 78100, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dhelmise - Growth - Level 1
  (781, 78100, 74, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dhelmise - Rapid Spin - Level 1
  (781, 78100, 229, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dhelmise - Astonish - Level 1
  (781, 78100, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dhelmise - Switcheroo - Level 1
  (781, 78100, 415, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dhelmise - Mega Drain - Level 5
  (781, 78100, 72, 15, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dhelmise - Wrap - Level 9
  (781, 78100, 35, 15, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Dhelmise - Gyro Ball - Level 14
  (781, 78100, 360, 15, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Dhelmise - Metal Sound - Level 18
  (781, 78100, 319, 15, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Dhelmise - Giga Drain - Level 23
  (781, 78100, 202, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Dhelmise - Whirlpool - Level 27
  (781, 78100, 250, 15, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Dhelmise - Anchor Shot - Level 32
  (781, 78100, 677, 15, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Dhelmise - Shadow Ball - Level 36
  (781, 78100, 247, 15, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Dhelmise - Energy Ball - Level 41
  (781, 78100, 412, 15, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Dhelmise - Slam - Level 45
  (781, 78100, 21, 15, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Dhelmise - Heavy Slam - Level 50
  (781, 78100, 484, 15, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Dhelmise - Phantom Force - Level 54
  (781, 78100, 566, 15, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Dhelmise - Power Whip - Level 59
  (781, 78100, 438, 15, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Dhelmise - Toxic - TM06
  (781, 78100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 19),
  -- Dhelmise - Hidden Power - TM10
  (781, 78100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Dhelmise - Sunny Day - TM11
  (781, 78100, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 21),
  -- Dhelmise - Hyper Beam - TM15
  (781, 78100, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Dhelmise - Protect - TM17
  (781, 78100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Dhelmise - Rain Dance - TM18
  (781, 78100, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 24),
  -- Dhelmise - Frustration - TM21
  (781, 78100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Dhelmise - Solar Beam - TM22
  (781, 78100, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 26),
  -- Dhelmise - Earthquake - TM26
  (781, 78100, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Dhelmise - Return - TM27
  (781, 78100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Dhelmise - Shadow Ball - TM30
  (781, 78100, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 29),
  -- Dhelmise - Brick Break - TM31
  (781, 78100, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 30),
  -- Dhelmise - Double Team - TM32
  (781, 78100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Dhelmise - Sludge Wave - TM34
  (781, 78100, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 32),
  -- Dhelmise - Aerial Ace - TM40
  (781, 78100, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 33),
  -- Dhelmise - Facade - TM42
  (781, 78100, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Dhelmise - Rest - TM44
  (781, 78100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Dhelmise - Attract - TM45
  (781, 78100, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 36),
  -- Dhelmise - Thief - TM46
  (781, 78100, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Dhelmise - Round - TM48
  (781, 78100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 38),
  -- Dhelmise - Energy Ball - TM53
  (781, 78100, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 39),
  -- Dhelmise - Brutal Swing - TM59
  (781, 78100, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 40),
  -- Dhelmise - Embargo - TM63
  (781, 78100, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 41),
  -- Dhelmise - Shadow Claw - TM65
  (781, 78100, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 42),
  -- Dhelmise - Payback - TM66
  (781, 78100, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 43),
  -- Dhelmise - Giga Impact - TM68
  (781, 78100, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 44),
  -- Dhelmise - Gyro Ball - TM74
  (781, 78100, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 45),
  -- Dhelmise - Swords Dance - TM75
  (781, 78100, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 46),
  -- Dhelmise - Bulldoze - TM78
  (781, 78100, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 47),
  -- Dhelmise - Rock Slide - TM80
  (781, 78100, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 48),
  -- Dhelmise - Grass Knot - TM86
  (781, 78100, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 49),
  -- Dhelmise - Swagger - TM87
  (781, 78100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 50),
  -- Dhelmise - Sleep Talk - TM88
  (781, 78100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 51),
  -- Dhelmise - Substitute - TM90
  (781, 78100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 52),
  -- Dhelmise - Flash Cannon - TM91
  (781, 78100, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 53),
  -- Dhelmise - Surf - TM94
  (781, 78100, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 54),
  -- Dhelmise - Confide - TM100
  (781, 78100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 55),

  -- Jangmo-o - Tackle - Level 1
  (782, 78200, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jangmo-o - Leer - Level 5
  (782, 78200, 43, 15, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Jangmo-o - Bide - Level 9
  (782, 78200, 117, 15, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Jangmo-o - Protect - Level 13
  (782, 78200, 182, 15, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Jangmo-o - Dragon Tail - Level 17
  (782, 78200, 525, 15, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Jangmo-o - Scary Face - Level 21
  (782, 78200, 184, 15, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Jangmo-o - Headbutt - Level 25
  (782, 78200, 29, 15, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jangmo-o - Work Up - Level 29
  (782, 78200, 526, 15, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Jangmo-o - Screech - Level 33
  (782, 78200, 103, 15, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Jangmo-o - Iron Defense - Level 37
  (782, 78200, 334, 15, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Jangmo-o - Dragon Claw - Level 41
  (782, 78200, 337, 15, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Jangmo-o - Noble Roar - Level 45
  (782, 78200, 568, 15, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Jangmo-o - Dragon Dance - Level 49
  (782, 78200, 349, 15, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Jangmo-o - Outrage - Level 53
  (782, 78200, 200, 15, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Jangmo-o - Work Up - TM01
  (782, 78200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 15),
  -- Jangmo-o - Dragon Claw - TM02
  (782, 78200, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 16),
  -- Jangmo-o - Roar - TM05
  (782, 78200, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 17),
  -- Jangmo-o - Toxic - TM06
  (782, 78200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 18),
  -- Jangmo-o - Bulk Up - TM08
  (782, 78200, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 19),
  -- Jangmo-o - Hidden Power - TM10
  (782, 78200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 20),
  -- Jangmo-o - Taunt - TM12
  (782, 78200, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 21),
  -- Jangmo-o - Protect - TM17
  (782, 78200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 22),
  -- Jangmo-o - Safeguard - TM20
  (782, 78200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 23),
  -- Jangmo-o - Frustration - TM21
  (782, 78200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Jangmo-o - Earthquake - TM26
  (782, 78200, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 25),
  -- Jangmo-o - Return - TM27
  (782, 78200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 26),
  -- Jangmo-o - Brick Break - TM31
  (782, 78200, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 27),
  -- Jangmo-o - Double Team - TM32
  (782, 78200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 28),
  -- Jangmo-o - Sandstorm - TM37
  (782, 78200, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 29),
  -- Jangmo-o - Rock Tomb - TM39
  (782, 78200, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 30),
  -- Jangmo-o - Aerial Ace - TM40
  (782, 78200, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 31),
  -- Jangmo-o - Facade - TM42
  (782, 78200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Jangmo-o - Rest - TM44
  (782, 78200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 33),
  -- Jangmo-o - Attract - TM45
  (782, 78200, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 34),
  -- Jangmo-o - Round - TM48
  (782, 78200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Jangmo-o - Echoed Voice - TM49
  (782, 78200, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Jangmo-o - Focus Blast - TM52
  (782, 78200, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 37),
  -- Jangmo-o - False Swipe - TM54
  (782, 78200, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 38),
  -- Jangmo-o - Shadow Claw - TM65
  (782, 78200, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 39),
  -- Jangmo-o - Payback - TM66
  (782, 78200, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 40),
  -- Jangmo-o - Swords Dance - TM75
  (782, 78200, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 41),
  -- Jangmo-o - Bulldoze - TM78
  (782, 78200, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 42),
  -- Jangmo-o - Rock Slide - TM80
  (782, 78200, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 43),
  -- Jangmo-o - X-Scissor - TM81
  (782, 78200, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 44),
  -- Jangmo-o - Dragon Tail - TM82
  (782, 78200, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 45),
  -- Jangmo-o - Swagger - TM87
  (782, 78200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 46),
  -- Jangmo-o - Sleep Talk - TM88
  (782, 78200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 47),
  -- Jangmo-o - Substitute - TM90
  (782, 78200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 48),
  -- Jangmo-o - Confide - TM100
  (782, 78200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 49),
  -- Jangmo-o - Counter - Egg
  (782, 78200, 68, 15, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Jangmo-o - Reversal - Egg
  (782, 78200, 179, 15, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Jangmo-o - Dragon Breath - Egg
  (782, 78200, 225, 15, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Jangmo-o - Draco Meteor - Tutor
  (782, 78200, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 53),

  -- Hakamo-o - Tackle - Level 1
  (783, 78300, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hakamo-o - Leer - Level 1
  (783, 78300, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hakamo-o - Bide - Level 1
  (783, 78300, 117, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hakamo-o - Protect - Level 1
  (783, 78300, 182, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hakamo-o - Sky Uppercut - Level 1
  (783, 78300, 327, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hakamo-o - Autotomize - Level 1
  (783, 78300, 475, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hakamo-o - Leer - Level 5
  (783, 78300, 43, 15, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Hakamo-o - Bide - Level 9
  (783, 78300, 117, 15, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Hakamo-o - Protect - Level 13
  (783, 78300, 182, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hakamo-o - Dragon Tail - Level 17
  (783, 78300, 525, 15, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Hakamo-o - Scary Face - Level 21
  (783, 78300, 184, 15, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Hakamo-o - Headbutt - Level 25
  (783, 78300, 29, 15, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hakamo-o - Work Up - Level 29
  (783, 78300, 526, 15, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Hakamo-o - Screech - Level 33
  (783, 78300, 103, 15, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Hakamo-o - Iron Defense - Level 38
  (783, 78300, 334, 15, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Hakamo-o - Dragon Claw - Level 43
  (783, 78300, 337, 15, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Hakamo-o - Noble Roar - Level 48
  (783, 78300, 568, 15, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Hakamo-o - Dragon Dance - Level 53
  (783, 78300, 349, 15, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Hakamo-o - Outrage - Level 58
  (783, 78300, 200, 15, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Hakamo-o - Work Up - TM01
  (783, 78300, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 20),
  -- Hakamo-o - Dragon Claw - TM02
  (783, 78300, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 21),
  -- Hakamo-o - Roar - TM05
  (783, 78300, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 22),
  -- Hakamo-o - Toxic - TM06
  (783, 78300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 23),
  -- Hakamo-o - Bulk Up - TM08
  (783, 78300, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 24),
  -- Hakamo-o - Hidden Power - TM10
  (783, 78300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 25),
  -- Hakamo-o - Taunt - TM12
  (783, 78300, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 26),
  -- Hakamo-o - Protect - TM17
  (783, 78300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Hakamo-o - Safeguard - TM20
  (783, 78300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Hakamo-o - Frustration - TM21
  (783, 78300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Hakamo-o - Earthquake - TM26
  (783, 78300, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 30),
  -- Hakamo-o - Return - TM27
  (783, 78300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Hakamo-o - Brick Break - TM31
  (783, 78300, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 32),
  -- Hakamo-o - Double Team - TM32
  (783, 78300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Hakamo-o - Sandstorm - TM37
  (783, 78300, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 34),
  -- Hakamo-o - Rock Tomb - TM39
  (783, 78300, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Hakamo-o - Aerial Ace - TM40
  (783, 78300, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 36),
  -- Hakamo-o - Facade - TM42
  (783, 78300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 37),
  -- Hakamo-o - Rest - TM44
  (783, 78300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 38),
  -- Hakamo-o - Attract - TM45
  (783, 78300, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 39),
  -- Hakamo-o - Round - TM48
  (783, 78300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 40),
  -- Hakamo-o - Echoed Voice - TM49
  (783, 78300, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 41),
  -- Hakamo-o - Focus Blast - TM52
  (783, 78300, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 42),
  -- Hakamo-o - False Swipe - TM54
  (783, 78300, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 43),
  -- Hakamo-o - Fling - TM56
  (783, 78300, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 44),
  -- Hakamo-o - Brutal Swing - TM59
  (783, 78300, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 45),
  -- Hakamo-o - Shadow Claw - TM65
  (783, 78300, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 46),
  -- Hakamo-o - Payback - TM66
  (783, 78300, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 47),
  -- Hakamo-o - Swords Dance - TM75
  (783, 78300, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 48),
  -- Hakamo-o - Bulldoze - TM78
  (783, 78300, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 49),
  -- Hakamo-o - Rock Slide - TM80
  (783, 78300, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 50),
  -- Hakamo-o - X-Scissor - TM81
  (783, 78300, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 51),
  -- Hakamo-o - Dragon Tail - TM82
  (783, 78300, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 52),
  -- Hakamo-o - Swagger - TM87
  (783, 78300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Hakamo-o - Sleep Talk - TM88
  (783, 78300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Hakamo-o - Substitute - TM90
  (783, 78300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 55),
  -- Hakamo-o - Confide - TM100
  (783, 78300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 56),
  -- Hakamo-o - Draco Meteor - Tutor
  (783, 78300, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 57),
  -- Hakamo-o - Sky Uppercut - Evolution
  (783, 78300, 327, 15, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Kommo-o - Tackle - Level 1
  (784, 78400, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kommo-o - Leer - Level 1
  (784, 78400, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kommo-o - Bide - Level 1
  (784, 78400, 117, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kommo-o - Protect - Level 1
  (784, 78400, 182, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kommo-o - Belly Drum - Level 1
  (784, 78400, 187, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kommo-o - Sky Uppercut - Level 1
  (784, 78400, 327, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kommo-o - Autotomize - Level 1
  (784, 78400, 475, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Kommo-o - Clanging Scales - Level 1
  (784, 78400, 691, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Kommo-o - Leer - Level 5
  (784, 78400, 43, 15, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Kommo-o - Bide - Level 9
  (784, 78400, 117, 15, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Kommo-o - Protect - Level 13
  (784, 78400, 182, 15, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Kommo-o - Dragon Tail - Level 17
  (784, 78400, 525, 15, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Kommo-o - Scary Face - Level 21
  (784, 78400, 184, 15, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Kommo-o - Headbutt - Level 25
  (784, 78400, 29, 15, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Kommo-o - Work Up - Level 29
  (784, 78400, 526, 15, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Kommo-o - Screech - Level 33
  (784, 78400, 103, 15, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Kommo-o - Iron Defense - Level 38
  (784, 78400, 334, 15, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Kommo-o - Dragon Claw - Level 43
  (784, 78400, 337, 15, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Kommo-o - Noble Roar - Level 51
  (784, 78400, 568, 15, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Kommo-o - Dragon Dance - Level 59
  (784, 78400, 349, 15, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Kommo-o - Outrage - Level 67
  (784, 78400, 200, 15, NULL, 1, 67, NULL, NULL, NULL, 21),
  -- Kommo-o - Work Up - TM01
  (784, 78400, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 22),
  -- Kommo-o - Dragon Claw - TM02
  (784, 78400, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 23),
  -- Kommo-o - Roar - TM05
  (784, 78400, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 24),
  -- Kommo-o - Toxic - TM06
  (784, 78400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 25),
  -- Kommo-o - Bulk Up - TM08
  (784, 78400, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 26),
  -- Kommo-o - Hidden Power - TM10
  (784, 78400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 27),
  -- Kommo-o - Taunt - TM12
  (784, 78400, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 28),
  -- Kommo-o - Hyper Beam - TM15
  (784, 78400, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 29),
  -- Kommo-o - Protect - TM17
  (784, 78400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 30),
  -- Kommo-o - Safeguard - TM20
  (784, 78400, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 31),
  -- Kommo-o - Frustration - TM21
  (784, 78400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 32),
  -- Kommo-o - Earthquake - TM26
  (784, 78400, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 33),
  -- Kommo-o - Return - TM27
  (784, 78400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 34),
  -- Kommo-o - Brick Break - TM31
  (784, 78400, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 35),
  -- Kommo-o - Double Team - TM32
  (784, 78400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 36),
  -- Kommo-o - Flamethrower - TM35
  (784, 78400, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 37),
  -- Kommo-o - Sandstorm - TM37
  (784, 78400, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 38),
  -- Kommo-o - Rock Tomb - TM39
  (784, 78400, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 39),
  -- Kommo-o - Aerial Ace - TM40
  (784, 78400, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 40),
  -- Kommo-o - Facade - TM42
  (784, 78400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 41),
  -- Kommo-o - Rest - TM44
  (784, 78400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 42),
  -- Kommo-o - Attract - TM45
  (784, 78400, 213, 15, NULL, 2, NULL, NULL, 15002045, NULL, 43),
  -- Kommo-o - Round - TM48
  (784, 78400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 44),
  -- Kommo-o - Echoed Voice - TM49
  (784, 78400, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 45),
  -- Kommo-o - Focus Blast - TM52
  (784, 78400, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 46),
  -- Kommo-o - False Swipe - TM54
  (784, 78400, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 47),
  -- Kommo-o - Fling - TM56
  (784, 78400, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 48),
  -- Kommo-o - Brutal Swing - TM59
  (784, 78400, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 49),
  -- Kommo-o - Shadow Claw - TM65
  (784, 78400, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 50),
  -- Kommo-o - Payback - TM66
  (784, 78400, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 51),
  -- Kommo-o - Giga Impact - TM68
  (784, 78400, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 52),
  -- Kommo-o - Rock Polish - TM69
  (784, 78400, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 53),
  -- Kommo-o - Swords Dance - TM75
  (784, 78400, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 54),
  -- Kommo-o - Bulldoze - TM78
  (784, 78400, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 55),
  -- Kommo-o - Rock Slide - TM80
  (784, 78400, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 56),
  -- Kommo-o - X-Scissor - TM81
  (784, 78400, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 57),
  -- Kommo-o - Dragon Tail - TM82
  (784, 78400, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 58),
  -- Kommo-o - Poison Jab - TM84
  (784, 78400, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 59),
  -- Kommo-o - Swagger - TM87
  (784, 78400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 60),
  -- Kommo-o - Sleep Talk - TM88
  (784, 78400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 61),
  -- Kommo-o - Substitute - TM90
  (784, 78400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 62),
  -- Kommo-o - Flash Cannon - TM91
  (784, 78400, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 63),
  -- Kommo-o - Confide - TM100
  (784, 78400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 64),
  -- Kommo-o - Draco Meteor - Tutor
  (784, 78400, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 65),
  -- Kommo-o - Clanging Scales - Evolution
  (784, 78400, 691, 15, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Tapu Koko - Thunder Shock - Level 1
  (785, 78500, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Koko - Quick Attack - Level 1
  (785, 78500, 98, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Koko - Withdraw - Level 1
  (785, 78500, 110, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tapu Koko - False Swipe - Level 1
  (785, 78500, 206, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tapu Koko - Mean Look - Level 1
  (785, 78500, 212, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tapu Koko - Power Swap - Level 1
  (785, 78500, 384, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tapu Koko - Brave Bird - Level 1
  (785, 78500, 413, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tapu Koko - Electric Terrain - Level 1
  (785, 78500, 604, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tapu Koko - Spark - Level 8
  (785, 78500, 209, 15, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Tapu Koko - Shock Wave - Level 14
  (785, 78500, 351, 15, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tapu Koko - Screech - Level 20
  (785, 78500, 103, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Tapu Koko - Charge - Level 26
  (785, 78500, 268, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Tapu Koko - Wild Charge - Level 32
  (785, 78500, 528, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Tapu Koko - Mirror Move - Level 38
  (785, 78500, 119, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tapu Koko - Nature's Madness - Level 43
  (785, 78500, 717, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tapu Koko - Discharge - Level 48
  (785, 78500, 435, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Tapu Koko - Agility - Level 53
  (785, 78500, 97, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Tapu Koko - Electro Ball - Level 58
  (785, 78500, 486, 15, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Tapu Koko - Work Up - TM01
  (785, 78500, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 19),
  -- Tapu Koko - Calm Mind - TM04
  (785, 78500, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Tapu Koko - Roar - TM05
  (785, 78500, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Tapu Koko - Toxic - TM06
  (785, 78500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Tapu Koko - Hidden Power - TM10
  (785, 78500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Tapu Koko - Taunt - TM12
  (785, 78500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Tapu Koko - Hyper Beam - TM15
  (785, 78500, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Tapu Koko - Light Screen - TM16
  (785, 78500, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Tapu Koko - Protect - TM17
  (785, 78500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Tapu Koko - Rain Dance - TM18
  (785, 78500, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 28),
  -- Tapu Koko - Roost - TM19
  (785, 78500, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 29),
  -- Tapu Koko - Safeguard - TM20
  (785, 78500, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 30),
  -- Tapu Koko - Frustration - TM21
  (785, 78500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 31),
  -- Tapu Koko - Thunderbolt - TM24
  (785, 78500, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 32),
  -- Tapu Koko - Thunder - TM25
  (785, 78500, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 33),
  -- Tapu Koko - Return - TM27
  (785, 78500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 34),
  -- Tapu Koko - Double Team - TM32
  (785, 78500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Tapu Koko - Reflect - TM33
  (785, 78500, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 36),
  -- Tapu Koko - Aerial Ace - TM40
  (785, 78500, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 37),
  -- Tapu Koko - Torment - TM41
  (785, 78500, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 38),
  -- Tapu Koko - Facade - TM42
  (785, 78500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 39),
  -- Tapu Koko - Thief - TM46
  (785, 78500, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 40),
  -- Tapu Koko - Round - TM48
  (785, 78500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 41),
  -- Tapu Koko - Echoed Voice - TM49
  (785, 78500, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 42),
  -- Tapu Koko - Steel Wing - TM51
  (785, 78500, 211, 15, NULL, 2, NULL, NULL, 15002051, NULL, 43),
  -- Tapu Koko - False Swipe - TM54
  (785, 78500, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 44),
  -- Tapu Koko - Sky Drop - TM58
  (785, 78500, 507, 15, NULL, 2, NULL, NULL, 15002058, NULL, 45),
  -- Tapu Koko - Acrobatics - TM62
  (785, 78500, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 46),
  -- Tapu Koko - Giga Impact - TM68
  (785, 78500, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 47),
  -- Tapu Koko - Volt Switch - TM72
  (785, 78500, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 48),
  -- Tapu Koko - Thunder Wave - TM73
  (785, 78500, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 49),
  -- Tapu Koko - Fly - TM76
  (785, 78500, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 50),
  -- Tapu Koko - Psych Up - TM77
  (785, 78500, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Tapu Koko - Grass Knot - TM86
  (785, 78500, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 52),
  -- Tapu Koko - Swagger - TM87
  (785, 78500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Tapu Koko - Sleep Talk - TM88
  (785, 78500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Tapu Koko - U-turn - TM89
  (785, 78500, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 55),
  -- Tapu Koko - Substitute - TM90
  (785, 78500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Tapu Koko - Wild Charge - TM93
  (785, 78500, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 57),
  -- Tapu Koko - Nature Power - TM96
  (785, 78500, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 58),
  -- Tapu Koko - Dazzling Gleam - TM99
  (785, 78500, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 59),
  -- Tapu Koko - Confide - TM100
  (785, 78500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Tapu Lele - Confusion - Level 1
  (786, 78600, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Lele - Withdraw - Level 1
  (786, 78600, 110, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Lele - Mean Look - Level 1
  (786, 78600, 212, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tapu Lele - Astonish - Level 1
  (786, 78600, 310, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tapu Lele - Aromatherapy - Level 1
  (786, 78600, 312, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tapu Lele - Draining Kiss - Level 1
  (786, 78600, 577, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tapu Lele - Aromatic Mist - Level 1
  (786, 78600, 597, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tapu Lele - Psychic Terrain - Level 1
  (786, 78600, 678, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tapu Lele - Psywave - Level 8
  (786, 78600, 149, 15, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Tapu Lele - Psybeam - Level 14
  (786, 78600, 60, 15, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tapu Lele - Sweet Scent - Level 20
  (786, 78600, 230, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Tapu Lele - Skill Swap - Level 26
  (786, 78600, 285, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Tapu Lele - Psyshock - Level 32
  (786, 78600, 473, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Tapu Lele - Tickle - Level 38
  (786, 78600, 321, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tapu Lele - Nature's Madness - Level 43
  (786, 78600, 717, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tapu Lele - Extrasensory - Level 48
  (786, 78600, 326, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Tapu Lele - Flatter - Level 53
  (786, 78600, 260, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Tapu Lele - Moonblast - Level 58
  (786, 78600, 585, 15, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Tapu Lele - Psyshock - TM03
  (786, 78600, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 19),
  -- Tapu Lele - Calm Mind - TM04
  (786, 78600, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Tapu Lele - Toxic - TM06
  (786, 78600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Tapu Lele - Hidden Power - TM10
  (786, 78600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Tapu Lele - Sunny Day - TM11
  (786, 78600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 23),
  -- Tapu Lele - Taunt - TM12
  (786, 78600, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 24),
  -- Tapu Lele - Hyper Beam - TM15
  (786, 78600, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Tapu Lele - Light Screen - TM16
  (786, 78600, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Tapu Lele - Protect - TM17
  (786, 78600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Tapu Lele - Safeguard - TM20
  (786, 78600, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Tapu Lele - Frustration - TM21
  (786, 78600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Tapu Lele - Thunderbolt - TM24
  (786, 78600, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 30),
  -- Tapu Lele - Thunder - TM25
  (786, 78600, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 31),
  -- Tapu Lele - Return - TM27
  (786, 78600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 32),
  -- Tapu Lele - Psychic - TM29
  (786, 78600, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 33),
  -- Tapu Lele - Shadow Ball - TM30
  (786, 78600, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 34),
  -- Tapu Lele - Double Team - TM32
  (786, 78600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 35),
  -- Tapu Lele - Reflect - TM33
  (786, 78600, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 36),
  -- Tapu Lele - Torment - TM41
  (786, 78600, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 37),
  -- Tapu Lele - Facade - TM42
  (786, 78600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Tapu Lele - Thief - TM46
  (786, 78600, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 39),
  -- Tapu Lele - Round - TM48
  (786, 78600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 40),
  -- Tapu Lele - Echoed Voice - TM49
  (786, 78600, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 41),
  -- Tapu Lele - Focus Blast - TM52
  (786, 78600, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 42),
  -- Tapu Lele - Energy Ball - TM53
  (786, 78600, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 43),
  -- Tapu Lele - Fling - TM56
  (786, 78600, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 44),
  -- Tapu Lele - Charge Beam - TM57
  (786, 78600, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 45),
  -- Tapu Lele - Giga Impact - TM68
  (786, 78600, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Tapu Lele - Psych Up - TM77
  (786, 78600, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 47),
  -- Tapu Lele - Grass Knot - TM86
  (786, 78600, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 48),
  -- Tapu Lele - Swagger - TM87
  (786, 78600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 49),
  -- Tapu Lele - Sleep Talk - TM88
  (786, 78600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 50),
  -- Tapu Lele - Substitute - TM90
  (786, 78600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Tapu Lele - Nature Power - TM96
  (786, 78600, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 52),
  -- Tapu Lele - Dazzling Gleam - TM99
  (786, 78600, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 53),
  -- Tapu Lele - Confide - TM100
  (786, 78600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 54),

  -- Tapu Bulu - Whirlwind - Level 1
  (787, 78700, 18, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Bulu - Disable - Level 1
  (787, 78700, 50, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Bulu - Withdraw - Level 1
  (787, 78700, 110, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tapu Bulu - Mean Look - Level 1
  (787, 78700, 212, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tapu Bulu - Superpower - Level 1
  (787, 78700, 276, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tapu Bulu - Wood Hammer - Level 1
  (787, 78700, 452, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tapu Bulu - Grassy Terrain - Level 1
  (787, 78700, 580, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tapu Bulu - Leafage - Level 1
  (787, 78700, 670, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tapu Bulu - Horn Attack - Level 8
  (787, 78700, 30, 15, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Tapu Bulu - Giga Drain - Level 14
  (787, 78700, 202, 15, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tapu Bulu - Scary Face - Level 20
  (787, 78700, 184, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Tapu Bulu - Leech Seed - Level 26
  (787, 78700, 73, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Tapu Bulu - Horn Leech - Level 32
  (787, 78700, 532, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Tapu Bulu - Rototiller - Level 38
  (787, 78700, 563, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tapu Bulu - Nature's Madness - Level 43
  (787, 78700, 717, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tapu Bulu - Zen Headbutt - Level 48
  (787, 78700, 428, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Tapu Bulu - Megahorn - Level 53
  (787, 78700, 224, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Tapu Bulu - Skull Bash - Level 58
  (787, 78700, 130, 15, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Tapu Bulu - Work Up - TM01
  (787, 78700, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 19),
  -- Tapu Bulu - Calm Mind - TM04
  (787, 78700, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Tapu Bulu - Roar - TM05
  (787, 78700, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Tapu Bulu - Toxic - TM06
  (787, 78700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Tapu Bulu - Bulk Up - TM08
  (787, 78700, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 23),
  -- Tapu Bulu - Hidden Power - TM10
  (787, 78700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Tapu Bulu - Sunny Day - TM11
  (787, 78700, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 25),
  -- Tapu Bulu - Taunt - TM12
  (787, 78700, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 26),
  -- Tapu Bulu - Hyper Beam - TM15
  (787, 78700, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 27),
  -- Tapu Bulu - Light Screen - TM16
  (787, 78700, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 28),
  -- Tapu Bulu - Protect - TM17
  (787, 78700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 29),
  -- Tapu Bulu - Safeguard - TM20
  (787, 78700, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 30),
  -- Tapu Bulu - Frustration - TM21
  (787, 78700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 31),
  -- Tapu Bulu - Solar Beam - TM22
  (787, 78700, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 32),
  -- Tapu Bulu - Return - TM27
  (787, 78700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 33),
  -- Tapu Bulu - Brick Break - TM31
  (787, 78700, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 34),
  -- Tapu Bulu - Reflect - TM33
  (787, 78700, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 35),
  -- Tapu Bulu - Rock Tomb - TM39
  (787, 78700, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 36),
  -- Tapu Bulu - Torment - TM41
  (787, 78700, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 37),
  -- Tapu Bulu - Facade - TM42
  (787, 78700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 38),
  -- Tapu Bulu - Round - TM48
  (787, 78700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Tapu Bulu - Echoed Voice - TM49
  (787, 78700, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 40),
  -- Tapu Bulu - Focus Blast - TM52
  (787, 78700, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 41),
  -- Tapu Bulu - Energy Ball - TM53
  (787, 78700, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 42),
  -- Tapu Bulu - False Swipe - TM54
  (787, 78700, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 43),
  -- Tapu Bulu - Fling - TM56
  (787, 78700, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 44),
  -- Tapu Bulu - Brutal Swing - TM59
  (787, 78700, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 45),
  -- Tapu Bulu - Payback - TM66
  (787, 78700, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 46),
  -- Tapu Bulu - Smart Strike - TM67
  (787, 78700, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 47),
  -- Tapu Bulu - Giga Impact - TM68
  (787, 78700, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 48),
  -- Tapu Bulu - Stone Edge - TM71
  (787, 78700, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 49),
  -- Tapu Bulu - Swords Dance - TM75
  (787, 78700, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 50),
  -- Tapu Bulu - Psych Up - TM77
  (787, 78700, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 51),
  -- Tapu Bulu - Rock Slide - TM80
  (787, 78700, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 52),
  -- Tapu Bulu - Grass Knot - TM86
  (787, 78700, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Tapu Bulu - Swagger - TM87
  (787, 78700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Tapu Bulu - Sleep Talk - TM88
  (787, 78700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Tapu Bulu - Substitute - TM90
  (787, 78700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Tapu Bulu - Snarl - TM95
  (787, 78700, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 57),
  -- Tapu Bulu - Nature Power - TM96
  (787, 78700, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 58),
  -- Tapu Bulu - Dazzling Gleam - TM99
  (787, 78700, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 59),
  -- Tapu Bulu - Confide - TM100
  (787, 78700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),

  -- Tapu Fini - Mist - Level 1
  (788, 78800, 54, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tapu Fini - Water Gun - Level 1
  (788, 78800, 55, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tapu Fini - Withdraw - Level 1
  (788, 78800, 110, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tapu Fini - Haze - Level 1
  (788, 78800, 114, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tapu Fini - Mean Look - Level 1
  (788, 78800, 212, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tapu Fini - Heal Pulse - Level 1
  (788, 78800, 505, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tapu Fini - Misty Terrain - Level 1
  (788, 78800, 581, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tapu Fini - Moonblast - Level 1
  (788, 78800, 585, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tapu Fini - Water Pulse - Level 8
  (788, 78800, 352, 15, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Tapu Fini - Whirlpool - Level 14
  (788, 78800, 250, 15, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tapu Fini - Soak - Level 20
  (788, 78800, 487, 15, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Tapu Fini - Refresh - Level 26
  (788, 78800, 287, 15, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Tapu Fini - Brine - Level 32
  (788, 78800, 362, 15, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Tapu Fini - Defog - Level 38
  (788, 78800, 432, 15, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tapu Fini - Nature's Madness - Level 43
  (788, 78800, 717, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tapu Fini - Muddy Water - Level 48
  (788, 78800, 330, 15, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Tapu Fini - Aqua Ring - Level 53
  (788, 78800, 392, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Tapu Fini - Hydro Pump - Level 58
  (788, 78800, 56, 15, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Tapu Fini - Calm Mind - TM04
  (788, 78800, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 19),
  -- Tapu Fini - Toxic - TM06
  (788, 78800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Tapu Fini - Hidden Power - TM10
  (788, 78800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Tapu Fini - Taunt - TM12
  (788, 78800, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Tapu Fini - Ice Beam - TM13
  (788, 78800, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Tapu Fini - Blizzard - TM14
  (788, 78800, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Tapu Fini - Hyper Beam - TM15
  (788, 78800, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Tapu Fini - Light Screen - TM16
  (788, 78800, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Tapu Fini - Protect - TM17
  (788, 78800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Tapu Fini - Rain Dance - TM18
  (788, 78800, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 28),
  -- Tapu Fini - Safeguard - TM20
  (788, 78800, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 29),
  -- Tapu Fini - Frustration - TM21
  (788, 78800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 30),
  -- Tapu Fini - Return - TM27
  (788, 78800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Tapu Fini - Shadow Ball - TM30
  (788, 78800, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 32),
  -- Tapu Fini - Double Team - TM32
  (788, 78800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Tapu Fini - Reflect - TM33
  (788, 78800, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 34),
  -- Tapu Fini - Torment - TM41
  (788, 78800, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 35),
  -- Tapu Fini - Facade - TM42
  (788, 78800, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Tapu Fini - Round - TM48
  (788, 78800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 37),
  -- Tapu Fini - Echoed Voice - TM49
  (788, 78800, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 38),
  -- Tapu Fini - Scald - TM55
  (788, 78800, 503, 15, NULL, 2, NULL, NULL, 15002055, NULL, 39),
  -- Tapu Fini - Fling - TM56
  (788, 78800, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 40),
  -- Tapu Fini - Smart Strike - TM67
  (788, 78800, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 41),
  -- Tapu Fini - Giga Impact - TM68
  (788, 78800, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 42),
  -- Tapu Fini - Psych Up - TM77
  (788, 78800, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 43),
  -- Tapu Fini - Grass Knot - TM86
  (788, 78800, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 44),
  -- Tapu Fini - Swagger - TM87
  (788, 78800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Tapu Fini - Sleep Talk - TM88
  (788, 78800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Tapu Fini - Substitute - TM90
  (788, 78800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Tapu Fini - Surf - TM94
  (788, 78800, 57, 15, NULL, 2, NULL, NULL, 15002094, NULL, 48),
  -- Tapu Fini - Nature Power - TM96
  (788, 78800, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Tapu Fini - Waterfall - TM98
  (788, 78800, 127, 15, NULL, 2, NULL, NULL, 15002098, NULL, 50),
  -- Tapu Fini - Dazzling Gleam - TM99
  (788, 78800, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 51),
  -- Tapu Fini - Confide - TM100
  (788, 78800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 52),

  -- Cosmog - Splash - Level 1
  (789, 78900, 150, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmog - Teleport - Level 23
  (789, 78900, 100, 15, NULL, 1, 23, NULL, NULL, NULL, 2),

  -- Cosmoem - Teleport - Level 1
  (790, 79000, 100, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmoem - Cosmic Power - Level 1
  (790, 79000, 322, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cosmoem - Cosmic Power - Evolution
  (790, 79000, 322, 15, NULL, 7, NULL, NULL, NULL, NULL, 3),

  -- Solgaleo - Teleport - Level 1
  (791, 79100, 100, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solgaleo - Metal Claw - Level 1
  (791, 79100, 232, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solgaleo - Cosmic Power - Level 1
  (791, 79100, 322, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solgaleo - Wake-Up Slap - Level 1
  (791, 79100, 358, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solgaleo - Sunsteel Strike - Level 1
  (791, 79100, 713, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Solgaleo - Iron Head - Level 7
  (791, 79100, 442, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Solgaleo - Metal Sound - Level 13
  (791, 79100, 319, 15, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Solgaleo - Zen Headbutt - Level 19
  (791, 79100, 428, 15, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Solgaleo - Flash Cannon - Level 23
  (791, 79100, 430, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Solgaleo - Morning Sun - Level 31
  (791, 79100, 234, 15, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Solgaleo - Crunch - Level 37
  (791, 79100, 242, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Solgaleo - Metal Burst - Level 43
  (791, 79100, 368, 15, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Solgaleo - Solar Beam - Level 47
  (791, 79100, 76, 15, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Solgaleo - Noble Roar - Level 59
  (791, 79100, 568, 15, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Solgaleo - Flare Blitz - Level 61
  (791, 79100, 394, 15, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Solgaleo - Wide Guard - Level 67
  (791, 79100, 469, 15, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Solgaleo - Giga Impact - Level 73
  (791, 79100, 416, 15, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Solgaleo - Work Up - TM01
  (791, 79100, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Solgaleo - Psyshock - TM03
  (791, 79100, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 19),
  -- Solgaleo - Calm Mind - TM04
  (791, 79100, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Solgaleo - Roar - TM05
  (791, 79100, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Solgaleo - Toxic - TM06
  (791, 79100, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Solgaleo - Hidden Power - TM10
  (791, 79100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Solgaleo - Sunny Day - TM11
  (791, 79100, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Solgaleo - Hyper Beam - TM15
  (791, 79100, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Solgaleo - Light Screen - TM16
  (791, 79100, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 26),
  -- Solgaleo - Protect - TM17
  (791, 79100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Solgaleo - Safeguard - TM20
  (791, 79100, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 28),
  -- Solgaleo - Frustration - TM21
  (791, 79100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 29),
  -- Solgaleo - Solar Beam - TM22
  (791, 79100, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 30),
  -- Solgaleo - Thunderbolt - TM24
  (791, 79100, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 31),
  -- Solgaleo - Thunder - TM25
  (791, 79100, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 32),
  -- Solgaleo - Earthquake - TM26
  (791, 79100, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 33),
  -- Solgaleo - Return - TM27
  (791, 79100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 34),
  -- Solgaleo - Psychic - TM29
  (791, 79100, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 35),
  -- Solgaleo - Double Team - TM32
  (791, 79100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 36),
  -- Solgaleo - Reflect - TM33
  (791, 79100, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 37),
  -- Solgaleo - Flamethrower - TM35
  (791, 79100, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 38),
  -- Solgaleo - Fire Blast - TM38
  (791, 79100, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 39),
  -- Solgaleo - Rock Tomb - TM39
  (791, 79100, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 40),
  -- Solgaleo - Facade - TM42
  (791, 79100, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 41),
  -- Solgaleo - Flame Charge - TM43
  (791, 79100, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 42),
  -- Solgaleo - Rest - TM44
  (791, 79100, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 43),
  -- Solgaleo - Round - TM48
  (791, 79100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 44),
  -- Solgaleo - Focus Blast - TM52
  (791, 79100, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 45),
  -- Solgaleo - Giga Impact - TM68
  (791, 79100, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Solgaleo - Stone Edge - TM71
  (791, 79100, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 47),
  -- Solgaleo - Thunder Wave - TM73
  (791, 79100, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 48),
  -- Solgaleo - Gyro Ball - TM74
  (791, 79100, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 49),
  -- Solgaleo - Psych Up - TM77
  (791, 79100, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 50),
  -- Solgaleo - Bulldoze - TM78
  (791, 79100, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 51),
  -- Solgaleo - Rock Slide - TM80
  (791, 79100, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 52),
  -- Solgaleo - Swagger - TM87
  (791, 79100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 53),
  -- Solgaleo - Sleep Talk - TM88
  (791, 79100, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 54),
  -- Solgaleo - Substitute - TM90
  (791, 79100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 55),
  -- Solgaleo - Flash Cannon - TM91
  (791, 79100, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 56),
  -- Solgaleo - Trick Room - TM92
  (791, 79100, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 57),
  -- Solgaleo - Wild Charge - TM93
  (791, 79100, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 58),
  -- Solgaleo - Snarl - TM95
  (791, 79100, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 59),
  -- Solgaleo - Confide - TM100
  (791, 79100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 60),
  -- Solgaleo - Sunsteel Strike - Evolution
  (791, 79100, 713, 15, NULL, 7, NULL, NULL, NULL, NULL, 61),

  -- Lunala - Confusion - Level 1
  (792, 79200, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunala - Hypnosis - Level 1
  (792, 79200, 95, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunala - Teleport - Level 1
  (792, 79200, 100, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunala - Cosmic Power - Level 1
  (792, 79200, 322, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunala - Moongeist Beam - Level 1
  (792, 79200, 714, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lunala - Night Shade - Level 7
  (792, 79200, 101, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Lunala - Confuse Ray - Level 13
  (792, 79200, 109, 15, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Lunala - Air Slash - Level 19
  (792, 79200, 403, 15, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Lunala - Shadow Ball - Level 23
  (792, 79200, 247, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Lunala - Moonlight - Level 31
  (792, 79200, 236, 15, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Lunala - Night Daze - Level 37
  (792, 79200, 539, 15, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Lunala - Magic Coat - Level 43
  (792, 79200, 277, 15, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Lunala - Moonblast - Level 47
  (792, 79200, 585, 15, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Lunala - Dream Eater - Level 59
  (792, 79200, 138, 15, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Lunala - Phantom Force - Level 61
  (792, 79200, 566, 15, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Lunala - Wide Guard - Level 67
  (792, 79200, 469, 15, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Lunala - Hyper Beam - Level 73
  (792, 79200, 63, 15, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Lunala - Work Up - TM01
  (792, 79200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 18),
  -- Lunala - Psyshock - TM03
  (792, 79200, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 19),
  -- Lunala - Calm Mind - TM04
  (792, 79200, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Lunala - Roar - TM05
  (792, 79200, 46, 15, NULL, 2, NULL, NULL, 15002005, NULL, 21),
  -- Lunala - Toxic - TM06
  (792, 79200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Lunala - Hidden Power - TM10
  (792, 79200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Lunala - Sunny Day - TM11
  (792, 79200, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 24),
  -- Lunala - Ice Beam - TM13
  (792, 79200, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 25),
  -- Lunala - Blizzard - TM14
  (792, 79200, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 26),
  -- Lunala - Hyper Beam - TM15
  (792, 79200, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 27),
  -- Lunala - Light Screen - TM16
  (792, 79200, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 28),
  -- Lunala - Protect - TM17
  (792, 79200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 29),
  -- Lunala - Roost - TM19
  (792, 79200, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 30),
  -- Lunala - Safeguard - TM20
  (792, 79200, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 31),
  -- Lunala - Frustration - TM21
  (792, 79200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 32),
  -- Lunala - Solar Beam - TM22
  (792, 79200, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 33),
  -- Lunala - Thunderbolt - TM24
  (792, 79200, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 34),
  -- Lunala - Thunder - TM25
  (792, 79200, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 35),
  -- Lunala - Return - TM27
  (792, 79200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 36),
  -- Lunala - Psychic - TM29
  (792, 79200, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 37),
  -- Lunala - Shadow Ball - TM30
  (792, 79200, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 38),
  -- Lunala - Double Team - TM32
  (792, 79200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 39),
  -- Lunala - Reflect - TM33
  (792, 79200, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 40),
  -- Lunala - Aerial Ace - TM40
  (792, 79200, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 41),
  -- Lunala - Facade - TM42
  (792, 79200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 42),
  -- Lunala - Rest - TM44
  (792, 79200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 43),
  -- Lunala - Round - TM48
  (792, 79200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 44),
  -- Lunala - Focus Blast - TM52
  (792, 79200, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 45),
  -- Lunala - Charge Beam - TM57
  (792, 79200, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 46),
  -- Lunala - Sky Drop - TM58
  (792, 79200, 507, 15, NULL, 2, NULL, NULL, 15002058, NULL, 47),
  -- Lunala - Will-O-Wisp - TM61
  (792, 79200, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 48),
  -- Lunala - Acrobatics - TM62
  (792, 79200, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 49),
  -- Lunala - Shadow Claw - TM65
  (792, 79200, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 50),
  -- Lunala - Giga Impact - TM68
  (792, 79200, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 51),
  -- Lunala - Thunder Wave - TM73
  (792, 79200, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 52),
  -- Lunala - Fly - TM76
  (792, 79200, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 53),
  -- Lunala - Psych Up - TM77
  (792, 79200, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 54),
  -- Lunala - Dream Eater - TM85
  (792, 79200, 138, 15, NULL, 2, NULL, NULL, 15002085, NULL, 55),
  -- Lunala - Swagger - TM87
  (792, 79200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 56),
  -- Lunala - Sleep Talk - TM88
  (792, 79200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 57),
  -- Lunala - Substitute - TM90
  (792, 79200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 58),
  -- Lunala - Trick Room - TM92
  (792, 79200, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 59),
  -- Lunala - Dazzling Gleam - TM99
  (792, 79200, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 60),
  -- Lunala - Confide - TM100
  (792, 79200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 61),
  -- Lunala - Moongeist Beam - Evolution
  (792, 79200, 714, 15, NULL, 7, NULL, NULL, NULL, NULL, 62),

  -- Nihilego - Pound - Level 1
  (793, 79300, 1, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nihilego - Acid - Level 1
  (793, 79300, 51, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nihilego - Constrict - Level 1
  (793, 79300, 132, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nihilego - Tickle - Level 1
  (793, 79300, 321, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nihilego - Guard Split - Level 1
  (793, 79300, 470, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nihilego - Power Split - Level 1
  (793, 79300, 471, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nihilego - Clear Smog - Level 7
  (793, 79300, 499, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Nihilego - Psywave - Level 13
  (793, 79300, 149, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Nihilego - Headbutt - Level 19
  (793, 79300, 29, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Nihilego - Venoshock - Level 23
  (793, 79300, 474, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Nihilego - Toxic Spikes - Level 29
  (793, 79300, 390, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Nihilego - Safeguard - Level 31
  (793, 79300, 219, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Nihilego - Power Gem - Level 37
  (793, 79300, 408, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Nihilego - Mirror Coat - Level 43
  (793, 79300, 243, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Nihilego - Acid Spray - Level 47
  (793, 79300, 491, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Nihilego - Venom Drench - Level 53
  (793, 79300, 599, 15, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Nihilego - Stealth Rock - Level 59
  (793, 79300, 446, 15, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Nihilego - Wonder Room - Level 67
  (793, 79300, 472, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Nihilego - Head Smash - Level 73
  (793, 79300, 457, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Nihilego - Psyshock - TM03
  (793, 79300, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 20),
  -- Nihilego - Toxic - TM06
  (793, 79300, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Nihilego - Venoshock - TM09
  (793, 79300, 474, 15, NULL, 2, NULL, NULL, 15002009, NULL, 22),
  -- Nihilego - Hidden Power - TM10
  (793, 79300, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 23),
  -- Nihilego - Light Screen - TM16
  (793, 79300, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Nihilego - Protect - TM17
  (793, 79300, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Nihilego - Safeguard - TM20
  (793, 79300, 219, 15, NULL, 2, NULL, NULL, 15002020, NULL, 26),
  -- Nihilego - Frustration - TM21
  (793, 79300, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Nihilego - Thunderbolt - TM24
  (793, 79300, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 28),
  -- Nihilego - Thunder - TM25
  (793, 79300, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 29),
  -- Nihilego - Return - TM27
  (793, 79300, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Nihilego - Psychic - TM29
  (793, 79300, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 31),
  -- Nihilego - Double Team - TM32
  (793, 79300, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Nihilego - Reflect - TM33
  (793, 79300, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 33),
  -- Nihilego - Sludge Wave - TM34
  (793, 79300, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 34),
  -- Nihilego - Sludge Bomb - TM36
  (793, 79300, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 35),
  -- Nihilego - Sandstorm - TM37
  (793, 79300, 201, 15, NULL, 2, NULL, NULL, 15002037, NULL, 36),
  -- Nihilego - Facade - TM42
  (793, 79300, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 37),
  -- Nihilego - Rest - TM44
  (793, 79300, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 38),
  -- Nihilego - Round - TM48
  (793, 79300, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Nihilego - Echoed Voice - TM49
  (793, 79300, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 40),
  -- Nihilego - Charge Beam - TM57
  (793, 79300, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 41),
  -- Nihilego - Brutal Swing - TM59
  (793, 79300, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 42),
  -- Nihilego - Thunder Wave - TM73
  (793, 79300, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 43),
  -- Nihilego - Poison Jab - TM84
  (793, 79300, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 44),
  -- Nihilego - Grass Knot - TM86
  (793, 79300, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 45),
  -- Nihilego - Swagger - TM87
  (793, 79300, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 46),
  -- Nihilego - Sleep Talk - TM88
  (793, 79300, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 47),
  -- Nihilego - Substitute - TM90
  (793, 79300, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 48),
  -- Nihilego - Trick Room - TM92
  (793, 79300, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 49),
  -- Nihilego - Dazzling Gleam - TM99
  (793, 79300, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 50),
  -- Nihilego - Confide - TM100
  (793, 79300, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),

  -- Buzzwole - Ice Punch - Level 1
  (794, 79400, 8, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buzzwole - Thunder Punch - Level 1
  (794, 79400, 9, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buzzwole - Harden - Level 1
  (794, 79400, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buzzwole - Focus Energy - Level 1
  (794, 79400, 116, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Buzzwole - Reversal - Level 1
  (794, 79400, 179, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Buzzwole - Fell Stinger - Level 1
  (794, 79400, 565, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Buzzwole - Power-Up Punch - Level 1
  (794, 79400, 612, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Buzzwole - Comet Punch - Level 7
  (794, 79400, 4, 15, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Buzzwole - Bulk Up - Level 13
  (794, 79400, 339, 15, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Buzzwole - Vital Throw - Level 19
  (794, 79400, 233, 15, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Buzzwole - Endure - Level 23
  (794, 79400, 203, 15, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Buzzwole - Leech Life - Level 29
  (794, 79400, 141, 15, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Buzzwole - Taunt - Level 31
  (794, 79400, 269, 15, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Buzzwole - Mega Punch - Level 37
  (794, 79400, 5, 15, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Buzzwole - Counter - Level 43
  (794, 79400, 68, 15, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Buzzwole - Hammer Arm - Level 47
  (794, 79400, 359, 15, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Buzzwole - Lunge - Level 53
  (794, 79400, 679, 15, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Buzzwole - Dynamic Punch - Level 59
  (794, 79400, 223, 15, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Buzzwole - Superpower - Level 67
  (794, 79400, 276, 15, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Buzzwole - Focus Punch - Level 73
  (794, 79400, 264, 15, NULL, 1, 73, NULL, NULL, NULL, 20),
  -- Buzzwole - Work Up - TM01
  (794, 79400, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 21),
  -- Buzzwole - Toxic - TM06
  (794, 79400, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 22),
  -- Buzzwole - Bulk Up - TM08
  (794, 79400, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 23),
  -- Buzzwole - Hidden Power - TM10
  (794, 79400, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 24),
  -- Buzzwole - Taunt - TM12
  (794, 79400, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 25),
  -- Buzzwole - Protect - TM17
  (794, 79400, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Buzzwole - Roost - TM19
  (794, 79400, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 27),
  -- Buzzwole - Frustration - TM21
  (794, 79400, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Buzzwole - Smack Down - TM23
  (794, 79400, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Buzzwole - Earthquake - TM26
  (794, 79400, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 30),
  -- Buzzwole - Return - TM27
  (794, 79400, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Buzzwole - Leech Life - TM28
  (794, 79400, 141, 15, NULL, 2, NULL, NULL, 15002028, NULL, 32),
  -- Buzzwole - Brick Break - TM31
  (794, 79400, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 33),
  -- Buzzwole - Double Team - TM32
  (794, 79400, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 34),
  -- Buzzwole - Rock Tomb - TM39
  (794, 79400, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Buzzwole - Facade - TM42
  (794, 79400, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Buzzwole - Rest - TM44
  (794, 79400, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Buzzwole - Low Sweep - TM47
  (794, 79400, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 38),
  -- Buzzwole - Round - TM48
  (794, 79400, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Buzzwole - False Swipe - TM54
  (794, 79400, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 40),
  -- Buzzwole - Fling - TM56
  (794, 79400, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 41),
  -- Buzzwole - Payback - TM66
  (794, 79400, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 42),
  -- Buzzwole - Giga Impact - TM68
  (794, 79400, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 43),
  -- Buzzwole - Stone Edge - TM71
  (794, 79400, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 44),
  -- Buzzwole - Gyro Ball - TM74
  (794, 79400, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 45),
  -- Buzzwole - Bulldoze - TM78
  (794, 79400, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 46),
  -- Buzzwole - Rock Slide - TM80
  (794, 79400, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 47),
  -- Buzzwole - Poison Jab - TM84
  (794, 79400, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 48),
  -- Buzzwole - Swagger - TM87
  (794, 79400, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 49),
  -- Buzzwole - Sleep Talk - TM88
  (794, 79400, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 50),
  -- Buzzwole - Substitute - TM90
  (794, 79400, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 51),
  -- Buzzwole - Confide - TM100
  (794, 79400, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 52),

  -- Pheromosa - Double Kick - Level 1
  (795, 79500, 24, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pheromosa - Leer - Level 1
  (795, 79500, 43, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pheromosa - Low Kick - Level 1
  (795, 79500, 67, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pheromosa - Rapid Spin - Level 1
  (795, 79500, 229, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pheromosa - Quiver Dance - Level 1
  (795, 79500, 483, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pheromosa - Quick Guard - Level 1
  (795, 79500, 501, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pheromosa - Swift - Level 7
  (795, 79500, 129, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Pheromosa - Stomp - Level 13
  (795, 79500, 23, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Pheromosa - Feint - Level 19
  (795, 79500, 364, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Pheromosa - Silver Wind - Level 23
  (795, 79500, 318, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Pheromosa - Bounce - Level 29
  (795, 79500, 340, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Pheromosa - Jump Kick - Level 31
  (795, 79500, 26, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pheromosa - Agility - Level 37
  (795, 79500, 97, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Pheromosa - Triple Kick - Level 43
  (795, 79500, 167, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Pheromosa - Lunge - Level 47
  (795, 79500, 679, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Pheromosa - Bug Buzz - Level 53
  (795, 79500, 405, 15, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Pheromosa - Me First - Level 59
  (795, 79500, 382, 15, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Pheromosa - High Jump Kick - Level 67
  (795, 79500, 136, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Pheromosa - Speed Swap - Level 73
  (795, 79500, 683, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Pheromosa - Toxic - TM06
  (795, 79500, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Pheromosa - Hidden Power - TM10
  (795, 79500, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Pheromosa - Taunt - TM12
  (795, 79500, 269, 15, NULL, 2, NULL, NULL, 15002012, NULL, 22),
  -- Pheromosa - Ice Beam - TM13
  (795, 79500, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Pheromosa - Blizzard - TM14
  (795, 79500, 59, 15, NULL, 2, NULL, NULL, 15002014, NULL, 24),
  -- Pheromosa - Hyper Beam - TM15
  (795, 79500, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 25),
  -- Pheromosa - Protect - TM17
  (795, 79500, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Pheromosa - Roost - TM19
  (795, 79500, 355, 15, NULL, 2, NULL, NULL, 15002019, NULL, 27),
  -- Pheromosa - Frustration - TM21
  (795, 79500, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Pheromosa - Return - TM27
  (795, 79500, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Pheromosa - Brick Break - TM31
  (795, 79500, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 30),
  -- Pheromosa - Double Team - TM32
  (795, 79500, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 31),
  -- Pheromosa - Torment - TM41
  (795, 79500, 259, 15, NULL, 2, NULL, NULL, 15002041, NULL, 32),
  -- Pheromosa - Facade - TM42
  (795, 79500, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 33),
  -- Pheromosa - Rest - TM44
  (795, 79500, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Pheromosa - Low Sweep - TM47
  (795, 79500, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 35),
  -- Pheromosa - Round - TM48
  (795, 79500, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Pheromosa - Echoed Voice - TM49
  (795, 79500, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 37),
  -- Pheromosa - Focus Blast - TM52
  (795, 79500, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 38),
  -- Pheromosa - False Swipe - TM54
  (795, 79500, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 39),
  -- Pheromosa - Fling - TM56
  (795, 79500, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 40),
  -- Pheromosa - Giga Impact - TM68
  (795, 79500, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 41),
  -- Pheromosa - Poison Jab - TM84
  (795, 79500, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 42),
  -- Pheromosa - Swagger - TM87
  (795, 79500, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 43),
  -- Pheromosa - Sleep Talk - TM88
  (795, 79500, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 44),
  -- Pheromosa - U-turn - TM89
  (795, 79500, 369, 15, NULL, 2, NULL, NULL, 15002089, NULL, 45),
  -- Pheromosa - Substitute - TM90
  (795, 79500, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 46),
  -- Pheromosa - Confide - TM100
  (795, 79500, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 47),

  -- Xurkitree - Wrap - Level 1
  (796, 79600, 35, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xurkitree - Thunder Shock - Level 1
  (796, 79600, 84, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xurkitree - Spark - Level 1
  (796, 79600, 209, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Xurkitree - Charge - Level 1
  (796, 79600, 268, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Xurkitree - Tail Glow - Level 1
  (796, 79600, 294, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Xurkitree - Thunder Wave - Level 7
  (796, 79600, 86, 15, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Xurkitree - Shock Wave - Level 13
  (796, 79600, 351, 15, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Xurkitree - Ingrain - Level 19
  (796, 79600, 275, 15, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Xurkitree - Thunder Punch - Level 23
  (796, 79600, 9, 15, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Xurkitree - Eerie Impulse - Level 29
  (796, 79600, 598, 15, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Xurkitree - Signal Beam - Level 31
  (796, 79600, 324, 15, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Xurkitree - Thunderbolt - Level 37
  (796, 79600, 85, 15, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Xurkitree - Hypnosis - Level 43
  (796, 79600, 95, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Xurkitree - Discharge - Level 47
  (796, 79600, 435, 15, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Xurkitree - Electric Terrain - Level 53
  (796, 79600, 604, 15, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Xurkitree - Power Whip - Level 59
  (796, 79600, 438, 15, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Xurkitree - Ion Deluge - Level 67
  (796, 79600, 569, 15, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Xurkitree - Zap Cannon - Level 73
  (796, 79600, 192, 15, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Xurkitree - Calm Mind - TM04
  (796, 79600, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 19),
  -- Xurkitree - Toxic - TM06
  (796, 79600, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Xurkitree - Hidden Power - TM10
  (796, 79600, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Xurkitree - Sunny Day - TM11
  (796, 79600, 241, 15, NULL, 2, NULL, NULL, 15002011, NULL, 22),
  -- Xurkitree - Hyper Beam - TM15
  (796, 79600, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Xurkitree - Light Screen - TM16
  (796, 79600, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Xurkitree - Protect - TM17
  (796, 79600, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Xurkitree - Rain Dance - TM18
  (796, 79600, 240, 15, NULL, 2, NULL, NULL, 15002018, NULL, 26),
  -- Xurkitree - Frustration - TM21
  (796, 79600, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Xurkitree - Solar Beam - TM22
  (796, 79600, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 28),
  -- Xurkitree - Thunderbolt - TM24
  (796, 79600, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 29),
  -- Xurkitree - Thunder - TM25
  (796, 79600, 87, 15, NULL, 2, NULL, NULL, 15002025, NULL, 30),
  -- Xurkitree - Return - TM27
  (796, 79600, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 31),
  -- Xurkitree - Double Team - TM32
  (796, 79600, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Xurkitree - Reflect - TM33
  (796, 79600, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 33),
  -- Xurkitree - Facade - TM42
  (796, 79600, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 34),
  -- Xurkitree - Rest - TM44
  (796, 79600, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 35),
  -- Xurkitree - Round - TM48
  (796, 79600, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 36),
  -- Xurkitree - Energy Ball - TM53
  (796, 79600, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 37),
  -- Xurkitree - Fling - TM56
  (796, 79600, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 38),
  -- Xurkitree - Charge Beam - TM57
  (796, 79600, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 39),
  -- Xurkitree - Brutal Swing - TM59
  (796, 79600, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 40),
  -- Xurkitree - Giga Impact - TM68
  (796, 79600, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 41),
  -- Xurkitree - Volt Switch - TM72
  (796, 79600, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 42),
  -- Xurkitree - Thunder Wave - TM73
  (796, 79600, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 43),
  -- Xurkitree - Grass Knot - TM86
  (796, 79600, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 44),
  -- Xurkitree - Swagger - TM87
  (796, 79600, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 45),
  -- Xurkitree - Sleep Talk - TM88
  (796, 79600, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 46),
  -- Xurkitree - Substitute - TM90
  (796, 79600, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 47),
  -- Xurkitree - Wild Charge - TM93
  (796, 79600, 528, 15, NULL, 2, NULL, NULL, 15002093, NULL, 48),
  -- Xurkitree - Nature Power - TM96
  (796, 79600, 267, 15, NULL, 2, NULL, NULL, 15002096, NULL, 49),
  -- Xurkitree - Dazzling Gleam - TM99
  (796, 79600, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 50),
  -- Xurkitree - Confide - TM100
  (796, 79600, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 51),

  -- Celesteela - Tackle - Level 1
  (797, 79700, 33, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celesteela - Absorb - Level 1
  (797, 79700, 71, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celesteela - Harden - Level 1
  (797, 79700, 106, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celesteela - Ingrain - Level 1
  (797, 79700, 275, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celesteela - Air Slash - Level 1
  (797, 79700, 403, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Celesteela - Wide Guard - Level 1
  (797, 79700, 469, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Celesteela - Smack Down - Level 7
  (797, 79700, 479, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Celesteela - Mega Drain - Level 13
  (797, 79700, 72, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Celesteela - Leech Seed - Level 19
  (797, 79700, 73, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Celesteela - Metal Sound - Level 23
  (797, 79700, 319, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Celesteela - Iron Head - Level 29
  (797, 79700, 442, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Celesteela - Giga Drain - Level 31
  (797, 79700, 202, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Celesteela - Flash Cannon - Level 37
  (797, 79700, 430, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Celesteela - Autotomize - Level 43
  (797, 79700, 475, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Celesteela - Seed Bomb - Level 47
  (797, 79700, 402, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Celesteela - Skull Bash - Level 53
  (797, 79700, 130, 15, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Celesteela - Iron Defense - Level 59
  (797, 79700, 334, 15, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Celesteela - Heavy Slam - Level 67
  (797, 79700, 484, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Celesteela - Double-Edge - Level 73
  (797, 79700, 38, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Celesteela - Toxic - TM06
  (797, 79700, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 20),
  -- Celesteela - Hidden Power - TM10
  (797, 79700, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 21),
  -- Celesteela - Hyper Beam - TM15
  (797, 79700, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 22),
  -- Celesteela - Protect - TM17
  (797, 79700, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Celesteela - Frustration - TM21
  (797, 79700, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Celesteela - Solar Beam - TM22
  (797, 79700, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 25),
  -- Celesteela - Smack Down - TM23
  (797, 79700, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 26),
  -- Celesteela - Earthquake - TM26
  (797, 79700, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Celesteela - Return - TM27
  (797, 79700, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Celesteela - Double Team - TM32
  (797, 79700, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 29),
  -- Celesteela - Flamethrower - TM35
  (797, 79700, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 30),
  -- Celesteela - Fire Blast - TM38
  (797, 79700, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 31),
  -- Celesteela - Facade - TM42
  (797, 79700, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 32),
  -- Celesteela - Flame Charge - TM43
  (797, 79700, 488, 15, NULL, 2, NULL, NULL, 15002043, NULL, 33),
  -- Celesteela - Rest - TM44
  (797, 79700, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 34),
  -- Celesteela - Round - TM48
  (797, 79700, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Celesteela - Energy Ball - TM53
  (797, 79700, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 36),
  -- Celesteela - Brutal Swing - TM59
  (797, 79700, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 37),
  -- Celesteela - Acrobatics - TM62
  (797, 79700, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 38),
  -- Celesteela - Explosion - TM64
  (797, 79700, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 39),
  -- Celesteela - Smart Strike - TM67
  (797, 79700, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 40),
  -- Celesteela - Giga Impact - TM68
  (797, 79700, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 41),
  -- Celesteela - Stone Edge - TM71
  (797, 79700, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 42),
  -- Celesteela - Gyro Ball - TM74
  (797, 79700, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 43),
  -- Celesteela - Fly - TM76
  (797, 79700, 19, 15, NULL, 2, NULL, NULL, 15002076, NULL, 44),
  -- Celesteela - Bulldoze - TM78
  (797, 79700, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 45),
  -- Celesteela - Rock Slide - TM80
  (797, 79700, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 46),
  -- Celesteela - Grass Knot - TM86
  (797, 79700, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 47),
  -- Celesteela - Swagger - TM87
  (797, 79700, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 48),
  -- Celesteela - Sleep Talk - TM88
  (797, 79700, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 49),
  -- Celesteela - Substitute - TM90
  (797, 79700, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 50),
  -- Celesteela - Flash Cannon - TM91
  (797, 79700, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 51),
  -- Celesteela - Confide - TM100
  (797, 79700, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 52),

  -- Kartana - Cut - Level 1
  (798, 79800, 15, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kartana - Fury Cutter - Level 1
  (798, 79800, 210, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kartana - Air Cutter - Level 1
  (798, 79800, 314, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kartana - Vacuum Wave - Level 1
  (798, 79800, 410, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kartana - Defog - Level 1
  (798, 79800, 432, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kartana - Sacred Sword - Level 1
  (798, 79800, 533, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kartana - False Swipe - Level 7
  (798, 79800, 206, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Kartana - Razor Leaf - Level 13
  (798, 79800, 75, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Kartana - Synthesis - Level 19
  (798, 79800, 235, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Kartana - Aerial Ace - Level 23
  (798, 79800, 332, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Kartana - Laser Focus - Level 29
  (798, 79800, 673, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Kartana - Night Slash - Level 31
  (798, 79800, 400, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Kartana - Swords Dance - Level 37
  (798, 79800, 14, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Kartana - Leaf Blade - Level 43
  (798, 79800, 348, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Kartana - X-Scissor - Level 47
  (798, 79800, 404, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Kartana - Detect - Level 53
  (798, 79800, 197, 15, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Kartana - Air Slash - Level 59
  (798, 79800, 403, 15, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Kartana - Psycho Cut - Level 67
  (798, 79800, 427, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Kartana - Guillotine - Level 73
  (798, 79800, 12, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Kartana - Calm Mind - TM04
  (798, 79800, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Kartana - Toxic - TM06
  (798, 79800, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Kartana - Hidden Power - TM10
  (798, 79800, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Kartana - Protect - TM17
  (798, 79800, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 23),
  -- Kartana - Frustration - TM21
  (798, 79800, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 24),
  -- Kartana - Return - TM27
  (798, 79800, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 25),
  -- Kartana - Brick Break - TM31
  (798, 79800, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 26),
  -- Kartana - Double Team - TM32
  (798, 79800, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 27),
  -- Kartana - Aerial Ace - TM40
  (798, 79800, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 28),
  -- Kartana - Rest - TM44
  (798, 79800, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 29),
  -- Kartana - Round - TM48
  (798, 79800, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 30),
  -- Kartana - False Swipe - TM54
  (798, 79800, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 31),
  -- Kartana - Smart Strike - TM67
  (798, 79800, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 32),
  -- Kartana - Giga Impact - TM68
  (798, 79800, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 33),
  -- Kartana - Swords Dance - TM75
  (798, 79800, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 34),
  -- Kartana - X-Scissor - TM81
  (798, 79800, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 35),
  -- Kartana - Swagger - TM87
  (798, 79800, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 36),
  -- Kartana - Sleep Talk - TM88
  (798, 79800, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 37),
  -- Kartana - Substitute - TM90
  (798, 79800, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 38),
  -- Kartana - Confide - TM100
  (798, 79800, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 39),

  -- Guzzlord - Bite - Level 1
  (799, 79900, 44, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Guzzlord - Dragon Rage - Level 1
  (799, 79900, 82, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Guzzlord - Stockpile - Level 1
  (799, 79900, 254, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Guzzlord - Swallow - Level 1
  (799, 79900, 256, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Guzzlord - Wide Guard - Level 1
  (799, 79900, 469, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Guzzlord - Belch - Level 1
  (799, 79900, 562, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Guzzlord - Stomp - Level 7
  (799, 79900, 23, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Guzzlord - Brutal Swing - Level 13
  (799, 79900, 693, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Guzzlord - Steamroller - Level 19
  (799, 79900, 537, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Guzzlord - Dragon Tail - Level 23
  (799, 79900, 525, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Guzzlord - Iron Tail - Level 29
  (799, 79900, 231, 15, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Guzzlord - Stomping Tantrum - Level 31
  (799, 79900, 707, 15, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Guzzlord - Crunch - Level 37
  (799, 79900, 242, 15, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Guzzlord - Hammer Arm - Level 43
  (799, 79900, 359, 15, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Guzzlord - Thrash - Level 47
  (799, 79900, 37, 15, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Guzzlord - Gastro Acid - Level 53
  (799, 79900, 380, 15, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Guzzlord - Heavy Slam - Level 59
  (799, 79900, 484, 15, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Guzzlord - Wring Out - Level 67
  (799, 79900, 378, 15, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Guzzlord - Dragon Rush - Level 73
  (799, 79900, 407, 15, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Guzzlord - Dragon Claw - TM02
  (799, 79900, 337, 15, NULL, 2, NULL, NULL, 15002002, NULL, 20),
  -- Guzzlord - Toxic - TM06
  (799, 79900, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Guzzlord - Hidden Power - TM10
  (799, 79900, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Guzzlord - Hyper Beam - TM15
  (799, 79900, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Guzzlord - Protect - TM17
  (799, 79900, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 24),
  -- Guzzlord - Frustration - TM21
  (799, 79900, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 25),
  -- Guzzlord - Smack Down - TM23
  (799, 79900, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 26),
  -- Guzzlord - Earthquake - TM26
  (799, 79900, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 27),
  -- Guzzlord - Return - TM27
  (799, 79900, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 28),
  -- Guzzlord - Brick Break - TM31
  (799, 79900, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 29),
  -- Guzzlord - Double Team - TM32
  (799, 79900, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 30),
  -- Guzzlord - Sludge Wave - TM34
  (799, 79900, 482, 15, NULL, 2, NULL, NULL, 15002034, NULL, 31),
  -- Guzzlord - Flamethrower - TM35
  (799, 79900, 53, 15, NULL, 2, NULL, NULL, 15002035, NULL, 32),
  -- Guzzlord - Sludge Bomb - TM36
  (799, 79900, 188, 15, NULL, 2, NULL, NULL, 15002036, NULL, 33),
  -- Guzzlord - Fire Blast - TM38
  (799, 79900, 126, 15, NULL, 2, NULL, NULL, 15002038, NULL, 34),
  -- Guzzlord - Rock Tomb - TM39
  (799, 79900, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 35),
  -- Guzzlord - Facade - TM42
  (799, 79900, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Guzzlord - Rest - TM44
  (799, 79900, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Guzzlord - Thief - TM46
  (799, 79900, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 38),
  -- Guzzlord - Round - TM48
  (799, 79900, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Guzzlord - Fling - TM56
  (799, 79900, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 40),
  -- Guzzlord - Brutal Swing - TM59
  (799, 79900, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 41),
  -- Guzzlord - Shadow Claw - TM65
  (799, 79900, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 42),
  -- Guzzlord - Payback - TM66
  (799, 79900, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 43),
  -- Guzzlord - Giga Impact - TM68
  (799, 79900, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 44),
  -- Guzzlord - Stone Edge - TM71
  (799, 79900, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 45),
  -- Guzzlord - Gyro Ball - TM74
  (799, 79900, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 46),
  -- Guzzlord - Bulldoze - TM78
  (799, 79900, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 47),
  -- Guzzlord - Rock Slide - TM80
  (799, 79900, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 48),
  -- Guzzlord - Dragon Tail - TM82
  (799, 79900, 525, 15, NULL, 2, NULL, NULL, 15002082, NULL, 49),
  -- Guzzlord - Poison Jab - TM84
  (799, 79900, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 50),
  -- Guzzlord - Sleep Talk - TM88
  (799, 79900, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 51),
  -- Guzzlord - Substitute - TM90
  (799, 79900, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 52),
  -- Guzzlord - Snarl - TM95
  (799, 79900, 555, 15, NULL, 2, NULL, NULL, 15002095, NULL, 53),
  -- Guzzlord - Dark Pulse - TM97
  (799, 79900, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 54),
  -- Guzzlord - Draco Meteor - Tutor
  (799, 79900, 434, 15, NULL, 6, NULL, NULL, NULL, 'Sun / Moon Move Tutor.', 55),

  -- Necrozma - Confusion - Level 1
  (800, 80000, 93, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma - Metal Claw - Level 1
  (800, 80000, 232, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma - Morning Sun - Level 1
  (800, 80000, 234, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma - Moonlight - Level 1
  (800, 80000, 236, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma - Mirror Shot - Level 1
  (800, 80000, 429, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma - Charge Beam - Level 1
  (800, 80000, 451, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Necrozma - Slash - Level 7
  (800, 80000, 163, 15, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Necrozma - Stored Power - Level 13
  (800, 80000, 500, 15, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Necrozma - Rock Blast - Level 19
  (800, 80000, 350, 15, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Necrozma - Night Slash - Level 23
  (800, 80000, 400, 15, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Necrozma - Gravity - Level 31
  (800, 80000, 356, 15, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Necrozma - Psycho Cut - Level 37
  (800, 80000, 427, 15, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Necrozma - Power Gem - Level 43
  (800, 80000, 408, 15, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Necrozma - Autotomize - Level 47
  (800, 80000, 475, 15, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Necrozma - Stealth Rock - Level 53
  (800, 80000, 446, 15, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Necrozma - Iron Defense - Level 59
  (800, 80000, 334, 15, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Necrozma - Wring Out - Level 67
  (800, 80000, 378, 15, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Necrozma - Prismatic Laser - Level 73
  (800, 80000, 711, 15, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Necrozma - Psyshock - TM03
  (800, 80000, 473, 15, NULL, 2, NULL, NULL, 15002003, NULL, 19),
  -- Necrozma - Calm Mind - TM04
  (800, 80000, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 20),
  -- Necrozma - Toxic - TM06
  (800, 80000, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 21),
  -- Necrozma - Hidden Power - TM10
  (800, 80000, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Necrozma - Hyper Beam - TM15
  (800, 80000, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 23),
  -- Necrozma - Light Screen - TM16
  (800, 80000, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 24),
  -- Necrozma - Protect - TM17
  (800, 80000, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 25),
  -- Necrozma - Frustration - TM21
  (800, 80000, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 26),
  -- Necrozma - Solar Beam - TM22
  (800, 80000, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 27),
  -- Necrozma - Earthquake - TM26
  (800, 80000, 89, 15, NULL, 2, NULL, NULL, 15002026, NULL, 28),
  -- Necrozma - Return - TM27
  (800, 80000, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 29),
  -- Necrozma - Psychic - TM29
  (800, 80000, 94, 15, NULL, 2, NULL, NULL, 15002029, NULL, 30),
  -- Necrozma - Brick Break - TM31
  (800, 80000, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 31),
  -- Necrozma - Double Team - TM32
  (800, 80000, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 32),
  -- Necrozma - Reflect - TM33
  (800, 80000, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 33),
  -- Necrozma - Rock Tomb - TM39
  (800, 80000, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 34),
  -- Necrozma - Aerial Ace - TM40
  (800, 80000, 332, 15, NULL, 2, NULL, NULL, 15002040, NULL, 35),
  -- Necrozma - Facade - TM42
  (800, 80000, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 36),
  -- Necrozma - Rest - TM44
  (800, 80000, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 37),
  -- Necrozma - Thief - TM46
  (800, 80000, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 38),
  -- Necrozma - Round - TM48
  (800, 80000, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Necrozma - Fling - TM56
  (800, 80000, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 40),
  -- Necrozma - Charge Beam - TM57
  (800, 80000, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 41),
  -- Necrozma - Brutal Swing - TM59
  (800, 80000, 693, 15, NULL, 2, NULL, NULL, 15002059, NULL, 42),
  -- Necrozma - Embargo - TM63
  (800, 80000, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 43),
  -- Necrozma - Shadow Claw - TM65
  (800, 80000, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 44),
  -- Necrozma - Smart Strike - TM67
  (800, 80000, 684, 15, NULL, 2, NULL, NULL, 15002067, NULL, 45),
  -- Necrozma - Giga Impact - TM68
  (800, 80000, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 46),
  -- Necrozma - Rock Polish - TM69
  (800, 80000, 397, 15, NULL, 2, NULL, NULL, 15002069, NULL, 47),
  -- Necrozma - Stone Edge - TM71
  (800, 80000, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 48),
  -- Necrozma - Thunder Wave - TM73
  (800, 80000, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 49),
  -- Necrozma - Gyro Ball - TM74
  (800, 80000, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 50),
  -- Necrozma - Swords Dance - TM75
  (800, 80000, 14, 15, NULL, 2, NULL, NULL, 15002075, NULL, 51),
  -- Necrozma - Bulldoze - TM78
  (800, 80000, 523, 15, NULL, 2, NULL, NULL, 15002078, NULL, 52),
  -- Necrozma - Rock Slide - TM80
  (800, 80000, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 53),
  -- Necrozma - X-Scissor - TM81
  (800, 80000, 404, 15, NULL, 2, NULL, NULL, 15002081, NULL, 54),
  -- Necrozma - Swagger - TM87
  (800, 80000, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 55),
  -- Necrozma - Sleep Talk - TM88
  (800, 80000, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 56),
  -- Necrozma - Substitute - TM90
  (800, 80000, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 57),
  -- Necrozma - Flash Cannon - TM91
  (800, 80000, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 58),
  -- Necrozma - Trick Room - TM92
  (800, 80000, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 59),
  -- Necrozma - Dark Pulse - TM97
  (800, 80000, 399, 15, NULL, 2, NULL, NULL, 15002097, NULL, 60),
  -- Necrozma - Confide - TM100
  (800, 80000, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 61),

  -- Magearna - Sonic Boom - Level 1
  (801, 80100, 49, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magearna - Psybeam - Level 1
  (801, 80100, 60, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magearna - Defense Curl - Level 1
  (801, 80100, 111, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magearna - Helping Hand - Level 1
  (801, 80100, 270, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magearna - Iron Head - Level 1
  (801, 80100, 442, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magearna - Shift Gear - Level 1
  (801, 80100, 508, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magearna - Crafty Shield - Level 1
  (801, 80100, 578, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magearna - Gear Up - Level 1
  (801, 80100, 674, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Magearna - Lucky Chant - Level 9
  (801, 80100, 381, 15, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Magearna - Aurora Beam - Level 17
  (801, 80100, 62, 15, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Magearna - Mirror Shot - Level 25
  (801, 80100, 429, 15, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Magearna - Mind Reader - Level 33
  (801, 80100, 170, 15, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Magearna - Flash Cannon - Level 41
  (801, 80100, 430, 15, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Magearna - Fleur Cannon - Level 49
  (801, 80100, 705, 15, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Magearna - Iron Defense - Level 57
  (801, 80100, 334, 15, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Magearna - Pain Split - Level 65
  (801, 80100, 220, 15, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Magearna - Synchronoise - Level 73
  (801, 80100, 485, 15, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Magearna - Aura Sphere - Level 81
  (801, 80100, 396, 15, NULL, 1, 81, NULL, NULL, NULL, 18),
  -- Magearna - Heart Swap - Level 89
  (801, 80100, 391, 15, NULL, 1, 89, NULL, NULL, NULL, 19),
  -- Magearna - Trump Card - Level 97
  (801, 80100, 376, 15, NULL, 1, 97, NULL, NULL, NULL, 20),
  -- Magearna - Calm Mind - TM04
  (801, 80100, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 21),
  -- Magearna - Hidden Power - TM10
  (801, 80100, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 22),
  -- Magearna - Ice Beam - TM13
  (801, 80100, 58, 15, NULL, 2, NULL, NULL, 15002013, NULL, 23),
  -- Magearna - Hyper Beam - TM15
  (801, 80100, 63, 15, NULL, 2, NULL, NULL, 15002015, NULL, 24),
  -- Magearna - Light Screen - TM16
  (801, 80100, 113, 15, NULL, 2, NULL, NULL, 15002016, NULL, 25),
  -- Magearna - Protect - TM17
  (801, 80100, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 26),
  -- Magearna - Frustration - TM21
  (801, 80100, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 27),
  -- Magearna - Solar Beam - TM22
  (801, 80100, 76, 15, NULL, 2, NULL, NULL, 15002022, NULL, 28),
  -- Magearna - Thunderbolt - TM24
  (801, 80100, 85, 15, NULL, 2, NULL, NULL, 15002024, NULL, 29),
  -- Magearna - Return - TM27
  (801, 80100, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Magearna - Shadow Ball - TM30
  (801, 80100, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 31),
  -- Magearna - Brick Break - TM31
  (801, 80100, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 32),
  -- Magearna - Double Team - TM32
  (801, 80100, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Magearna - Reflect - TM33
  (801, 80100, 115, 15, NULL, 2, NULL, NULL, 15002033, NULL, 34),
  -- Magearna - Round - TM48
  (801, 80100, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 35),
  -- Magearna - Echoed Voice - TM49
  (801, 80100, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 36),
  -- Magearna - Focus Blast - TM52
  (801, 80100, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 37),
  -- Magearna - Energy Ball - TM53
  (801, 80100, 412, 15, NULL, 2, NULL, NULL, 15002053, NULL, 38),
  -- Magearna - False Swipe - TM54
  (801, 80100, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 39),
  -- Magearna - Charge Beam - TM57
  (801, 80100, 451, 15, NULL, 2, NULL, NULL, 15002057, NULL, 40),
  -- Magearna - Embargo - TM63
  (801, 80100, 373, 15, NULL, 2, NULL, NULL, 15002063, NULL, 41),
  -- Magearna - Explosion - TM64
  (801, 80100, 153, 15, NULL, 2, NULL, NULL, 15002064, NULL, 42),
  -- Magearna - Giga Impact - TM68
  (801, 80100, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 43),
  -- Magearna - Volt Switch - TM72
  (801, 80100, 521, 15, NULL, 2, NULL, NULL, 15002072, NULL, 44),
  -- Magearna - Thunder Wave - TM73
  (801, 80100, 86, 15, NULL, 2, NULL, NULL, 15002073, NULL, 45),
  -- Magearna - Gyro Ball - TM74
  (801, 80100, 360, 15, NULL, 2, NULL, NULL, 15002074, NULL, 46),
  -- Magearna - Grass Knot - TM86
  (801, 80100, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 47),
  -- Magearna - Swagger - TM87
  (801, 80100, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 48),
  -- Magearna - Substitute - TM90
  (801, 80100, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 49),
  -- Magearna - Flash Cannon - TM91
  (801, 80100, 430, 15, NULL, 2, NULL, NULL, 15002091, NULL, 50),
  -- Magearna - Trick Room - TM92
  (801, 80100, 433, 15, NULL, 2, NULL, NULL, 15002092, NULL, 51),
  -- Magearna - Dazzling Gleam - TM99
  (801, 80100, 605, 15, NULL, 2, NULL, NULL, 15002099, NULL, 52),
  -- Magearna - Confide - TM100
  (801, 80100, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 53),

  -- Marshadow - Fire Punch - Level 1
  (802, 80200, 7, 15, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshadow - Ice Punch - Level 1
  (802, 80200, 8, 15, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshadow - Thunder Punch - Level 1
  (802, 80200, 9, 15, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshadow - Counter - Level 1
  (802, 80200, 68, 15, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshadow - Pursuit - Level 1
  (802, 80200, 228, 15, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marshadow - Assurance - Level 1
  (802, 80200, 372, 15, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marshadow - Drain Punch - Level 1
  (802, 80200, 409, 15, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marshadow - Shadow Sneak - Level 1
  (802, 80200, 425, 15, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Marshadow - Laser Focus - Level 1
  (802, 80200, 673, 15, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Marshadow - Force Palm - Level 5
  (802, 80200, 395, 15, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Marshadow - Feint - Level 11
  (802, 80200, 364, 15, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Marshadow - Rolling Kick - Level 15
  (802, 80200, 27, 15, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Marshadow - Copycat - Level 20
  (802, 80200, 383, 15, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Marshadow - Shadow Punch - Level 26
  (802, 80200, 325, 15, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Marshadow - Role Play - Level 30
  (802, 80200, 272, 15, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Marshadow - Jump Kick - Level 35
  (802, 80200, 26, 15, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Marshadow - Psych Up - Level 41
  (802, 80200, 244, 15, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Marshadow - Spectral Thief - Level 45
  (802, 80200, 712, 15, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Marshadow - Close Combat - Level 50
  (802, 80200, 370, 15, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Marshadow - Sucker Punch - Level 56
  (802, 80200, 389, 15, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Marshadow - Endeavor - Level 60
  (802, 80200, 283, 15, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Marshadow - Work Up - TM01
  (802, 80200, 526, 15, NULL, 2, NULL, NULL, 15002001, NULL, 22),
  -- Marshadow - Calm Mind - TM04
  (802, 80200, 347, 15, NULL, 2, NULL, NULL, 15002004, NULL, 23),
  -- Marshadow - Toxic - TM06
  (802, 80200, 92, 15, NULL, 2, NULL, NULL, 15002006, NULL, 24),
  -- Marshadow - Bulk Up - TM08
  (802, 80200, 339, 15, NULL, 2, NULL, NULL, 15002008, NULL, 25),
  -- Marshadow - Hidden Power - TM10
  (802, 80200, 237, 15, NULL, 2, NULL, NULL, 15002010, NULL, 26),
  -- Marshadow - Protect - TM17
  (802, 80200, 182, 15, NULL, 2, NULL, NULL, 15002017, NULL, 27),
  -- Marshadow - Frustration - TM21
  (802, 80200, 218, 15, NULL, 2, NULL, NULL, 15002021, NULL, 28),
  -- Marshadow - Smack Down - TM23
  (802, 80200, 479, 15, NULL, 2, NULL, NULL, 15002023, NULL, 29),
  -- Marshadow - Return - TM27
  (802, 80200, 216, 15, NULL, 2, NULL, NULL, 15002027, NULL, 30),
  -- Marshadow - Shadow Ball - TM30
  (802, 80200, 247, 15, NULL, 2, NULL, NULL, 15002030, NULL, 31),
  -- Marshadow - Brick Break - TM31
  (802, 80200, 280, 15, NULL, 2, NULL, NULL, 15002031, NULL, 32),
  -- Marshadow - Double Team - TM32
  (802, 80200, 104, 15, NULL, 2, NULL, NULL, 15002032, NULL, 33),
  -- Marshadow - Rock Tomb - TM39
  (802, 80200, 317, 15, NULL, 2, NULL, NULL, 15002039, NULL, 34),
  -- Marshadow - Facade - TM42
  (802, 80200, 263, 15, NULL, 2, NULL, NULL, 15002042, NULL, 35),
  -- Marshadow - Rest - TM44
  (802, 80200, 156, 15, NULL, 2, NULL, NULL, 15002044, NULL, 36),
  -- Marshadow - Thief - TM46
  (802, 80200, 168, 15, NULL, 2, NULL, NULL, 15002046, NULL, 37),
  -- Marshadow - Low Sweep - TM47
  (802, 80200, 490, 15, NULL, 2, NULL, NULL, 15002047, NULL, 38),
  -- Marshadow - Round - TM48
  (802, 80200, 496, 15, NULL, 2, NULL, NULL, 15002048, NULL, 39),
  -- Marshadow - Echoed Voice - TM49
  (802, 80200, 497, 15, NULL, 2, NULL, NULL, 15002049, NULL, 40),
  -- Marshadow - Focus Blast - TM52
  (802, 80200, 411, 15, NULL, 2, NULL, NULL, 15002052, NULL, 41),
  -- Marshadow - False Swipe - TM54
  (802, 80200, 206, 15, NULL, 2, NULL, NULL, 15002054, NULL, 42),
  -- Marshadow - Fling - TM56
  (802, 80200, 374, 15, NULL, 2, NULL, NULL, 15002056, NULL, 43),
  -- Marshadow - Will-O-Wisp - TM61
  (802, 80200, 261, 15, NULL, 2, NULL, NULL, 15002061, NULL, 44),
  -- Marshadow - Acrobatics - TM62
  (802, 80200, 512, 15, NULL, 2, NULL, NULL, 15002062, NULL, 45),
  -- Marshadow - Shadow Claw - TM65
  (802, 80200, 421, 15, NULL, 2, NULL, NULL, 15002065, NULL, 46),
  -- Marshadow - Payback - TM66
  (802, 80200, 371, 15, NULL, 2, NULL, NULL, 15002066, NULL, 47),
  -- Marshadow - Giga Impact - TM68
  (802, 80200, 416, 15, NULL, 2, NULL, NULL, 15002068, NULL, 48),
  -- Marshadow - Stone Edge - TM71
  (802, 80200, 444, 15, NULL, 2, NULL, NULL, 15002071, NULL, 49),
  -- Marshadow - Psych Up - TM77
  (802, 80200, 244, 15, NULL, 2, NULL, NULL, 15002077, NULL, 50),
  -- Marshadow - Rock Slide - TM80
  (802, 80200, 157, 15, NULL, 2, NULL, NULL, 15002080, NULL, 51),
  -- Marshadow - Poison Jab - TM84
  (802, 80200, 398, 15, NULL, 2, NULL, NULL, 15002084, NULL, 52),
  -- Marshadow - Grass Knot - TM86
  (802, 80200, 447, 15, NULL, 2, NULL, NULL, 15002086, NULL, 53),
  -- Marshadow - Swagger - TM87
  (802, 80200, 207, 15, NULL, 2, NULL, NULL, 15002087, NULL, 54),
  -- Marshadow - Sleep Talk - TM88
  (802, 80200, 214, 15, NULL, 2, NULL, NULL, 15002088, NULL, 55),
  -- Marshadow - Substitute - TM90
  (802, 80200, 164, 15, NULL, 2, NULL, NULL, 15002090, NULL, 56),
  -- Marshadow - Confide - TM100
  (802, 80200, 590, 15, NULL, 2, NULL, NULL, 15002100, NULL, 57);
