-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation II Pokémon learnset raw pages, using Crystal
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Crystal Pokedex learnset pages, Serebii Crystal Move
-- Tutor page, and PokemonDB Generation 2 Crystal learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Crystal
-- Pokémon: #001-#050
-- Rows: 1726
-- Scope: level-up, TM, HM, egg move, and Crystal Move Tutor acquisition rows.
-- Event, transfer, impossible breeding, Gold/Silver-only egg rows, and
-- prior-evolution sections are intentionally excluded from this Crystal seed.
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
  (1, 100, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 4
  (1, 100, 45, 4, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bulbasaur - Leech Seed - Level 7
  (1, 100, 73, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bulbasaur - Vine Whip - Level 10
  (1, 100, 22, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 4, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bulbasaur - Razor Leaf - Level 20
  (1, 100, 75, 4, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sweet Scent - Level 25
  (1, 100, 230, 4, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bulbasaur - Growth - Level 32
  (1, 100, 74, 4, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Bulbasaur - Synthesis - Level 39
  (1, 100, 235, 4, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Bulbasaur - Solar Beam - Level 46
  (1, 100, 76, 4, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Bulbasaur - Headbutt - TM02
  (1, 100, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Bulbasaur - Curse - TM03
  (1, 100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Bulbasaur - Hidden Power - TM10
  (1, 100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Bulbasaur - Sunny Day - TM11
  (1, 100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Bulbasaur - Sweet Scent - TM12
  (1, 100, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 17),
  -- Bulbasaur - Snore - TM13
  (1, 100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Bulbasaur - Protect - TM17
  (1, 100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Bulbasaur - Giga Drain - TM19
  (1, 100, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 20),
  -- Bulbasaur - Endure - TM20
  (1, 100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Bulbasaur - Frustration - TM21
  (1, 100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 23),
  -- Bulbasaur - Return - TM27
  (1, 100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Bulbasaur - Mud-Slap - TM31
  (1, 100, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Bulbasaur - Swagger - TM34
  (1, 100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Bulbasaur - Sleep Talk - TM35
  (1, 100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Bulbasaur - Defense Curl - TM40
  (1, 100, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 29),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Bulbasaur - Attract - TM45
  (1, 100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Bulbasaur - Fury Cutter - TM49
  (1, 100, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 32),
  -- Bulbasaur - Cut - HM01
  (1, 100, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 33),
  -- Bulbasaur - Flash - HM05
  (1, 100, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 34),
  -- Bulbasaur - Light Screen - Egg Move
  (1, 100, 113, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bulbasaur - Petal Dance - Egg Move
  (1, 100, 80, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bulbasaur - Razor Wind - Egg Move
  (1, 100, 13, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bulbasaur - Safeguard - Egg Move
  (1, 100, 219, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bulbasaur - Skull Bash - Egg Move
  (1, 100, 130, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growl - Level 4
  (2, 200, 45, 4, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 7
  (2, 200, 73, 4, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Ivysaur - Vine Whip - Level 10
  (2, 200, 22, 4, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 4, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Razor Leaf - Level 22
  (2, 200, 75, 4, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ivysaur - Sweet Scent - Level 29
  (2, 200, 230, 4, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Ivysaur - Growth - Level 38
  (2, 200, 74, 4, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Ivysaur - Synthesis - Level 47
  (2, 200, 235, 4, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Ivysaur - Solar Beam - Level 56
  (2, 200, 76, 4, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Ivysaur - Headbutt - TM02
  (2, 200, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 14),
  -- Ivysaur - Curse - TM03
  (2, 200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 15),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Ivysaur - Hidden Power - TM10
  (2, 200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Ivysaur - Sunny Day - TM11
  (2, 200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Ivysaur - Sweet Scent - TM12
  (2, 200, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Ivysaur - Snore - TM13
  (2, 200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Ivysaur - Protect - TM17
  (2, 200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Ivysaur - Giga Drain - TM19
  (2, 200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 22),
  -- Ivysaur - Endure - TM20
  (2, 200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Ivysaur - Frustration - TM21
  (2, 200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 25),
  -- Ivysaur - Return - TM27
  (2, 200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Ivysaur - Mud-Slap - TM31
  (2, 200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Ivysaur - Swagger - TM34
  (2, 200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Ivysaur - Sleep Talk - TM35
  (2, 200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Ivysaur - Defense Curl - TM40
  (2, 200, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 32),
  -- Ivysaur - Attract - TM45
  (2, 200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 33),
  -- Ivysaur - Fury Cutter - TM49
  (2, 200, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 34),
  -- Ivysaur - Cut - HM01
  (2, 200, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 35),
  -- Ivysaur - Flash - HM05
  (2, 200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 36),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Growl - Level 4
  (3, 300, 45, 4, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Venusaur - Leech Seed - Level 7
  (3, 300, 73, 4, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Venusaur - Vine Whip - Level 10
  (3, 300, 22, 4, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 4, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Venusaur - Razor Leaf - Level 22
  (3, 300, 75, 4, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Venusaur - Sweet Scent - Level 29
  (3, 300, 230, 4, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Venusaur - Growth - Level 41
  (3, 300, 74, 4, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Venusaur - Synthesis - Level 53
  (3, 300, 235, 4, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Venusaur - Solar Beam - Level 65
  (3, 300, 76, 4, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Venusaur - Headbutt - TM02
  (3, 300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 15),
  -- Venusaur - Curse - TM03
  (3, 300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 16),
  -- Venusaur - Roar - TM05
  (3, 300, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 17),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 18),
  -- Venusaur - Hidden Power - TM10
  (3, 300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 19),
  -- Venusaur - Sunny Day - TM11
  (3, 300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 20),
  -- Venusaur - Sweet Scent - TM12
  (3, 300, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 21),
  -- Venusaur - Snore - TM13
  (3, 300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 22),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 23),
  -- Venusaur - Protect - TM17
  (3, 300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 24),
  -- Venusaur - Giga Drain - TM19
  (3, 300, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 25),
  -- Venusaur - Endure - TM20
  (3, 300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 26),
  -- Venusaur - Frustration - TM21
  (3, 300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 27),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 28),
  -- Venusaur - Return - TM27
  (3, 300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Venusaur - Mud-Slap - TM31
  (3, 300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 30),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 31),
  -- Venusaur - Swagger - TM34
  (3, 300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 32),
  -- Venusaur - Sleep Talk - TM35
  (3, 300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 33),
  -- Venusaur - Defense Curl - TM40
  (3, 300, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 34),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Venusaur - Attract - TM45
  (3, 300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Venusaur - Fury Cutter - TM49
  (3, 300, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 37),
  -- Venusaur - Cut - HM01
  (3, 300, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 38),
  -- Venusaur - Flash - HM05
  (3, 300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 39),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 7
  (4, 400, 52, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 13
  (4, 400, 108, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Charmander - Rage - Level 19
  (4, 400, 99, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Charmander - Scary Face - Level 25
  (4, 400, 184, 4, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Charmander - Flamethrower - Level 31
  (4, 400, 53, 4, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Charmander - Slash - Level 37
  (4, 400, 163, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Charmander - Dragon Rage - Level 43
  (4, 400, 82, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 49
  (4, 400, 83, 4, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Charmander - Dynamic Punch - TM01
  (4, 400, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Charmander - Headbutt - TM02
  (4, 400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Charmander - Curse - TM03
  (4, 400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Charmander - Toxic - TM06
  (4, 400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Charmander - Rock Smash - TM08
  (4, 400, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 15),
  -- Charmander - Hidden Power - TM10
  (4, 400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Charmander - Sunny Day - TM11
  (4, 400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Charmander - Snore - TM13
  (4, 400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Charmander - Protect - TM17
  (4, 400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Charmander - Endure - TM20
  (4, 400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Charmander - Frustration - TM21
  (4, 400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Charmander - Iron Tail - TM23
  (4, 400, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Charmander - Dragon Breath - TM24
  (4, 400, 225, 4, NULL, 2, NULL, NULL, 4002024, NULL, 23),
  -- Charmander - Return - TM27
  (4, 400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Charmander - Dig - TM28
  (4, 400, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 25),
  -- Charmander - Mud-Slap - TM31
  (4, 400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 26),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Charmander - Swagger - TM34
  (4, 400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Charmander - Sleep Talk - TM35
  (4, 400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 30),
  -- Charmander - Swift - TM39
  (4, 400, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 31),
  -- Charmander - Defense Curl - TM40
  (4, 400, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Charmander - Rest - TM44
  (4, 400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Charmander - Attract - TM45
  (4, 400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Charmander - Fire Punch - TM48
  (4, 400, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 35),
  -- Charmander - Fury Cutter - TM49
  (4, 400, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 36),
  -- Charmander - Cut - HM01
  (4, 400, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 37),
  -- Charmander - Strength - HM04
  (4, 400, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 38),
  -- Charmander - Ancient Power - Egg Move
  (4, 400, 246, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Charmander - Beat Up - Egg Move
  (4, 400, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Charmander - Belly Drum - Egg Move
  (4, 400, 187, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Charmander - Bite - Egg Move
  (4, 400, 44, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Charmander - Outrage - Egg Move
  (4, 400, 200, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Charmander - Rock Slide - Egg Move
  (4, 400, 157, 4, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Charmander - Flamethrower - Move Tutor
  (4, 400, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 45),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 7
  (5, 500, 52, 4, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Charmeleon - Smokescreen - Level 13
  (5, 500, 108, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Charmeleon - Rage - Level 20
  (5, 500, 99, 4, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Charmeleon - Scary Face - Level 27
  (5, 500, 184, 4, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 34
  (5, 500, 53, 4, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Charmeleon - Slash - Level 41
  (5, 500, 163, 4, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Charmeleon - Dragon Rage - Level 48
  (5, 500, 82, 4, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Charmeleon - Fire Spin - Level 55
  (5, 500, 83, 4, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Charmeleon - Dynamic Punch - TM01
  (5, 500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Charmeleon - Headbutt - TM02
  (5, 500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Charmeleon - Curse - TM03
  (5, 500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Charmeleon - Toxic - TM06
  (5, 500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Charmeleon - Rock Smash - TM08
  (5, 500, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Charmeleon - Hidden Power - TM10
  (5, 500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Charmeleon - Sunny Day - TM11
  (5, 500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Charmeleon - Snore - TM13
  (5, 500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Charmeleon - Protect - TM17
  (5, 500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Charmeleon - Endure - TM20
  (5, 500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Charmeleon - Frustration - TM21
  (5, 500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Charmeleon - Iron Tail - TM23
  (5, 500, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 23),
  -- Charmeleon - Dragon Breath - TM24
  (5, 500, 225, 4, NULL, 2, NULL, NULL, 4002024, NULL, 24),
  -- Charmeleon - Return - TM27
  (5, 500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Charmeleon - Dig - TM28
  (5, 500, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 26),
  -- Charmeleon - Mud-Slap - TM31
  (5, 500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Charmeleon - Swagger - TM34
  (5, 500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Charmeleon - Sleep Talk - TM35
  (5, 500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 31),
  -- Charmeleon - Swift - TM39
  (5, 500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Charmeleon - Defense Curl - TM40
  (5, 500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 33),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 34),
  -- Charmeleon - Attract - TM45
  (5, 500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 35),
  -- Charmeleon - Fire Punch - TM48
  (5, 500, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 36),
  -- Charmeleon - Fury Cutter - TM49
  (5, 500, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 37),
  -- Charmeleon - Cut - HM01
  (5, 500, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 38),
  -- Charmeleon - Strength - HM04
  (5, 500, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 39),
  -- Charmeleon - Flamethrower - Move Tutor
  (5, 500, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 40),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Ember - Level 7
  (6, 600, 52, 4, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Charizard - Smokescreen - Level 13
  (6, 600, 108, 4, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Charizard - Rage - Level 20
  (6, 600, 99, 4, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charizard - Scary Face - Level 27
  (6, 600, 184, 4, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Charizard - Flamethrower - Level 34
  (6, 600, 53, 4, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Charizard - Wing Attack - Level 36
  (6, 600, 17, 4, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Charizard - Slash - Level 44
  (6, 600, 163, 4, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Charizard - Dragon Rage - Level 54
  (6, 600, 82, 4, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Charizard - Fire Spin - Level 64
  (6, 600, 83, 4, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Charizard - Dynamic Punch - TM01
  (6, 600, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 14),
  -- Charizard - Headbutt - TM02
  (6, 600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 15),
  -- Charizard - Curse - TM03
  (6, 600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 16),
  -- Charizard - Roar - TM05
  (6, 600, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 17),
  -- Charizard - Toxic - TM06
  (6, 600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 18),
  -- Charizard - Rock Smash - TM08
  (6, 600, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 19),
  -- Charizard - Hidden Power - TM10
  (6, 600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 20),
  -- Charizard - Sunny Day - TM11
  (6, 600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 21),
  -- Charizard - Snore - TM13
  (6, 600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 22),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 23),
  -- Charizard - Protect - TM17
  (6, 600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 24),
  -- Charizard - Endure - TM20
  (6, 600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 25),
  -- Charizard - Frustration - TM21
  (6, 600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 26),
  -- Charizard - Iron Tail - TM23
  (6, 600, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Charizard - Dragon Breath - TM24
  (6, 600, 225, 4, NULL, 2, NULL, NULL, 4002024, NULL, 28),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 29),
  -- Charizard - Return - TM27
  (6, 600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 30),
  -- Charizard - Dig - TM28
  (6, 600, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 31),
  -- Charizard - Mud-Slap - TM31
  (6, 600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 32),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 33),
  -- Charizard - Swagger - TM34
  (6, 600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 34),
  -- Charizard - Sleep Talk - TM35
  (6, 600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 35),
  -- Charizard - Sandstorm - TM37
  (6, 600, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 36),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 37),
  -- Charizard - Swift - TM39
  (6, 600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 38),
  -- Charizard - Defense Curl - TM40
  (6, 600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 39),
  -- Charizard - Rest - TM44
  (6, 600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 40),
  -- Charizard - Attract - TM45
  (6, 600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 41),
  -- Charizard - Steel Wing - TM47
  (6, 600, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 42),
  -- Charizard - Fire Punch - TM48
  (6, 600, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 43),
  -- Charizard - Fury Cutter - TM49
  (6, 600, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 44),
  -- Charizard - Cut - HM01
  (6, 600, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 45),
  -- Charizard - Fly - HM02
  (6, 600, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 46),
  -- Charizard - Strength - HM04
  (6, 600, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 47),
  -- Charizard - Flamethrower - Move Tutor
  (6, 600, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 48),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 4
  (7, 700, 39, 4, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Squirtle - Bubble - Level 7
  (7, 700, 145, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 10
  (7, 700, 110, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Squirtle - Water Gun - Level 13
  (7, 700, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 18
  (7, 700, 44, 4, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Squirtle - Rapid Spin - Level 23
  (7, 700, 229, 4, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 28
  (7, 700, 182, 4, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Squirtle - Rain Dance - Level 33
  (7, 700, 240, 4, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Squirtle - Skull Bash - Level 40
  (7, 700, 130, 4, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Squirtle - Hydro Pump - Level 47
  (7, 700, 56, 4, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Squirtle - Dynamic Punch - TM01
  (7, 700, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Squirtle - Headbutt - TM02
  (7, 700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Squirtle - Curse - TM03
  (7, 700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Squirtle - Rollout - TM04
  (7, 700, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 15),
  -- Squirtle - Toxic - TM06
  (7, 700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Squirtle - Rock Smash - TM08
  (7, 700, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 17),
  -- Squirtle - Hidden Power - TM10
  (7, 700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Squirtle - Snore - TM13
  (7, 700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 20),
  -- Squirtle - Icy Wind - TM16
  (7, 700, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 21),
  -- Squirtle - Protect - TM17
  (7, 700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Squirtle - Rain Dance - TM18
  (7, 700, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 23),
  -- Squirtle - Endure - TM20
  (7, 700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 24),
  -- Squirtle - Frustration - TM21
  (7, 700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 25),
  -- Squirtle - Iron Tail - TM23
  (7, 700, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 26),
  -- Squirtle - Return - TM27
  (7, 700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Squirtle - Dig - TM28
  (7, 700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 28),
  -- Squirtle - Mud-Slap - TM31
  (7, 700, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 29),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 30),
  -- Squirtle - Ice Punch - TM33
  (7, 700, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 31),
  -- Squirtle - Swagger - TM34
  (7, 700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 32),
  -- Squirtle - Sleep Talk - TM35
  (7, 700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 33),
  -- Squirtle - Defense Curl - TM40
  (7, 700, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 34),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Squirtle - Attract - TM45
  (7, 700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Squirtle - Surf - HM03
  (7, 700, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 37),
  -- Squirtle - Strength - HM04
  (7, 700, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 38),
  -- Squirtle - Whirlpool - HM06
  (7, 700, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 39),
  -- Squirtle - Waterfall - HM07
  (7, 700, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 40),
  -- Squirtle - Confusion - Egg Move
  (7, 700, 93, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Squirtle - Flail - Egg Move
  (7, 700, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Squirtle - Foresight - Egg Move
  (7, 700, 193, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Squirtle - Haze - Egg Move
  (7, 700, 114, 4, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Squirtle - Mirror Coat - Egg Move
  (7, 700, 243, 4, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Squirtle - Mist - Egg Move
  (7, 700, 54, 4, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Squirtle - Ice Beam - Move Tutor
  (7, 700, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 47),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Bubble - Level 1
  (8, 800, 145, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Tail Whip - Level 4
  (8, 800, 39, 4, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Wartortle - Bubble - Level 7
  (8, 800, 145, 4, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Wartortle - Withdraw - Level 10
  (8, 800, 110, 4, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wartortle - Water Gun - Level 13
  (8, 800, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Wartortle - Bite - Level 19
  (8, 800, 44, 4, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Wartortle - Rapid Spin - Level 25
  (8, 800, 229, 4, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wartortle - Protect - Level 31
  (8, 800, 182, 4, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Wartortle - Rain Dance - Level 37
  (8, 800, 240, 4, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Wartortle - Skull Bash - Level 45
  (8, 800, 130, 4, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 53
  (8, 800, 56, 4, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Wartortle - Dynamic Punch - TM01
  (8, 800, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 14),
  -- Wartortle - Headbutt - TM02
  (8, 800, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 15),
  -- Wartortle - Curse - TM03
  (8, 800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 16),
  -- Wartortle - Rollout - TM04
  (8, 800, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 17),
  -- Wartortle - Toxic - TM06
  (8, 800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 18),
  -- Wartortle - Rock Smash - TM08
  (8, 800, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 19),
  -- Wartortle - Hidden Power - TM10
  (8, 800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 20),
  -- Wartortle - Snore - TM13
  (8, 800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 21),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 22),
  -- Wartortle - Icy Wind - TM16
  (8, 800, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 23),
  -- Wartortle - Protect - TM17
  (8, 800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 24),
  -- Wartortle - Rain Dance - TM18
  (8, 800, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 25),
  -- Wartortle - Endure - TM20
  (8, 800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 26),
  -- Wartortle - Frustration - TM21
  (8, 800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 27),
  -- Wartortle - Iron Tail - TM23
  (8, 800, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 28),
  -- Wartortle - Return - TM27
  (8, 800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Wartortle - Dig - TM28
  (8, 800, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 30),
  -- Wartortle - Mud-Slap - TM31
  (8, 800, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 31),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 32),
  -- Wartortle - Ice Punch - TM33
  (8, 800, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 33),
  -- Wartortle - Swagger - TM34
  (8, 800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 34),
  -- Wartortle - Sleep Talk - TM35
  (8, 800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 35),
  -- Wartortle - Defense Curl - TM40
  (8, 800, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 36),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 37),
  -- Wartortle - Attract - TM45
  (8, 800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 38),
  -- Wartortle - Surf - HM03
  (8, 800, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 39),
  -- Wartortle - Strength - HM04
  (8, 800, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 40),
  -- Wartortle - Whirlpool - HM06
  (8, 800, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 41),
  -- Wartortle - Waterfall - HM07
  (8, 800, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 42),
  -- Wartortle - Ice Beam - Move Tutor
  (8, 800, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 43),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Bubble - Level 1
  (9, 900, 145, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Tail Whip - Level 4
  (9, 900, 39, 4, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Blastoise - Bubble - Level 7
  (9, 900, 145, 4, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Blastoise - Withdraw - Level 10
  (9, 900, 110, 4, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Blastoise - Water Gun - Level 13
  (9, 900, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Blastoise - Bite - Level 19
  (9, 900, 44, 4, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Blastoise - Rapid Spin - Level 25
  (9, 900, 229, 4, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Blastoise - Protect - Level 31
  (9, 900, 182, 4, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Blastoise - Rain Dance - Level 42
  (9, 900, 240, 4, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Blastoise - Skull Bash - Level 55
  (9, 900, 130, 4, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Blastoise - Hydro Pump - Level 68
  (9, 900, 56, 4, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Blastoise - Dynamic Punch - TM01
  (9, 900, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 15),
  -- Blastoise - Headbutt - TM02
  (9, 900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 16),
  -- Blastoise - Curse - TM03
  (9, 900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 17),
  -- Blastoise - Rollout - TM04
  (9, 900, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 18),
  -- Blastoise - Roar - TM05
  (9, 900, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 19),
  -- Blastoise - Toxic - TM06
  (9, 900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 20),
  -- Blastoise - Rock Smash - TM08
  (9, 900, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 21),
  -- Blastoise - Hidden Power - TM10
  (9, 900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 22),
  -- Blastoise - Snore - TM13
  (9, 900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 23),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 24),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 25),
  -- Blastoise - Icy Wind - TM16
  (9, 900, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 26),
  -- Blastoise - Protect - TM17
  (9, 900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 27),
  -- Blastoise - Rain Dance - TM18
  (9, 900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 28),
  -- Blastoise - Endure - TM20
  (9, 900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 29),
  -- Blastoise - Frustration - TM21
  (9, 900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 30),
  -- Blastoise - Iron Tail - TM23
  (9, 900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 31),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 32),
  -- Blastoise - Return - TM27
  (9, 900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 33),
  -- Blastoise - Dig - TM28
  (9, 900, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 34),
  -- Blastoise - Mud-Slap - TM31
  (9, 900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 35),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 36),
  -- Blastoise - Ice Punch - TM33
  (9, 900, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 37),
  -- Blastoise - Swagger - TM34
  (9, 900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 38),
  -- Blastoise - Sleep Talk - TM35
  (9, 900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 39),
  -- Blastoise - Defense Curl - TM40
  (9, 900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 40),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 41),
  -- Blastoise - Attract - TM45
  (9, 900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 42),
  -- Blastoise - Surf - HM03
  (9, 900, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 43),
  -- Blastoise - Strength - HM04
  (9, 900, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 44),
  -- Blastoise - Whirlpool - HM06
  (9, 900, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 45),
  -- Blastoise - Waterfall - HM07
  (9, 900, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 46),
  -- Blastoise - Ice Beam - Move Tutor
  (9, 900, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 47),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Level 7
  (11, 1100, 106, 4, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 10
  (12, 1200, 93, 4, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Butterfree - Poison Powder - Level 13
  (12, 1200, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Butterfree - Stun Spore - Level 14
  (12, 1200, 78, 4, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Butterfree - Sleep Powder - Level 15
  (12, 1200, 79, 4, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Butterfree - Supersonic - Level 18
  (12, 1200, 48, 4, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Butterfree - Whirlwind - Level 23
  (12, 1200, 18, 4, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Butterfree - Gust - Level 28
  (12, 1200, 16, 4, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Butterfree - Psybeam - Level 34
  (12, 1200, 60, 4, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Butterfree - Safeguard - Level 40
  (12, 1200, 219, 4, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Butterfree - Curse - TM03
  (12, 1200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Butterfree - Toxic - TM06
  (12, 1200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Butterfree - Hidden Power - TM10
  (12, 1200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Butterfree - Sunny Day - TM11
  (12, 1200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Butterfree - Sweet Scent - TM12
  (12, 1200, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 15),
  -- Butterfree - Snore - TM13
  (12, 1200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 17),
  -- Butterfree - Protect - TM17
  (12, 1200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Butterfree - Giga Drain - TM19
  (12, 1200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 19),
  -- Butterfree - Endure - TM20
  (12, 1200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Butterfree - Frustration - TM21
  (12, 1200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 22),
  -- Butterfree - Return - TM27
  (12, 1200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 24),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Butterfree - Swagger - TM34
  (12, 1200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Butterfree - Sleep Talk - TM35
  (12, 1200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Butterfree - Swift - TM39
  (12, 1200, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 28),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Butterfree - Attract - TM45
  (12, 1200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Butterfree - Nightmare - TM50
  (12, 1200, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 31),
  -- Butterfree - Flash - HM05
  (12, 1200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 32),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - Harden - Level 7
  (14, 1400, 106, 4, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Beedrill - Fury Attack - Level 1
  (15, 1500, 31, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Fury Attack - Level 10
  (15, 1500, 31, 4, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beedrill - Focus Energy - Level 15
  (15, 1500, 116, 4, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Beedrill - Twineedle - Level 20
  (15, 1500, 41, 4, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Beedrill - Rage - Level 25
  (15, 1500, 99, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Beedrill - Pursuit - Level 30
  (15, 1500, 228, 4, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Beedrill - Pin Missile - Level 35
  (15, 1500, 42, 4, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Beedrill - Agility - Level 40
  (15, 1500, 97, 4, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Beedrill - Curse - TM03
  (15, 1500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Beedrill - Toxic - TM06
  (15, 1500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Beedrill - Hidden Power - TM10
  (15, 1500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Beedrill - Sunny Day - TM11
  (15, 1500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 12),
  -- Beedrill - Sweet Scent - TM12
  (15, 1500, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 13),
  -- Beedrill - Snore - TM13
  (15, 1500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 15),
  -- Beedrill - Protect - TM17
  (15, 1500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Beedrill - Giga Drain - TM19
  (15, 1500, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Beedrill - Endure - TM20
  (15, 1500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Beedrill - Frustration - TM21
  (15, 1500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Beedrill - Return - TM27
  (15, 1500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Beedrill - Swagger - TM34
  (15, 1500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Beedrill - Sleep Talk - TM35
  (15, 1500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Beedrill - Sludge Bomb - TM36
  (15, 1500, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 24),
  -- Beedrill - Swift - TM39
  (15, 1500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 25),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Beedrill - Attract - TM45
  (15, 1500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Beedrill - Fury Cutter - TM49
  (15, 1500, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 28),
  -- Beedrill - Cut - HM01
  (15, 1500, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 29),
  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 4, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 4, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 15
  (16, 1600, 98, 4, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pidgey - Whirlwind - Level 21
  (16, 1600, 18, 4, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Pidgey - Wing Attack - Level 29
  (16, 1600, 17, 4, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pidgey - Agility - Level 37
  (16, 1600, 97, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Pidgey - Mirror Move - Level 47
  (16, 1600, 119, 4, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Pidgey - Curse - TM03
  (16, 1600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Pidgey - Toxic - TM06
  (16, 1600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Pidgey - Hidden Power - TM10
  (16, 1600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Pidgey - Sunny Day - TM11
  (16, 1600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 12),
  -- Pidgey - Snore - TM13
  (16, 1600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Pidgey - Protect - TM17
  (16, 1600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Pidgey - Endure - TM20
  (16, 1600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Pidgey - Frustration - TM21
  (16, 1600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Pidgey - Return - TM27
  (16, 1600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 17),
  -- Pidgey - Mud-Slap - TM31
  (16, 1600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 18),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 19),
  -- Pidgey - Swagger - TM34
  (16, 1600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 20),
  -- Pidgey - Sleep Talk - TM35
  (16, 1600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 21),
  -- Pidgey - Swift - TM39
  (16, 1600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 22),
  -- Pidgey - Detect - TM43
  (16, 1600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 23),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 24),
  -- Pidgey - Attract - TM45
  (16, 1600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 25),
  -- Pidgey - Thief - TM46
  (16, 1600, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 26),
  -- Pidgey - Steel Wing - TM47
  (16, 1600, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 27),
  -- Pidgey - Fly - HM02
  (16, 1600, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 28),
  -- Pidgey - Feint Attack - Egg Move
  (16, 1600, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Pidgey - Foresight - Egg Move
  (16, 1600, 193, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pidgey - Pursuit - Egg Move
  (16, 1600, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Pidgey - Steel Wing - Egg Move
  (16, 1600, 211, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 4, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 4, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pidgeotto - Quick Attack - Level 15
  (17, 1700, 98, 4, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 23
  (17, 1700, 18, 4, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Pidgeotto - Wing Attack - Level 33
  (17, 1700, 17, 4, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Pidgeotto - Agility - Level 43
  (17, 1700, 97, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Pidgeotto - Mirror Move - Level 55
  (17, 1700, 119, 4, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Pidgeotto - Curse - TM03
  (17, 1700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Pidgeotto - Toxic - TM06
  (17, 1700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Pidgeotto - Hidden Power - TM10
  (17, 1700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Pidgeotto - Sunny Day - TM11
  (17, 1700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Pidgeotto - Snore - TM13
  (17, 1700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Pidgeotto - Protect - TM17
  (17, 1700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Pidgeotto - Endure - TM20
  (17, 1700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Pidgeotto - Frustration - TM21
  (17, 1700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Pidgeotto - Return - TM27
  (17, 1700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 19),
  -- Pidgeotto - Mud-Slap - TM31
  (17, 1700, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 20),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Pidgeotto - Swagger - TM34
  (17, 1700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Pidgeotto - Sleep Talk - TM35
  (17, 1700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Pidgeotto - Swift - TM39
  (17, 1700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Pidgeotto - Detect - TM43
  (17, 1700, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 25),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Pidgeotto - Attract - TM45
  (17, 1700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Pidgeotto - Thief - TM46
  (17, 1700, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Pidgeotto - Steel Wing - TM47
  (17, 1700, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 29),
  -- Pidgeotto - Fly - HM02
  (17, 1700, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 30),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 4, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 4, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Pidgeot - Quick Attack - Level 15
  (18, 1800, 98, 4, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pidgeot - Whirlwind - Level 23
  (18, 1800, 18, 4, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pidgeot - Wing Attack - Level 33
  (18, 1800, 17, 4, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgeot - Agility - Level 46
  (18, 1800, 97, 4, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Pidgeot - Mirror Move - Level 61
  (18, 1800, 119, 4, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Pidgeot - Curse - TM03
  (18, 1800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Pidgeot - Toxic - TM06
  (18, 1800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Pidgeot - Hidden Power - TM10
  (18, 1800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Pidgeot - Sunny Day - TM11
  (18, 1800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Pidgeot - Snore - TM13
  (18, 1800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 17),
  -- Pidgeot - Protect - TM17
  (18, 1800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Pidgeot - Endure - TM20
  (18, 1800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Pidgeot - Frustration - TM21
  (18, 1800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Pidgeot - Return - TM27
  (18, 1800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Pidgeot - Mud-Slap - TM31
  (18, 1800, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 22),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Pidgeot - Swagger - TM34
  (18, 1800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Pidgeot - Sleep Talk - TM35
  (18, 1800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Pidgeot - Swift - TM39
  (18, 1800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 26),
  -- Pidgeot - Detect - TM43
  (18, 1800, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 27),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 28),
  -- Pidgeot - Attract - TM45
  (18, 1800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 29),
  -- Pidgeot - Thief - TM46
  (18, 1800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 30),
  -- Pidgeot - Steel Wing - TM47
  (18, 1800, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 31),
  -- Pidgeot - Fly - HM02
  (18, 1800, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 32),
  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 1
  (19, 1900, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 7
  (19, 1900, 98, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Rattata - Hyper Fang - Level 13
  (19, 1900, 158, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Rattata - Focus Energy - Level 20
  (19, 1900, 116, 4, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Rattata - Pursuit - Level 27
  (19, 1900, 228, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Rattata - Super Fang - Level 34
  (19, 1900, 162, 4, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Rattata - Headbutt - TM02
  (19, 1900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 8),
  -- Rattata - Curse - TM03
  (19, 1900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Rattata - Toxic - TM06
  (19, 1900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Rattata - Rock Smash - TM08
  (19, 1900, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Rattata - Hidden Power - TM10
  (19, 1900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Rattata - Sunny Day - TM11
  (19, 1900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Rattata - Snore - TM13
  (19, 1900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Rattata - Icy Wind - TM16
  (19, 1900, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 16),
  -- Rattata - Protect - TM17
  (19, 1900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Rattata - Endure - TM20
  (19, 1900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Rattata - Frustration - TM21
  (19, 1900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Rattata - Iron Tail - TM23
  (19, 1900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 20),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 21),
  -- Rattata - Return - TM27
  (19, 1900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Rattata - Dig - TM28
  (19, 1900, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 23),
  -- Rattata - Shadow Ball - TM30
  (19, 1900, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 24),
  -- Rattata - Mud-Slap - TM31
  (19, 1900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Rattata - Swagger - TM34
  (19, 1900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Rattata - Sleep Talk - TM35
  (19, 1900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Rattata - Swift - TM39
  (19, 1900, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 29),
  -- Rattata - Defense Curl - TM40
  (19, 1900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 30),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Rattata - Attract - TM45
  (19, 1900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Rattata - Thief - TM46
  (19, 1900, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 33),
  -- Rattata - Bite - Egg Move
  (19, 1900, 44, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Rattata - Counter - Egg Move
  (19, 1900, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Rattata - Flame Wheel - Egg Move
  (19, 1900, 172, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rattata - Fury Swipes - Egg Move
  (19, 1900, 154, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Rattata - Reversal - Egg Move
  (19, 1900, 179, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Rattata - Screech - Egg Move
  (19, 1900, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Quick Attack - Level 7
  (20, 2000, 98, 4, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Raticate - Hyper Fang - Level 13
  (20, 2000, 158, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Raticate - Scary Face - Level 20
  (20, 2000, 184, 4, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Raticate - Pursuit - Level 30
  (20, 2000, 228, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Raticate - Super Fang - Level 40
  (20, 2000, 162, 4, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Raticate - Headbutt - TM02
  (20, 2000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Raticate - Curse - TM03
  (20, 2000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Raticate - Roar - TM05
  (20, 2000, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 11),
  -- Raticate - Toxic - TM06
  (20, 2000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Raticate - Rock Smash - TM08
  (20, 2000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 13),
  -- Raticate - Hidden Power - TM10
  (20, 2000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Raticate - Sunny Day - TM11
  (20, 2000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Raticate - Snore - TM13
  (20, 2000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 17),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 18),
  -- Raticate - Icy Wind - TM16
  (20, 2000, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 19),
  -- Raticate - Protect - TM17
  (20, 2000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Raticate - Endure - TM20
  (20, 2000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Raticate - Frustration - TM21
  (20, 2000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Raticate - Iron Tail - TM23
  (20, 2000, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 23),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 24),
  -- Raticate - Return - TM27
  (20, 2000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Raticate - Dig - TM28
  (20, 2000, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 26),
  -- Raticate - Shadow Ball - TM30
  (20, 2000, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 27),
  -- Raticate - Mud-Slap - TM31
  (20, 2000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Raticate - Swagger - TM34
  (20, 2000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Raticate - Sleep Talk - TM35
  (20, 2000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Raticate - Swift - TM39
  (20, 2000, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Raticate - Defense Curl - TM40
  (20, 2000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 33),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 34),
  -- Raticate - Attract - TM45
  (20, 2000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 35),
  -- Raticate - Thief - TM46
  (20, 2000, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 36),
  -- Raticate - Cut - HM01
  (20, 2000, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 37),
  -- Raticate - Strength - HM04
  (20, 2000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 38),
  -- Raticate - Ice Beam - Move Tutor
  (20, 2000, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Raticate - Thunderbolt - Move Tutor
  (20, 2000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 40),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Growl - Level 1
  (21, 2100, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 7
  (21, 2100, 43, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Spearow - Fury Attack - Level 13
  (21, 2100, 31, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Spearow - Pursuit - Level 25
  (21, 2100, 228, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Spearow - Mirror Move - Level 31
  (21, 2100, 119, 4, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Spearow - Drill Peck - Level 37
  (21, 2100, 65, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Spearow - Agility - Level 43
  (21, 2100, 97, 4, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Spearow - Curse - TM03
  (21, 2100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Spearow - Toxic - TM06
  (21, 2100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Spearow - Hidden Power - TM10
  (21, 2100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Spearow - Sunny Day - TM11
  (21, 2100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 12),
  -- Spearow - Snore - TM13
  (21, 2100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Spearow - Protect - TM17
  (21, 2100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Spearow - Endure - TM20
  (21, 2100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Spearow - Frustration - TM21
  (21, 2100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Spearow - Return - TM27
  (21, 2100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 17),
  -- Spearow - Mud-Slap - TM31
  (21, 2100, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 18),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 19),
  -- Spearow - Swagger - TM34
  (21, 2100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 20),
  -- Spearow - Sleep Talk - TM35
  (21, 2100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 21),
  -- Spearow - Swift - TM39
  (21, 2100, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 22),
  -- Spearow - Detect - TM43
  (21, 2100, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 23),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 24),
  -- Spearow - Attract - TM45
  (21, 2100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 25),
  -- Spearow - Thief - TM46
  (21, 2100, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 26),
  -- Spearow - Steel Wing - TM47
  (21, 2100, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 27),
  -- Spearow - Fly - HM02
  (21, 2100, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 28),
  -- Spearow - Feint Attack - Egg Move
  (21, 2100, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Spearow - False Swipe - Egg Move
  (21, 2100, 206, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Spearow - Quick Attack - Egg Move
  (21, 2100, 98, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Spearow - Scary Face - Egg Move
  (21, 2100, 184, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Spearow - Tri Attack - Egg Move
  (21, 2100, 161, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Leer - Level 1
  (22, 2200, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Fury Attack - Level 1
  (22, 2200, 31, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fearow - Leer - Level 7
  (22, 2200, 43, 4, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Fearow - Fury Attack - Level 13
  (22, 2200, 31, 4, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Fearow - Pursuit - Level 26
  (22, 2200, 228, 4, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Fearow - Mirror Move - Level 32
  (22, 2200, 119, 4, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Fearow - Drill Peck - Level 40
  (22, 2200, 65, 4, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Fearow - Agility - Level 47
  (22, 2200, 97, 4, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Fearow - Curse - TM03
  (22, 2200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Fearow - Toxic - TM06
  (22, 2200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Fearow - Hidden Power - TM10
  (22, 2200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Fearow - Sunny Day - TM11
  (22, 2200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Fearow - Snore - TM13
  (22, 2200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Fearow - Protect - TM17
  (22, 2200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Fearow - Endure - TM20
  (22, 2200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Fearow - Frustration - TM21
  (22, 2200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Fearow - Return - TM27
  (22, 2200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Fearow - Mud-Slap - TM31
  (22, 2200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 21),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 22),
  -- Fearow - Swagger - TM34
  (22, 2200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 23),
  -- Fearow - Sleep Talk - TM35
  (22, 2200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 24),
  -- Fearow - Swift - TM39
  (22, 2200, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 25),
  -- Fearow - Detect - TM43
  (22, 2200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 26),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Fearow - Attract - TM45
  (22, 2200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Fearow - Thief - TM46
  (22, 2200, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 29),
  -- Fearow - Steel Wing - TM47
  (22, 2200, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 30),
  -- Fearow - Fly - HM02
  (22, 2200, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 31),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 9
  (23, 2300, 40, 4, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 15
  (23, 2300, 44, 4, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 23
  (23, 2300, 137, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 29
  (23, 2300, 103, 4, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 37
  (23, 2300, 51, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Ekans - Haze - Level 43
  (23, 2300, 114, 4, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Ekans - Headbutt - TM02
  (23, 2300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Ekans - Curse - TM03
  (23, 2300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Ekans - Toxic - TM06
  (23, 2300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Ekans - Hidden Power - TM10
  (23, 2300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Ekans - Sunny Day - TM11
  (23, 2300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Ekans - Snore - TM13
  (23, 2300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Ekans - Protect - TM17
  (23, 2300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Ekans - Giga Drain - TM19
  (23, 2300, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 16),
  -- Ekans - Endure - TM20
  (23, 2300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Ekans - Frustration - TM21
  (23, 2300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 19),
  -- Ekans - Return - TM27
  (23, 2300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Ekans - Dig - TM28
  (23, 2300, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 21),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 22),
  -- Ekans - Swagger - TM34
  (23, 2300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 23),
  -- Ekans - Sleep Talk - TM35
  (23, 2300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 24),
  -- Ekans - Sludge Bomb - TM36
  (23, 2300, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 25),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Ekans - Attract - TM45
  (23, 2300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Ekans - Thief - TM46
  (23, 2300, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Ekans - Strength - HM04
  (23, 2300, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 29),
  -- Ekans - Beat Up - Egg Move
  (23, 2300, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Ekans - Crunch - Egg Move
  (23, 2300, 242, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Ekans - Pursuit - Egg Move
  (23, 2300, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Ekans - Slam - Egg Move
  (23, 2300, 21, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ekans - Spite - Egg Move
  (23, 2300, 180, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 1
  (24, 2400, 44, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Poison Sting - Level 9
  (24, 2400, 40, 4, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Arbok - Bite - Level 15
  (24, 2400, 44, 4, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Arbok - Glare - Level 25
  (24, 2400, 137, 4, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Arbok - Screech - Level 33
  (24, 2400, 103, 4, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Arbok - Acid - Level 43
  (24, 2400, 51, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Arbok - Haze - Level 51
  (24, 2400, 114, 4, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Arbok - Headbutt - TM02
  (24, 2400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Arbok - Curse - TM03
  (24, 2400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Arbok - Toxic - TM06
  (24, 2400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Arbok - Hidden Power - TM10
  (24, 2400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Arbok - Sunny Day - TM11
  (24, 2400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Arbok - Snore - TM13
  (24, 2400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 17),
  -- Arbok - Protect - TM17
  (24, 2400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Arbok - Giga Drain - TM19
  (24, 2400, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 19),
  -- Arbok - Endure - TM20
  (24, 2400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Arbok - Frustration - TM21
  (24, 2400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 22),
  -- Arbok - Return - TM27
  (24, 2400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Arbok - Dig - TM28
  (24, 2400, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Arbok - Swagger - TM34
  (24, 2400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Arbok - Sleep Talk - TM35
  (24, 2400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Arbok - Sludge Bomb - TM36
  (24, 2400, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 28),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Arbok - Attract - TM45
  (24, 2400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Arbok - Thief - TM46
  (24, 2400, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Arbok - Strength - HM04
  (24, 2400, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 32),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Tail Whip - Level 6
  (25, 2500, 39, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pikachu - Thunder Wave - Level 8
  (25, 2500, 86, 4, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pikachu - Quick Attack - Level 11
  (25, 2500, 98, 4, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pikachu - Double Team - Level 15
  (25, 2500, 104, 4, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pikachu - Slam - Level 20
  (25, 2500, 21, 4, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pikachu - Thunderbolt - Level 26
  (25, 2500, 85, 4, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Pikachu - Agility - Level 33
  (25, 2500, 97, 4, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pikachu - Thunder - Level 41
  (25, 2500, 87, 4, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Pikachu - Light Screen - Level 50
  (25, 2500, 113, 4, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Pikachu - Dynamic Punch - TM01
  (25, 2500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Pikachu - Headbutt - TM02
  (25, 2500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Pikachu - Curse - TM03
  (25, 2500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Pikachu - Rollout - TM04
  (25, 2500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 15),
  -- Pikachu - Toxic - TM06
  (25, 2500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Pikachu - Zap Cannon - TM07
  (25, 2500, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 17),
  -- Pikachu - Hidden Power - TM10
  (25, 2500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Pikachu - Snore - TM13
  (25, 2500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Pikachu - Protect - TM17
  (25, 2500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Pikachu - Rain Dance - TM18
  (25, 2500, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 21),
  -- Pikachu - Endure - TM20
  (25, 2500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Pikachu - Frustration - TM21
  (25, 2500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Pikachu - Iron Tail - TM23
  (25, 2500, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 24),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 25),
  -- Pikachu - Return - TM27
  (25, 2500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Pikachu - Mud-Slap - TM31
  (25, 2500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Pikachu - Swagger - TM34
  (25, 2500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Pikachu - Sleep Talk - TM35
  (25, 2500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Pikachu - Swift - TM39
  (25, 2500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 31),
  -- Pikachu - Defense Curl - TM40
  (25, 2500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Pikachu - Thunder Punch - TM41
  (25, 2500, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 33),
  -- Pikachu - Detect - TM43
  (25, 2500, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Pikachu - Attract - TM45
  (25, 2500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Pikachu - Strength - HM04
  (25, 2500, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 37),
  -- Pikachu - Flash - HM05
  (25, 2500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 38),
  -- Pikachu - Thunderbolt - Move Tutor
  (25, 2500, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Thunderbolt - Level 1
  (26, 2600, 85, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Dynamic Punch - TM01
  (26, 2600, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 5),
  -- Raichu - Headbutt - TM02
  (26, 2600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Raichu - Curse - TM03
  (26, 2600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Raichu - Rollout - TM04
  (26, 2600, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Raichu - Toxic - TM06
  (26, 2600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Raichu - Zap Cannon - TM07
  (26, 2600, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Raichu - Hidden Power - TM10
  (26, 2600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Raichu - Snore - TM13
  (26, 2600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 13),
  -- Raichu - Protect - TM17
  (26, 2600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Raichu - Rain Dance - TM18
  (26, 2600, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 15),
  -- Raichu - Endure - TM20
  (26, 2600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Raichu - Frustration - TM21
  (26, 2600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Raichu - Iron Tail - TM23
  (26, 2600, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 18),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 19),
  -- Raichu - Return - TM27
  (26, 2600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Raichu - Mud-Slap - TM31
  (26, 2600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 21),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 22),
  -- Raichu - Swagger - TM34
  (26, 2600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 23),
  -- Raichu - Sleep Talk - TM35
  (26, 2600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 24),
  -- Raichu - Swift - TM39
  (26, 2600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 25),
  -- Raichu - Defense Curl - TM40
  (26, 2600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 26),
  -- Raichu - Thunder Punch - TM41
  (26, 2600, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 27),
  -- Raichu - Detect - TM43
  (26, 2600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 28),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Raichu - Attract - TM45
  (26, 2600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Raichu - Thief - TM46
  (26, 2600, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Raichu - Strength - HM04
  (26, 2600, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 32),
  -- Raichu - Flash - HM05
  (26, 2600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 33),
  -- Raichu - Thunderbolt - Move Tutor
  (26, 2600, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 34),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 6
  (27, 2700, 111, 4, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sandshrew - Sand Attack - Level 11
  (27, 2700, 28, 4, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sandshrew - Poison Sting - Level 17
  (27, 2700, 40, 4, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sandshrew - Slash - Level 23
  (27, 2700, 163, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Sandshrew - Swift - Level 30
  (27, 2700, 129, 4, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Sandshrew - Fury Swipes - Level 37
  (27, 2700, 154, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Sandshrew - Sandstorm - Level 45
  (27, 2700, 201, 4, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Sandshrew - Dynamic Punch - TM01
  (27, 2700, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Sandshrew - Headbutt - TM02
  (27, 2700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Sandshrew - Curse - TM03
  (27, 2700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Sandshrew - Rollout - TM04
  (27, 2700, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 12),
  -- Sandshrew - Toxic - TM06
  (27, 2700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Sandshrew - Rock Smash - TM08
  (27, 2700, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 14),
  -- Sandshrew - Hidden Power - TM10
  (27, 2700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Sandshrew - Sunny Day - TM11
  (27, 2700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Sandshrew - Snore - TM13
  (27, 2700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Sandshrew - Protect - TM17
  (27, 2700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Sandshrew - Endure - TM20
  (27, 2700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Sandshrew - Frustration - TM21
  (27, 2700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Sandshrew - Iron Tail - TM23
  (27, 2700, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 22),
  -- Sandshrew - Return - TM27
  (27, 2700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Sandshrew - Dig - TM28
  (27, 2700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Sandshrew - Mud-Slap - TM31
  (27, 2700, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Sandshrew - Swagger - TM34
  (27, 2700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Sandshrew - Sleep Talk - TM35
  (27, 2700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Sandshrew - Sandstorm - TM37
  (27, 2700, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 29),
  -- Sandshrew - Swift - TM39
  (27, 2700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 30),
  -- Sandshrew - Defense Curl - TM40
  (27, 2700, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Sandshrew - Detect - TM43
  (27, 2700, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 32),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Sandshrew - Attract - TM45
  (27, 2700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Sandshrew - Thief - TM46
  (27, 2700, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 35),
  -- Sandshrew - Fury Cutter - TM49
  (27, 2700, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 36),
  -- Sandshrew - Cut - HM01
  (27, 2700, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 37),
  -- Sandshrew - Strength - HM04
  (27, 2700, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 38),
  -- Sandshrew - Counter - Egg Move
  (27, 2700, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sandshrew - Flail - Egg Move
  (27, 2700, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sandshrew - Metal Claw - Egg Move
  (27, 2700, 232, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sandshrew - Rapid Spin - Egg Move
  (27, 2700, 229, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sandshrew - Safeguard - Egg Move
  (27, 2700, 219, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 6
  (28, 2800, 111, 4, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandslash - Sand Attack - Level 11
  (28, 2800, 28, 4, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sandslash - Poison Sting - Level 17
  (28, 2800, 40, 4, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sandslash - Slash - Level 24
  (28, 2800, 163, 4, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Sandslash - Swift - Level 33
  (28, 2800, 129, 4, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Sandslash - Fury Swipes - Level 42
  (28, 2800, 154, 4, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sandslash - Sandstorm - Level 52
  (28, 2800, 201, 4, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Sandslash - Dynamic Punch - TM01
  (28, 2800, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Sandslash - Headbutt - TM02
  (28, 2800, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Sandslash - Curse - TM03
  (28, 2800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Sandslash - Rollout - TM04
  (28, 2800, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 14),
  -- Sandslash - Toxic - TM06
  (28, 2800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Sandslash - Rock Smash - TM08
  (28, 2800, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Sandslash - Hidden Power - TM10
  (28, 2800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Sandslash - Sunny Day - TM11
  (28, 2800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Sandslash - Snore - TM13
  (28, 2800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 20),
  -- Sandslash - Protect - TM17
  (28, 2800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Sandslash - Endure - TM20
  (28, 2800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Sandslash - Frustration - TM21
  (28, 2800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Sandslash - Iron Tail - TM23
  (28, 2800, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 24),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 25),
  -- Sandslash - Return - TM27
  (28, 2800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Sandslash - Dig - TM28
  (28, 2800, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 27),
  -- Sandslash - Mud-Slap - TM31
  (28, 2800, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Sandslash - Swagger - TM34
  (28, 2800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Sandslash - Sleep Talk - TM35
  (28, 2800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Sandslash - Sandstorm - TM37
  (28, 2800, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 32),
  -- Sandslash - Swift - TM39
  (28, 2800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 33),
  -- Sandslash - Defense Curl - TM40
  (28, 2800, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 34),
  -- Sandslash - Detect - TM43
  (28, 2800, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 35),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 36),
  -- Sandslash - Attract - TM45
  (28, 2800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 37),
  -- Sandslash - Thief - TM46
  (28, 2800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 38),
  -- Sandslash - Fury Cutter - TM49
  (28, 2800, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 39),
  -- Sandslash - Cut - HM01
  (28, 2800, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 40),
  -- Sandslash - Strength - HM04
  (28, 2800, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 41),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Tackle - Level 1
  (29, 2900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Scratch - Level 8
  (29, 2900, 10, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran F - Double Kick - Level 12
  (29, 2900, 24, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidoran F - Poison Sting - Level 17
  (29, 2900, 40, 4, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Nidoran F - Tail Whip - Level 23
  (29, 2900, 39, 4, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Nidoran F - Bite - Level 30
  (29, 2900, 44, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Nidoran F - Fury Swipes - Level 38
  (29, 2900, 154, 4, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Nidoran F - Headbutt - TM02
  (29, 2900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Nidoran F - Curse - TM03
  (29, 2900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Nidoran F - Hidden Power - TM10
  (29, 2900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Nidoran F - Sunny Day - TM11
  (29, 2900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Nidoran F - Snore - TM13
  (29, 2900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Nidoran F - Protect - TM17
  (29, 2900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Nidoran F - Rain Dance - TM18
  (29, 2900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 17),
  -- Nidoran F - Endure - TM20
  (29, 2900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Nidoran F - Frustration - TM21
  (29, 2900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Nidoran F - Iron Tail - TM23
  (29, 2900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 20),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 21),
  -- Nidoran F - Return - TM27
  (29, 2900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Nidoran F - Mud-Slap - TM31
  (29, 2900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 23),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Nidoran F - Swagger - TM34
  (29, 2900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 25),
  -- Nidoran F - Sleep Talk - TM35
  (29, 2900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 26),
  -- Nidoran F - Defense Curl - TM40
  (29, 2900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 27),
  -- Nidoran F - Detect - TM43
  (29, 2900, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 28),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Nidoran F - Attract - TM45
  (29, 2900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Nidoran F - Thief - TM46
  (29, 2900, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Nidoran F - Beat Up - Egg Move
  (29, 2900, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nidoran F - Charm - Egg Move
  (29, 2900, 204, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Nidoran F - Counter - Egg Move
  (29, 2900, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Nidoran F - Disable - Egg Move
  (29, 2900, 50, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Nidoran F - Focus Energy - Egg Move
  (29, 2900, 116, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nidoran F - Supersonic - Egg Move
  (29, 2900, 48, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nidoran F - Take Down - Egg Move
  (29, 2900, 36, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nidoran F - Thunderbolt - Move Tutor
  (29, 2900, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Tackle - Level 1
  (30, 3000, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Scratch - Level 8
  (30, 3000, 10, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidorina - Double Kick - Level 12
  (30, 3000, 24, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidorina - Poison Sting - Level 19
  (30, 3000, 40, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Nidorina - Tail Whip - Level 27
  (30, 3000, 39, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Nidorina - Bite - Level 36
  (30, 3000, 44, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Nidorina - Fury Swipes - Level 46
  (30, 3000, 154, 4, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Nidorina - Headbutt - TM02
  (30, 3000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Nidorina - Curse - TM03
  (30, 3000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Nidorina - Rock Smash - TM08
  (30, 3000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 12),
  -- Nidorina - Hidden Power - TM10
  (30, 3000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Nidorina - Sunny Day - TM11
  (30, 3000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Nidorina - Snore - TM13
  (30, 3000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 16),
  -- Nidorina - Protect - TM17
  (30, 3000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Nidorina - Rain Dance - TM18
  (30, 3000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Nidorina - Endure - TM20
  (30, 3000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Nidorina - Frustration - TM21
  (30, 3000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Nidorina - Iron Tail - TM23
  (30, 3000, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 22),
  -- Nidorina - Return - TM27
  (30, 3000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Nidorina - Mud-Slap - TM31
  (30, 3000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Nidorina - Swagger - TM34
  (30, 3000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Nidorina - Sleep Talk - TM35
  (30, 3000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Nidorina - Defense Curl - TM40
  (30, 3000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 28),
  -- Nidorina - Detect - TM43
  (30, 3000, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 29),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Nidorina - Attract - TM45
  (30, 3000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Nidorina - Thief - TM46
  (30, 3000, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 32),
  -- Nidorina - Strength - HM04
  (30, 3000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 33),
  -- Nidorina - Ice Beam - Move Tutor
  (30, 3000, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 34),
  -- Nidorina - Thunderbolt - Move Tutor
  (30, 3000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 35),
  -- Nidoqueen - Tackle - Level 1
  (31, 3100, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Double Kick - Level 1
  (31, 3100, 24, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Body Slam - Level 23
  (31, 3100, 34, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoqueen - Dynamic Punch - TM01
  (31, 3100, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 6),
  -- Nidoqueen - Headbutt - TM02
  (31, 3100, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 7),
  -- Nidoqueen - Curse - TM03
  (31, 3100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 8),
  -- Nidoqueen - Roar - TM05
  (31, 3100, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 9),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Nidoqueen - Rock Smash - TM08
  (31, 3100, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Nidoqueen - Hidden Power - TM10
  (31, 3100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Nidoqueen - Sunny Day - TM11
  (31, 3100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Nidoqueen - Snore - TM13
  (31, 3100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Nidoqueen - Icy Wind - TM16
  (31, 3100, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 17),
  -- Nidoqueen - Protect - TM17
  (31, 3100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Nidoqueen - Rain Dance - TM18
  (31, 3100, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Nidoqueen - Endure - TM20
  (31, 3100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Nidoqueen - Frustration - TM21
  (31, 3100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Nidoqueen - Iron Tail - TM23
  (31, 3100, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 23),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 24),
  -- Nidoqueen - Return - TM27
  (31, 3100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Nidoqueen - Shadow Ball - TM30
  (31, 3100, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 26),
  -- Nidoqueen - Mud-Slap - TM31
  (31, 3100, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Nidoqueen - Ice Punch - TM33
  (31, 3100, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 29),
  -- Nidoqueen - Swagger - TM34
  (31, 3100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Nidoqueen - Sleep Talk - TM35
  (31, 3100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Nidoqueen - Sandstorm - TM37
  (31, 3100, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 32),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 33),
  -- Nidoqueen - Defense Curl - TM40
  (31, 3100, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 34),
  -- Nidoqueen - Thunder Punch - TM41
  (31, 3100, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 35),
  -- Nidoqueen - Detect - TM43
  (31, 3100, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 36),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 37),
  -- Nidoqueen - Attract - TM45
  (31, 3100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 38),
  -- Nidoqueen - Thief - TM46
  (31, 3100, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 39),
  -- Nidoqueen - Fire Punch - TM48
  (31, 3100, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 40),
  -- Nidoqueen - Fury Cutter - TM49
  (31, 3100, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 41),
  -- Nidoqueen - Surf - HM03
  (31, 3100, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 42),
  -- Nidoqueen - Strength - HM04
  (31, 3100, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 43),
  -- Nidoqueen - Flamethrower - Move Tutor
  (31, 3100, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Nidoqueen - Ice Beam - Move Tutor
  (31, 3100, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 45),
  -- Nidoqueen - Thunderbolt - Move Tutor
  (31, 3100, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 46),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Tackle - Level 1
  (32, 3200, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Horn Attack - Level 8
  (32, 3200, 30, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran M - Double Kick - Level 12
  (32, 3200, 24, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidoran M - Poison Sting - Level 17
  (32, 3200, 40, 4, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Nidoran M - Focus Energy - Level 23
  (32, 3200, 116, 4, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Nidoran M - Fury Attack - Level 30
  (32, 3200, 31, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Nidoran M - Horn Drill - Level 38
  (32, 3200, 32, 4, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Nidoran M - Headbutt - TM02
  (32, 3200, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Nidoran M - Curse - TM03
  (32, 3200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Nidoran M - Hidden Power - TM10
  (32, 3200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Nidoran M - Sunny Day - TM11
  (32, 3200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Nidoran M - Snore - TM13
  (32, 3200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Nidoran M - Protect - TM17
  (32, 3200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Nidoran M - Rain Dance - TM18
  (32, 3200, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 17),
  -- Nidoran M - Endure - TM20
  (32, 3200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Nidoran M - Frustration - TM21
  (32, 3200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Nidoran M - Iron Tail - TM23
  (32, 3200, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 20),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 21),
  -- Nidoran M - Return - TM27
  (32, 3200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Nidoran M - Mud-Slap - TM31
  (32, 3200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 23),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Nidoran M - Swagger - TM34
  (32, 3200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 25),
  -- Nidoran M - Sleep Talk - TM35
  (32, 3200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 26),
  -- Nidoran M - Defense Curl - TM40
  (32, 3200, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 27),
  -- Nidoran M - Detect - TM43
  (32, 3200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 28),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Nidoran M - Attract - TM45
  (32, 3200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Nidoran M - Thief - TM46
  (32, 3200, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Nidoran M - Amnesia - Egg Move
  (32, 3200, 133, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nidoran M - Beat Up - Egg Move
  (32, 3200, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Nidoran M - Confusion - Egg Move
  (32, 3200, 93, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Nidoran M - Counter - Egg Move
  (32, 3200, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Nidoran M - Disable - Egg Move
  (32, 3200, 50, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nidoran M - Supersonic - Egg Move
  (32, 3200, 48, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nidoran M - Take Down - Egg Move
  (32, 3200, 36, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nidoran M - Thunderbolt - Move Tutor
  (32, 3200, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Tackle - Level 1
  (33, 3300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Horn Attack - Level 8
  (33, 3300, 30, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidorino - Double Kick - Level 12
  (33, 3300, 24, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidorino - Poison Sting - Level 19
  (33, 3300, 40, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Nidorino - Focus Energy - Level 27
  (33, 3300, 116, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Nidorino - Fury Attack - Level 36
  (33, 3300, 31, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Nidorino - Horn Drill - Level 46
  (33, 3300, 32, 4, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Nidorino - Headbutt - TM02
  (33, 3300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Nidorino - Curse - TM03
  (33, 3300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Nidorino - Rock Smash - TM08
  (33, 3300, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 12),
  -- Nidorino - Hidden Power - TM10
  (33, 3300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Nidorino - Sunny Day - TM11
  (33, 3300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Nidorino - Snore - TM13
  (33, 3300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 16),
  -- Nidorino - Protect - TM17
  (33, 3300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Nidorino - Rain Dance - TM18
  (33, 3300, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Nidorino - Endure - TM20
  (33, 3300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Nidorino - Frustration - TM21
  (33, 3300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Nidorino - Iron Tail - TM23
  (33, 3300, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 22),
  -- Nidorino - Return - TM27
  (33, 3300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Nidorino - Mud-Slap - TM31
  (33, 3300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Nidorino - Swagger - TM34
  (33, 3300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Nidorino - Sleep Talk - TM35
  (33, 3300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Nidorino - Defense Curl - TM40
  (33, 3300, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 28),
  -- Nidorino - Detect - TM43
  (33, 3300, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 29),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Nidorino - Attract - TM45
  (33, 3300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Nidorino - Thief - TM46
  (33, 3300, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 32),
  -- Nidorino - Strength - HM04
  (33, 3300, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 33),
  -- Nidorino - Ice Beam - Move Tutor
  (33, 3300, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 34),
  -- Nidorino - Thunderbolt - Move Tutor
  (33, 3300, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 35),
  -- Nidoking - Tackle - Level 1
  (34, 3400, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Horn Attack - Level 1
  (34, 3400, 30, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Double Kick - Level 1
  (34, 3400, 24, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Thrash - Level 23
  (34, 3400, 37, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoking - Dynamic Punch - TM01
  (34, 3400, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 6),
  -- Nidoking - Headbutt - TM02
  (34, 3400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 7),
  -- Nidoking - Curse - TM03
  (34, 3400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 8),
  -- Nidoking - Roar - TM05
  (34, 3400, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 9),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Nidoking - Rock Smash - TM08
  (34, 3400, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Nidoking - Hidden Power - TM10
  (34, 3400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Nidoking - Sunny Day - TM11
  (34, 3400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Nidoking - Snore - TM13
  (34, 3400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Nidoking - Icy Wind - TM16
  (34, 3400, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 17),
  -- Nidoking - Protect - TM17
  (34, 3400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Nidoking - Rain Dance - TM18
  (34, 3400, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Nidoking - Endure - TM20
  (34, 3400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Nidoking - Frustration - TM21
  (34, 3400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Nidoking - Iron Tail - TM23
  (34, 3400, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 23),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 24),
  -- Nidoking - Return - TM27
  (34, 3400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Nidoking - Shadow Ball - TM30
  (34, 3400, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 26),
  -- Nidoking - Mud-Slap - TM31
  (34, 3400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Nidoking - Ice Punch - TM33
  (34, 3400, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 29),
  -- Nidoking - Swagger - TM34
  (34, 3400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Nidoking - Sleep Talk - TM35
  (34, 3400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Nidoking - Sandstorm - TM37
  (34, 3400, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 32),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 33),
  -- Nidoking - Defense Curl - TM40
  (34, 3400, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 34),
  -- Nidoking - Thunder Punch - TM41
  (34, 3400, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 35),
  -- Nidoking - Detect - TM43
  (34, 3400, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 36),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 37),
  -- Nidoking - Attract - TM45
  (34, 3400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 38),
  -- Nidoking - Thief - TM46
  (34, 3400, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 39),
  -- Nidoking - Fire Punch - TM48
  (34, 3400, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 40),
  -- Nidoking - Fury Cutter - TM49
  (34, 3400, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 41),
  -- Nidoking - Surf - HM03
  (34, 3400, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 42),
  -- Nidoking - Strength - HM04
  (34, 3400, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 43),
  -- Nidoking - Flamethrower - Move Tutor
  (34, 3400, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Nidoking - Ice Beam - Move Tutor
  (34, 3400, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 45),
  -- Nidoking - Thunderbolt - Move Tutor
  (34, 3400, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 46),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Encore - Level 4
  (35, 3500, 227, 4, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Clefairy - Sing - Level 8
  (35, 3500, 47, 4, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Clefairy - Double Slap - Level 13
  (35, 3500, 3, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Clefairy - Minimize - Level 19
  (35, 3500, 107, 4, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Clefairy - Defense Curl - Level 26
  (35, 3500, 111, 4, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Clefairy - Metronome - Level 34
  (35, 3500, 118, 4, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Clefairy - Moonlight - Level 43
  (35, 3500, 236, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Clefairy - Light Screen - Level 53
  (35, 3500, 113, 4, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Clefairy - Dynamic Punch - TM01
  (35, 3500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Clefairy - Headbutt - TM02
  (35, 3500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Clefairy - Curse - TM03
  (35, 3500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Clefairy - Rollout - TM04
  (35, 3500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 14),
  -- Clefairy - Toxic - TM06
  (35, 3500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Clefairy - Zap Cannon - TM07
  (35, 3500, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 16),
  -- Clefairy - Psych Up - TM09
  (35, 3500, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 17),
  -- Clefairy - Hidden Power - TM10
  (35, 3500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Clefairy - Sunny Day - TM11
  (35, 3500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 19),
  -- Clefairy - Snore - TM13
  (35, 3500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 21),
  -- Clefairy - Protect - TM17
  (35, 3500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Clefairy - Rain Dance - TM18
  (35, 3500, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 23),
  -- Clefairy - Endure - TM20
  (35, 3500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 24),
  -- Clefairy - Frustration - TM21
  (35, 3500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 25),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 26),
  -- Clefairy - Iron Tail - TM23
  (35, 3500, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 28),
  -- Clefairy - Return - TM27
  (35, 3500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 30),
  -- Clefairy - Shadow Ball - TM30
  (35, 3500, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 31),
  -- Clefairy - Mud-Slap - TM31
  (35, 3500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 32),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 33),
  -- Clefairy - Ice Punch - TM33
  (35, 3500, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 34),
  -- Clefairy - Swagger - TM34
  (35, 3500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 35),
  -- Clefairy - Sleep Talk - TM35
  (35, 3500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 36),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 37),
  -- Clefairy - Defense Curl - TM40
  (35, 3500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 38),
  -- Clefairy - Thunder Punch - TM41
  (35, 3500, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 39),
  -- Clefairy - Dream Eater - TM42
  (35, 3500, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 40),
  -- Clefairy - Detect - TM43
  (35, 3500, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 41),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 42),
  -- Clefairy - Attract - TM45
  (35, 3500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 43),
  -- Clefairy - Fire Punch - TM48
  (35, 3500, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 44),
  -- Clefairy - Nightmare - TM50
  (35, 3500, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 45),
  -- Clefairy - Strength - HM04
  (35, 3500, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 46),
  -- Clefairy - Flash - HM05
  (35, 3500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 47),
  -- Clefairy - Flamethrower - Move Tutor
  (35, 3500, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 48),
  -- Clefairy - Ice Beam - Move Tutor
  (35, 3500, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 49),
  -- Clefairy - Thunderbolt - Move Tutor
  (35, 3500, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 50),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Double Slap - Level 1
  (36, 3600, 3, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Moonlight - Level 1
  (36, 3600, 236, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Dynamic Punch - TM01
  (36, 3600, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 5),
  -- Clefable - Headbutt - TM02
  (36, 3600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Clefable - Curse - TM03
  (36, 3600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Clefable - Rollout - TM04
  (36, 3600, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Clefable - Toxic - TM06
  (36, 3600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Clefable - Zap Cannon - TM07
  (36, 3600, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Clefable - Psych Up - TM09
  (36, 3600, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 11),
  -- Clefable - Hidden Power - TM10
  (36, 3600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Clefable - Sunny Day - TM11
  (36, 3600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Clefable - Snore - TM13
  (36, 3600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Clefable - Protect - TM17
  (36, 3600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Clefable - Rain Dance - TM18
  (36, 3600, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Clefable - Endure - TM20
  (36, 3600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Clefable - Frustration - TM21
  (36, 3600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 21),
  -- Clefable - Iron Tail - TM23
  (36, 3600, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 23),
  -- Clefable - Return - TM27
  (36, 3600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 25),
  -- Clefable - Shadow Ball - TM30
  (36, 3600, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 26),
  -- Clefable - Mud-Slap - TM31
  (36, 3600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Clefable - Ice Punch - TM33
  (36, 3600, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 29),
  -- Clefable - Swagger - TM34
  (36, 3600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Clefable - Sleep Talk - TM35
  (36, 3600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 32),
  -- Clefable - Defense Curl - TM40
  (36, 3600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 33),
  -- Clefable - Thunder Punch - TM41
  (36, 3600, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 34),
  -- Clefable - Dream Eater - TM42
  (36, 3600, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 35),
  -- Clefable - Detect - TM43
  (36, 3600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 36),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 37),
  -- Clefable - Attract - TM45
  (36, 3600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 38),
  -- Clefable - Fire Punch - TM48
  (36, 3600, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 39),
  -- Clefable - Nightmare - TM50
  (36, 3600, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 40),
  -- Clefable - Strength - HM04
  (36, 3600, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 41),
  -- Clefable - Flash - HM05
  (36, 3600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 42),
  -- Clefable - Flamethrower - Move Tutor
  (36, 3600, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 43),
  -- Clefable - Ice Beam - Move Tutor
  (36, 3600, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Clefable - Thunderbolt - Move Tutor
  (36, 3600, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 45),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 1
  (37, 3700, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vulpix - Quick Attack - Level 7
  (37, 3700, 98, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vulpix - Roar - Level 13
  (37, 3700, 46, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Vulpix - Confuse Ray - Level 19
  (37, 3700, 109, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Vulpix - Safeguard - Level 25
  (37, 3700, 219, 4, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Vulpix - Flamethrower - Level 31
  (37, 3700, 53, 4, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Vulpix - Fire Spin - Level 37
  (37, 3700, 83, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Vulpix - Headbutt - TM02
  (37, 3700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Vulpix - Curse - TM03
  (37, 3700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Vulpix - Toxic - TM06
  (37, 3700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Vulpix - Hidden Power - TM10
  (37, 3700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Vulpix - Sunny Day - TM11
  (37, 3700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Vulpix - Snore - TM13
  (37, 3700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Vulpix - Protect - TM17
  (37, 3700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Vulpix - Endure - TM20
  (37, 3700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Vulpix - Frustration - TM21
  (37, 3700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Vulpix - Iron Tail - TM23
  (37, 3700, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 18),
  -- Vulpix - Return - TM27
  (37, 3700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 19),
  -- Vulpix - Dig - TM28
  (37, 3700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 20),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Vulpix - Swagger - TM34
  (37, 3700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Vulpix - Sleep Talk - TM35
  (37, 3700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 24),
  -- Vulpix - Swift - TM39
  (37, 3700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 25),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Vulpix - Attract - TM45
  (37, 3700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Vulpix - Disable - Egg Move
  (37, 3700, 50, 4, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Vulpix - Feint Attack - Egg Move
  (37, 3700, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Vulpix - Flail - Egg Move
  (37, 3700, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Vulpix - Hypnosis - Egg Move
  (37, 3700, 95, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Vulpix - Spite - Egg Move
  (37, 3700, 180, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Vulpix - Flamethrower - Move Tutor
  (37, 3700, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 33),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Confuse Ray - Level 1
  (38, 3800, 109, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Safeguard - Level 1
  (38, 3800, 219, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Fire Spin - Level 43
  (38, 3800, 83, 4, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Ninetales - Headbutt - TM02
  (38, 3800, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Ninetales - Curse - TM03
  (38, 3800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Ninetales - Roar - TM05
  (38, 3800, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 8),
  -- Ninetales - Toxic - TM06
  (38, 3800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Ninetales - Hidden Power - TM10
  (38, 3800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 10),
  -- Ninetales - Sunny Day - TM11
  (38, 3800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 11),
  -- Ninetales - Snore - TM13
  (38, 3800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 13),
  -- Ninetales - Protect - TM17
  (38, 3800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Ninetales - Endure - TM20
  (38, 3800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Ninetales - Frustration - TM21
  (38, 3800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Ninetales - Iron Tail - TM23
  (38, 3800, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 17),
  -- Ninetales - Return - TM27
  (38, 3800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 18),
  -- Ninetales - Dig - TM28
  (38, 3800, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 19),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 20),
  -- Ninetales - Swagger - TM34
  (38, 3800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 21),
  -- Ninetales - Sleep Talk - TM35
  (38, 3800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 22),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 23),
  -- Ninetales - Swift - TM39
  (38, 3800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 25),
  -- Ninetales - Attract - TM45
  (38, 3800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 26),
  -- Ninetales - Flamethrower - Move Tutor
  (38, 3800, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 27),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Defense Curl - Level 4
  (39, 3900, 111, 4, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Jigglypuff - Pound - Level 9
  (39, 3900, 1, 4, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Jigglypuff - Disable - Level 14
  (39, 3900, 50, 4, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Jigglypuff - Rollout - Level 19
  (39, 3900, 205, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Jigglypuff - Double Slap - Level 24
  (39, 3900, 3, 4, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Jigglypuff - Rest - Level 29
  (39, 3900, 156, 4, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Jigglypuff - Body Slam - Level 34
  (39, 3900, 34, 4, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Jigglypuff - Double-Edge - Level 39
  (39, 3900, 38, 4, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Jigglypuff - Dynamic Punch - TM01
  (39, 3900, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 10),
  -- Jigglypuff - Headbutt - TM02
  (39, 3900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Jigglypuff - Curse - TM03
  (39, 3900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Jigglypuff - Rollout - TM04
  (39, 3900, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 13),
  -- Jigglypuff - Toxic - TM06
  (39, 3900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Jigglypuff - Zap Cannon - TM07
  (39, 3900, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 15),
  -- Jigglypuff - Psych Up - TM09
  (39, 3900, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 16),
  -- Jigglypuff - Hidden Power - TM10
  (39, 3900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Jigglypuff - Sunny Day - TM11
  (39, 3900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Jigglypuff - Snore - TM13
  (39, 3900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 20),
  -- Jigglypuff - Protect - TM17
  (39, 3900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Jigglypuff - Rain Dance - TM18
  (39, 3900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 22),
  -- Jigglypuff - Endure - TM20
  (39, 3900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Jigglypuff - Frustration - TM21
  (39, 3900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 25),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 26),
  -- Jigglypuff - Return - TM27
  (39, 3900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 28),
  -- Jigglypuff - Shadow Ball - TM30
  (39, 3900, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 29),
  -- Jigglypuff - Mud-Slap - TM31
  (39, 3900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 30),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 31),
  -- Jigglypuff - Ice Punch - TM33
  (39, 3900, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 32),
  -- Jigglypuff - Swagger - TM34
  (39, 3900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 33),
  -- Jigglypuff - Sleep Talk - TM35
  (39, 3900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 34),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 35),
  -- Jigglypuff - Defense Curl - TM40
  (39, 3900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 36),
  -- Jigglypuff - Thunder Punch - TM41
  (39, 3900, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 37),
  -- Jigglypuff - Dream Eater - TM42
  (39, 3900, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 38),
  -- Jigglypuff - Detect - TM43
  (39, 3900, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 39),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 40),
  -- Jigglypuff - Attract - TM45
  (39, 3900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 41),
  -- Jigglypuff - Fire Punch - TM48
  (39, 3900, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 42),
  -- Jigglypuff - Nightmare - TM50
  (39, 3900, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 43),
  -- Jigglypuff - Strength - HM04
  (39, 3900, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 44),
  -- Jigglypuff - Flash - HM05
  (39, 3900, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 45),
  -- Jigglypuff - Flamethrower - Move Tutor
  (39, 3900, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 46),
  -- Jigglypuff - Ice Beam - Move Tutor
  (39, 3900, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 47),
  -- Jigglypuff - Thunderbolt - Move Tutor
  (39, 3900, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 48),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Double Slap - Level 1
  (40, 4000, 3, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Dynamic Punch - TM01
  (40, 4000, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 5),
  -- Wigglytuff - Headbutt - TM02
  (40, 4000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Wigglytuff - Curse - TM03
  (40, 4000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Wigglytuff - Rollout - TM04
  (40, 4000, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Wigglytuff - Toxic - TM06
  (40, 4000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Wigglytuff - Zap Cannon - TM07
  (40, 4000, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Wigglytuff - Psych Up - TM09
  (40, 4000, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 11),
  -- Wigglytuff - Hidden Power - TM10
  (40, 4000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Wigglytuff - Sunny Day - TM11
  (40, 4000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Wigglytuff - Snore - TM13
  (40, 4000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 15),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Wigglytuff - Protect - TM17
  (40, 4000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Wigglytuff - Rain Dance - TM18
  (40, 4000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Wigglytuff - Endure - TM20
  (40, 4000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Wigglytuff - Frustration - TM21
  (40, 4000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 21),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 22),
  -- Wigglytuff - Return - TM27
  (40, 4000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 24),
  -- Wigglytuff - Shadow Ball - TM30
  (40, 4000, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 25),
  -- Wigglytuff - Mud-Slap - TM31
  (40, 4000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 26),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Wigglytuff - Ice Punch - TM33
  (40, 4000, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 28),
  -- Wigglytuff - Swagger - TM34
  (40, 4000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Wigglytuff - Sleep Talk - TM35
  (40, 4000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 31),
  -- Wigglytuff - Defense Curl - TM40
  (40, 4000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Wigglytuff - Thunder Punch - TM41
  (40, 4000, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 33),
  -- Wigglytuff - Dream Eater - TM42
  (40, 4000, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 34),
  -- Wigglytuff - Detect - TM43
  (40, 4000, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 35),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 36),
  -- Wigglytuff - Attract - TM45
  (40, 4000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 37),
  -- Wigglytuff - Fire Punch - TM48
  (40, 4000, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 38),
  -- Wigglytuff - Nightmare - TM50
  (40, 4000, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 39),
  -- Wigglytuff - Strength - HM04
  (40, 4000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 40),
  -- Wigglytuff - Flash - HM05
  (40, 4000, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 41),
  -- Wigglytuff - Flamethrower - Move Tutor
  (40, 4000, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 42),
  -- Wigglytuff - Ice Beam - Move Tutor
  (40, 4000, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 43),
  -- Wigglytuff - Thunderbolt - Move Tutor
  (40, 4000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Zubat - Leech Life - Level 1
  (41, 4100, 141, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 6
  (41, 4100, 48, 4, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Zubat - Bite - Level 12
  (41, 4100, 44, 4, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Zubat - Confuse Ray - Level 19
  (41, 4100, 109, 4, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 27
  (41, 4100, 17, 4, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Zubat - Mean Look - Level 36
  (41, 4100, 212, 4, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Zubat - Haze - Level 46
  (41, 4100, 114, 4, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Zubat - Curse - TM03
  (41, 4100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 8),
  -- Zubat - Toxic - TM06
  (41, 4100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Zubat - Hidden Power - TM10
  (41, 4100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 10),
  -- Zubat - Sunny Day - TM11
  (41, 4100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 11),
  -- Zubat - Snore - TM13
  (41, 4100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Zubat - Protect - TM17
  (41, 4100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 13),
  -- Zubat - Giga Drain - TM19
  (41, 4100, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 14),
  -- Zubat - Endure - TM20
  (41, 4100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Zubat - Frustration - TM21
  (41, 4100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Zubat - Return - TM27
  (41, 4100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 17),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 18),
  -- Zubat - Swagger - TM34
  (41, 4100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 19),
  -- Zubat - Sleep Talk - TM35
  (41, 4100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 20),
  -- Zubat - Swift - TM39
  (41, 4100, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 21),
  -- Zubat - Detect - TM43
  (41, 4100, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 22),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 23),
  -- Zubat - Attract - TM45
  (41, 4100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 24),
  -- Zubat - Thief - TM46
  (41, 4100, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 25),
  -- Zubat - Steel Wing - TM47
  (41, 4100, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 26),
  -- Zubat - Feint Attack - Egg Move
  (41, 4100, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Zubat - Gust - Egg Move
  (41, 4100, 16, 4, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Zubat - Pursuit - Egg Move
  (41, 4100, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Zubat - Quick Attack - Egg Move
  (41, 4100, 98, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Zubat - Whirlwind - Egg Move
  (41, 4100, 18, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Leech Life - Level 1
  (42, 4200, 141, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Supersonic - Level 6
  (42, 4200, 48, 4, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Golbat - Bite - Level 12
  (42, 4200, 44, 4, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Golbat - Confuse Ray - Level 19
  (42, 4200, 109, 4, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Golbat - Wing Attack - Level 30
  (42, 4200, 17, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Golbat - Mean Look - Level 42
  (42, 4200, 212, 4, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Golbat - Haze - Level 55
  (42, 4200, 114, 4, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Golbat - Curse - TM03
  (42, 4200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Golbat - Toxic - TM06
  (42, 4200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Golbat - Hidden Power - TM10
  (42, 4200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Golbat - Sunny Day - TM11
  (42, 4200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Golbat - Snore - TM13
  (42, 4200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 15),
  -- Golbat - Protect - TM17
  (42, 4200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Golbat - Giga Drain - TM19
  (42, 4200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Golbat - Endure - TM20
  (42, 4200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Golbat - Frustration - TM21
  (42, 4200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Golbat - Return - TM27
  (42, 4200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Golbat - Swagger - TM34
  (42, 4200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Golbat - Sleep Talk - TM35
  (42, 4200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Golbat - Swift - TM39
  (42, 4200, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Golbat - Detect - TM43
  (42, 4200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 25),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Golbat - Attract - TM45
  (42, 4200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Golbat - Thief - TM46
  (42, 4200, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Golbat - Steel Wing - TM47
  (42, 4200, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 29),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Sweet Scent - Level 7
  (43, 4300, 230, 4, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Oddish - Poison Powder - Level 14
  (43, 4300, 77, 4, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Oddish - Stun Spore - Level 16
  (43, 4300, 78, 4, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Oddish - Sleep Powder - Level 18
  (43, 4300, 79, 4, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Oddish - Acid - Level 23
  (43, 4300, 51, 4, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Oddish - Moonlight - Level 32
  (43, 4300, 236, 4, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Oddish - Petal Dance - Level 39
  (43, 4300, 80, 4, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Oddish - Curse - TM03
  (43, 4300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Oddish - Hidden Power - TM10
  (43, 4300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Oddish - Sunny Day - TM11
  (43, 4300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 12),
  -- Oddish - Sweet Scent - TM12
  (43, 4300, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 13),
  -- Oddish - Snore - TM13
  (43, 4300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Oddish - Protect - TM17
  (43, 4300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Oddish - Giga Drain - TM19
  (43, 4300, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 16),
  -- Oddish - Endure - TM20
  (43, 4300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Oddish - Frustration - TM21
  (43, 4300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 19),
  -- Oddish - Return - TM27
  (43, 4300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Oddish - Swagger - TM34
  (43, 4300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Oddish - Sleep Talk - TM35
  (43, 4300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Oddish - Sludge Bomb - TM36
  (43, 4300, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 24),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 25),
  -- Oddish - Attract - TM45
  (43, 4300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 26),
  -- Oddish - Cut - HM01
  (43, 4300, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 27),
  -- Oddish - Flash - HM05
  (43, 4300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 28),
  -- Oddish - Flail - Egg Move
  (43, 4300, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Oddish - Razor Leaf - Egg Move
  (43, 4300, 75, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Oddish - Swords Dance - Egg Move
  (43, 4300, 14, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Oddish - Synthesis - Egg Move
  (43, 4300, 235, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Poison Powder - Level 1
  (44, 4400, 77, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 7
  (44, 4400, 230, 4, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gloom - Poison Powder - Level 14
  (44, 4400, 77, 4, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Gloom - Stun Spore - Level 16
  (44, 4400, 78, 4, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gloom - Sleep Powder - Level 18
  (44, 4400, 79, 4, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Gloom - Acid - Level 24
  (44, 4400, 51, 4, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gloom - Moonlight - Level 35
  (44, 4400, 236, 4, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Gloom - Petal Dance - Level 44
  (44, 4400, 80, 4, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Gloom - Curse - TM03
  (44, 4400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Gloom - Hidden Power - TM10
  (44, 4400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Gloom - Sunny Day - TM11
  (44, 4400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Gloom - Sweet Scent - TM12
  (44, 4400, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 15),
  -- Gloom - Snore - TM13
  (44, 4400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Gloom - Protect - TM17
  (44, 4400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Gloom - Giga Drain - TM19
  (44, 4400, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 18),
  -- Gloom - Endure - TM20
  (44, 4400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Gloom - Frustration - TM21
  (44, 4400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 21),
  -- Gloom - Return - TM27
  (44, 4400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Gloom - Swagger - TM34
  (44, 4400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Gloom - Sleep Talk - TM35
  (44, 4400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Gloom - Sludge Bomb - TM36
  (44, 4400, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 26),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Gloom - Attract - TM45
  (44, 4400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Gloom - Cut - HM01
  (44, 4400, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 29),
  -- Gloom - Flash - HM05
  (44, 4400, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 30),
  -- Vileplume - Absorb - Level 1
  (45, 4500, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Sweet Scent - Level 1
  (45, 4500, 230, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Petal Dance - Level 1
  (45, 4500, 80, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Curse - TM03
  (45, 4500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 5),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 6),
  -- Vileplume - Hidden Power - TM10
  (45, 4500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 7),
  -- Vileplume - Sunny Day - TM11
  (45, 4500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 8),
  -- Vileplume - Sweet Scent - TM12
  (45, 4500, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 9),
  -- Vileplume - Snore - TM13
  (45, 4500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 10),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 11),
  -- Vileplume - Protect - TM17
  (45, 4500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 12),
  -- Vileplume - Giga Drain - TM19
  (45, 4500, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 13),
  -- Vileplume - Endure - TM20
  (45, 4500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 14),
  -- Vileplume - Frustration - TM21
  (45, 4500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 15),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 16),
  -- Vileplume - Return - TM27
  (45, 4500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 17),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 18),
  -- Vileplume - Swagger - TM34
  (45, 4500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 19),
  -- Vileplume - Sleep Talk - TM35
  (45, 4500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 20),
  -- Vileplume - Sludge Bomb - TM36
  (45, 4500, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 21),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 22),
  -- Vileplume - Attract - TM45
  (45, 4500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 23),
  -- Vileplume - Cut - HM01
  (45, 4500, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 24),
  -- Vileplume - Flash - HM05
  (45, 4500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 25),
  -- Paras - Scratch - Level 1
  (46, 4600, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Stun Spore - Level 7
  (46, 4600, 78, 4, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Paras - Poison Powder - Level 13
  (46, 4600, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Paras - Leech Life - Level 19
  (46, 4600, 141, 4, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Paras - Spore - Level 25
  (46, 4600, 147, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Paras - Slash - Level 31
  (46, 4600, 163, 4, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Paras - Growth - Level 37
  (46, 4600, 74, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Paras - Giga Drain - Level 43
  (46, 4600, 202, 4, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Paras - Curse - TM03
  (46, 4600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Paras - Toxic - TM06
  (46, 4600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Paras - Rock Smash - TM08
  (46, 4600, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Paras - Hidden Power - TM10
  (46, 4600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Paras - Sunny Day - TM11
  (46, 4600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Paras - Sweet Scent - TM12
  (46, 4600, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 14),
  -- Paras - Snore - TM13
  (46, 4600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Paras - Protect - TM17
  (46, 4600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Paras - Giga Drain - TM19
  (46, 4600, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Paras - Endure - TM20
  (46, 4600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Paras - Frustration - TM21
  (46, 4600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Paras - Return - TM27
  (46, 4600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Paras - Dig - TM28
  (46, 4600, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 22),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Paras - Swagger - TM34
  (46, 4600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Paras - Sleep Talk - TM35
  (46, 4600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Paras - Sludge Bomb - TM36
  (46, 4600, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 26),
  -- Paras - Rest - TM44
  (46, 4600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Paras - Attract - TM45
  (46, 4600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Paras - Thief - TM46
  (46, 4600, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 29),
  -- Paras - Fury Cutter - TM49
  (46, 4600, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 30),
  -- Paras - Cut - HM01
  (46, 4600, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 31),
  -- Paras - Flash - HM05
  (46, 4600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 32),
  -- Paras - Counter - Egg Move
  (46, 4600, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Paras - False Swipe - Egg Move
  (46, 4600, 206, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Paras - Flail - Egg Move
  (46, 4600, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Paras - Light Screen - Egg Move
  (46, 4600, 113, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Paras - Psybeam - Egg Move
  (46, 4600, 60, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Paras - Pursuit - Egg Move
  (46, 4600, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Paras - Screech - Egg Move
  (46, 4600, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Poison Powder - Level 1
  (47, 4700, 77, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Stun Spore - Level 7
  (47, 4700, 78, 4, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Parasect - Poison Powder - Level 13
  (47, 4700, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Parasect - Leech Life - Level 19
  (47, 4700, 141, 4, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Parasect - Spore - Level 28
  (47, 4700, 147, 4, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Parasect - Slash - Level 37
  (47, 4700, 163, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Parasect - Growth - Level 46
  (47, 4700, 74, 4, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Parasect - Giga Drain - Level 55
  (47, 4700, 202, 4, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Parasect - Curse - TM03
  (47, 4700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Parasect - Toxic - TM06
  (47, 4700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Parasect - Rock Smash - TM08
  (47, 4700, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 13),
  -- Parasect - Hidden Power - TM10
  (47, 4700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Parasect - Sunny Day - TM11
  (47, 4700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Parasect - Sweet Scent - TM12
  (47, 4700, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 16),
  -- Parasect - Snore - TM13
  (47, 4700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 18),
  -- Parasect - Protect - TM17
  (47, 4700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Parasect - Giga Drain - TM19
  (47, 4700, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 20),
  -- Parasect - Endure - TM20
  (47, 4700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Parasect - Frustration - TM21
  (47, 4700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 23),
  -- Parasect - Return - TM27
  (47, 4700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Parasect - Dig - TM28
  (47, 4700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 25),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Parasect - Swagger - TM34
  (47, 4700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Parasect - Sleep Talk - TM35
  (47, 4700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Parasect - Sludge Bomb - TM36
  (47, 4700, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 29),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Parasect - Attract - TM45
  (47, 4700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Parasect - Thief - TM46
  (47, 4700, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 32),
  -- Parasect - Fury Cutter - TM49
  (47, 4700, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 33),
  -- Parasect - Cut - HM01
  (47, 4700, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 34),
  -- Parasect - Flash - HM05
  (47, 4700, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 35),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Foresight - Level 1
  (48, 4800, 193, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venonat - Supersonic - Level 9
  (48, 4800, 48, 4, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Venonat - Confusion - Level 17
  (48, 4800, 93, 4, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Venonat - Poison Powder - Level 20
  (48, 4800, 77, 4, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Venonat - Leech Life - Level 25
  (48, 4800, 141, 4, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Venonat - Stun Spore - Level 28
  (48, 4800, 78, 4, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Venonat - Psybeam - Level 33
  (48, 4800, 60, 4, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Venonat - Sleep Powder - Level 36
  (48, 4800, 79, 4, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Venonat - Psychic - Level 41
  (48, 4800, 94, 4, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Venonat - Curse - TM03
  (48, 4800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Venonat - Toxic - TM06
  (48, 4800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Venonat - Hidden Power - TM10
  (48, 4800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Venonat - Sunny Day - TM11
  (48, 4800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Venonat - Sweet Scent - TM12
  (48, 4800, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 16),
  -- Venonat - Snore - TM13
  (48, 4800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Venonat - Protect - TM17
  (48, 4800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Venonat - Giga Drain - TM19
  (48, 4800, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 19),
  -- Venonat - Endure - TM20
  (48, 4800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Venonat - Frustration - TM21
  (48, 4800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 22),
  -- Venonat - Return - TM27
  (48, 4800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 24),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Venonat - Swagger - TM34
  (48, 4800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Venonat - Sleep Talk - TM35
  (48, 4800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Venonat - Sludge Bomb - TM36
  (48, 4800, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 28),
  -- Venonat - Swift - TM39
  (48, 4800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 29),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Venonat - Attract - TM45
  (48, 4800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Venonat - Thief - TM46
  (48, 4800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 32),
  -- Venonat - Baton Pass - Egg Move
  (48, 4800, 226, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Venonat - Giga Drain - Egg Move
  (48, 4800, 202, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Venonat - Screech - Egg Move
  (48, 4800, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Foresight - Level 1
  (49, 4900, 193, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Supersonic - Level 9
  (49, 4900, 48, 4, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Venomoth - Confusion - Level 17
  (49, 4900, 93, 4, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Venomoth - Poison Powder - Level 20
  (49, 4900, 77, 4, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Venomoth - Leech Life - Level 25
  (49, 4900, 141, 4, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Venomoth - Stun Spore - Level 28
  (49, 4900, 78, 4, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Venomoth - Gust - Level 31
  (49, 4900, 16, 4, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Venomoth - Psybeam - Level 36
  (49, 4900, 60, 4, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Venomoth - Sleep Powder - Level 42
  (49, 4900, 79, 4, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Venomoth - Psychic - Level 52
  (49, 4900, 94, 4, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Venomoth - Curse - TM03
  (49, 4900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Venomoth - Toxic - TM06
  (49, 4900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Venomoth - Hidden Power - TM10
  (49, 4900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Venomoth - Sunny Day - TM11
  (49, 4900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Venomoth - Sweet Scent - TM12
  (49, 4900, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 18),
  -- Venomoth - Snore - TM13
  (49, 4900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 20),
  -- Venomoth - Protect - TM17
  (49, 4900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Venomoth - Giga Drain - TM19
  (49, 4900, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 22),
  -- Venomoth - Endure - TM20
  (49, 4900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Venomoth - Frustration - TM21
  (49, 4900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 25),
  -- Venomoth - Return - TM27
  (49, 4900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 27),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Venomoth - Swagger - TM34
  (49, 4900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Venomoth - Sleep Talk - TM35
  (49, 4900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Venomoth - Sludge Bomb - TM36
  (49, 4900, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 31),
  -- Venomoth - Swift - TM39
  (49, 4900, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Venomoth - Attract - TM45
  (49, 4900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Venomoth - Thief - TM46
  (49, 4900, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 35),
  -- Venomoth - Flash - HM05
  (49, 4900, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 36),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Growl - Level 5
  (50, 5000, 45, 4, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Diglett - Magnitude - Level 9
  (50, 5000, 222, 4, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Diglett - Dig - Level 17
  (50, 5000, 91, 4, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Diglett - Sand Attack - Level 25
  (50, 5000, 28, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Diglett - Slash - Level 33
  (50, 5000, 163, 4, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Diglett - Earthquake - Level 41
  (50, 5000, 89, 4, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Diglett - Fissure - Level 49
  (50, 5000, 90, 4, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Diglett - Curse - TM03
  (50, 5000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Diglett - Toxic - TM06
  (50, 5000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Diglett - Rock Smash - TM08
  (50, 5000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Diglett - Hidden Power - TM10
  (50, 5000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Diglett - Sunny Day - TM11
  (50, 5000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Diglett - Snore - TM13
  (50, 5000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Diglett - Protect - TM17
  (50, 5000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Diglett - Endure - TM20
  (50, 5000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Diglett - Frustration - TM21
  (50, 5000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 18),
  -- Diglett - Return - TM27
  (50, 5000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 19),
  -- Diglett - Dig - TM28
  (50, 5000, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 20),
  -- Diglett - Mud-Slap - TM31
  (50, 5000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 21),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 22),
  -- Diglett - Swagger - TM34
  (50, 5000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 23),
  -- Diglett - Sleep Talk - TM35
  (50, 5000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 24),
  -- Diglett - Sludge Bomb - TM36
  (50, 5000, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 25),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Diglett - Attract - TM45
  (50, 5000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Diglett - Thief - TM46
  (50, 5000, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Diglett - Cut - HM01
  (50, 5000, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 29),
  -- Diglett - Ancient Power - Egg Move
  (50, 5000, 246, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Diglett - Beat Up - Egg Move
  (50, 5000, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Diglett - Feint Attack - Egg Move
  (50, 5000, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Diglett - Pursuit - Egg Move
  (50, 5000, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Diglett - Screech - Egg Move
  (50, 5000, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 34);
