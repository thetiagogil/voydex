-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Diamond / Pearl
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Diamond / Pearl Pokedex learnset pages, Serebii Diamond / Pearl
-- Move Tutor pages, and PokemonDB Generation 4 Diamond / Pearl learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Diamond / Pearl
-- Pokémon: 1-50
-- Rows: 2377
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Diamond / Pearl seed.
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
)
VALUES
  -- Bulbasaur - Tackle - Level 1
  (1, 100, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 3
  (1, 100, 45, 8, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Bulbasaur - Leech Seed - Level 7
  (1, 100, 73, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bulbasaur - Vine Whip - Level 9
  (1, 100, 22, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 13
  (1, 100, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bulbasaur - Sleep Powder - Level 13
  (1, 100, 79, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Bulbasaur - Take Down - Level 15
  (1, 100, 36, 8, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Razor Leaf - Level 19
  (1, 100, 75, 8, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bulbasaur - Sweet Scent - Level 21
  (1, 100, 230, 8, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Bulbasaur - Growth - Level 25
  (1, 100, 74, 8, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Bulbasaur - Double-Edge - Level 27
  (1, 100, 38, 8, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Bulbasaur - Worry Seed - Level 31
  (1, 100, 388, 8, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Bulbasaur - Synthesis - Level 33
  (1, 100, 235, 8, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bulbasaur - Seed Bomb - Level 37
  (1, 100, 402, 8, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Bulbasaur - Bullet Seed - TM09
  (1, 100, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 16),
  -- Bulbasaur - Hidden Power - TM10
  (1, 100, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 17),
  -- Bulbasaur - Sunny Day - TM11
  (1, 100, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 18),
  -- Bulbasaur - Protect - TM17
  (1, 100, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 19),
  -- Bulbasaur - Giga Drain - TM19
  (1, 100, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 20),
  -- Bulbasaur - Frustration - TM21
  (1, 100, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 21),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 22),
  -- Bulbasaur - Return - TM27
  (1, 100, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 23),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 24),
  -- Bulbasaur - Sludge Bomb - TM36
  (1, 100, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 25),
  -- Bulbasaur - Facade - TM42
  (1, 100, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 26),
  -- Bulbasaur - Secret Power - TM43
  (1, 100, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 27),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 28),
  -- Bulbasaur - Attract - TM45
  (1, 100, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 29),
  -- Bulbasaur - Energy Ball - TM53
  (1, 100, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 30),
  -- Bulbasaur - Endure - TM58
  (1, 100, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 31),
  -- Bulbasaur - Flash - TM70
  (1, 100, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 32),
  -- Bulbasaur - Swords Dance - TM75
  (1, 100, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 33),
  -- Bulbasaur - Captivate - TM78
  (1, 100, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 34),
  -- Bulbasaur - Sleep Talk - TM82
  (1, 100, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 35),
  -- Bulbasaur - Natural Gift - TM83
  (1, 100, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 36),
  -- Bulbasaur - Grass Knot - TM86
  (1, 100, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 37),
  -- Bulbasaur - Swagger - TM87
  (1, 100, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 38),
  -- Bulbasaur - Substitute - TM90
  (1, 100, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 39),
  -- Bulbasaur - Cut - HM01
  (1, 100, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 40),
  -- Bulbasaur - Strength - HM04
  (1, 100, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 41),
  -- Bulbasaur - Rock Smash - HM06
  (1, 100, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 42),
  -- Bulbasaur - Petal Dance - Egg
  (1, 100, 80, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bulbasaur - Light Screen - Egg
  (1, 100, 113, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bulbasaur - Skull Bash - Egg
  (1, 100, 130, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bulbasaur - Amnesia - Egg
  (1, 100, 133, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bulbasaur - Curse - Egg
  (1, 100, 174, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bulbasaur - Charm - Egg
  (1, 100, 204, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bulbasaur - Safeguard - Egg
  (1, 100, 219, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bulbasaur - Nature Power - Egg
  (1, 100, 267, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bulbasaur - Ingrain - Egg
  (1, 100, 275, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bulbasaur - Grass Whistle - Egg
  (1, 100, 320, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bulbasaur - Magical Leaf - Egg
  (1, 100, 345, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bulbasaur - Leaf Storm - Egg
  (1, 100, 437, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growl - Level 3
  (2, 200, 45, 8, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 7
  (2, 200, 73, 8, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Ivysaur - Vine Whip - Level 9
  (2, 200, 22, 8, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 13
  (2, 200, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 13
  (2, 200, 79, 8, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Ivysaur - Take Down - Level 15
  (2, 200, 36, 8, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ivysaur - Razor Leaf - Level 20
  (2, 200, 75, 8, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ivysaur - Sweet Scent - Level 23
  (2, 200, 230, 8, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Ivysaur - Growth - Level 28
  (2, 200, 74, 8, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ivysaur - Double-Edge - Level 31
  (2, 200, 38, 8, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Ivysaur - Worry Seed - Level 36
  (2, 200, 388, 8, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ivysaur - Synthesis - Level 39
  (2, 200, 235, 8, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ivysaur - Solar Beam - Level 44
  (2, 200, 76, 8, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 17),
  -- Ivysaur - Bullet Seed - TM09
  (2, 200, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 18),
  -- Ivysaur - Hidden Power - TM10
  (2, 200, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 19),
  -- Ivysaur - Sunny Day - TM11
  (2, 200, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 20),
  -- Ivysaur - Protect - TM17
  (2, 200, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 21),
  -- Ivysaur - Giga Drain - TM19
  (2, 200, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 22),
  -- Ivysaur - Frustration - TM21
  (2, 200, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 24),
  -- Ivysaur - Return - TM27
  (2, 200, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 26),
  -- Ivysaur - Sludge Bomb - TM36
  (2, 200, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 27),
  -- Ivysaur - Facade - TM42
  (2, 200, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 28),
  -- Ivysaur - Secret Power - TM43
  (2, 200, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 29),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 30),
  -- Ivysaur - Attract - TM45
  (2, 200, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 31),
  -- Ivysaur - Energy Ball - TM53
  (2, 200, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 32),
  -- Ivysaur - Endure - TM58
  (2, 200, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 33),
  -- Ivysaur - Flash - TM70
  (2, 200, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 34),
  -- Ivysaur - Swords Dance - TM75
  (2, 200, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 35),
  -- Ivysaur - Captivate - TM78
  (2, 200, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 36),
  -- Ivysaur - Sleep Talk - TM82
  (2, 200, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Ivysaur - Natural Gift - TM83
  (2, 200, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Ivysaur - Grass Knot - TM86
  (2, 200, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 39),
  -- Ivysaur - Swagger - TM87
  (2, 200, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 40),
  -- Ivysaur - Substitute - TM90
  (2, 200, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 41),
  -- Ivysaur - Cut - HM01
  (2, 200, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 42),
  -- Ivysaur - Strength - HM04
  (2, 200, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 43),
  -- Ivysaur - Rock Smash - HM06
  (2, 200, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 44),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Growl - Level 3
  (3, 300, 45, 8, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Venusaur - Leech Seed - Level 7
  (3, 300, 73, 8, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Venusaur - Vine Whip - Level 9
  (3, 300, 22, 8, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Venusaur - Poison Powder - Level 13
  (3, 300, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Venusaur - Sleep Powder - Level 13
  (3, 300, 79, 8, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Venusaur - Take Down - Level 15
  (3, 300, 36, 8, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Venusaur - Razor Leaf - Level 20
  (3, 300, 75, 8, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Venusaur - Sweet Scent - Level 23
  (3, 300, 230, 8, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Venusaur - Growth - Level 28
  (3, 300, 74, 8, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Venusaur - Double-Edge - Level 31
  (3, 300, 38, 8, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Venusaur - Petal Dance - Level 32
  (3, 300, 80, 8, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Venusaur - Worry Seed - Level 39
  (3, 300, 388, 8, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Venusaur - Synthesis - Level 45
  (3, 300, 235, 8, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Venusaur - Solar Beam - Level 53
  (3, 300, 76, 8, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Venusaur - Roar - TM05
  (3, 300, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 19),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 20),
  -- Venusaur - Bullet Seed - TM09
  (3, 300, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 21),
  -- Venusaur - Hidden Power - TM10
  (3, 300, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 22),
  -- Venusaur - Sunny Day - TM11
  (3, 300, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 23),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 24),
  -- Venusaur - Protect - TM17
  (3, 300, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 25),
  -- Venusaur - Giga Drain - TM19
  (3, 300, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 26),
  -- Venusaur - Frustration - TM21
  (3, 300, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 27),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 28),
  -- Venusaur - Earthquake - TM26
  (3, 300, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 29),
  -- Venusaur - Return - TM27
  (3, 300, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 30),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 31),
  -- Venusaur - Sludge Bomb - TM36
  (3, 300, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 32),
  -- Venusaur - Facade - TM42
  (3, 300, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 33),
  -- Venusaur - Secret Power - TM43
  (3, 300, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 34),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 35),
  -- Venusaur - Attract - TM45
  (3, 300, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 36),
  -- Venusaur - Energy Ball - TM53
  (3, 300, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 37),
  -- Venusaur - Endure - TM58
  (3, 300, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 38),
  -- Venusaur - Giga Impact - TM68
  (3, 300, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 39),
  -- Venusaur - Flash - TM70
  (3, 300, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 40),
  -- Venusaur - Swords Dance - TM75
  (3, 300, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 41),
  -- Venusaur - Captivate - TM78
  (3, 300, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 42),
  -- Venusaur - Sleep Talk - TM82
  (3, 300, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 43),
  -- Venusaur - Natural Gift - TM83
  (3, 300, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 44),
  -- Venusaur - Grass Knot - TM86
  (3, 300, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 45),
  -- Venusaur - Swagger - TM87
  (3, 300, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 46),
  -- Venusaur - Substitute - TM90
  (3, 300, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 47),
  -- Venusaur - Cut - HM01
  (3, 300, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 48),
  -- Venusaur - Strength - HM04
  (3, 300, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 49),
  -- Venusaur - Rock Smash - HM06
  (3, 300, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 50),
  -- Venusaur - Rock Climb - HM08
  (3, 300, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 51),
  -- Venusaur - Frenzy Plant - Tutor
  (3, 300, 338, 8, NULL, 6, NULL, NULL, NULL, 'Diamond / Pearl Move Tutor.', 52),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 7
  (4, 400, 52, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 10
  (4, 400, 108, 8, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Rage - Level 16
  (4, 400, 82, 8, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Charmander - Scary Face - Level 19
  (4, 400, 184, 8, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Charmander - Fire Fang - Level 25
  (4, 400, 424, 8, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Charmander - Slash - Level 28
  (4, 400, 163, 8, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Charmander - Flamethrower - Level 34
  (4, 400, 53, 8, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 37
  (4, 400, 83, 8, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Charmander - Focus Punch - TM01
  (4, 400, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 11),
  -- Charmander - Dragon Claw - TM02
  (4, 400, 337, 8, NULL, 2, NULL, NULL, 8002002, NULL, 12),
  -- Charmander - Toxic - TM06
  (4, 400, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 13),
  -- Charmander - Hidden Power - TM10
  (4, 400, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 14),
  -- Charmander - Sunny Day - TM11
  (4, 400, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 15),
  -- Charmander - Protect - TM17
  (4, 400, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 16),
  -- Charmander - Frustration - TM21
  (4, 400, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 17),
  -- Charmander - Iron Tail - TM23
  (4, 400, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 18),
  -- Charmander - Return - TM27
  (4, 400, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 19),
  -- Charmander - Dig - TM28
  (4, 400, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 20),
  -- Charmander - Brick Break - TM31
  (4, 400, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 21),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 22),
  -- Charmander - Flamethrower - TM35
  (4, 400, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 23),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 24),
  -- Charmander - Rock Tomb - TM39
  (4, 400, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 25),
  -- Charmander - Aerial Ace - TM40
  (4, 400, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 26),
  -- Charmander - Facade - TM42
  (4, 400, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 27),
  -- Charmander - Secret Power - TM43
  (4, 400, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 28),
  -- Charmander - Rest - TM44
  (4, 400, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 29),
  -- Charmander - Attract - TM45
  (4, 400, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 30),
  -- Charmander - Overheat - TM50
  (4, 400, 315, 8, NULL, 2, NULL, NULL, 8002050, NULL, 31),
  -- Charmander - Fling - TM56
  (4, 400, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 32),
  -- Charmander - Endure - TM58
  (4, 400, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 33),
  -- Charmander - Will-O-Wisp - TM61
  (4, 400, 261, 8, NULL, 2, NULL, NULL, 8002061, NULL, 34),
  -- Charmander - Shadow Claw - TM65
  (4, 400, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 35),
  -- Charmander - Swords Dance - TM75
  (4, 400, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 36),
  -- Charmander - Captivate - TM78
  (4, 400, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 37),
  -- Charmander - Rock Slide - TM80
  (4, 400, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 38),
  -- Charmander - Sleep Talk - TM82
  (4, 400, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 39),
  -- Charmander - Natural Gift - TM83
  (4, 400, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 40),
  -- Charmander - Swagger - TM87
  (4, 400, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 41),
  -- Charmander - Substitute - TM90
  (4, 400, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 42),
  -- Charmander - Cut - HM01
  (4, 400, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 43),
  -- Charmander - Strength - HM04
  (4, 400, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 44),
  -- Charmander - Rock Smash - HM06
  (4, 400, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 45),
  -- Charmander - Swords Dance - Egg
  (4, 400, 14, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Charmander - Bite - Egg
  (4, 400, 44, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Charmander - Rock Slide - Egg
  (4, 400, 157, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Charmander - Belly Drum - Egg
  (4, 400, 187, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Charmander - Outrage - Egg
  (4, 400, 200, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Charmander - Metal Claw - Egg
  (4, 400, 232, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Charmander - Crunch - Egg
  (4, 400, 242, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Charmander - Ancient Power - Egg
  (4, 400, 246, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Charmander - Beat Up - Egg
  (4, 400, 251, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmander - Dragon Dance - Egg
  (4, 400, 349, 8, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmander - Flare Blitz - Egg
  (4, 400, 394, 8, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmander - Dragon Rush - Egg
  (4, 400, 407, 8, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 7
  (5, 500, 52, 8, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Charmeleon - Smokescreen - Level 10
  (5, 500, 108, 8, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Charmeleon - Dragon Rage - Level 17
  (5, 500, 82, 8, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmeleon - Scary Face - Level 21
  (5, 500, 184, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Charmeleon - Fire Fang - Level 28
  (5, 500, 424, 8, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Charmeleon - Slash - Level 32
  (5, 500, 163, 8, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Charmeleon - Flamethrower - Level 39
  (5, 500, 53, 8, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Charmeleon - Fire Spin - Level 43
  (5, 500, 83, 8, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Charmeleon - Focus Punch - TM01
  (5, 500, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 12),
  -- Charmeleon - Dragon Claw - TM02
  (5, 500, 337, 8, NULL, 2, NULL, NULL, 8002002, NULL, 13),
  -- Charmeleon - Toxic - TM06
  (5, 500, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 14),
  -- Charmeleon - Hidden Power - TM10
  (5, 500, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Charmeleon - Sunny Day - TM11
  (5, 500, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Charmeleon - Protect - TM17
  (5, 500, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 17),
  -- Charmeleon - Frustration - TM21
  (5, 500, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 18),
  -- Charmeleon - Iron Tail - TM23
  (5, 500, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 19),
  -- Charmeleon - Return - TM27
  (5, 500, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 20),
  -- Charmeleon - Dig - TM28
  (5, 500, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 21),
  -- Charmeleon - Brick Break - TM31
  (5, 500, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 22),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 23),
  -- Charmeleon - Flamethrower - TM35
  (5, 500, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 24),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 25),
  -- Charmeleon - Rock Tomb - TM39
  (5, 500, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 26),
  -- Charmeleon - Aerial Ace - TM40
  (5, 500, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 27),
  -- Charmeleon - Facade - TM42
  (5, 500, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 28),
  -- Charmeleon - Secret Power - TM43
  (5, 500, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 29),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 30),
  -- Charmeleon - Attract - TM45
  (5, 500, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 31),
  -- Charmeleon - Overheat - TM50
  (5, 500, 315, 8, NULL, 2, NULL, NULL, 8002050, NULL, 32),
  -- Charmeleon - Fling - TM56
  (5, 500, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 33),
  -- Charmeleon - Endure - TM58
  (5, 500, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 34),
  -- Charmeleon - Will-O-Wisp - TM61
  (5, 500, 261, 8, NULL, 2, NULL, NULL, 8002061, NULL, 35),
  -- Charmeleon - Shadow Claw - TM65
  (5, 500, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 36),
  -- Charmeleon - Swords Dance - TM75
  (5, 500, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 37),
  -- Charmeleon - Captivate - TM78
  (5, 500, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Charmeleon - Rock Slide - TM80
  (5, 500, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 39),
  -- Charmeleon - Sleep Talk - TM82
  (5, 500, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 40),
  -- Charmeleon - Natural Gift - TM83
  (5, 500, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 41),
  -- Charmeleon - Swagger - TM87
  (5, 500, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 42),
  -- Charmeleon - Substitute - TM90
  (5, 500, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 43),
  -- Charmeleon - Cut - HM01
  (5, 500, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 44),
  -- Charmeleon - Strength - HM04
  (5, 500, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 45),
  -- Charmeleon - Rock Smash - HM06
  (5, 500, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 46),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Dragon Claw - Level 1
  (6, 600, 337, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charizard - Air Slash - Level 1
  (6, 600, 403, 8, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Charizard - Shadow Claw - Level 1
  (6, 600, 421, 8, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Charizard - Ember - Level 7
  (6, 600, 52, 8, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Charizard - Smokescreen - Level 10
  (6, 600, 108, 8, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Charizard - Dragon Rage - Level 17
  (6, 600, 82, 8, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Charizard - Scary Face - Level 21
  (6, 600, 184, 8, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Charizard - Fire Fang - Level 28
  (6, 600, 424, 8, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Charizard - Slash - Level 32
  (6, 600, 163, 8, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Charizard - Wing Attack - Level 36
  (6, 600, 17, 8, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Charizard - Flamethrower - Level 42
  (6, 600, 53, 8, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Charizard - Fire Spin - Level 49
  (6, 600, 83, 8, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Charizard - Heat Wave - Level 59
  (6, 600, 257, 8, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Charizard - Flare Blitz - Level 66
  (6, 600, 394, 8, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Charizard - Focus Punch - TM01
  (6, 600, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 19),
  -- Charizard - Dragon Claw - TM02
  (6, 600, 337, 8, NULL, 2, NULL, NULL, 8002002, NULL, 20),
  -- Charizard - Roar - TM05
  (6, 600, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 21),
  -- Charizard - Toxic - TM06
  (6, 600, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 22),
  -- Charizard - Hidden Power - TM10
  (6, 600, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 23),
  -- Charizard - Sunny Day - TM11
  (6, 600, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 24),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 25),
  -- Charizard - Protect - TM17
  (6, 600, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 26),
  -- Charizard - Frustration - TM21
  (6, 600, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 27),
  -- Charizard - Solar Beam - TM22
  (6, 600, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 28),
  -- Charizard - Iron Tail - TM23
  (6, 600, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 29),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 30),
  -- Charizard - Return - TM27
  (6, 600, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 31),
  -- Charizard - Dig - TM28
  (6, 600, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 32),
  -- Charizard - Brick Break - TM31
  (6, 600, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 33),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 34),
  -- Charizard - Flamethrower - TM35
  (6, 600, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 35),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 36),
  -- Charizard - Rock Tomb - TM39
  (6, 600, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 37),
  -- Charizard - Aerial Ace - TM40
  (6, 600, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 38),
  -- Charizard - Facade - TM42
  (6, 600, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 39),
  -- Charizard - Secret Power - TM43
  (6, 600, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 40),
  -- Charizard - Rest - TM44
  (6, 600, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 41),
  -- Charizard - Attract - TM45
  (6, 600, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 42),
  -- Charizard - Steel Wing - TM47
  (6, 600, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 43),
  -- Charizard - Overheat - TM50
  (6, 600, 315, 8, NULL, 2, NULL, NULL, 8002050, NULL, 44),
  -- Charizard - Roost - TM51
  (6, 600, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 45),
  -- Charizard - Focus Blast - TM52
  (6, 600, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 46),
  -- Charizard - Fling - TM56
  (6, 600, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 47),
  -- Charizard - Endure - TM58
  (6, 600, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 48),
  -- Charizard - Dragon Pulse - TM59
  (6, 600, 406, 8, NULL, 2, NULL, NULL, 8002059, NULL, 49),
  -- Charizard - Will-O-Wisp - TM61
  (6, 600, 261, 8, NULL, 2, NULL, NULL, 8002061, NULL, 50),
  -- Charizard - Shadow Claw - TM65
  (6, 600, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 51),
  -- Charizard - Giga Impact - TM68
  (6, 600, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 52),
  -- Charizard - Swords Dance - TM75
  (6, 600, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 53),
  -- Charizard - Captivate - TM78
  (6, 600, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 54),
  -- Charizard - Rock Slide - TM80
  (6, 600, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 55),
  -- Charizard - Sleep Talk - TM82
  (6, 600, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 56),
  -- Charizard - Natural Gift - TM83
  (6, 600, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 57),
  -- Charizard - Swagger - TM87
  (6, 600, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 58),
  -- Charizard - Substitute - TM90
  (6, 600, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 59),
  -- Charizard - Cut - HM01
  (6, 600, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 60),
  -- Charizard - Fly - HM02
  (6, 600, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 61),
  -- Charizard - Strength - HM04
  (6, 600, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 62),
  -- Charizard - Defog - HM05
  (6, 600, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 63),
  -- Charizard - Rock Smash - HM06
  (6, 600, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 64),
  -- Charizard - Blast Burn - Tutor
  (6, 600, 307, 8, NULL, 6, NULL, NULL, NULL, 'Diamond / Pearl Move Tutor.', 65),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 4
  (7, 700, 39, 8, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Squirtle - Bubble - Level 7
  (7, 700, 145, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 10
  (7, 700, 110, 8, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Squirtle - Water Gun - Level 13
  (7, 700, 55, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 16
  (7, 700, 44, 8, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Squirtle - Rapid Spin - Level 19
  (7, 700, 229, 8, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 22
  (7, 700, 182, 8, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Squirtle - Water Pulse - Level 25
  (7, 700, 352, 8, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Squirtle - Aqua Tail - Level 28
  (7, 700, 401, 8, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Squirtle - Skull Bash - Level 31
  (7, 700, 130, 8, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Squirtle - Rain Dance - Level 34
  (7, 700, 240, 8, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Squirtle - Hydro Pump - Level 37
  (7, 700, 56, 8, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Squirtle - Focus Punch - TM01
  (7, 700, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 14),
  -- Squirtle - Water Pulse - TM03
  (7, 700, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 15),
  -- Squirtle - Toxic - TM06
  (7, 700, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 16),
  -- Squirtle - Hail - TM07
  (7, 700, 258, 8, NULL, 2, NULL, NULL, 8002007, NULL, 17),
  -- Squirtle - Hidden Power - TM10
  (7, 700, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 18),
  -- Squirtle - Ice Beam - TM13
  (7, 700, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 19),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 20),
  -- Squirtle - Protect - TM17
  (7, 700, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 21),
  -- Squirtle - Rain Dance - TM18
  (7, 700, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 22),
  -- Squirtle - Frustration - TM21
  (7, 700, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Squirtle - Iron Tail - TM23
  (7, 700, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 24),
  -- Squirtle - Return - TM27
  (7, 700, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Squirtle - Dig - TM28
  (7, 700, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 26),
  -- Squirtle - Brick Break - TM31
  (7, 700, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 27),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Squirtle - Rock Tomb - TM39
  (7, 700, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 29),
  -- Squirtle - Facade - TM42
  (7, 700, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 30),
  -- Squirtle - Secret Power - TM43
  (7, 700, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 31),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 32),
  -- Squirtle - Attract - TM45
  (7, 700, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 33),
  -- Squirtle - Brine - TM55
  (7, 700, 362, 8, NULL, 2, NULL, NULL, 8002055, NULL, 34),
  -- Squirtle - Fling - TM56
  (7, 700, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 35),
  -- Squirtle - Endure - TM58
  (7, 700, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 36),
  -- Squirtle - Gyro Ball - TM74
  (7, 700, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 37),
  -- Squirtle - Captivate - TM78
  (7, 700, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Squirtle - Sleep Talk - TM82
  (7, 700, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 39),
  -- Squirtle - Natural Gift - TM83
  (7, 700, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 40),
  -- Squirtle - Swagger - TM87
  (7, 700, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 41),
  -- Squirtle - Substitute - TM90
  (7, 700, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 42),
  -- Squirtle - Surf - HM03
  (7, 700, 57, 8, NULL, 3, NULL, NULL, 8003003, NULL, 43),
  -- Squirtle - Strength - HM04
  (7, 700, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 44),
  -- Squirtle - Defog - HM05
  (7, 700, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 45),
  -- Squirtle - Rock Smash - HM06
  (7, 700, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 46),
  -- Squirtle - Waterfall - HM07
  (7, 700, 127, 8, NULL, 3, NULL, NULL, 8003007, NULL, 47),
  -- Squirtle - Mist - Egg
  (7, 700, 54, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Squirtle - Haze - Egg
  (7, 700, 114, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Squirtle - Flail - Egg
  (7, 700, 175, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Squirtle - Foresight - Egg
  (7, 700, 193, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Squirtle - Mirror Coat - Egg
  (7, 700, 243, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Squirtle - Fake Out - Egg
  (7, 700, 252, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Squirtle - Yawn - Egg
  (7, 700, 281, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Squirtle - Refresh - Egg
  (7, 700, 287, 8, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Squirtle - Mud Sport - Egg
  (7, 700, 300, 8, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Squirtle - Muddy Water - Egg
  (7, 700, 330, 8, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Squirtle - Aqua Ring - Egg
  (7, 700, 392, 8, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Squirtle - Aqua Jet - Egg
  (7, 700, 453, 8, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Bubble - Level 1
  (8, 800, 145, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Tail Whip - Level 4
  (8, 800, 39, 8, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Wartortle - Bubble - Level 7
  (8, 800, 145, 8, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Wartortle - Withdraw - Level 10
  (8, 800, 110, 8, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wartortle - Water Gun - Level 13
  (8, 800, 55, 8, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Wartortle - Bite - Level 16
  (8, 800, 44, 8, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Wartortle - Rapid Spin - Level 20
  (8, 800, 229, 8, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Wartortle - Protect - Level 24
  (8, 800, 182, 8, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Wartortle - Water Pulse - Level 28
  (8, 800, 352, 8, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Wartortle - Aqua Tail - Level 32
  (8, 800, 401, 8, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Wartortle - Skull Bash - Level 36
  (8, 800, 130, 8, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Wartortle - Rain Dance - Level 40
  (8, 800, 240, 8, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Wartortle - Hydro Pump - Level 44
  (8, 800, 56, 8, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Wartortle - Focus Punch - TM01
  (8, 800, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 16),
  -- Wartortle - Water Pulse - TM03
  (8, 800, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 17),
  -- Wartortle - Toxic - TM06
  (8, 800, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 18),
  -- Wartortle - Hail - TM07
  (8, 800, 258, 8, NULL, 2, NULL, NULL, 8002007, NULL, 19),
  -- Wartortle - Hidden Power - TM10
  (8, 800, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 20),
  -- Wartortle - Ice Beam - TM13
  (8, 800, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 21),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 22),
  -- Wartortle - Protect - TM17
  (8, 800, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 23),
  -- Wartortle - Rain Dance - TM18
  (8, 800, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 24),
  -- Wartortle - Frustration - TM21
  (8, 800, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 25),
  -- Wartortle - Iron Tail - TM23
  (8, 800, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 26),
  -- Wartortle - Return - TM27
  (8, 800, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 27),
  -- Wartortle - Dig - TM28
  (8, 800, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 28),
  -- Wartortle - Brick Break - TM31
  (8, 800, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 29),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 30),
  -- Wartortle - Rock Tomb - TM39
  (8, 800, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 31),
  -- Wartortle - Facade - TM42
  (8, 800, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Wartortle - Secret Power - TM43
  (8, 800, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Wartortle - Attract - TM45
  (8, 800, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Wartortle - Brine - TM55
  (8, 800, 362, 8, NULL, 2, NULL, NULL, 8002055, NULL, 36),
  -- Wartortle - Fling - TM56
  (8, 800, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 37),
  -- Wartortle - Endure - TM58
  (8, 800, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 38),
  -- Wartortle - Gyro Ball - TM74
  (8, 800, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 39),
  -- Wartortle - Captivate - TM78
  (8, 800, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 40),
  -- Wartortle - Sleep Talk - TM82
  (8, 800, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 41),
  -- Wartortle - Natural Gift - TM83
  (8, 800, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 42),
  -- Wartortle - Swagger - TM87
  (8, 800, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 43),
  -- Wartortle - Substitute - TM90
  (8, 800, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 44),
  -- Wartortle - Surf - HM03
  (8, 800, 57, 8, NULL, 3, NULL, NULL, 8003003, NULL, 45),
  -- Wartortle - Strength - HM04
  (8, 800, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 46),
  -- Wartortle - Defog - HM05
  (8, 800, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 47),
  -- Wartortle - Rock Smash - HM06
  (8, 800, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 48),
  -- Wartortle - Waterfall - HM07
  (8, 800, 127, 8, NULL, 3, NULL, NULL, 8003007, NULL, 49),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Bubble - Level 1
  (9, 900, 145, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Flash Cannon - Level 1
  (9, 900, 430, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blastoise - Tail Whip - Level 4
  (9, 900, 39, 8, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Blastoise - Bubble - Level 7
  (9, 900, 145, 8, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Blastoise - Withdraw - Level 10
  (9, 900, 110, 8, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Blastoise - Water Gun - Level 13
  (9, 900, 55, 8, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Blastoise - Bite - Level 16
  (9, 900, 44, 8, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Blastoise - Rapid Spin - Level 20
  (9, 900, 229, 8, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Blastoise - Protect - Level 24
  (9, 900, 182, 8, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Blastoise - Water Pulse - Level 28
  (9, 900, 352, 8, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Blastoise - Aqua Tail - Level 32
  (9, 900, 401, 8, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Blastoise - Skull Bash - Level 39
  (9, 900, 130, 8, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Blastoise - Rain Dance - Level 46
  (9, 900, 240, 8, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Blastoise - Hydro Pump - Level 53
  (9, 900, 56, 8, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Blastoise - Focus Punch - TM01
  (9, 900, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 18),
  -- Blastoise - Water Pulse - TM03
  (9, 900, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 19),
  -- Blastoise - Roar - TM05
  (9, 900, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 20),
  -- Blastoise - Toxic - TM06
  (9, 900, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 21),
  -- Blastoise - Hail - TM07
  (9, 900, 258, 8, NULL, 2, NULL, NULL, 8002007, NULL, 22),
  -- Blastoise - Hidden Power - TM10
  (9, 900, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 23),
  -- Blastoise - Ice Beam - TM13
  (9, 900, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 24),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 25),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 26),
  -- Blastoise - Protect - TM17
  (9, 900, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 27),
  -- Blastoise - Rain Dance - TM18
  (9, 900, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 28),
  -- Blastoise - Frustration - TM21
  (9, 900, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 29),
  -- Blastoise - Iron Tail - TM23
  (9, 900, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 30),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 31),
  -- Blastoise - Return - TM27
  (9, 900, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 32),
  -- Blastoise - Dig - TM28
  (9, 900, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 33),
  -- Blastoise - Brick Break - TM31
  (9, 900, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 34),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 35),
  -- Blastoise - Rock Tomb - TM39
  (9, 900, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 36),
  -- Blastoise - Facade - TM42
  (9, 900, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 37),
  -- Blastoise - Secret Power - TM43
  (9, 900, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 38),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 39),
  -- Blastoise - Attract - TM45
  (9, 900, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 40),
  -- Blastoise - Focus Blast - TM52
  (9, 900, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 41),
  -- Blastoise - Brine - TM55
  (9, 900, 362, 8, NULL, 2, NULL, NULL, 8002055, NULL, 42),
  -- Blastoise - Fling - TM56
  (9, 900, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 43),
  -- Blastoise - Endure - TM58
  (9, 900, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 44),
  -- Blastoise - Giga Impact - TM68
  (9, 900, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 45),
  -- Blastoise - Avalanche - TM72
  (9, 900, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 46),
  -- Blastoise - Gyro Ball - TM74
  (9, 900, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 47),
  -- Blastoise - Captivate - TM78
  (9, 900, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 48),
  -- Blastoise - Rock Slide - TM80
  (9, 900, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 49),
  -- Blastoise - Sleep Talk - TM82
  (9, 900, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 50),
  -- Blastoise - Natural Gift - TM83
  (9, 900, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 51),
  -- Blastoise - Swagger - TM87
  (9, 900, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 52),
  -- Blastoise - Substitute - TM90
  (9, 900, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 53),
  -- Blastoise - Flash Cannon - TM91
  (9, 900, 430, 8, NULL, 2, NULL, NULL, 8002091, NULL, 54),
  -- Blastoise - Surf - HM03
  (9, 900, 57, 8, NULL, 3, NULL, NULL, 8003003, NULL, 55),
  -- Blastoise - Strength - HM04
  (9, 900, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 56),
  -- Blastoise - Defog - HM05
  (9, 900, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 57),
  -- Blastoise - Rock Smash - HM06
  (9, 900, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 58),
  -- Blastoise - Waterfall - HM07
  (9, 900, 127, 8, NULL, 3, NULL, NULL, 8003007, NULL, 59),
  -- Blastoise - Rock Climb - HM08
  (9, 900, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 60),
  -- Blastoise - Hydro Cannon - Tutor
  (9, 900, 308, 8, NULL, 6, NULL, NULL, NULL, 'Diamond / Pearl Move Tutor.', 61),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Level 7
  (11, 1100, 106, 8, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 10
  (12, 1200, 93, 8, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Butterfree - Poison Powder - Level 12
  (12, 1200, 77, 8, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Butterfree - Stun Spore - Level 12
  (12, 1200, 78, 8, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Butterfree - Sleep Powder - Level 12
  (12, 1200, 79, 8, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Butterfree - Gust - Level 16
  (12, 1200, 16, 8, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Butterfree - Supersonic - Level 18
  (12, 1200, 48, 8, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Butterfree - Whirlwind - Level 22
  (12, 1200, 18, 8, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Butterfree - Psybeam - Level 24
  (12, 1200, 60, 8, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Butterfree - Silver Wind - Level 28
  (12, 1200, 318, 8, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Butterfree - Tailwind - Level 30
  (12, 1200, 366, 8, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Butterfree - Safeguard - Level 34
  (12, 1200, 219, 8, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Butterfree - Captivate - Level 36
  (12, 1200, 445, 8, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Butterfree - Bug Buzz - Level 40
  (12, 1200, 405, 8, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Butterfree - Toxic - TM06
  (12, 1200, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Butterfree - Hidden Power - TM10
  (12, 1200, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Butterfree - Sunny Day - TM11
  (12, 1200, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 18),
  -- Butterfree - Protect - TM17
  (12, 1200, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 19),
  -- Butterfree - Rain Dance - TM18
  (12, 1200, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 20),
  -- Butterfree - Giga Drain - TM19
  (12, 1200, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 21),
  -- Butterfree - Safeguard - TM20
  (12, 1200, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 22),
  -- Butterfree - Frustration - TM21
  (12, 1200, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 24),
  -- Butterfree - Return - TM27
  (12, 1200, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 26),
  -- Butterfree - Shadow Ball - TM30
  (12, 1200, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 27),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Butterfree - Aerial Ace - TM40
  (12, 1200, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 29),
  -- Butterfree - Facade - TM42
  (12, 1200, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 30),
  -- Butterfree - Secret Power - TM43
  (12, 1200, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 31),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 32),
  -- Butterfree - Attract - TM45
  (12, 1200, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 33),
  -- Butterfree - Thief - TM46
  (12, 1200, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 34),
  -- Butterfree - Skill Swap - TM48
  (12, 1200, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 35),
  -- Butterfree - Roost - TM51
  (12, 1200, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 36),
  -- Butterfree - Energy Ball - TM53
  (12, 1200, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 37),
  -- Butterfree - Endure - TM58
  (12, 1200, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 38),
  -- Butterfree - Silver Wind - TM62
  (12, 1200, 318, 8, NULL, 2, NULL, NULL, 8002062, NULL, 39),
  -- Butterfree - Giga Impact - TM68
  (12, 1200, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 40),
  -- Butterfree - Flash - TM70
  (12, 1200, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 41),
  -- Butterfree - Psych Up - TM77
  (12, 1200, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 42),
  -- Butterfree - Captivate - TM78
  (12, 1200, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 43),
  -- Butterfree - Sleep Talk - TM82
  (12, 1200, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 44),
  -- Butterfree - Natural Gift - TM83
  (12, 1200, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 45),
  -- Butterfree - Dream Eater - TM85
  (12, 1200, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 46),
  -- Butterfree - Swagger - TM87
  (12, 1200, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 47),
  -- Butterfree - U-turn - TM89
  (12, 1200, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 48),
  -- Butterfree - Substitute - TM90
  (12, 1200, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 49),
  -- Butterfree - Defog - HM05
  (12, 1200, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 50),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - Harden - Level 7
  (14, 1400, 106, 8, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Beedrill - Fury Attack - Level 1
  (15, 1500, 31, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Fury Attack - Level 10
  (15, 1500, 31, 8, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beedrill - Focus Energy - Level 13
  (15, 1500, 116, 8, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Beedrill - Twineedle - Level 16
  (15, 1500, 41, 8, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Beedrill - Rage - Level 19
  (15, 1500, 99, 8, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Beedrill - Pursuit - Level 22
  (15, 1500, 228, 8, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Beedrill - Toxic Spikes - Level 25
  (15, 1500, 390, 8, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Beedrill - Pin Missile - Level 28
  (15, 1500, 42, 8, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Beedrill - Agility - Level 31
  (15, 1500, 97, 8, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Beedrill - Assurance - Level 34
  (15, 1500, 372, 8, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Beedrill - Poison Jab - Level 37
  (15, 1500, 398, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Beedrill - Endeavor - Level 40
  (15, 1500, 283, 8, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Beedrill - Toxic - TM06
  (15, 1500, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 13),
  -- Beedrill - Hidden Power - TM10
  (15, 1500, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 14),
  -- Beedrill - Sunny Day - TM11
  (15, 1500, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 15),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 16),
  -- Beedrill - Protect - TM17
  (15, 1500, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 17),
  -- Beedrill - Giga Drain - TM19
  (15, 1500, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 18),
  -- Beedrill - Frustration - TM21
  (15, 1500, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 19),
  -- Beedrill - Solar Beam - TM22
  (15, 1500, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 20),
  -- Beedrill - Return - TM27
  (15, 1500, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 21),
  -- Beedrill - Brick Break - TM31
  (15, 1500, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 22),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 23),
  -- Beedrill - Sludge Bomb - TM36
  (15, 1500, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 24),
  -- Beedrill - Aerial Ace - TM40
  (15, 1500, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 25),
  -- Beedrill - Facade - TM42
  (15, 1500, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 26),
  -- Beedrill - Secret Power - TM43
  (15, 1500, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 27),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 28),
  -- Beedrill - Attract - TM45
  (15, 1500, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 29),
  -- Beedrill - Thief - TM46
  (15, 1500, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 30),
  -- Beedrill - Roost - TM51
  (15, 1500, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 31),
  -- Beedrill - False Swipe - TM54
  (15, 1500, 206, 8, NULL, 2, NULL, NULL, 8002054, NULL, 32),
  -- Beedrill - Endure - TM58
  (15, 1500, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 33),
  -- Beedrill - Silver Wind - TM62
  (15, 1500, 318, 8, NULL, 2, NULL, NULL, 8002062, NULL, 34),
  -- Beedrill - Payback - TM66
  (15, 1500, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 35),
  -- Beedrill - Giga Impact - TM68
  (15, 1500, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 36),
  -- Beedrill - Flash - TM70
  (15, 1500, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 37),
  -- Beedrill - Swords Dance - TM75
  (15, 1500, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 38),
  -- Beedrill - Captivate - TM78
  (15, 1500, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 39),
  -- Beedrill - X-Scissor - TM81
  (15, 1500, 404, 8, NULL, 2, NULL, NULL, 8002081, NULL, 40),
  -- Beedrill - Sleep Talk - TM82
  (15, 1500, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 41),
  -- Beedrill - Natural Gift - TM83
  (15, 1500, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 42),
  -- Beedrill - Poison Jab - TM84
  (15, 1500, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 43),
  -- Beedrill - Swagger - TM87
  (15, 1500, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 44),
  -- Beedrill - U-turn - TM89
  (15, 1500, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 45),
  -- Beedrill - Substitute - TM90
  (15, 1500, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 46),
  -- Beedrill - Cut - HM01
  (15, 1500, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 47),
  -- Beedrill - Defog - HM05
  (15, 1500, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 48),
  -- Beedrill - Rock Smash - HM06
  (15, 1500, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 49),
  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 8, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 13
  (16, 1600, 98, 8, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgey - Whirlwind - Level 17
  (16, 1600, 18, 8, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgey - Twister - Level 21
  (16, 1600, 239, 8, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgey - Feather Dance - Level 25
  (16, 1600, 297, 8, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgey - Agility - Level 29
  (16, 1600, 97, 8, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgey - Wing Attack - Level 33
  (16, 1600, 17, 8, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgey - Roost - Level 37
  (16, 1600, 355, 8, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Pidgey - Tailwind - Level 41
  (16, 1600, 366, 8, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Pidgey - Mirror Move - Level 45
  (16, 1600, 119, 8, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Pidgey - Air Slash - Level 49
  (16, 1600, 403, 8, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Pidgey - Toxic - TM06
  (16, 1600, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 14),
  -- Pidgey - Hidden Power - TM10
  (16, 1600, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Pidgey - Sunny Day - TM11
  (16, 1600, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Pidgey - Protect - TM17
  (16, 1600, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 17),
  -- Pidgey - Rain Dance - TM18
  (16, 1600, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 18),
  -- Pidgey - Frustration - TM21
  (16, 1600, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 19),
  -- Pidgey - Return - TM27
  (16, 1600, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 20),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 21),
  -- Pidgey - Aerial Ace - TM40
  (16, 1600, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 22),
  -- Pidgey - Facade - TM42
  (16, 1600, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 23),
  -- Pidgey - Secret Power - TM43
  (16, 1600, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 24),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 25),
  -- Pidgey - Attract - TM45
  (16, 1600, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 26),
  -- Pidgey - Thief - TM46
  (16, 1600, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 27),
  -- Pidgey - Steel Wing - TM47
  (16, 1600, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 28),
  -- Pidgey - Roost - TM51
  (16, 1600, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 29),
  -- Pidgey - Endure - TM58
  (16, 1600, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 30),
  -- Pidgey - Captivate - TM78
  (16, 1600, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 31),
  -- Pidgey - Sleep Talk - TM82
  (16, 1600, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 32),
  -- Pidgey - Natural Gift - TM83
  (16, 1600, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 33),
  -- Pidgey - Swagger - TM87
  (16, 1600, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 34),
  -- Pidgey - Pluck - TM88
  (16, 1600, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 35),
  -- Pidgey - U-turn - TM89
  (16, 1600, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 36),
  -- Pidgey - Substitute - TM90
  (16, 1600, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 37),
  -- Pidgey - Fly - HM02
  (16, 1600, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 38),
  -- Pidgey - Defog - HM05
  (16, 1600, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 39),
  -- Pidgey - Feint Attack - Egg
  (16, 1600, 185, 8, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pidgey - Foresight - Egg
  (16, 1600, 193, 8, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pidgey - Steel Wing - Egg
  (16, 1600, 211, 8, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pidgey - Pursuit - Egg
  (16, 1600, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pidgey - Uproar - Egg
  (16, 1600, 253, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pidgey - Air Cutter - Egg
  (16, 1600, 314, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pidgey - Air Slash - Egg
  (16, 1600, 403, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pidgey - Brave Bird - Egg
  (16, 1600, 413, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 8, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 8, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pidgeotto - Quick Attack - Level 13
  (17, 1700, 98, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 17
  (17, 1700, 18, 8, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Pidgeotto - Twister - Level 22
  (17, 1700, 239, 8, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Pidgeotto - Feather Dance - Level 27
  (17, 1700, 297, 8, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pidgeotto - Agility - Level 32
  (17, 1700, 97, 8, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidgeotto - Wing Attack - Level 37
  (17, 1700, 17, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pidgeotto - Roost - Level 42
  (17, 1700, 355, 8, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pidgeotto - Tailwind - Level 47
  (17, 1700, 366, 8, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pidgeotto - Mirror Move - Level 52
  (17, 1700, 119, 8, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Pidgeotto - Air Slash - Level 57
  (17, 1700, 403, 8, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Pidgeotto - Toxic - TM06
  (17, 1700, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 16),
  -- Pidgeotto - Hidden Power - TM10
  (17, 1700, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 17),
  -- Pidgeotto - Sunny Day - TM11
  (17, 1700, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 18),
  -- Pidgeotto - Protect - TM17
  (17, 1700, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 19),
  -- Pidgeotto - Rain Dance - TM18
  (17, 1700, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 20),
  -- Pidgeotto - Frustration - TM21
  (17, 1700, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 21),
  -- Pidgeotto - Return - TM27
  (17, 1700, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 22),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 23),
  -- Pidgeotto - Aerial Ace - TM40
  (17, 1700, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 24),
  -- Pidgeotto - Facade - TM42
  (17, 1700, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 25),
  -- Pidgeotto - Secret Power - TM43
  (17, 1700, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 26),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 27),
  -- Pidgeotto - Attract - TM45
  (17, 1700, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 28),
  -- Pidgeotto - Thief - TM46
  (17, 1700, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 29),
  -- Pidgeotto - Steel Wing - TM47
  (17, 1700, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 30),
  -- Pidgeotto - Roost - TM51
  (17, 1700, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 31),
  -- Pidgeotto - Endure - TM58
  (17, 1700, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Pidgeotto - Captivate - TM78
  (17, 1700, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 33),
  -- Pidgeotto - Sleep Talk - TM82
  (17, 1700, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 34),
  -- Pidgeotto - Natural Gift - TM83
  (17, 1700, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 35),
  -- Pidgeotto - Swagger - TM87
  (17, 1700, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 36),
  -- Pidgeotto - Pluck - TM88
  (17, 1700, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 37),
  -- Pidgeotto - U-turn - TM89
  (17, 1700, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 38),
  -- Pidgeotto - Substitute - TM90
  (17, 1700, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 39),
  -- Pidgeotto - Fly - HM02
  (17, 1700, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 40),
  -- Pidgeotto - Defog - HM05
  (17, 1700, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 41),
  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 8, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 8, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Pidgeot - Quick Attack - Level 13
  (18, 1800, 98, 8, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Pidgeot - Whirlwind - Level 17
  (18, 1800, 18, 8, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Pidgeot - Twister - Level 22
  (18, 1800, 239, 8, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pidgeot - Feather Dance - Level 27
  (18, 1800, 297, 8, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pidgeot - Agility - Level 32
  (18, 1800, 97, 8, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Pidgeot - Wing Attack - Level 38
  (18, 1800, 17, 8, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Pidgeot - Roost - Level 44
  (18, 1800, 355, 8, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pidgeot - Tailwind - Level 50
  (18, 1800, 366, 8, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Pidgeot - Mirror Move - Level 56
  (18, 1800, 119, 8, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Pidgeot - Air Slash - Level 62
  (18, 1800, 403, 8, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Pidgeot - Toxic - TM06
  (18, 1800, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 17),
  -- Pidgeot - Hidden Power - TM10
  (18, 1800, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 18),
  -- Pidgeot - Sunny Day - TM11
  (18, 1800, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 19),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 20),
  -- Pidgeot - Protect - TM17
  (18, 1800, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 21),
  -- Pidgeot - Rain Dance - TM18
  (18, 1800, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 22),
  -- Pidgeot - Frustration - TM21
  (18, 1800, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Pidgeot - Return - TM27
  (18, 1800, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 25),
  -- Pidgeot - Aerial Ace - TM40
  (18, 1800, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 26),
  -- Pidgeot - Facade - TM42
  (18, 1800, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 27),
  -- Pidgeot - Secret Power - TM43
  (18, 1800, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 28),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 29),
  -- Pidgeot - Attract - TM45
  (18, 1800, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 30),
  -- Pidgeot - Thief - TM46
  (18, 1800, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 31),
  -- Pidgeot - Steel Wing - TM47
  (18, 1800, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 32),
  -- Pidgeot - Roost - TM51
  (18, 1800, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 33),
  -- Pidgeot - Endure - TM58
  (18, 1800, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 34),
  -- Pidgeot - Giga Impact - TM68
  (18, 1800, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 35),
  -- Pidgeot - Captivate - TM78
  (18, 1800, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 36),
  -- Pidgeot - Sleep Talk - TM82
  (18, 1800, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Pidgeot - Natural Gift - TM83
  (18, 1800, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Pidgeot - Swagger - TM87
  (18, 1800, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 39),
  -- Pidgeot - Pluck - TM88
  (18, 1800, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 40),
  -- Pidgeot - U-turn - TM89
  (18, 1800, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 41),
  -- Pidgeot - Substitute - TM90
  (18, 1800, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 42),
  -- Pidgeot - Fly - HM02
  (18, 1800, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 43),
  -- Pidgeot - Defog - HM05
  (18, 1800, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 44),
  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 1
  (19, 1900, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 4
  (19, 1900, 98, 8, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rattata - Focus Energy - Level 7
  (19, 1900, 116, 8, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rattata - Bite - Level 10
  (19, 1900, 44, 8, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Rattata - Pursuit - Level 13
  (19, 1900, 228, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Rattata - Hyper Fang - Level 16
  (19, 1900, 158, 8, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Rattata - Sucker Punch - Level 19
  (19, 1900, 389, 8, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rattata - Crunch - Level 22
  (19, 1900, 242, 8, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Rattata - Assurance - Level 25
  (19, 1900, 372, 8, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rattata - Super Fang - Level 28
  (19, 1900, 162, 8, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Rattata - Double-Edge - Level 31
  (19, 1900, 38, 8, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Rattata - Endeavor - Level 34
  (19, 1900, 283, 8, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Rattata - Toxic - TM06
  (19, 1900, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 14),
  -- Rattata - Hidden Power - TM10
  (19, 1900, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Rattata - Sunny Day - TM11
  (19, 1900, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Rattata - Taunt - TM12
  (19, 1900, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 17),
  -- Rattata - Ice Beam - TM13
  (19, 1900, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 18),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 19),
  -- Rattata - Protect - TM17
  (19, 1900, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Rattata - Rain Dance - TM18
  (19, 1900, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Rattata - Frustration - TM21
  (19, 1900, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Rattata - Iron Tail - TM23
  (19, 1900, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Rattata - Thunderbolt - TM24
  (19, 1900, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 24),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 25),
  -- Rattata - Return - TM27
  (19, 1900, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Rattata - Dig - TM28
  (19, 1900, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Rattata - Shadow Ball - TM30
  (19, 1900, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 28),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Rattata - Shock Wave - TM34
  (19, 1900, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 30),
  -- Rattata - Facade - TM42
  (19, 1900, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 31),
  -- Rattata - Secret Power - TM43
  (19, 1900, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 32),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 33),
  -- Rattata - Attract - TM45
  (19, 1900, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 34),
  -- Rattata - Thief - TM46
  (19, 1900, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 35),
  -- Rattata - Charge Beam - TM57
  (19, 1900, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 36),
  -- Rattata - Endure - TM58
  (19, 1900, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 37),
  -- Rattata - Thunder Wave - TM73
  (19, 1900, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 38),
  -- Rattata - Captivate - TM78
  (19, 1900, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 39),
  -- Rattata - Sleep Talk - TM82
  (19, 1900, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 40),
  -- Rattata - Natural Gift - TM83
  (19, 1900, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 41),
  -- Rattata - Grass Knot - TM86
  (19, 1900, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 42),
  -- Rattata - Swagger - TM87
  (19, 1900, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 43),
  -- Rattata - Pluck - TM88
  (19, 1900, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 44),
  -- Rattata - U-turn - TM89
  (19, 1900, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 45),
  -- Rattata - Substitute - TM90
  (19, 1900, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 46),
  -- Rattata - Cut - HM01
  (19, 1900, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 47),
  -- Rattata - Rock Smash - HM06
  (19, 1900, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 48),
  -- Rattata - Bite - Egg
  (19, 1900, 44, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rattata - Counter - Egg
  (19, 1900, 68, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rattata - Screech - Egg
  (19, 1900, 103, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rattata - Fury Swipes - Egg
  (19, 1900, 154, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rattata - Flame Wheel - Egg
  (19, 1900, 172, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Rattata - Reversal - Egg
  (19, 1900, 179, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Rattata - Swagger - Egg
  (19, 1900, 207, 8, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Rattata - Uproar - Egg
  (19, 1900, 253, 8, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rattata - Me First - Egg
  (19, 1900, 382, 8, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Rattata - Last Resort - Egg
  (19, 1900, 387, 8, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Raticate - Swords Dance - Level 1
  (20, 2000, 14, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raticate - Focus Energy - Level 1
  (20, 2000, 116, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raticate - Quick Attack - Level 4
  (20, 2000, 98, 8, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Raticate - Focus Energy - Level 7
  (20, 2000, 116, 8, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Raticate - Bite - Level 10
  (20, 2000, 44, 8, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Raticate - Pursuit - Level 13
  (20, 2000, 228, 8, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Raticate - Hyper Fang - Level 16
  (20, 2000, 158, 8, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Raticate - Sucker Punch - Level 19
  (20, 2000, 389, 8, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Raticate - Scary Face - Level 20
  (20, 2000, 184, 8, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Raticate - Crunch - Level 24
  (20, 2000, 242, 8, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Raticate - Assurance - Level 29
  (20, 2000, 372, 8, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Raticate - Super Fang - Level 34
  (20, 2000, 162, 8, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Raticate - Double-Edge - Level 39
  (20, 2000, 38, 8, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Raticate - Endeavor - Level 44
  (20, 2000, 283, 8, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Raticate - Roar - TM05
  (20, 2000, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 18),
  -- Raticate - Toxic - TM06
  (20, 2000, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 19),
  -- Raticate - Hidden Power - TM10
  (20, 2000, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 20),
  -- Raticate - Sunny Day - TM11
  (20, 2000, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 21),
  -- Raticate - Taunt - TM12
  (20, 2000, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 22),
  -- Raticate - Ice Beam - TM13
  (20, 2000, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 23),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 24),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 25),
  -- Raticate - Protect - TM17
  (20, 2000, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 26),
  -- Raticate - Rain Dance - TM18
  (20, 2000, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 27),
  -- Raticate - Frustration - TM21
  (20, 2000, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 28),
  -- Raticate - Iron Tail - TM23
  (20, 2000, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 29),
  -- Raticate - Thunderbolt - TM24
  (20, 2000, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 30),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 31),
  -- Raticate - Return - TM27
  (20, 2000, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 32),
  -- Raticate - Dig - TM28
  (20, 2000, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 33),
  -- Raticate - Shadow Ball - TM30
  (20, 2000, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 34),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 35),
  -- Raticate - Shock Wave - TM34
  (20, 2000, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 36),
  -- Raticate - Facade - TM42
  (20, 2000, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 37),
  -- Raticate - Secret Power - TM43
  (20, 2000, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 38),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 39),
  -- Raticate - Attract - TM45
  (20, 2000, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 40),
  -- Raticate - Thief - TM46
  (20, 2000, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 41),
  -- Raticate - Charge Beam - TM57
  (20, 2000, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 42),
  -- Raticate - Endure - TM58
  (20, 2000, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 43),
  -- Raticate - Giga Impact - TM68
  (20, 2000, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 44),
  -- Raticate - Thunder Wave - TM73
  (20, 2000, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 45),
  -- Raticate - Swords Dance - TM75
  (20, 2000, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 46),
  -- Raticate - Captivate - TM78
  (20, 2000, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 47),
  -- Raticate - Sleep Talk - TM82
  (20, 2000, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 48),
  -- Raticate - Natural Gift - TM83
  (20, 2000, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 49),
  -- Raticate - Grass Knot - TM86
  (20, 2000, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 50),
  -- Raticate - Swagger - TM87
  (20, 2000, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 51),
  -- Raticate - Pluck - TM88
  (20, 2000, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 52),
  -- Raticate - U-turn - TM89
  (20, 2000, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 53),
  -- Raticate - Substitute - TM90
  (20, 2000, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 54),
  -- Raticate - Cut - HM01
  (20, 2000, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 55),
  -- Raticate - Strength - HM04
  (20, 2000, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 56),
  -- Raticate - Rock Smash - HM06
  (20, 2000, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 57),
  -- Spearow - Growl - Level 1
  (21, 2100, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 5
  (21, 2100, 43, 8, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spearow - Fury Attack - Level 9
  (21, 2100, 31, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Spearow - Pursuit - Level 13
  (21, 2100, 228, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Spearow - Aerial Ace - Level 17
  (21, 2100, 332, 8, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Spearow - Mirror Move - Level 21
  (21, 2100, 119, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spearow - Agility - Level 25
  (21, 2100, 97, 8, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Spearow - Assurance - Level 29
  (21, 2100, 372, 8, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spearow - Roost - Level 33
  (21, 2100, 355, 8, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Spearow - Drill Peck - Level 37
  (21, 2100, 65, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spearow - Toxic - TM06
  (21, 2100, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 12),
  -- Spearow - Hidden Power - TM10
  (21, 2100, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 13),
  -- Spearow - Sunny Day - TM11
  (21, 2100, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 14),
  -- Spearow - Protect - TM17
  (21, 2100, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 15),
  -- Spearow - Rain Dance - TM18
  (21, 2100, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 16),
  -- Spearow - Frustration - TM21
  (21, 2100, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 17),
  -- Spearow - Return - TM27
  (21, 2100, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 18),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 19),
  -- Spearow - Aerial Ace - TM40
  (21, 2100, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 20),
  -- Spearow - Facade - TM42
  (21, 2100, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 21),
  -- Spearow - Secret Power - TM43
  (21, 2100, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 22),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 23),
  -- Spearow - Attract - TM45
  (21, 2100, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 24),
  -- Spearow - Thief - TM46
  (21, 2100, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 25),
  -- Spearow - Steel Wing - TM47
  (21, 2100, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 26),
  -- Spearow - Roost - TM51
  (21, 2100, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 27),
  -- Spearow - Endure - TM58
  (21, 2100, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 28),
  -- Spearow - Captivate - TM78
  (21, 2100, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 29),
  -- Spearow - Sleep Talk - TM82
  (21, 2100, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 30),
  -- Spearow - Natural Gift - TM83
  (21, 2100, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 31),
  -- Spearow - Swagger - TM87
  (21, 2100, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 32),
  -- Spearow - Pluck - TM88
  (21, 2100, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 33),
  -- Spearow - U-turn - TM89
  (21, 2100, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 34),
  -- Spearow - Substitute - TM90
  (21, 2100, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 35),
  -- Spearow - Fly - HM02
  (21, 2100, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 36),
  -- Spearow - Defog - HM05
  (21, 2100, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 37),
  -- Spearow - Whirlwind - Egg
  (21, 2100, 18, 8, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spearow - Quick Attack - Egg
  (21, 2100, 98, 8, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spearow - Sky Attack - Egg
  (21, 2100, 143, 8, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spearow - Tri Attack - Egg
  (21, 2100, 161, 8, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spearow - Scary Face - Egg
  (21, 2100, 184, 8, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spearow - Feint Attack - Egg
  (21, 2100, 185, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spearow - False Swipe - Egg
  (21, 2100, 206, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spearow - Uproar - Egg
  (21, 2100, 253, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spearow - Astonish - Egg
  (21, 2100, 310, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Fearow - Fury Attack - Level 1
  (22, 2200, 31, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Leer - Level 1
  (22, 2200, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fearow - Pluck - Level 1
  (22, 2200, 365, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Fearow - Leer - Level 5
  (22, 2200, 43, 8, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Fearow - Fury Attack - Level 9
  (22, 2200, 31, 8, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Fearow - Pursuit - Level 13
  (22, 2200, 228, 8, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Fearow - Aerial Ace - Level 17
  (22, 2200, 332, 8, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Fearow - Mirror Move - Level 23
  (22, 2200, 119, 8, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Fearow - Agility - Level 29
  (22, 2200, 97, 8, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Fearow - Assurance - Level 35
  (22, 2200, 372, 8, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Fearow - Roost - Level 41
  (22, 2200, 355, 8, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Fearow - Drill Peck - Level 47
  (22, 2200, 65, 8, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Fearow - Toxic - TM06
  (22, 2200, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Fearow - Hidden Power - TM10
  (22, 2200, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Fearow - Sunny Day - TM11
  (22, 2200, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 18),
  -- Fearow - Protect - TM17
  (22, 2200, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 19),
  -- Fearow - Rain Dance - TM18
  (22, 2200, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 20),
  -- Fearow - Frustration - TM21
  (22, 2200, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 21),
  -- Fearow - Return - TM27
  (22, 2200, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 22),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 23),
  -- Fearow - Aerial Ace - TM40
  (22, 2200, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 24),
  -- Fearow - Facade - TM42
  (22, 2200, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 25),
  -- Fearow - Secret Power - TM43
  (22, 2200, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 26),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 27),
  -- Fearow - Attract - TM45
  (22, 2200, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 28),
  -- Fearow - Thief - TM46
  (22, 2200, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 29),
  -- Fearow - Steel Wing - TM47
  (22, 2200, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 30),
  -- Fearow - Roost - TM51
  (22, 2200, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 31),
  -- Fearow - Endure - TM58
  (22, 2200, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Fearow - Giga Impact - TM68
  (22, 2200, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 33),
  -- Fearow - Captivate - TM78
  (22, 2200, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 34),
  -- Fearow - Sleep Talk - TM82
  (22, 2200, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 35),
  -- Fearow - Natural Gift - TM83
  (22, 2200, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 36),
  -- Fearow - Swagger - TM87
  (22, 2200, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 37),
  -- Fearow - Pluck - TM88
  (22, 2200, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 38),
  -- Fearow - U-turn - TM89
  (22, 2200, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 39),
  -- Fearow - Substitute - TM90
  (22, 2200, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 40),
  -- Fearow - Fly - HM02
  (22, 2200, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 41),
  -- Fearow - Defog - HM05
  (22, 2200, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 42),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 4
  (23, 2300, 40, 8, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 9
  (23, 2300, 44, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 12
  (23, 2300, 137, 8, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 17
  (23, 2300, 103, 8, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 20
  (23, 2300, 51, 8, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ekans - Stockpile - Level 25
  (23, 2300, 254, 8, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ekans - Spit Up - Level 25
  (23, 2300, 255, 8, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ekans - Swallow - Level 25
  (23, 2300, 256, 8, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ekans - Mud Bomb - Level 28
  (23, 2300, 426, 8, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Ekans - Gastro Acid - Level 33
  (23, 2300, 380, 8, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ekans - Haze - Level 36
  (23, 2300, 114, 8, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ekans - Gunk Shot - Level 41
  (23, 2300, 441, 8, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Ekans - Toxic - TM06
  (23, 2300, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Ekans - Hidden Power - TM10
  (23, 2300, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Ekans - Sunny Day - TM11
  (23, 2300, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Ekans - Protect - TM17
  (23, 2300, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Ekans - Rain Dance - TM18
  (23, 2300, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Ekans - Giga Drain - TM19
  (23, 2300, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 20),
  -- Ekans - Frustration - TM21
  (23, 2300, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 21),
  -- Ekans - Iron Tail - TM23
  (23, 2300, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 22),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 23),
  -- Ekans - Return - TM27
  (23, 2300, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Ekans - Dig - TM28
  (23, 2300, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 25),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 26),
  -- Ekans - Sludge Bomb - TM36
  (23, 2300, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 27),
  -- Ekans - Rock Tomb - TM39
  (23, 2300, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 28),
  -- Ekans - Torment - TM41
  (23, 2300, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 29),
  -- Ekans - Facade - TM42
  (23, 2300, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 30),
  -- Ekans - Secret Power - TM43
  (23, 2300, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 31),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 32),
  -- Ekans - Attract - TM45
  (23, 2300, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 33),
  -- Ekans - Thief - TM46
  (23, 2300, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 34),
  -- Ekans - Snatch - TM49
  (23, 2300, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 35),
  -- Ekans - Endure - TM58
  (23, 2300, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 36),
  -- Ekans - Payback - TM66
  (23, 2300, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 37),
  -- Ekans - Captivate - TM78
  (23, 2300, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Ekans - Dark Pulse - TM79
  (23, 2300, 399, 8, NULL, 2, NULL, NULL, 8002079, NULL, 39),
  -- Ekans - Rock Slide - TM80
  (23, 2300, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 40),
  -- Ekans - Sleep Talk - TM82
  (23, 2300, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 41),
  -- Ekans - Natural Gift - TM83
  (23, 2300, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 42),
  -- Ekans - Poison Jab - TM84
  (23, 2300, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 43),
  -- Ekans - Swagger - TM87
  (23, 2300, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 44),
  -- Ekans - Substitute - TM90
  (23, 2300, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 45),
  -- Ekans - Strength - HM04
  (23, 2300, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 46),
  -- Ekans - Slam - Egg
  (23, 2300, 21, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ekans - Disable - Egg
  (23, 2300, 50, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ekans - Spite - Egg
  (23, 2300, 180, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ekans - Scary Face - Egg
  (23, 2300, 184, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ekans - Pursuit - Egg
  (23, 2300, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ekans - Beat Up - Egg
  (23, 2300, 251, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ekans - Poison Fang - Egg
  (23, 2300, 305, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ekans - Poison Tail - Egg
  (23, 2300, 342, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 1
  (24, 2400, 44, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Thunder Fang - Level 1
  (24, 2400, 422, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arbok - Ice Fang - Level 1
  (24, 2400, 423, 8, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arbok - Fire Fang - Level 1
  (24, 2400, 424, 8, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arbok - Poison Sting - Level 4
  (24, 2400, 40, 8, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Arbok - Bite - Level 9
  (24, 2400, 44, 8, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Arbok - Glare - Level 12
  (24, 2400, 137, 8, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Arbok - Screech - Level 17
  (24, 2400, 103, 8, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Arbok - Acid - Level 20
  (24, 2400, 51, 8, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Arbok - Crunch - Level 22
  (24, 2400, 242, 8, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Arbok - Stockpile - Level 28
  (24, 2400, 254, 8, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Arbok - Spit Up - Level 28
  (24, 2400, 255, 8, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Arbok - Swallow - Level 28
  (24, 2400, 256, 8, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Arbok - Mud Bomb - Level 34
  (24, 2400, 426, 8, NULL, 1, 34, NULL, NULL, NULL, 17),
  -- Arbok - Gastro Acid - Level 42
  (24, 2400, 380, 8, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Arbok - Haze - Level 48
  (24, 2400, 114, 8, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Arbok - Gunk Shot - Level 56
  (24, 2400, 441, 8, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Arbok - Toxic - TM06
  (24, 2400, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 21),
  -- Arbok - Hidden Power - TM10
  (24, 2400, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 22),
  -- Arbok - Sunny Day - TM11
  (24, 2400, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 23),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 24),
  -- Arbok - Protect - TM17
  (24, 2400, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 25),
  -- Arbok - Rain Dance - TM18
  (24, 2400, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 26),
  -- Arbok - Giga Drain - TM19
  (24, 2400, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 27),
  -- Arbok - Frustration - TM21
  (24, 2400, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 28),
  -- Arbok - Iron Tail - TM23
  (24, 2400, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 29),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 30),
  -- Arbok - Return - TM27
  (24, 2400, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 31),
  -- Arbok - Dig - TM28
  (24, 2400, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 32),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 33),
  -- Arbok - Sludge Bomb - TM36
  (24, 2400, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 34),
  -- Arbok - Rock Tomb - TM39
  (24, 2400, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 35),
  -- Arbok - Torment - TM41
  (24, 2400, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 36),
  -- Arbok - Facade - TM42
  (24, 2400, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 37),
  -- Arbok - Secret Power - TM43
  (24, 2400, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 38),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 39),
  -- Arbok - Attract - TM45
  (24, 2400, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 40),
  -- Arbok - Thief - TM46
  (24, 2400, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 41),
  -- Arbok - Snatch - TM49
  (24, 2400, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 42),
  -- Arbok - Endure - TM58
  (24, 2400, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 43),
  -- Arbok - Payback - TM66
  (24, 2400, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 44),
  -- Arbok - Giga Impact - TM68
  (24, 2400, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 45),
  -- Arbok - Captivate - TM78
  (24, 2400, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 46),
  -- Arbok - Dark Pulse - TM79
  (24, 2400, 399, 8, NULL, 2, NULL, NULL, 8002079, NULL, 47),
  -- Arbok - Rock Slide - TM80
  (24, 2400, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 48),
  -- Arbok - Sleep Talk - TM82
  (24, 2400, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 49),
  -- Arbok - Natural Gift - TM83
  (24, 2400, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 50),
  -- Arbok - Poison Jab - TM84
  (24, 2400, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 51),
  -- Arbok - Swagger - TM87
  (24, 2400, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 52),
  -- Arbok - Substitute - TM90
  (24, 2400, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 53),
  -- Arbok - Strength - HM04
  (24, 2400, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 54),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Tail Whip - Level 5
  (25, 2500, 39, 8, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pikachu - Thunder Wave - Level 10
  (25, 2500, 86, 8, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pikachu - Quick Attack - Level 13
  (25, 2500, 98, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pikachu - Double Team - Level 18
  (25, 2500, 104, 8, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pikachu - Slam - Level 21
  (25, 2500, 21, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Pikachu - Thunderbolt - Level 26
  (25, 2500, 85, 8, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Pikachu - Feint - Level 29
  (25, 2500, 364, 8, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pikachu - Agility - Level 34
  (25, 2500, 97, 8, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Pikachu - Discharge - Level 37
  (25, 2500, 435, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pikachu - Light Screen - Level 42
  (25, 2500, 113, 8, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pikachu - Thunder - Level 45
  (25, 2500, 87, 8, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Pikachu - Focus Punch - TM01
  (25, 2500, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 14),
  -- Pikachu - Toxic - TM06
  (25, 2500, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Pikachu - Hidden Power - TM10
  (25, 2500, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Pikachu - Light Screen - TM16
  (25, 2500, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 17),
  -- Pikachu - Protect - TM17
  (25, 2500, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Pikachu - Rain Dance - TM18
  (25, 2500, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Pikachu - Frustration - TM21
  (25, 2500, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 20),
  -- Pikachu - Iron Tail - TM23
  (25, 2500, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 21),
  -- Pikachu - Thunderbolt - TM24
  (25, 2500, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 22),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 23),
  -- Pikachu - Return - TM27
  (25, 2500, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Pikachu - Dig - TM28
  (25, 2500, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 25),
  -- Pikachu - Brick Break - TM31
  (25, 2500, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 26),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 27),
  -- Pikachu - Shock Wave - TM34
  (25, 2500, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 28),
  -- Pikachu - Facade - TM42
  (25, 2500, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 29),
  -- Pikachu - Secret Power - TM43
  (25, 2500, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 30),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 31),
  -- Pikachu - Attract - TM45
  (25, 2500, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 32),
  -- Pikachu - Fling - TM56
  (25, 2500, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 33),
  -- Pikachu - Charge Beam - TM57
  (25, 2500, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 34),
  -- Pikachu - Endure - TM58
  (25, 2500, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 35),
  -- Pikachu - Flash - TM70
  (25, 2500, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 36),
  -- Pikachu - Thunder Wave - TM73
  (25, 2500, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 37),
  -- Pikachu - Captivate - TM78
  (25, 2500, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Pikachu - Sleep Talk - TM82
  (25, 2500, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 39),
  -- Pikachu - Natural Gift - TM83
  (25, 2500, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 40),
  -- Pikachu - Grass Knot - TM86
  (25, 2500, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 41),
  -- Pikachu - Swagger - TM87
  (25, 2500, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 42),
  -- Pikachu - Substitute - TM90
  (25, 2500, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 43),
  -- Pikachu - Strength - HM04
  (25, 2500, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 44),
  -- Pikachu - Rock Smash - HM06
  (25, 2500, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 45),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Thunderbolt - Level 1
  (26, 2600, 85, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Focus Punch - TM01
  (26, 2600, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 5),
  -- Raichu - Toxic - TM06
  (26, 2600, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 6),
  -- Raichu - Hidden Power - TM10
  (26, 2600, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 7),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 8),
  -- Raichu - Light Screen - TM16
  (26, 2600, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 9),
  -- Raichu - Protect - TM17
  (26, 2600, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 10),
  -- Raichu - Rain Dance - TM18
  (26, 2600, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 11),
  -- Raichu - Frustration - TM21
  (26, 2600, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 12),
  -- Raichu - Iron Tail - TM23
  (26, 2600, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 13),
  -- Raichu - Thunderbolt - TM24
  (26, 2600, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 14),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 15),
  -- Raichu - Return - TM27
  (26, 2600, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 16),
  -- Raichu - Dig - TM28
  (26, 2600, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 17),
  -- Raichu - Brick Break - TM31
  (26, 2600, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 18),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 19),
  -- Raichu - Shock Wave - TM34
  (26, 2600, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 20),
  -- Raichu - Facade - TM42
  (26, 2600, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 21),
  -- Raichu - Secret Power - TM43
  (26, 2600, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 22),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 23),
  -- Raichu - Attract - TM45
  (26, 2600, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 24),
  -- Raichu - Thief - TM46
  (26, 2600, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 25),
  -- Raichu - Focus Blast - TM52
  (26, 2600, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 26),
  -- Raichu - Fling - TM56
  (26, 2600, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 27),
  -- Raichu - Charge Beam - TM57
  (26, 2600, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 28),
  -- Raichu - Endure - TM58
  (26, 2600, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 29),
  -- Raichu - Giga Impact - TM68
  (26, 2600, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 30),
  -- Raichu - Flash - TM70
  (26, 2600, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 31),
  -- Raichu - Thunder Wave - TM73
  (26, 2600, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 32),
  -- Raichu - Captivate - TM78
  (26, 2600, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 33),
  -- Raichu - Sleep Talk - TM82
  (26, 2600, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 34),
  -- Raichu - Natural Gift - TM83
  (26, 2600, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 35),
  -- Raichu - Grass Knot - TM86
  (26, 2600, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 36),
  -- Raichu - Swagger - TM87
  (26, 2600, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 37),
  -- Raichu - Substitute - TM90
  (26, 2600, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 38),
  -- Raichu - Strength - HM04
  (26, 2600, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 39),
  -- Raichu - Rock Smash - HM06
  (26, 2600, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 40),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 3
  (27, 2700, 111, 8, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Sandshrew - Sand Attack - Level 7
  (27, 2700, 28, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Sandshrew - Poison Sting - Level 9
  (27, 2700, 40, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sandshrew - Rapid Spin - Level 13
  (27, 2700, 229, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sandshrew - Swift - Level 15
  (27, 2700, 129, 8, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sandshrew - Fury Swipes - Level 19
  (27, 2700, 154, 8, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sandshrew - Rollout - Level 21
  (27, 2700, 205, 8, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sandshrew - Fury Cutter - Level 25
  (27, 2700, 210, 8, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sandshrew - Sand Tomb - Level 27
  (27, 2700, 328, 8, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Sandshrew - Slash - Level 31
  (27, 2700, 163, 8, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Sandshrew - Gyro Ball - Level 33
  (27, 2700, 360, 8, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Sandshrew - Sandstorm - Level 37
  (27, 2700, 201, 8, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Sandshrew - Focus Punch - TM01
  (27, 2700, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 14),
  -- Sandshrew - Toxic - TM06
  (27, 2700, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Sandshrew - Hidden Power - TM10
  (27, 2700, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Sandshrew - Sunny Day - TM11
  (27, 2700, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Sandshrew - Protect - TM17
  (27, 2700, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Sandshrew - Frustration - TM21
  (27, 2700, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 19),
  -- Sandshrew - Iron Tail - TM23
  (27, 2700, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 20),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 21),
  -- Sandshrew - Return - TM27
  (27, 2700, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 22),
  -- Sandshrew - Dig - TM28
  (27, 2700, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 23),
  -- Sandshrew - Brick Break - TM31
  (27, 2700, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 24),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 25),
  -- Sandshrew - Sandstorm - TM37
  (27, 2700, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 26),
  -- Sandshrew - Rock Tomb - TM39
  (27, 2700, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 27),
  -- Sandshrew - Aerial Ace - TM40
  (27, 2700, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 28),
  -- Sandshrew - Facade - TM42
  (27, 2700, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 29),
  -- Sandshrew - Secret Power - TM43
  (27, 2700, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 30),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 31),
  -- Sandshrew - Attract - TM45
  (27, 2700, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 32),
  -- Sandshrew - Thief - TM46
  (27, 2700, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 33),
  -- Sandshrew - Fling - TM56
  (27, 2700, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 34),
  -- Sandshrew - Endure - TM58
  (27, 2700, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 35),
  -- Sandshrew - Shadow Claw - TM65
  (27, 2700, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 36),
  -- Sandshrew - Gyro Ball - TM74
  (27, 2700, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 37),
  -- Sandshrew - Swords Dance - TM75
  (27, 2700, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 38),
  -- Sandshrew - Stealth Rock - TM76
  (27, 2700, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 39),
  -- Sandshrew - Captivate - TM78
  (27, 2700, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 40),
  -- Sandshrew - Rock Slide - TM80
  (27, 2700, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 41),
  -- Sandshrew - X-Scissor - TM81
  (27, 2700, 404, 8, NULL, 2, NULL, NULL, 8002081, NULL, 42),
  -- Sandshrew - Sleep Talk - TM82
  (27, 2700, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 43),
  -- Sandshrew - Natural Gift - TM83
  (27, 2700, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 44),
  -- Sandshrew - Poison Jab - TM84
  (27, 2700, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 45),
  -- Sandshrew - Swagger - TM87
  (27, 2700, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 46),
  -- Sandshrew - Substitute - TM90
  (27, 2700, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 47),
  -- Sandshrew - Cut - HM01
  (27, 2700, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 48),
  -- Sandshrew - Strength - HM04
  (27, 2700, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 49),
  -- Sandshrew - Rock Smash - HM06
  (27, 2700, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 50),
  -- Sandshrew - Rock Climb - HM08
  (27, 2700, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 51),
  -- Sandshrew - Swords Dance - Egg
  (27, 2700, 14, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandshrew - Counter - Egg
  (27, 2700, 68, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandshrew - Rock Slide - Egg
  (27, 2700, 157, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandshrew - Flail - Egg
  (27, 2700, 175, 8, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandshrew - Safeguard - Egg
  (27, 2700, 219, 8, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandshrew - Rapid Spin - Egg
  (27, 2700, 229, 8, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew - Metal Claw - Egg
  (27, 2700, 232, 8, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew - Crush Claw - Egg
  (27, 2700, 306, 8, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew - Night Slash - Egg
  (27, 2700, 400, 8, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 3
  (28, 2800, 111, 8, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Sandslash - Sand Attack - Level 7
  (28, 2800, 28, 8, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sandslash - Poison Sting - Level 9
  (28, 2800, 40, 8, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sandslash - Rapid Spin - Level 13
  (28, 2800, 229, 8, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Sandslash - Swift - Level 15
  (28, 2800, 129, 8, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Sandslash - Fury Swipes - Level 19
  (28, 2800, 154, 8, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Sandslash - Rollout - Level 21
  (28, 2800, 205, 8, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sandslash - Crush Claw - Level 22
  (28, 2800, 306, 8, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Sandslash - Fury Cutter - Level 28
  (28, 2800, 210, 8, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Sandslash - Sand Tomb - Level 33
  (28, 2800, 328, 8, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandslash - Slash - Level 40
  (28, 2800, 163, 8, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Sandslash - Gyro Ball - Level 45
  (28, 2800, 360, 8, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Sandslash - Sandstorm - Level 52
  (28, 2800, 201, 8, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Sandslash - Focus Punch - TM01
  (28, 2800, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 17),
  -- Sandslash - Toxic - TM06
  (28, 2800, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 18),
  -- Sandslash - Hidden Power - TM10
  (28, 2800, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 19),
  -- Sandslash - Sunny Day - TM11
  (28, 2800, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 20),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 21),
  -- Sandslash - Protect - TM17
  (28, 2800, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 22),
  -- Sandslash - Frustration - TM21
  (28, 2800, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Sandslash - Iron Tail - TM23
  (28, 2800, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 24),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 25),
  -- Sandslash - Return - TM27
  (28, 2800, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Sandslash - Dig - TM28
  (28, 2800, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Sandslash - Brick Break - TM31
  (28, 2800, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 28),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Sandslash - Sandstorm - TM37
  (28, 2800, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 30),
  -- Sandslash - Rock Tomb - TM39
  (28, 2800, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 31),
  -- Sandslash - Aerial Ace - TM40
  (28, 2800, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 32),
  -- Sandslash - Facade - TM42
  (28, 2800, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 33),
  -- Sandslash - Secret Power - TM43
  (28, 2800, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 34),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 35),
  -- Sandslash - Attract - TM45
  (28, 2800, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 36),
  -- Sandslash - Thief - TM46
  (28, 2800, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 37),
  -- Sandslash - Focus Blast - TM52
  (28, 2800, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 38),
  -- Sandslash - Fling - TM56
  (28, 2800, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 39),
  -- Sandslash - Endure - TM58
  (28, 2800, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 40),
  -- Sandslash - Shadow Claw - TM65
  (28, 2800, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 41),
  -- Sandslash - Giga Impact - TM68
  (28, 2800, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 42),
  -- Sandslash - Stone Edge - TM71
  (28, 2800, 444, 8, NULL, 2, NULL, NULL, 8002071, NULL, 43),
  -- Sandslash - Gyro Ball - TM74
  (28, 2800, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 44),
  -- Sandslash - Swords Dance - TM75
  (28, 2800, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 45),
  -- Sandslash - Stealth Rock - TM76
  (28, 2800, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 46),
  -- Sandslash - Captivate - TM78
  (28, 2800, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 47),
  -- Sandslash - Rock Slide - TM80
  (28, 2800, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 48),
  -- Sandslash - X-Scissor - TM81
  (28, 2800, 404, 8, NULL, 2, NULL, NULL, 8002081, NULL, 49),
  -- Sandslash - Sleep Talk - TM82
  (28, 2800, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 50),
  -- Sandslash - Natural Gift - TM83
  (28, 2800, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 51),
  -- Sandslash - Poison Jab - TM84
  (28, 2800, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 52),
  -- Sandslash - Swagger - TM87
  (28, 2800, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 53),
  -- Sandslash - Substitute - TM90
  (28, 2800, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 54),
  -- Sandslash - Cut - HM01
  (28, 2800, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 55),
  -- Sandslash - Strength - HM04
  (28, 2800, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 56),
  -- Sandslash - Rock Smash - HM06
  (28, 2800, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 57),
  -- Sandslash - Rock Climb - HM08
  (28, 2800, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 58),
  -- Nidoran F - Scratch - Level 1
  (29, 2900, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Tail Whip - Level 7
  (29, 2900, 39, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidoran F - Double Kick - Level 9
  (29, 2900, 24, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidoran F - Poison Sting - Level 13
  (29, 2900, 40, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidoran F - Fury Swipes - Level 19
  (29, 2900, 154, 8, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nidoran F - Bite - Level 21
  (29, 2900, 44, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Nidoran F - Helping Hand - Level 25
  (29, 2900, 270, 8, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nidoran F - Toxic Spikes - Level 31
  (29, 2900, 390, 8, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Nidoran F - Flatter - Level 33
  (29, 2900, 260, 8, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Nidoran F - Crunch - Level 37
  (29, 2900, 242, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Nidoran F - Captivate - Level 43
  (29, 2900, 445, 8, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Nidoran F - Poison Fang - Level 45
  (29, 2900, 305, 8, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Nidoran F - Water Pulse - TM03
  (29, 2900, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 14),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Nidoran F - Hidden Power - TM10
  (29, 2900, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Nidoran F - Sunny Day - TM11
  (29, 2900, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Nidoran F - Ice Beam - TM13
  (29, 2900, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 18),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 19),
  -- Nidoran F - Protect - TM17
  (29, 2900, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Nidoran F - Rain Dance - TM18
  (29, 2900, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Nidoran F - Frustration - TM21
  (29, 2900, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Nidoran F - Iron Tail - TM23
  (29, 2900, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Nidoran F - Thunderbolt - TM24
  (29, 2900, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 24),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 25),
  -- Nidoran F - Return - TM27
  (29, 2900, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Nidoran F - Dig - TM28
  (29, 2900, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Nidoran F - Shock Wave - TM34
  (29, 2900, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 29),
  -- Nidoran F - Sludge Bomb - TM36
  (29, 2900, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 30),
  -- Nidoran F - Aerial Ace - TM40
  (29, 2900, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 31),
  -- Nidoran F - Facade - TM42
  (29, 2900, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Nidoran F - Secret Power - TM43
  (29, 2900, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Nidoran F - Attract - TM45
  (29, 2900, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Nidoran F - Thief - TM46
  (29, 2900, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 36),
  -- Nidoran F - Endure - TM58
  (29, 2900, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 37),
  -- Nidoran F - Shadow Claw - TM65
  (29, 2900, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 38),
  -- Nidoran F - Captivate - TM78
  (29, 2900, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 39),
  -- Nidoran F - Sleep Talk - TM82
  (29, 2900, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 40),
  -- Nidoran F - Natural Gift - TM83
  (29, 2900, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 41),
  -- Nidoran F - Poison Jab - TM84
  (29, 2900, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 42),
  -- Nidoran F - Swagger - TM87
  (29, 2900, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 43),
  -- Nidoran F - Substitute - TM90
  (29, 2900, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 44),
  -- Nidoran F - Cut - HM01
  (29, 2900, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 45),
  -- Nidoran F - Strength - HM04
  (29, 2900, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 46),
  -- Nidoran F - Rock Smash - HM06
  (29, 2900, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 47),
  -- Nidoran F - Take Down - Egg
  (29, 2900, 36, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran F - Supersonic - Egg
  (29, 2900, 48, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran F - Disable - Egg
  (29, 2900, 50, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran F - Counter - Egg
  (29, 2900, 68, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran F - Focus Energy - Egg
  (29, 2900, 116, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran F - Charm - Egg
  (29, 2900, 204, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoran F - Pursuit - Egg
  (29, 2900, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidoran F - Beat Up - Egg
  (29, 2900, 251, 8, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Tail Whip - Level 7
  (30, 3000, 39, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidorina - Double Kick - Level 9
  (30, 3000, 24, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidorina - Poison Sting - Level 13
  (30, 3000, 40, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidorina - Fury Swipes - Level 20
  (30, 3000, 154, 8, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidorina - Bite - Level 23
  (30, 3000, 44, 8, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorina - Helping Hand - Level 28
  (30, 3000, 270, 8, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Nidorina - Toxic Spikes - Level 35
  (30, 3000, 390, 8, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidorina - Flatter - Level 38
  (30, 3000, 260, 8, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Nidorina - Crunch - Level 43
  (30, 3000, 242, 8, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Nidorina - Captivate - Level 50
  (30, 3000, 445, 8, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidorina - Poison Fang - Level 58
  (30, 3000, 305, 8, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Nidorina - Water Pulse - TM03
  (30, 3000, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 14),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Nidorina - Hidden Power - TM10
  (30, 3000, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Nidorina - Sunny Day - TM11
  (30, 3000, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Nidorina - Ice Beam - TM13
  (30, 3000, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 18),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 19),
  -- Nidorina - Protect - TM17
  (30, 3000, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Nidorina - Rain Dance - TM18
  (30, 3000, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Nidorina - Frustration - TM21
  (30, 3000, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Nidorina - Iron Tail - TM23
  (30, 3000, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Nidorina - Thunderbolt - TM24
  (30, 3000, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 24),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 25),
  -- Nidorina - Return - TM27
  (30, 3000, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Nidorina - Dig - TM28
  (30, 3000, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Nidorina - Shock Wave - TM34
  (30, 3000, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 29),
  -- Nidorina - Sludge Bomb - TM36
  (30, 3000, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 30),
  -- Nidorina - Aerial Ace - TM40
  (30, 3000, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 31),
  -- Nidorina - Facade - TM42
  (30, 3000, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Nidorina - Secret Power - TM43
  (30, 3000, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Nidorina - Attract - TM45
  (30, 3000, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Nidorina - Thief - TM46
  (30, 3000, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 36),
  -- Nidorina - Endure - TM58
  (30, 3000, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 37),
  -- Nidorina - Shadow Claw - TM65
  (30, 3000, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 38),
  -- Nidorina - Captivate - TM78
  (30, 3000, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 39),
  -- Nidorina - Sleep Talk - TM82
  (30, 3000, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 40),
  -- Nidorina - Natural Gift - TM83
  (30, 3000, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 41),
  -- Nidorina - Poison Jab - TM84
  (30, 3000, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 42),
  -- Nidorina - Swagger - TM87
  (30, 3000, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 43),
  -- Nidorina - Substitute - TM90
  (30, 3000, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 44),
  -- Nidorina - Cut - HM01
  (30, 3000, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 45),
  -- Nidorina - Strength - HM04
  (30, 3000, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 46),
  -- Nidorina - Rock Smash - HM06
  (30, 3000, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 47),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Double Kick - Level 1
  (31, 3100, 24, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Poison Sting - Level 1
  (31, 3100, 40, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Body Slam - Level 23
  (31, 3100, 34, 8, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoqueen - Earth Power - Level 43
  (31, 3100, 414, 8, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Nidoqueen - Superpower - Level 58
  (31, 3100, 276, 8, NULL, 1, 58, NULL, NULL, NULL, 7),
  -- Nidoqueen - Focus Punch - TM01
  (31, 3100, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 8),
  -- Nidoqueen - Water Pulse - TM03
  (31, 3100, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 9),
  -- Nidoqueen - Roar - TM05
  (31, 3100, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 10),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 11),
  -- Nidoqueen - Hidden Power - TM10
  (31, 3100, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 12),
  -- Nidoqueen - Sunny Day - TM11
  (31, 3100, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 13),
  -- Nidoqueen - Taunt - TM12
  (31, 3100, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 14),
  -- Nidoqueen - Ice Beam - TM13
  (31, 3100, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 15),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 16),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 17),
  -- Nidoqueen - Protect - TM17
  (31, 3100, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Nidoqueen - Rain Dance - TM18
  (31, 3100, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Nidoqueen - Frustration - TM21
  (31, 3100, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 20),
  -- Nidoqueen - Iron Tail - TM23
  (31, 3100, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 21),
  -- Nidoqueen - Thunderbolt - TM24
  (31, 3100, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 22),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 23),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 24),
  -- Nidoqueen - Return - TM27
  (31, 3100, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Nidoqueen - Dig - TM28
  (31, 3100, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 26),
  -- Nidoqueen - Shadow Ball - TM30
  (31, 3100, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 27),
  -- Nidoqueen - Brick Break - TM31
  (31, 3100, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 28),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Nidoqueen - Shock Wave - TM34
  (31, 3100, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 30),
  -- Nidoqueen - Flamethrower - TM35
  (31, 3100, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 31),
  -- Nidoqueen - Sludge Bomb - TM36
  (31, 3100, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 32),
  -- Nidoqueen - Sandstorm - TM37
  (31, 3100, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 33),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 34),
  -- Nidoqueen - Rock Tomb - TM39
  (31, 3100, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 35),
  -- Nidoqueen - Aerial Ace - TM40
  (31, 3100, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 36),
  -- Nidoqueen - Torment - TM41
  (31, 3100, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 37),
  -- Nidoqueen - Facade - TM42
  (31, 3100, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 38),
  -- Nidoqueen - Secret Power - TM43
  (31, 3100, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 39),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 40),
  -- Nidoqueen - Attract - TM45
  (31, 3100, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 41),
  -- Nidoqueen - Thief - TM46
  (31, 3100, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 42),
  -- Nidoqueen - Focus Blast - TM52
  (31, 3100, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 43),
  -- Nidoqueen - Fling - TM56
  (31, 3100, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 44),
  -- Nidoqueen - Endure - TM58
  (31, 3100, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 45),
  -- Nidoqueen - Dragon Pulse - TM59
  (31, 3100, 406, 8, NULL, 2, NULL, NULL, 8002059, NULL, 46),
  -- Nidoqueen - Shadow Claw - TM65
  (31, 3100, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 47),
  -- Nidoqueen - Giga Impact - TM68
  (31, 3100, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 48),
  -- Nidoqueen - Stone Edge - TM71
  (31, 3100, 444, 8, NULL, 2, NULL, NULL, 8002071, NULL, 49),
  -- Nidoqueen - Avalanche - TM72
  (31, 3100, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 50),
  -- Nidoqueen - Stealth Rock - TM76
  (31, 3100, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 51),
  -- Nidoqueen - Captivate - TM78
  (31, 3100, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 52),
  -- Nidoqueen - Rock Slide - TM80
  (31, 3100, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 53),
  -- Nidoqueen - Sleep Talk - TM82
  (31, 3100, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 54),
  -- Nidoqueen - Natural Gift - TM83
  (31, 3100, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 55),
  -- Nidoqueen - Poison Jab - TM84
  (31, 3100, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 56),
  -- Nidoqueen - Swagger - TM87
  (31, 3100, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 57),
  -- Nidoqueen - Substitute - TM90
  (31, 3100, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 58),
  -- Nidoqueen - Cut - HM01
  (31, 3100, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 59),
  -- Nidoqueen - Surf - HM03
  (31, 3100, 57, 8, NULL, 3, NULL, NULL, 8003003, NULL, 60),
  -- Nidoqueen - Strength - HM04
  (31, 3100, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 61),
  -- Nidoqueen - Defog - HM05
  (31, 3100, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 62),
  -- Nidoqueen - Rock Smash - HM06
  (31, 3100, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 63),
  -- Nidoqueen - Rock Climb - HM08
  (31, 3100, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 64),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Peck - Level 1
  (32, 3200, 64, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Focus Energy - Level 7
  (32, 3200, 116, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidoran M - Double Kick - Level 9
  (32, 3200, 24, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidoran M - Poison Sting - Level 13
  (32, 3200, 40, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidoran M - Fury Attack - Level 19
  (32, 3200, 31, 8, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nidoran M - Horn Attack - Level 21
  (32, 3200, 30, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Nidoran M - Helping Hand - Level 25
  (32, 3200, 270, 8, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nidoran M - Toxic Spikes - Level 31
  (32, 3200, 390, 8, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Nidoran M - Flatter - Level 33
  (32, 3200, 260, 8, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Nidoran M - Poison Jab - Level 37
  (32, 3200, 398, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Nidoran M - Captivate - Level 43
  (32, 3200, 445, 8, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Nidoran M - Horn Drill - Level 45
  (32, 3200, 32, 8, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Nidoran M - Water Pulse - TM03
  (32, 3200, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 14),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Nidoran M - Hidden Power - TM10
  (32, 3200, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Nidoran M - Sunny Day - TM11
  (32, 3200, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Nidoran M - Ice Beam - TM13
  (32, 3200, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 18),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 19),
  -- Nidoran M - Protect - TM17
  (32, 3200, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Nidoran M - Rain Dance - TM18
  (32, 3200, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Nidoran M - Frustration - TM21
  (32, 3200, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Nidoran M - Iron Tail - TM23
  (32, 3200, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Nidoran M - Thunderbolt - TM24
  (32, 3200, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 24),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 25),
  -- Nidoran M - Return - TM27
  (32, 3200, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Nidoran M - Dig - TM28
  (32, 3200, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Nidoran M - Shock Wave - TM34
  (32, 3200, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 29),
  -- Nidoran M - Sludge Bomb - TM36
  (32, 3200, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 30),
  -- Nidoran M - Facade - TM42
  (32, 3200, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 31),
  -- Nidoran M - Secret Power - TM43
  (32, 3200, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 32),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 33),
  -- Nidoran M - Attract - TM45
  (32, 3200, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 34),
  -- Nidoran M - Thief - TM46
  (32, 3200, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 35),
  -- Nidoran M - Endure - TM58
  (32, 3200, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 36),
  -- Nidoran M - Shadow Claw - TM65
  (32, 3200, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 37),
  -- Nidoran M - Captivate - TM78
  (32, 3200, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Nidoran M - Sleep Talk - TM82
  (32, 3200, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 39),
  -- Nidoran M - Natural Gift - TM83
  (32, 3200, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 40),
  -- Nidoran M - Poison Jab - TM84
  (32, 3200, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 41),
  -- Nidoran M - Swagger - TM87
  (32, 3200, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 42),
  -- Nidoran M - Substitute - TM90
  (32, 3200, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 43),
  -- Nidoran M - Cut - HM01
  (32, 3200, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 44),
  -- Nidoran M - Strength - HM04
  (32, 3200, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 45),
  -- Nidoran M - Rock Smash - HM06
  (32, 3200, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 46),
  -- Nidoran M - Take Down - Egg
  (32, 3200, 36, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran M - Supersonic - Egg
  (32, 3200, 48, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran M - Disable - Egg
  (32, 3200, 50, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran M - Counter - Egg
  (32, 3200, 68, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran M - Confusion - Egg
  (32, 3200, 93, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran M - Amnesia - Egg
  (32, 3200, 133, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran M - Beat Up - Egg
  (32, 3200, 251, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoran M - Sucker Punch - Egg
  (32, 3200, 389, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Peck - Level 1
  (33, 3300, 64, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Focus Energy - Level 7
  (33, 3300, 116, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidorino - Double Kick - Level 9
  (33, 3300, 24, 8, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidorino - Poison Sting - Level 13
  (33, 3300, 40, 8, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidorino - Fury Attack - Level 20
  (33, 3300, 31, 8, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidorino - Horn Attack - Level 23
  (33, 3300, 30, 8, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorino - Helping Hand - Level 28
  (33, 3300, 270, 8, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Nidorino - Toxic Spikes - Level 35
  (33, 3300, 390, 8, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidorino - Flatter - Level 38
  (33, 3300, 260, 8, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Nidorino - Poison Jab - Level 43
  (33, 3300, 398, 8, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Nidorino - Captivate - Level 50
  (33, 3300, 445, 8, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidorino - Horn Drill - Level 58
  (33, 3300, 32, 8, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Nidorino - Water Pulse - TM03
  (33, 3300, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 14),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Nidorino - Hidden Power - TM10
  (33, 3300, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Nidorino - Sunny Day - TM11
  (33, 3300, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Nidorino - Ice Beam - TM13
  (33, 3300, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 18),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 19),
  -- Nidorino - Protect - TM17
  (33, 3300, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Nidorino - Rain Dance - TM18
  (33, 3300, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Nidorino - Frustration - TM21
  (33, 3300, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Nidorino - Iron Tail - TM23
  (33, 3300, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Nidorino - Thunderbolt - TM24
  (33, 3300, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 24),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 25),
  -- Nidorino - Return - TM27
  (33, 3300, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 26),
  -- Nidorino - Dig - TM28
  (33, 3300, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 27),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Nidorino - Shock Wave - TM34
  (33, 3300, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 29),
  -- Nidorino - Sludge Bomb - TM36
  (33, 3300, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 30),
  -- Nidorino - Facade - TM42
  (33, 3300, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 31),
  -- Nidorino - Secret Power - TM43
  (33, 3300, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 32),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 33),
  -- Nidorino - Attract - TM45
  (33, 3300, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 34),
  -- Nidorino - Thief - TM46
  (33, 3300, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 35),
  -- Nidorino - Endure - TM58
  (33, 3300, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 36),
  -- Nidorino - Shadow Claw - TM65
  (33, 3300, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 37),
  -- Nidorino - Captivate - TM78
  (33, 3300, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Nidorino - Sleep Talk - TM82
  (33, 3300, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 39),
  -- Nidorino - Natural Gift - TM83
  (33, 3300, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 40),
  -- Nidorino - Poison Jab - TM84
  (33, 3300, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 41),
  -- Nidorino - Swagger - TM87
  (33, 3300, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 42),
  -- Nidorino - Substitute - TM90
  (33, 3300, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 43),
  -- Nidorino - Cut - HM01
  (33, 3300, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 44),
  -- Nidorino - Strength - HM04
  (33, 3300, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 45),
  -- Nidorino - Rock Smash - HM06
  (33, 3300, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 46),
  -- Nidoking - Double Kick - Level 1
  (34, 3400, 24, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Peck - Level 1
  (34, 3400, 64, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Focus Energy - Level 1
  (34, 3400, 116, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Thrash - Level 23
  (34, 3400, 37, 8, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoking - Earth Power - Level 43
  (34, 3400, 414, 8, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Nidoking - Megahorn - Level 58
  (34, 3400, 224, 8, NULL, 1, 58, NULL, NULL, NULL, 7),
  -- Nidoking - Focus Punch - TM01
  (34, 3400, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 8),
  -- Nidoking - Water Pulse - TM03
  (34, 3400, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 9),
  -- Nidoking - Roar - TM05
  (34, 3400, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 10),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 11),
  -- Nidoking - Hidden Power - TM10
  (34, 3400, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 12),
  -- Nidoking - Sunny Day - TM11
  (34, 3400, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 13),
  -- Nidoking - Taunt - TM12
  (34, 3400, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 14),
  -- Nidoking - Ice Beam - TM13
  (34, 3400, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 15),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 16),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 17),
  -- Nidoking - Protect - TM17
  (34, 3400, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Nidoking - Rain Dance - TM18
  (34, 3400, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 19),
  -- Nidoking - Frustration - TM21
  (34, 3400, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 20),
  -- Nidoking - Iron Tail - TM23
  (34, 3400, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 21),
  -- Nidoking - Thunderbolt - TM24
  (34, 3400, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 22),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 23),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 24),
  -- Nidoking - Return - TM27
  (34, 3400, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 25),
  -- Nidoking - Dig - TM28
  (34, 3400, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 26),
  -- Nidoking - Shadow Ball - TM30
  (34, 3400, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 27),
  -- Nidoking - Brick Break - TM31
  (34, 3400, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 28),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Nidoking - Shock Wave - TM34
  (34, 3400, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 30),
  -- Nidoking - Flamethrower - TM35
  (34, 3400, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 31),
  -- Nidoking - Sludge Bomb - TM36
  (34, 3400, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 32),
  -- Nidoking - Sandstorm - TM37
  (34, 3400, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 33),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 34),
  -- Nidoking - Rock Tomb - TM39
  (34, 3400, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 35),
  -- Nidoking - Torment - TM41
  (34, 3400, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 36),
  -- Nidoking - Facade - TM42
  (34, 3400, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 37),
  -- Nidoking - Secret Power - TM43
  (34, 3400, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 38),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 39),
  -- Nidoking - Attract - TM45
  (34, 3400, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 40),
  -- Nidoking - Thief - TM46
  (34, 3400, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 41),
  -- Nidoking - Focus Blast - TM52
  (34, 3400, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 42),
  -- Nidoking - Fling - TM56
  (34, 3400, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 43),
  -- Nidoking - Endure - TM58
  (34, 3400, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 44),
  -- Nidoking - Dragon Pulse - TM59
  (34, 3400, 406, 8, NULL, 2, NULL, NULL, 8002059, NULL, 45),
  -- Nidoking - Shadow Claw - TM65
  (34, 3400, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 46),
  -- Nidoking - Giga Impact - TM68
  (34, 3400, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 47),
  -- Nidoking - Stone Edge - TM71
  (34, 3400, 444, 8, NULL, 2, NULL, NULL, 8002071, NULL, 48),
  -- Nidoking - Avalanche - TM72
  (34, 3400, 419, 8, NULL, 2, NULL, NULL, 8002072, NULL, 49),
  -- Nidoking - Stealth Rock - TM76
  (34, 3400, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 50),
  -- Nidoking - Captivate - TM78
  (34, 3400, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 51),
  -- Nidoking - Rock Slide - TM80
  (34, 3400, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 52),
  -- Nidoking - Sleep Talk - TM82
  (34, 3400, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 53),
  -- Nidoking - Natural Gift - TM83
  (34, 3400, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 54),
  -- Nidoking - Poison Jab - TM84
  (34, 3400, 398, 8, NULL, 2, NULL, NULL, 8002084, NULL, 55),
  -- Nidoking - Swagger - TM87
  (34, 3400, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 56),
  -- Nidoking - Substitute - TM90
  (34, 3400, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 57),
  -- Nidoking - Cut - HM01
  (34, 3400, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 58),
  -- Nidoking - Surf - HM03
  (34, 3400, 57, 8, NULL, 3, NULL, NULL, 8003003, NULL, 59),
  -- Nidoking - Strength - HM04
  (34, 3400, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 60),
  -- Nidoking - Defog - HM05
  (34, 3400, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 61),
  -- Nidoking - Rock Smash - HM06
  (34, 3400, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 62),
  -- Nidoking - Rock Climb - HM08
  (34, 3400, 431, 8, NULL, 3, NULL, NULL, 8003008, NULL, 63),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Encore - Level 4
  (35, 3500, 227, 8, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Clefairy - Sing - Level 7
  (35, 3500, 47, 8, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Clefairy - Double Slap - Level 10
  (35, 3500, 3, 8, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Clefairy - Defense Curl - Level 13
  (35, 3500, 111, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Clefairy - Follow Me - Level 16
  (35, 3500, 266, 8, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Clefairy - Minimize - Level 19
  (35, 3500, 107, 8, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Clefairy - Wake-Up Slap - Level 22
  (35, 3500, 358, 8, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Clefairy - Cosmic Power - Level 25
  (35, 3500, 322, 8, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Clefairy - Lucky Chant - Level 28
  (35, 3500, 381, 8, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Clefairy - Metronome - Level 31
  (35, 3500, 118, 8, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Clefairy - Gravity - Level 34
  (35, 3500, 356, 8, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Clefairy - Moonlight - Level 37
  (35, 3500, 236, 8, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Clefairy - Light Screen - Level 40
  (35, 3500, 113, 8, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Clefairy - Meteor Mash - Level 43
  (35, 3500, 309, 8, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Clefairy - Healing Wish - Level 46
  (35, 3500, 361, 8, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Clefairy - Focus Punch - TM01
  (35, 3500, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 18),
  -- Clefairy - Water Pulse - TM03
  (35, 3500, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 19),
  -- Clefairy - Calm Mind - TM04
  (35, 3500, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 20),
  -- Clefairy - Toxic - TM06
  (35, 3500, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 21),
  -- Clefairy - Hidden Power - TM10
  (35, 3500, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 22),
  -- Clefairy - Sunny Day - TM11
  (35, 3500, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 23),
  -- Clefairy - Ice Beam - TM13
  (35, 3500, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 24),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 25),
  -- Clefairy - Light Screen - TM16
  (35, 3500, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 26),
  -- Clefairy - Protect - TM17
  (35, 3500, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 27),
  -- Clefairy - Rain Dance - TM18
  (35, 3500, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 28),
  -- Clefairy - Safeguard - TM20
  (35, 3500, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 29),
  -- Clefairy - Frustration - TM21
  (35, 3500, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 30),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 31),
  -- Clefairy - Iron Tail - TM23
  (35, 3500, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 32),
  -- Clefairy - Thunderbolt - TM24
  (35, 3500, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 33),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 34),
  -- Clefairy - Return - TM27
  (35, 3500, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 35),
  -- Clefairy - Dig - TM28
  (35, 3500, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 36),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 37),
  -- Clefairy - Shadow Ball - TM30
  (35, 3500, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 38),
  -- Clefairy - Brick Break - TM31
  (35, 3500, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 39),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 40),
  -- Clefairy - Reflect - TM33
  (35, 3500, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 41),
  -- Clefairy - Shock Wave - TM34
  (35, 3500, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 42),
  -- Clefairy - Flamethrower - TM35
  (35, 3500, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 43),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 44),
  -- Clefairy - Facade - TM42
  (35, 3500, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 45),
  -- Clefairy - Secret Power - TM43
  (35, 3500, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 46),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 47),
  -- Clefairy - Attract - TM45
  (35, 3500, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 48),
  -- Clefairy - Snatch - TM49
  (35, 3500, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 49),
  -- Clefairy - Fling - TM56
  (35, 3500, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 50),
  -- Clefairy - Charge Beam - TM57
  (35, 3500, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 51),
  -- Clefairy - Endure - TM58
  (35, 3500, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 52),
  -- Clefairy - Drain Punch - TM60
  (35, 3500, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 53),
  -- Clefairy - Recycle - TM67
  (35, 3500, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 54),
  -- Clefairy - Flash - TM70
  (35, 3500, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 55),
  -- Clefairy - Thunder Wave - TM73
  (35, 3500, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 56),
  -- Clefairy - Stealth Rock - TM76
  (35, 3500, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 57),
  -- Clefairy - Psych Up - TM77
  (35, 3500, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 58),
  -- Clefairy - Captivate - TM78
  (35, 3500, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 59),
  -- Clefairy - Sleep Talk - TM82
  (35, 3500, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 60),
  -- Clefairy - Natural Gift - TM83
  (35, 3500, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 61),
  -- Clefairy - Dream Eater - TM85
  (35, 3500, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 62),
  -- Clefairy - Grass Knot - TM86
  (35, 3500, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 63),
  -- Clefairy - Swagger - TM87
  (35, 3500, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 64),
  -- Clefairy - Substitute - TM90
  (35, 3500, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 65),
  -- Clefairy - Strength - HM04
  (35, 3500, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 66),
  -- Clefairy - Rock Smash - HM06
  (35, 3500, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 67),
  -- Clefable - Double Slap - Level 1
  (36, 3600, 3, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Minimize - Level 1
  (36, 3600, 107, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Focus Punch - TM01
  (36, 3600, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 5),
  -- Clefable - Water Pulse - TM03
  (36, 3600, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 6),
  -- Clefable - Calm Mind - TM04
  (36, 3600, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 7),
  -- Clefable - Toxic - TM06
  (36, 3600, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 8),
  -- Clefable - Hidden Power - TM10
  (36, 3600, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 9),
  -- Clefable - Sunny Day - TM11
  (36, 3600, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 10),
  -- Clefable - Ice Beam - TM13
  (36, 3600, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 11),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 12),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 13),
  -- Clefable - Light Screen - TM16
  (36, 3600, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 14),
  -- Clefable - Protect - TM17
  (36, 3600, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 15),
  -- Clefable - Rain Dance - TM18
  (36, 3600, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 16),
  -- Clefable - Safeguard - TM20
  (36, 3600, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 17),
  -- Clefable - Frustration - TM21
  (36, 3600, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 18),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 19),
  -- Clefable - Iron Tail - TM23
  (36, 3600, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 20),
  -- Clefable - Thunderbolt - TM24
  (36, 3600, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 21),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 22),
  -- Clefable - Return - TM27
  (36, 3600, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 23),
  -- Clefable - Dig - TM28
  (36, 3600, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 24),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 25),
  -- Clefable - Shadow Ball - TM30
  (36, 3600, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 26),
  -- Clefable - Brick Break - TM31
  (36, 3600, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 27),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 28),
  -- Clefable - Reflect - TM33
  (36, 3600, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 29),
  -- Clefable - Shock Wave - TM34
  (36, 3600, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 30),
  -- Clefable - Flamethrower - TM35
  (36, 3600, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 31),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 32),
  -- Clefable - Facade - TM42
  (36, 3600, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 33),
  -- Clefable - Secret Power - TM43
  (36, 3600, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 34),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 35),
  -- Clefable - Attract - TM45
  (36, 3600, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 36),
  -- Clefable - Snatch - TM49
  (36, 3600, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 37),
  -- Clefable - Focus Blast - TM52
  (36, 3600, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 38),
  -- Clefable - Fling - TM56
  (36, 3600, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 39),
  -- Clefable - Charge Beam - TM57
  (36, 3600, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 40),
  -- Clefable - Endure - TM58
  (36, 3600, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 41),
  -- Clefable - Drain Punch - TM60
  (36, 3600, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 42),
  -- Clefable - Recycle - TM67
  (36, 3600, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 43),
  -- Clefable - Giga Impact - TM68
  (36, 3600, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 44),
  -- Clefable - Flash - TM70
  (36, 3600, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 45),
  -- Clefable - Thunder Wave - TM73
  (36, 3600, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 46),
  -- Clefable - Stealth Rock - TM76
  (36, 3600, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 47),
  -- Clefable - Psych Up - TM77
  (36, 3600, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 48),
  -- Clefable - Captivate - TM78
  (36, 3600, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 49),
  -- Clefable - Sleep Talk - TM82
  (36, 3600, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 50),
  -- Clefable - Natural Gift - TM83
  (36, 3600, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 51),
  -- Clefable - Dream Eater - TM85
  (36, 3600, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 52),
  -- Clefable - Grass Knot - TM86
  (36, 3600, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 53),
  -- Clefable - Swagger - TM87
  (36, 3600, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 54),
  -- Clefable - Substitute - TM90
  (36, 3600, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 55),
  -- Clefable - Strength - HM04
  (36, 3600, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 56),
  -- Clefable - Rock Smash - HM06
  (36, 3600, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 57),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 4
  (37, 3700, 39, 8, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Vulpix - Roar - Level 7
  (37, 3700, 46, 8, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 11
  (37, 3700, 98, 8, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Vulpix - Will-O-Wisp - Level 14
  (37, 3700, 261, 8, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vulpix - Confuse Ray - Level 17
  (37, 3700, 109, 8, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vulpix - Imprison - Level 21
  (37, 3700, 286, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vulpix - Flamethrower - Level 24
  (37, 3700, 53, 8, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix - Safeguard - Level 27
  (37, 3700, 219, 8, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Vulpix - Payback - Level 31
  (37, 3700, 371, 8, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vulpix - Fire Spin - Level 34
  (37, 3700, 83, 8, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Vulpix - Captivate - Level 37
  (37, 3700, 445, 8, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Vulpix - Grudge - Level 41
  (37, 3700, 288, 8, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Vulpix - Extrasensory - Level 44
  (37, 3700, 326, 8, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Vulpix - Fire Blast - Level 47
  (37, 3700, 126, 8, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Vulpix - Roar - TM05
  (37, 3700, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 16),
  -- Vulpix - Toxic - TM06
  (37, 3700, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 17),
  -- Vulpix - Hidden Power - TM10
  (37, 3700, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 18),
  -- Vulpix - Sunny Day - TM11
  (37, 3700, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 19),
  -- Vulpix - Protect - TM17
  (37, 3700, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Vulpix - Safeguard - TM20
  (37, 3700, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 21),
  -- Vulpix - Frustration - TM21
  (37, 3700, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Vulpix - Iron Tail - TM23
  (37, 3700, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 23),
  -- Vulpix - Return - TM27
  (37, 3700, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Vulpix - Dig - TM28
  (37, 3700, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 25),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 26),
  -- Vulpix - Flamethrower - TM35
  (37, 3700, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 27),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 28),
  -- Vulpix - Facade - TM42
  (37, 3700, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 29),
  -- Vulpix - Secret Power - TM43
  (37, 3700, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 30),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 31),
  -- Vulpix - Attract - TM45
  (37, 3700, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 32),
  -- Vulpix - Overheat - TM50
  (37, 3700, 315, 8, NULL, 2, NULL, NULL, 8002050, NULL, 33),
  -- Vulpix - Endure - TM58
  (37, 3700, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 34),
  -- Vulpix - Will-O-Wisp - TM61
  (37, 3700, 261, 8, NULL, 2, NULL, NULL, 8002061, NULL, 35),
  -- Vulpix - Payback - TM66
  (37, 3700, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 36),
  -- Vulpix - Psych Up - TM77
  (37, 3700, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 37),
  -- Vulpix - Captivate - TM78
  (37, 3700, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 38),
  -- Vulpix - Dark Pulse - TM79
  (37, 3700, 399, 8, NULL, 2, NULL, NULL, 8002079, NULL, 39),
  -- Vulpix - Sleep Talk - TM82
  (37, 3700, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 40),
  -- Vulpix - Natural Gift - TM83
  (37, 3700, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 41),
  -- Vulpix - Swagger - TM87
  (37, 3700, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 42),
  -- Vulpix - Substitute - TM90
  (37, 3700, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 43),
  -- Vulpix - Disable - Egg
  (37, 3700, 50, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vulpix - Hypnosis - Egg
  (37, 3700, 95, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vulpix - Flail - Egg
  (37, 3700, 175, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vulpix - Spite - Egg
  (37, 3700, 180, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vulpix - Feint Attack - Egg
  (37, 3700, 185, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vulpix - Psych Up - Egg
  (37, 3700, 244, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vulpix - Heat Wave - Egg
  (37, 3700, 257, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vulpix - Extrasensory - Egg
  (37, 3700, 326, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vulpix - Howl - Egg
  (37, 3700, 336, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix - Flare Blitz - Egg
  (37, 3700, 394, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix - Energy Ball - Egg
  (37, 3700, 412, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Confuse Ray - Level 1
  (38, 3800, 109, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Safeguard - Level 1
  (38, 3800, 219, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Nasty Plot - Level 1
  (38, 3800, 417, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales - Calm Mind - TM04
  (38, 3800, 347, 8, NULL, 2, NULL, NULL, 8002004, NULL, 6),
  -- Ninetales - Roar - TM05
  (38, 3800, 46, 8, NULL, 2, NULL, NULL, 8002005, NULL, 7),
  -- Ninetales - Toxic - TM06
  (38, 3800, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 8),
  -- Ninetales - Hidden Power - TM10
  (38, 3800, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 9),
  -- Ninetales - Sunny Day - TM11
  (38, 3800, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 10),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 11),
  -- Ninetales - Protect - TM17
  (38, 3800, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 12),
  -- Ninetales - Safeguard - TM20
  (38, 3800, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 13),
  -- Ninetales - Frustration - TM21
  (38, 3800, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 14),
  -- Ninetales - Solar Beam - TM22
  (38, 3800, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 15),
  -- Ninetales - Iron Tail - TM23
  (38, 3800, 231, 8, NULL, 2, NULL, NULL, 8002023, NULL, 16),
  -- Ninetales - Return - TM27
  (38, 3800, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 17),
  -- Ninetales - Dig - TM28
  (38, 3800, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 18),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 19),
  -- Ninetales - Flamethrower - TM35
  (38, 3800, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 20),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 21),
  -- Ninetales - Facade - TM42
  (38, 3800, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 22),
  -- Ninetales - Secret Power - TM43
  (38, 3800, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 23),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 24),
  -- Ninetales - Attract - TM45
  (38, 3800, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 25),
  -- Ninetales - Overheat - TM50
  (38, 3800, 315, 8, NULL, 2, NULL, NULL, 8002050, NULL, 26),
  -- Ninetales - Endure - TM58
  (38, 3800, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 27),
  -- Ninetales - Will-O-Wisp - TM61
  (38, 3800, 261, 8, NULL, 2, NULL, NULL, 8002061, NULL, 28),
  -- Ninetales - Payback - TM66
  (38, 3800, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 29),
  -- Ninetales - Giga Impact - TM68
  (38, 3800, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 30),
  -- Ninetales - Psych Up - TM77
  (38, 3800, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 31),
  -- Ninetales - Captivate - TM78
  (38, 3800, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 32),
  -- Ninetales - Dark Pulse - TM79
  (38, 3800, 399, 8, NULL, 2, NULL, NULL, 8002079, NULL, 33),
  -- Ninetales - Sleep Talk - TM82
  (38, 3800, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 34),
  -- Ninetales - Natural Gift - TM83
  (38, 3800, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 35),
  -- Ninetales - Dream Eater - TM85
  (38, 3800, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 36),
  -- Ninetales - Swagger - TM87
  (38, 3800, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 37),
  -- Ninetales - Substitute - TM90
  (38, 3800, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 38),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Defense Curl - Level 5
  (39, 3900, 111, 8, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Jigglypuff - Pound - Level 9
  (39, 3900, 1, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Jigglypuff - Disable - Level 13
  (39, 3900, 50, 8, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Jigglypuff - Rollout - Level 17
  (39, 3900, 205, 8, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Jigglypuff - Double Slap - Level 21
  (39, 3900, 3, 8, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Jigglypuff - Rest - Level 25
  (39, 3900, 156, 8, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jigglypuff - Body Slam - Level 29
  (39, 3900, 34, 8, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Jigglypuff - Gyro Ball - Level 33
  (39, 3900, 360, 8, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Jigglypuff - Wake-Up Slap - Level 37
  (39, 3900, 358, 8, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Jigglypuff - Mimic - Level 41
  (39, 3900, 102, 8, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Jigglypuff - Hyper Voice - Level 45
  (39, 3900, 304, 8, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Jigglypuff - Double-Edge - Level 49
  (39, 3900, 38, 8, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Jigglypuff - Focus Punch - TM01
  (39, 3900, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 14),
  -- Jigglypuff - Water Pulse - TM03
  (39, 3900, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 15),
  -- Jigglypuff - Toxic - TM06
  (39, 3900, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 16),
  -- Jigglypuff - Hidden Power - TM10
  (39, 3900, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 17),
  -- Jigglypuff - Sunny Day - TM11
  (39, 3900, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 18),
  -- Jigglypuff - Ice Beam - TM13
  (39, 3900, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 19),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 20),
  -- Jigglypuff - Light Screen - TM16
  (39, 3900, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 21),
  -- Jigglypuff - Protect - TM17
  (39, 3900, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 22),
  -- Jigglypuff - Rain Dance - TM18
  (39, 3900, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 23),
  -- Jigglypuff - Safeguard - TM20
  (39, 3900, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 24),
  -- Jigglypuff - Frustration - TM21
  (39, 3900, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 25),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 26),
  -- Jigglypuff - Thunderbolt - TM24
  (39, 3900, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 27),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 28),
  -- Jigglypuff - Return - TM27
  (39, 3900, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 29),
  -- Jigglypuff - Dig - TM28
  (39, 3900, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 30),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 31),
  -- Jigglypuff - Shadow Ball - TM30
  (39, 3900, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 32),
  -- Jigglypuff - Brick Break - TM31
  (39, 3900, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 33),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 34),
  -- Jigglypuff - Reflect - TM33
  (39, 3900, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 35),
  -- Jigglypuff - Shock Wave - TM34
  (39, 3900, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 36),
  -- Jigglypuff - Flamethrower - TM35
  (39, 3900, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 37),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 38),
  -- Jigglypuff - Facade - TM42
  (39, 3900, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 39),
  -- Jigglypuff - Secret Power - TM43
  (39, 3900, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 40),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 41),
  -- Jigglypuff - Attract - TM45
  (39, 3900, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 42),
  -- Jigglypuff - Snatch - TM49
  (39, 3900, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 43),
  -- Jigglypuff - Fling - TM56
  (39, 3900, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 44),
  -- Jigglypuff - Charge Beam - TM57
  (39, 3900, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 45),
  -- Jigglypuff - Endure - TM58
  (39, 3900, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 46),
  -- Jigglypuff - Drain Punch - TM60
  (39, 3900, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 47),
  -- Jigglypuff - Recycle - TM67
  (39, 3900, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 48),
  -- Jigglypuff - Flash - TM70
  (39, 3900, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 49),
  -- Jigglypuff - Thunder Wave - TM73
  (39, 3900, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 50),
  -- Jigglypuff - Gyro Ball - TM74
  (39, 3900, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 51),
  -- Jigglypuff - Stealth Rock - TM76
  (39, 3900, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 52),
  -- Jigglypuff - Psych Up - TM77
  (39, 3900, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 53),
  -- Jigglypuff - Captivate - TM78
  (39, 3900, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 54),
  -- Jigglypuff - Sleep Talk - TM82
  (39, 3900, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 55),
  -- Jigglypuff - Natural Gift - TM83
  (39, 3900, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 56),
  -- Jigglypuff - Dream Eater - TM85
  (39, 3900, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 57),
  -- Jigglypuff - Grass Knot - TM86
  (39, 3900, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 58),
  -- Jigglypuff - Swagger - TM87
  (39, 3900, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 59),
  -- Jigglypuff - Substitute - TM90
  (39, 3900, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 60),
  -- Jigglypuff - Strength - HM04
  (39, 3900, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 61),
  -- Wigglytuff - Double Slap - Level 1
  (40, 4000, 3, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Focus Punch - TM01
  (40, 4000, 264, 8, NULL, 2, NULL, NULL, 8002001, NULL, 5),
  -- Wigglytuff - Water Pulse - TM03
  (40, 4000, 352, 8, NULL, 2, NULL, NULL, 8002003, NULL, 6),
  -- Wigglytuff - Toxic - TM06
  (40, 4000, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 7),
  -- Wigglytuff - Hidden Power - TM10
  (40, 4000, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 8),
  -- Wigglytuff - Sunny Day - TM11
  (40, 4000, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 9),
  -- Wigglytuff - Ice Beam - TM13
  (40, 4000, 58, 8, NULL, 2, NULL, NULL, 8002013, NULL, 10),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 8, NULL, 2, NULL, NULL, 8002014, NULL, 11),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 12),
  -- Wigglytuff - Light Screen - TM16
  (40, 4000, 113, 8, NULL, 2, NULL, NULL, 8002016, NULL, 13),
  -- Wigglytuff - Protect - TM17
  (40, 4000, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 14),
  -- Wigglytuff - Rain Dance - TM18
  (40, 4000, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 15),
  -- Wigglytuff - Safeguard - TM20
  (40, 4000, 219, 8, NULL, 2, NULL, NULL, 8002020, NULL, 16),
  -- Wigglytuff - Frustration - TM21
  (40, 4000, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 17),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 18),
  -- Wigglytuff - Thunderbolt - TM24
  (40, 4000, 85, 8, NULL, 2, NULL, NULL, 8002024, NULL, 19),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 8, NULL, 2, NULL, NULL, 8002025, NULL, 20),
  -- Wigglytuff - Return - TM27
  (40, 4000, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 21),
  -- Wigglytuff - Dig - TM28
  (40, 4000, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 22),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 23),
  -- Wigglytuff - Shadow Ball - TM30
  (40, 4000, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 24),
  -- Wigglytuff - Brick Break - TM31
  (40, 4000, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 25),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 26),
  -- Wigglytuff - Reflect - TM33
  (40, 4000, 115, 8, NULL, 2, NULL, NULL, 8002033, NULL, 27),
  -- Wigglytuff - Shock Wave - TM34
  (40, 4000, 351, 8, NULL, 2, NULL, NULL, 8002034, NULL, 28),
  -- Wigglytuff - Flamethrower - TM35
  (40, 4000, 53, 8, NULL, 2, NULL, NULL, 8002035, NULL, 29),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 8, NULL, 2, NULL, NULL, 8002038, NULL, 30),
  -- Wigglytuff - Facade - TM42
  (40, 4000, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 31),
  -- Wigglytuff - Secret Power - TM43
  (40, 4000, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 32),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 33),
  -- Wigglytuff - Attract - TM45
  (40, 4000, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 34),
  -- Wigglytuff - Snatch - TM49
  (40, 4000, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 35),
  -- Wigglytuff - Focus Blast - TM52
  (40, 4000, 411, 8, NULL, 2, NULL, NULL, 8002052, NULL, 36),
  -- Wigglytuff - Fling - TM56
  (40, 4000, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 37),
  -- Wigglytuff - Charge Beam - TM57
  (40, 4000, 451, 8, NULL, 2, NULL, NULL, 8002057, NULL, 38),
  -- Wigglytuff - Endure - TM58
  (40, 4000, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 39),
  -- Wigglytuff - Drain Punch - TM60
  (40, 4000, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 40),
  -- Wigglytuff - Recycle - TM67
  (40, 4000, 278, 8, NULL, 2, NULL, NULL, 8002067, NULL, 41),
  -- Wigglytuff - Giga Impact - TM68
  (40, 4000, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 42),
  -- Wigglytuff - Flash - TM70
  (40, 4000, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 43),
  -- Wigglytuff - Thunder Wave - TM73
  (40, 4000, 86, 8, NULL, 2, NULL, NULL, 8002073, NULL, 44),
  -- Wigglytuff - Gyro Ball - TM74
  (40, 4000, 360, 8, NULL, 2, NULL, NULL, 8002074, NULL, 45),
  -- Wigglytuff - Stealth Rock - TM76
  (40, 4000, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 46),
  -- Wigglytuff - Psych Up - TM77
  (40, 4000, 244, 8, NULL, 2, NULL, NULL, 8002077, NULL, 47),
  -- Wigglytuff - Captivate - TM78
  (40, 4000, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 48),
  -- Wigglytuff - Sleep Talk - TM82
  (40, 4000, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 49),
  -- Wigglytuff - Natural Gift - TM83
  (40, 4000, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 50),
  -- Wigglytuff - Dream Eater - TM85
  (40, 4000, 138, 8, NULL, 2, NULL, NULL, 8002085, NULL, 51),
  -- Wigglytuff - Grass Knot - TM86
  (40, 4000, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 52),
  -- Wigglytuff - Swagger - TM87
  (40, 4000, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 53),
  -- Wigglytuff - Substitute - TM90
  (40, 4000, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 54),
  -- Wigglytuff - Strength - HM04
  (40, 4000, 70, 8, NULL, 3, NULL, NULL, 8003004, NULL, 55),
  -- Zubat - Leech Life - Level 1
  (41, 4100, 141, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 5
  (41, 4100, 48, 8, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Zubat - Astonish - Level 9
  (41, 4100, 310, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Zubat - Bite - Level 13
  (41, 4100, 44, 8, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 17
  (41, 4100, 17, 8, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Zubat - Confuse Ray - Level 21
  (41, 4100, 109, 8, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Zubat - Air Cutter - Level 25
  (41, 4100, 314, 8, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zubat - Mean Look - Level 29
  (41, 4100, 212, 8, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Zubat - Poison Fang - Level 33
  (41, 4100, 305, 8, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Zubat - Haze - Level 37
  (41, 4100, 114, 8, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Zubat - Air Slash - Level 41
  (41, 4100, 403, 8, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Zubat - Toxic - TM06
  (41, 4100, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 12),
  -- Zubat - Hidden Power - TM10
  (41, 4100, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 13),
  -- Zubat - Sunny Day - TM11
  (41, 4100, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 14),
  -- Zubat - Taunt - TM12
  (41, 4100, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 15),
  -- Zubat - Protect - TM17
  (41, 4100, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 16),
  -- Zubat - Rain Dance - TM18
  (41, 4100, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 17),
  -- Zubat - Giga Drain - TM19
  (41, 4100, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 18),
  -- Zubat - Frustration - TM21
  (41, 4100, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 19),
  -- Zubat - Return - TM27
  (41, 4100, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 20),
  -- Zubat - Shadow Ball - TM30
  (41, 4100, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 21),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 22),
  -- Zubat - Sludge Bomb - TM36
  (41, 4100, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 23),
  -- Zubat - Aerial Ace - TM40
  (41, 4100, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 24),
  -- Zubat - Torment - TM41
  (41, 4100, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 25),
  -- Zubat - Facade - TM42
  (41, 4100, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 26),
  -- Zubat - Secret Power - TM43
  (41, 4100, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 27),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 28),
  -- Zubat - Attract - TM45
  (41, 4100, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 29),
  -- Zubat - Thief - TM46
  (41, 4100, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 30),
  -- Zubat - Steel Wing - TM47
  (41, 4100, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 31),
  -- Zubat - Snatch - TM49
  (41, 4100, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 32),
  -- Zubat - Roost - TM51
  (41, 4100, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 33),
  -- Zubat - Endure - TM58
  (41, 4100, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 34),
  -- Zubat - Payback - TM66
  (41, 4100, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 35),
  -- Zubat - Captivate - TM78
  (41, 4100, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 36),
  -- Zubat - Sleep Talk - TM82
  (41, 4100, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Zubat - Natural Gift - TM83
  (41, 4100, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Zubat - Swagger - TM87
  (41, 4100, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 39),
  -- Zubat - Pluck - TM88
  (41, 4100, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 40),
  -- Zubat - U-turn - TM89
  (41, 4100, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 41),
  -- Zubat - Substitute - TM90
  (41, 4100, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 42),
  -- Zubat - Fly - HM02
  (41, 4100, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 43),
  -- Zubat - Defog - HM05
  (41, 4100, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 44),
  -- Zubat - Gust - Egg
  (41, 4100, 16, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Zubat - Whirlwind - Egg
  (41, 4100, 18, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Zubat - Hypnosis - Egg
  (41, 4100, 95, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zubat - Quick Attack - Egg
  (41, 4100, 98, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zubat - Curse - Egg
  (41, 4100, 174, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zubat - Feint Attack - Egg
  (41, 4100, 185, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zubat - Pursuit - Egg
  (41, 4100, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zubat - Brave Bird - Egg
  (41, 4100, 413, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zubat - Nasty Plot - Egg
  (41, 4100, 417, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zubat - Zen Headbutt - Egg
  (41, 4100, 428, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Leech Life - Level 1
  (42, 4200, 141, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Astonish - Level 1
  (42, 4200, 310, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golbat - Supersonic - Level 5
  (42, 4200, 48, 8, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Golbat - Astonish - Level 9
  (42, 4200, 310, 8, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Golbat - Bite - Level 13
  (42, 4200, 44, 8, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Golbat - Wing Attack - Level 17
  (42, 4200, 17, 8, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Golbat - Confuse Ray - Level 21
  (42, 4200, 109, 8, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Golbat - Air Cutter - Level 27
  (42, 4200, 314, 8, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Golbat - Mean Look - Level 33
  (42, 4200, 212, 8, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Golbat - Poison Fang - Level 39
  (42, 4200, 305, 8, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Golbat - Haze - Level 45
  (42, 4200, 114, 8, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Golbat - Air Slash - Level 51
  (42, 4200, 403, 8, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Golbat - Toxic - TM06
  (42, 4200, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Golbat - Hidden Power - TM10
  (42, 4200, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Golbat - Sunny Day - TM11
  (42, 4200, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Golbat - Taunt - TM12
  (42, 4200, 269, 8, NULL, 2, NULL, NULL, 8002012, NULL, 18),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 19),
  -- Golbat - Protect - TM17
  (42, 4200, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Golbat - Rain Dance - TM18
  (42, 4200, 240, 8, NULL, 2, NULL, NULL, 8002018, NULL, 21),
  -- Golbat - Giga Drain - TM19
  (42, 4200, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 22),
  -- Golbat - Frustration - TM21
  (42, 4200, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 23),
  -- Golbat - Return - TM27
  (42, 4200, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Golbat - Shadow Ball - TM30
  (42, 4200, 247, 8, NULL, 2, NULL, NULL, 8002030, NULL, 25),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 26),
  -- Golbat - Sludge Bomb - TM36
  (42, 4200, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 27),
  -- Golbat - Aerial Ace - TM40
  (42, 4200, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 28),
  -- Golbat - Torment - TM41
  (42, 4200, 259, 8, NULL, 2, NULL, NULL, 8002041, NULL, 29),
  -- Golbat - Facade - TM42
  (42, 4200, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 30),
  -- Golbat - Secret Power - TM43
  (42, 4200, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 31),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 32),
  -- Golbat - Attract - TM45
  (42, 4200, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 33),
  -- Golbat - Thief - TM46
  (42, 4200, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 34),
  -- Golbat - Steel Wing - TM47
  (42, 4200, 211, 8, NULL, 2, NULL, NULL, 8002047, NULL, 35),
  -- Golbat - Snatch - TM49
  (42, 4200, 289, 8, NULL, 2, NULL, NULL, 8002049, NULL, 36),
  -- Golbat - Roost - TM51
  (42, 4200, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 37),
  -- Golbat - Endure - TM58
  (42, 4200, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 38),
  -- Golbat - Payback - TM66
  (42, 4200, 371, 8, NULL, 2, NULL, NULL, 8002066, NULL, 39),
  -- Golbat - Giga Impact - TM68
  (42, 4200, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 40),
  -- Golbat - Captivate - TM78
  (42, 4200, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 41),
  -- Golbat - Sleep Talk - TM82
  (42, 4200, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 42),
  -- Golbat - Natural Gift - TM83
  (42, 4200, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 43),
  -- Golbat - Swagger - TM87
  (42, 4200, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 44),
  -- Golbat - Pluck - TM88
  (42, 4200, 365, 8, NULL, 2, NULL, NULL, 8002088, NULL, 45),
  -- Golbat - U-turn - TM89
  (42, 4200, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 46),
  -- Golbat - Substitute - TM90
  (42, 4200, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 47),
  -- Golbat - Fly - HM02
  (42, 4200, 19, 8, NULL, 3, NULL, NULL, 8003002, NULL, 48),
  -- Golbat - Defog - HM05
  (42, 4200, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 49),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Sweet Scent - Level 5
  (43, 4300, 230, 8, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Oddish - Acid - Level 9
  (43, 4300, 51, 8, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Oddish - Poison Powder - Level 13
  (43, 4300, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Oddish - Stun Spore - Level 15
  (43, 4300, 78, 8, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Oddish - Sleep Powder - Level 17
  (43, 4300, 79, 8, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Oddish - Mega Drain - Level 21
  (43, 4300, 72, 8, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Oddish - Lucky Chant - Level 25
  (43, 4300, 381, 8, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Oddish - Natural Gift - Level 29
  (43, 4300, 363, 8, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Oddish - Moonlight - Level 33
  (43, 4300, 236, 8, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Oddish - Giga Drain - Level 37
  (43, 4300, 202, 8, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Oddish - Petal Dance - Level 41
  (43, 4300, 80, 8, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 13),
  -- Oddish - Bullet Seed - TM09
  (43, 4300, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 14),
  -- Oddish - Hidden Power - TM10
  (43, 4300, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Oddish - Sunny Day - TM11
  (43, 4300, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Oddish - Protect - TM17
  (43, 4300, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 17),
  -- Oddish - Giga Drain - TM19
  (43, 4300, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 18),
  -- Oddish - Frustration - TM21
  (43, 4300, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 19),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 20),
  -- Oddish - Return - TM27
  (43, 4300, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 21),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 22),
  -- Oddish - Sludge Bomb - TM36
  (43, 4300, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 23),
  -- Oddish - Facade - TM42
  (43, 4300, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 24),
  -- Oddish - Secret Power - TM43
  (43, 4300, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 25),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 26),
  -- Oddish - Attract - TM45
  (43, 4300, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 27),
  -- Oddish - Energy Ball - TM53
  (43, 4300, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 28),
  -- Oddish - Endure - TM58
  (43, 4300, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 29),
  -- Oddish - Flash - TM70
  (43, 4300, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 30),
  -- Oddish - Swords Dance - TM75
  (43, 4300, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 31),
  -- Oddish - Captivate - TM78
  (43, 4300, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 32),
  -- Oddish - Sleep Talk - TM82
  (43, 4300, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 33),
  -- Oddish - Natural Gift - TM83
  (43, 4300, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 34),
  -- Oddish - Grass Knot - TM86
  (43, 4300, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 35),
  -- Oddish - Swagger - TM87
  (43, 4300, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 36),
  -- Oddish - Substitute - TM90
  (43, 4300, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 37),
  -- Oddish - Cut - HM01
  (43, 4300, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 38),
  -- Oddish - Swords Dance - Egg
  (43, 4300, 14, 8, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Oddish - Razor Leaf - Egg
  (43, 4300, 75, 8, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Oddish - Flail - Egg
  (43, 4300, 175, 8, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Oddish - Charm - Egg
  (43, 4300, 204, 8, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Oddish - Synthesis - Egg
  (43, 4300, 235, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Oddish - Ingrain - Egg
  (43, 4300, 275, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oddish - Tickle - Egg
  (43, 4300, 321, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gloom - Acid - Level 1
  (44, 4400, 51, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 5
  (44, 4400, 230, 8, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Gloom - Acid - Level 9
  (44, 4400, 51, 8, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Gloom - Poison Powder - Level 13
  (44, 4400, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Gloom - Stun Spore - Level 15
  (44, 4400, 78, 8, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Gloom - Sleep Powder - Level 17
  (44, 4400, 79, 8, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Gloom - Mega Drain - Level 23
  (44, 4400, 72, 8, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Gloom - Lucky Chant - Level 29
  (44, 4400, 381, 8, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Gloom - Natural Gift - Level 35
  (44, 4400, 363, 8, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Gloom - Moonlight - Level 41
  (44, 4400, 236, 8, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Gloom - Giga Drain - Level 47
  (44, 4400, 202, 8, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Gloom - Petal Dance - Level 53
  (44, 4400, 80, 8, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Gloom - Bullet Seed - TM09
  (44, 4400, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 16),
  -- Gloom - Hidden Power - TM10
  (44, 4400, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 17),
  -- Gloom - Sunny Day - TM11
  (44, 4400, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 18),
  -- Gloom - Protect - TM17
  (44, 4400, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 19),
  -- Gloom - Giga Drain - TM19
  (44, 4400, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 20),
  -- Gloom - Frustration - TM21
  (44, 4400, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 21),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 22),
  -- Gloom - Return - TM27
  (44, 4400, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 23),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 24),
  -- Gloom - Sludge Bomb - TM36
  (44, 4400, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 25),
  -- Gloom - Facade - TM42
  (44, 4400, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 26),
  -- Gloom - Secret Power - TM43
  (44, 4400, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 27),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 28),
  -- Gloom - Attract - TM45
  (44, 4400, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 29),
  -- Gloom - Energy Ball - TM53
  (44, 4400, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 30),
  -- Gloom - Fling - TM56
  (44, 4400, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 31),
  -- Gloom - Endure - TM58
  (44, 4400, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Gloom - Drain Punch - TM60
  (44, 4400, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 33),
  -- Gloom - Flash - TM70
  (44, 4400, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 34),
  -- Gloom - Swords Dance - TM75
  (44, 4400, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 35),
  -- Gloom - Captivate - TM78
  (44, 4400, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 36),
  -- Gloom - Sleep Talk - TM82
  (44, 4400, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Gloom - Natural Gift - TM83
  (44, 4400, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Gloom - Grass Knot - TM86
  (44, 4400, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 39),
  -- Gloom - Swagger - TM87
  (44, 4400, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 40),
  -- Gloom - Substitute - TM90
  (44, 4400, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 41),
  -- Gloom - Cut - HM01
  (44, 4400, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 42),
  -- Vileplume - Mega Drain - Level 1
  (45, 4500, 72, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Poison Powder - Level 1
  (45, 4500, 77, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Aromatherapy - Level 1
  (45, 4500, 312, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Petal Dance - Level 53
  (45, 4500, 80, 8, NULL, 1, 53, NULL, NULL, NULL, 5),
  -- Vileplume - Solar Beam - Level 65
  (45, 4500, 76, 8, NULL, 1, 65, NULL, NULL, NULL, 6),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 7),
  -- Vileplume - Bullet Seed - TM09
  (45, 4500, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 8),
  -- Vileplume - Hidden Power - TM10
  (45, 4500, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 9),
  -- Vileplume - Sunny Day - TM11
  (45, 4500, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 10),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 11),
  -- Vileplume - Protect - TM17
  (45, 4500, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 12),
  -- Vileplume - Giga Drain - TM19
  (45, 4500, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 13),
  -- Vileplume - Frustration - TM21
  (45, 4500, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 14),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 15),
  -- Vileplume - Return - TM27
  (45, 4500, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 16),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 17),
  -- Vileplume - Sludge Bomb - TM36
  (45, 4500, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 18),
  -- Vileplume - Facade - TM42
  (45, 4500, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 19),
  -- Vileplume - Secret Power - TM43
  (45, 4500, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 20),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 21),
  -- Vileplume - Attract - TM45
  (45, 4500, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 22),
  -- Vileplume - Energy Ball - TM53
  (45, 4500, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 23),
  -- Vileplume - Fling - TM56
  (45, 4500, 374, 8, NULL, 2, NULL, NULL, 8002056, NULL, 24),
  -- Vileplume - Endure - TM58
  (45, 4500, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 25),
  -- Vileplume - Drain Punch - TM60
  (45, 4500, 409, 8, NULL, 2, NULL, NULL, 8002060, NULL, 26),
  -- Vileplume - Giga Impact - TM68
  (45, 4500, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 27),
  -- Vileplume - Flash - TM70
  (45, 4500, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 28),
  -- Vileplume - Swords Dance - TM75
  (45, 4500, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 29),
  -- Vileplume - Captivate - TM78
  (45, 4500, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 30),
  -- Vileplume - Sleep Talk - TM82
  (45, 4500, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 31),
  -- Vileplume - Natural Gift - TM83
  (45, 4500, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 32),
  -- Vileplume - Grass Knot - TM86
  (45, 4500, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 33),
  -- Vileplume - Swagger - TM87
  (45, 4500, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 34),
  -- Vileplume - Substitute - TM90
  (45, 4500, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 35),
  -- Vileplume - Cut - HM01
  (45, 4500, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 36),
  -- Paras - Scratch - Level 1
  (46, 4600, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Poison Powder - Level 6
  (46, 4600, 77, 8, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Paras - Stun Spore - Level 6
  (46, 4600, 78, 8, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Paras - Leech Life - Level 11
  (46, 4600, 141, 8, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Paras - Spore - Level 17
  (46, 4600, 147, 8, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Paras - Slash - Level 22
  (46, 4600, 163, 8, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Paras - Growth - Level 27
  (46, 4600, 74, 8, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Paras - Giga Drain - Level 33
  (46, 4600, 202, 8, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Paras - Aromatherapy - Level 38
  (46, 4600, 312, 8, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Paras - X-Scissor - Level 43
  (46, 4600, 404, 8, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Paras - Toxic - TM06
  (46, 4600, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 11),
  -- Paras - Bullet Seed - TM09
  (46, 4600, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 12),
  -- Paras - Hidden Power - TM10
  (46, 4600, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 13),
  -- Paras - Sunny Day - TM11
  (46, 4600, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 14),
  -- Paras - Protect - TM17
  (46, 4600, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 15),
  -- Paras - Giga Drain - TM19
  (46, 4600, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 16),
  -- Paras - Frustration - TM21
  (46, 4600, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 17),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 18),
  -- Paras - Return - TM27
  (46, 4600, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 19),
  -- Paras - Dig - TM28
  (46, 4600, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 20),
  -- Paras - Brick Break - TM31
  (46, 4600, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 21),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 22),
  -- Paras - Sludge Bomb - TM36
  (46, 4600, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 23),
  -- Paras - Aerial Ace - TM40
  (46, 4600, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 24),
  -- Paras - Facade - TM42
  (46, 4600, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 25),
  -- Paras - Secret Power - TM43
  (46, 4600, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 26),
  -- Paras - Rest - TM44
  (46, 4600, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 27),
  -- Paras - Attract - TM45
  (46, 4600, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 28),
  -- Paras - Thief - TM46
  (46, 4600, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 29),
  -- Paras - Energy Ball - TM53
  (46, 4600, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 30),
  -- Paras - False Swipe - TM54
  (46, 4600, 206, 8, NULL, 2, NULL, NULL, 8002054, NULL, 31),
  -- Paras - Endure - TM58
  (46, 4600, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Paras - Flash - TM70
  (46, 4600, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 33),
  -- Paras - Swords Dance - TM75
  (46, 4600, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 34),
  -- Paras - Captivate - TM78
  (46, 4600, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 35),
  -- Paras - X-Scissor - TM81
  (46, 4600, 404, 8, NULL, 2, NULL, NULL, 8002081, NULL, 36),
  -- Paras - Sleep Talk - TM82
  (46, 4600, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Paras - Natural Gift - TM83
  (46, 4600, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Paras - Grass Knot - TM86
  (46, 4600, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 39),
  -- Paras - Swagger - TM87
  (46, 4600, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 40),
  -- Paras - Substitute - TM90
  (46, 4600, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 41),
  -- Paras - Cut - HM01
  (46, 4600, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 42),
  -- Paras - Rock Smash - HM06
  (46, 4600, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 43),
  -- Paras - Psybeam - Egg
  (46, 4600, 60, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Paras - Counter - Egg
  (46, 4600, 68, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Paras - Screech - Egg
  (46, 4600, 103, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Paras - Light Screen - Egg
  (46, 4600, 113, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Paras - Flail - Egg
  (46, 4600, 175, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Paras - False Swipe - Egg
  (46, 4600, 206, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Paras - Pursuit - Egg
  (46, 4600, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Paras - Sweet Scent - Egg
  (46, 4600, 230, 8, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Paras - Metal Claw - Egg
  (46, 4600, 232, 8, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Paras - Cross Poison - Egg
  (46, 4600, 440, 8, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Paras - Bug Bite - Egg
  (46, 4600, 450, 8, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Poison Powder - Level 1
  (47, 4700, 77, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Leech Life - Level 1
  (47, 4700, 141, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Parasect - Cross Poison - Level 1
  (47, 4700, 440, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Parasect - Poison Powder - Level 6
  (47, 4700, 77, 8, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Parasect - Stun Spore - Level 6
  (47, 4700, 78, 8, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Parasect - Leech Life - Level 11
  (47, 4700, 141, 8, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Parasect - Spore - Level 17
  (47, 4700, 147, 8, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Parasect - Slash - Level 22
  (47, 4700, 163, 8, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Parasect - Growth - Level 30
  (47, 4700, 74, 8, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Parasect - Giga Drain - Level 39
  (47, 4700, 202, 8, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Parasect - Aromatherapy - Level 47
  (47, 4700, 312, 8, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Parasect - X-Scissor - Level 55
  (47, 4700, 404, 8, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Parasect - Toxic - TM06
  (47, 4700, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Parasect - Bullet Seed - TM09
  (47, 4700, 331, 8, NULL, 2, NULL, NULL, 8002009, NULL, 16),
  -- Parasect - Hidden Power - TM10
  (47, 4700, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 17),
  -- Parasect - Sunny Day - TM11
  (47, 4700, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 18),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 19),
  -- Parasect - Protect - TM17
  (47, 4700, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 20),
  -- Parasect - Giga Drain - TM19
  (47, 4700, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 21),
  -- Parasect - Frustration - TM21
  (47, 4700, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 22),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 23),
  -- Parasect - Return - TM27
  (47, 4700, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 24),
  -- Parasect - Dig - TM28
  (47, 4700, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 25),
  -- Parasect - Brick Break - TM31
  (47, 4700, 280, 8, NULL, 2, NULL, NULL, 8002031, NULL, 26),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 27),
  -- Parasect - Sludge Bomb - TM36
  (47, 4700, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 28),
  -- Parasect - Aerial Ace - TM40
  (47, 4700, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 29),
  -- Parasect - Facade - TM42
  (47, 4700, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 30),
  -- Parasect - Secret Power - TM43
  (47, 4700, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 31),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 32),
  -- Parasect - Attract - TM45
  (47, 4700, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 33),
  -- Parasect - Thief - TM46
  (47, 4700, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 34),
  -- Parasect - Energy Ball - TM53
  (47, 4700, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 35),
  -- Parasect - False Swipe - TM54
  (47, 4700, 206, 8, NULL, 2, NULL, NULL, 8002054, NULL, 36),
  -- Parasect - Endure - TM58
  (47, 4700, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 37),
  -- Parasect - Giga Impact - TM68
  (47, 4700, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 38),
  -- Parasect - Flash - TM70
  (47, 4700, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 39),
  -- Parasect - Swords Dance - TM75
  (47, 4700, 14, 8, NULL, 2, NULL, NULL, 8002075, NULL, 40),
  -- Parasect - Captivate - TM78
  (47, 4700, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 41),
  -- Parasect - X-Scissor - TM81
  (47, 4700, 404, 8, NULL, 2, NULL, NULL, 8002081, NULL, 42),
  -- Parasect - Sleep Talk - TM82
  (47, 4700, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 43),
  -- Parasect - Natural Gift - TM83
  (47, 4700, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 44),
  -- Parasect - Grass Knot - TM86
  (47, 4700, 447, 8, NULL, 2, NULL, NULL, 8002086, NULL, 45),
  -- Parasect - Swagger - TM87
  (47, 4700, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 46),
  -- Parasect - Substitute - TM90
  (47, 4700, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 47),
  -- Parasect - Cut - HM01
  (47, 4700, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 48),
  -- Parasect - Rock Smash - HM06
  (47, 4700, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 49),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Foresight - Level 1
  (48, 4800, 193, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venonat - Supersonic - Level 5
  (48, 4800, 48, 8, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Venonat - Confusion - Level 11
  (48, 4800, 93, 8, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Venonat - Poison Powder - Level 13
  (48, 4800, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Venonat - Leech Life - Level 17
  (48, 4800, 141, 8, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Venonat - Stun Spore - Level 23
  (48, 4800, 78, 8, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Venonat - Psybeam - Level 25
  (48, 4800, 60, 8, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venonat - Sleep Powder - Level 29
  (48, 4800, 79, 8, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venonat - Signal Beam - Level 35
  (48, 4800, 324, 8, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Venonat - Zen Headbutt - Level 37
  (48, 4800, 428, 8, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Venonat - Poison Fang - Level 41
  (48, 4800, 305, 8, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Venonat - Psychic - Level 47
  (48, 4800, 94, 8, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Venonat - Toxic - TM06
  (48, 4800, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 15),
  -- Venonat - Hidden Power - TM10
  (48, 4800, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 16),
  -- Venonat - Sunny Day - TM11
  (48, 4800, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 17),
  -- Venonat - Protect - TM17
  (48, 4800, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 18),
  -- Venonat - Giga Drain - TM19
  (48, 4800, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 19),
  -- Venonat - Frustration - TM21
  (48, 4800, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 20),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 21),
  -- Venonat - Return - TM27
  (48, 4800, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 22),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 23),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 24),
  -- Venonat - Sludge Bomb - TM36
  (48, 4800, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 25),
  -- Venonat - Facade - TM42
  (48, 4800, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 26),
  -- Venonat - Secret Power - TM43
  (48, 4800, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 27),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 28),
  -- Venonat - Attract - TM45
  (48, 4800, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 29),
  -- Venonat - Thief - TM46
  (48, 4800, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 30),
  -- Venonat - Skill Swap - TM48
  (48, 4800, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 31),
  -- Venonat - Endure - TM58
  (48, 4800, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Venonat - Flash - TM70
  (48, 4800, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 33),
  -- Venonat - Captivate - TM78
  (48, 4800, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 34),
  -- Venonat - Sleep Talk - TM82
  (48, 4800, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 35),
  -- Venonat - Natural Gift - TM83
  (48, 4800, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 36),
  -- Venonat - Swagger - TM87
  (48, 4800, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 37),
  -- Venonat - Substitute - TM90
  (48, 4800, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 38),
  -- Venonat - Agility - Egg
  (48, 4800, 97, 8, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Venonat - Screech - Egg
  (48, 4800, 103, 8, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Venonat - Giga Drain - Egg
  (48, 4800, 202, 8, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Venonat - Baton Pass - Egg
  (48, 4800, 226, 8, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Venonat - Morning Sun - Egg
  (48, 4800, 234, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Venonat - Signal Beam - Egg
  (48, 4800, 324, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Venonat - Toxic Spikes - Egg
  (48, 4800, 390, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Venonat - Bug Bite - Egg
  (48, 4800, 450, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 8, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Foresight - Level 1
  (49, 4900, 193, 8, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Silver Wind - Level 1
  (49, 4900, 318, 8, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venomoth - Supersonic - Level 5
  (49, 4900, 48, 8, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Venomoth - Confusion - Level 11
  (49, 4900, 93, 8, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Venomoth - Poison Powder - Level 13
  (49, 4900, 77, 8, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Venomoth - Leech Life - Level 17
  (49, 4900, 141, 8, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Venomoth - Stun Spore - Level 23
  (49, 4900, 78, 8, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Venomoth - Psybeam - Level 25
  (49, 4900, 60, 8, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Venomoth - Sleep Powder - Level 29
  (49, 4900, 79, 8, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Venomoth - Gust - Level 31
  (49, 4900, 16, 8, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Venomoth - Signal Beam - Level 37
  (49, 4900, 324, 8, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Venomoth - Zen Headbutt - Level 41
  (49, 4900, 428, 8, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Venomoth - Poison Fang - Level 47
  (49, 4900, 305, 8, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Venomoth - Psychic - Level 55
  (49, 4900, 94, 8, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Venomoth - Bug Buzz - Level 59
  (49, 4900, 405, 8, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Venomoth - Toxic - TM06
  (49, 4900, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 19),
  -- Venomoth - Hidden Power - TM10
  (49, 4900, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 20),
  -- Venomoth - Sunny Day - TM11
  (49, 4900, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 21),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 8, NULL, 2, NULL, NULL, 8002015, NULL, 22),
  -- Venomoth - Protect - TM17
  (49, 4900, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 23),
  -- Venomoth - Giga Drain - TM19
  (49, 4900, 202, 8, NULL, 2, NULL, NULL, 8002019, NULL, 24),
  -- Venomoth - Frustration - TM21
  (49, 4900, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 25),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 8, NULL, 2, NULL, NULL, 8002022, NULL, 26),
  -- Venomoth - Return - TM27
  (49, 4900, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 27),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 8, NULL, 2, NULL, NULL, 8002029, NULL, 28),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 29),
  -- Venomoth - Sludge Bomb - TM36
  (49, 4900, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 30),
  -- Venomoth - Aerial Ace - TM40
  (49, 4900, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 31),
  -- Venomoth - Facade - TM42
  (49, 4900, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 32),
  -- Venomoth - Secret Power - TM43
  (49, 4900, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 33),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 34),
  -- Venomoth - Attract - TM45
  (49, 4900, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 35),
  -- Venomoth - Thief - TM46
  (49, 4900, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 36),
  -- Venomoth - Skill Swap - TM48
  (49, 4900, 285, 8, NULL, 2, NULL, NULL, 8002048, NULL, 37),
  -- Venomoth - Roost - TM51
  (49, 4900, 355, 8, NULL, 2, NULL, NULL, 8002051, NULL, 38),
  -- Venomoth - Energy Ball - TM53
  (49, 4900, 412, 8, NULL, 2, NULL, NULL, 8002053, NULL, 39),
  -- Venomoth - Endure - TM58
  (49, 4900, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 40),
  -- Venomoth - Silver Wind - TM62
  (49, 4900, 318, 8, NULL, 2, NULL, NULL, 8002062, NULL, 41),
  -- Venomoth - Giga Impact - TM68
  (49, 4900, 416, 8, NULL, 2, NULL, NULL, 8002068, NULL, 42),
  -- Venomoth - Flash - TM70
  (49, 4900, 148, 8, NULL, 2, NULL, NULL, 8002070, NULL, 43),
  -- Venomoth - Captivate - TM78
  (49, 4900, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 44),
  -- Venomoth - Sleep Talk - TM82
  (49, 4900, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 45),
  -- Venomoth - Natural Gift - TM83
  (49, 4900, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 46),
  -- Venomoth - Swagger - TM87
  (49, 4900, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 47),
  -- Venomoth - U-turn - TM89
  (49, 4900, 369, 8, NULL, 2, NULL, NULL, 8002089, NULL, 48),
  -- Venomoth - Substitute - TM90
  (49, 4900, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 49),
  -- Venomoth - Defog - HM05
  (49, 4900, 432, 8, NULL, 3, NULL, NULL, 8003005, NULL, 50),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 8, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 1
  (50, 5000, 28, 8, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 4
  (50, 5000, 45, 8, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett - Astonish - Level 7
  (50, 5000, 310, 8, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Diglett - Magnitude - Level 12
  (50, 5000, 222, 8, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett - Mud-Slap - Level 15
  (50, 5000, 189, 8, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Diglett - Dig - Level 18
  (50, 5000, 91, 8, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Diglett - Sucker Punch - Level 23
  (50, 5000, 389, 8, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Diglett - Earth Power - Level 26
  (50, 5000, 414, 8, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Diglett - Mud Bomb - Level 29
  (50, 5000, 426, 8, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Diglett - Slash - Level 34
  (50, 5000, 163, 8, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Diglett - Earthquake - Level 37
  (50, 5000, 89, 8, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Diglett - Fissure - Level 40
  (50, 5000, 90, 8, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Diglett - Toxic - TM06
  (50, 5000, 92, 8, NULL, 2, NULL, NULL, 8002006, NULL, 14),
  -- Diglett - Hidden Power - TM10
  (50, 5000, 237, 8, NULL, 2, NULL, NULL, 8002010, NULL, 15),
  -- Diglett - Sunny Day - TM11
  (50, 5000, 241, 8, NULL, 2, NULL, NULL, 8002011, NULL, 16),
  -- Diglett - Protect - TM17
  (50, 5000, 182, 8, NULL, 2, NULL, NULL, 8002017, NULL, 17),
  -- Diglett - Frustration - TM21
  (50, 5000, 218, 8, NULL, 2, NULL, NULL, 8002021, NULL, 18),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 8, NULL, 2, NULL, NULL, 8002026, NULL, 19),
  -- Diglett - Return - TM27
  (50, 5000, 216, 8, NULL, 2, NULL, NULL, 8002027, NULL, 20),
  -- Diglett - Dig - TM28
  (50, 5000, 91, 8, NULL, 2, NULL, NULL, 8002028, NULL, 21),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 8, NULL, 2, NULL, NULL, 8002032, NULL, 22),
  -- Diglett - Sludge Bomb - TM36
  (50, 5000, 188, 8, NULL, 2, NULL, NULL, 8002036, NULL, 23),
  -- Diglett - Sandstorm - TM37
  (50, 5000, 201, 8, NULL, 2, NULL, NULL, 8002037, NULL, 24),
  -- Diglett - Rock Tomb - TM39
  (50, 5000, 317, 8, NULL, 2, NULL, NULL, 8002039, NULL, 25),
  -- Diglett - Aerial Ace - TM40
  (50, 5000, 332, 8, NULL, 2, NULL, NULL, 8002040, NULL, 26),
  -- Diglett - Facade - TM42
  (50, 5000, 263, 8, NULL, 2, NULL, NULL, 8002042, NULL, 27),
  -- Diglett - Secret Power - TM43
  (50, 5000, 290, 8, NULL, 2, NULL, NULL, 8002043, NULL, 28),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 8, NULL, 2, NULL, NULL, 8002044, NULL, 29),
  -- Diglett - Attract - TM45
  (50, 5000, 213, 8, NULL, 2, NULL, NULL, 8002045, NULL, 30),
  -- Diglett - Thief - TM46
  (50, 5000, 168, 8, NULL, 2, NULL, NULL, 8002046, NULL, 31),
  -- Diglett - Endure - TM58
  (50, 5000, 203, 8, NULL, 2, NULL, NULL, 8002058, NULL, 32),
  -- Diglett - Shadow Claw - TM65
  (50, 5000, 421, 8, NULL, 2, NULL, NULL, 8002065, NULL, 33),
  -- Diglett - Stealth Rock - TM76
  (50, 5000, 446, 8, NULL, 2, NULL, NULL, 8002076, NULL, 34),
  -- Diglett - Captivate - TM78
  (50, 5000, 445, 8, NULL, 2, NULL, NULL, 8002078, NULL, 35),
  -- Diglett - Rock Slide - TM80
  (50, 5000, 157, 8, NULL, 2, NULL, NULL, 8002080, NULL, 36),
  -- Diglett - Sleep Talk - TM82
  (50, 5000, 214, 8, NULL, 2, NULL, NULL, 8002082, NULL, 37),
  -- Diglett - Natural Gift - TM83
  (50, 5000, 363, 8, NULL, 2, NULL, NULL, 8002083, NULL, 38),
  -- Diglett - Swagger - TM87
  (50, 5000, 207, 8, NULL, 2, NULL, NULL, 8002087, NULL, 39),
  -- Diglett - Substitute - TM90
  (50, 5000, 164, 8, NULL, 2, NULL, NULL, 8002090, NULL, 40),
  -- Diglett - Cut - HM01
  (50, 5000, 15, 8, NULL, 3, NULL, NULL, 8003001, NULL, 41),
  -- Diglett - Rock Smash - HM06
  (50, 5000, 249, 8, NULL, 3, NULL, NULL, 8003006, NULL, 42),
  -- Diglett - Screech - Egg
  (50, 5000, 103, 8, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Diglett - Rock Slide - Egg
  (50, 5000, 157, 8, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Diglett - Feint Attack - Egg
  (50, 5000, 185, 8, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Diglett - Pursuit - Egg
  (50, 5000, 228, 8, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Diglett - Ancient Power - Egg
  (50, 5000, 246, 8, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Diglett - Beat Up - Egg
  (50, 5000, 251, 8, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Diglett - Uproar - Egg
  (50, 5000, 253, 8, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Diglett - Astonish - Egg
  (50, 5000, 310, 8, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Diglett - Mud Bomb - Egg
  (50, 5000, 426, 8, NULL, 5, NULL, NULL, NULL, NULL, 51);
