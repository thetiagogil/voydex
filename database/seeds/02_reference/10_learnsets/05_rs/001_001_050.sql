-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using Ruby /
-- Sapphire level columns, TM/HM compatibility rows, and egg move rows.
-- Cross-check: Serebii Ruby / Sapphire Pokedex learnset pages and PokemonDB
-- Generation 3 Ruby / Sapphire learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Ruby / Sapphire
-- Pokémon: #001-#050
-- Rows: 1638
-- Scope: level-up, TM, HM, and egg move acquisition rows. FireRed / LeafGreen,
-- Emerald, tutor, event, transfer, impossible breeding, and prior-evolution
-- sections are intentionally excluded from this Ruby / Sapphire seed.
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
  (1, 100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 4
  (1, 100, 45, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bulbasaur - Leech Seed - Level 7
  (1, 100, 73, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bulbasaur - Vine Whip - Level 10
  (1, 100, 22, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bulbasaur - Razor Leaf - Level 20
  (1, 100, 75, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sweet Scent - Level 25
  (1, 100, 230, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bulbasaur - Growth - Level 32
  (1, 100, 74, 5, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Bulbasaur - Synthesis - Level 39
  (1, 100, 235, 5, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Bulbasaur - Solar Beam - Level 46
  (1, 100, 76, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Bulbasaur - Bullet Seed - TM09
  (1, 100, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 13),
  -- Bulbasaur - Hidden Power - TM10
  (1, 100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Bulbasaur - Sunny Day - TM11
  (1, 100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Bulbasaur - Protect - TM17
  (1, 100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Bulbasaur - Giga Drain - TM19
  (1, 100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Bulbasaur - Frustration - TM21
  (1, 100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 19),
  -- Bulbasaur - Return - TM27
  (1, 100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Bulbasaur - Sludge Bomb - TM36
  (1, 100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 22),
  -- Bulbasaur - Facade - TM42
  (1, 100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Bulbasaur - Secret Power - TM43
  (1, 100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Bulbasaur - Attract - TM45
  (1, 100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Bulbasaur - Cut - HM01
  (1, 100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 27),
  -- Bulbasaur - Strength - HM04
  (1, 100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 28),
  -- Bulbasaur - Flash - HM05
  (1, 100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 29),
  -- Bulbasaur - Rock Smash - HM06
  (1, 100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 30),
  -- Bulbasaur - Charm - Egg Move
  (1, 100, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Bulbasaur - Curse - Egg Move
  (1, 100, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Bulbasaur - Grass Whistle - Egg Move
  (1, 100, 320, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Bulbasaur - Light Screen - Egg Move
  (1, 100, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bulbasaur - Magical Leaf - Egg Move
  (1, 100, 345, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bulbasaur - Petal Dance - Egg Move
  (1, 100, 80, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bulbasaur - Safeguard - Egg Move
  (1, 100, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bulbasaur - Skull Bash - Egg Move
  (1, 100, 130, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growl - Level 4
  (2, 200, 45, 5, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 7
  (2, 200, 73, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Ivysaur - Vine Whip - Level 10
  (2, 200, 22, 5, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 5, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Razor Leaf - Level 22
  (2, 200, 75, 5, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ivysaur - Sweet Scent - Level 29
  (2, 200, 230, 5, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Ivysaur - Growth - Level 38
  (2, 200, 74, 5, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Ivysaur - Synthesis - Level 47
  (2, 200, 235, 5, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Ivysaur - Solar Beam - Level 56
  (2, 200, 76, 5, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Ivysaur - Bullet Seed - TM09
  (2, 200, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 15),
  -- Ivysaur - Hidden Power - TM10
  (2, 200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Ivysaur - Sunny Day - TM11
  (2, 200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Ivysaur - Protect - TM17
  (2, 200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Ivysaur - Giga Drain - TM19
  (2, 200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 19),
  -- Ivysaur - Frustration - TM21
  (2, 200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Ivysaur - Return - TM27
  (2, 200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Ivysaur - Sludge Bomb - TM36
  (2, 200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Ivysaur - Facade - TM42
  (2, 200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Ivysaur - Secret Power - TM43
  (2, 200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Ivysaur - Attract - TM45
  (2, 200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Ivysaur - Cut - HM01
  (2, 200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 29),
  -- Ivysaur - Strength - HM04
  (2, 200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Ivysaur - Flash - HM05
  (2, 200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 31),
  -- Ivysaur - Rock Smash - HM06
  (2, 200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Growl - Level 4
  (3, 300, 45, 5, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Venusaur - Leech Seed - Level 7
  (3, 300, 73, 5, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Venusaur - Vine Whip - Level 10
  (3, 300, 22, 5, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 5, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Venusaur - Razor Leaf - Level 22
  (3, 300, 75, 5, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Venusaur - Sweet Scent - Level 29
  (3, 300, 230, 5, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Venusaur - Growth - Level 41
  (3, 300, 74, 5, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Venusaur - Synthesis - Level 53
  (3, 300, 235, 5, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Venusaur - Solar Beam - Level 65
  (3, 300, 76, 5, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Venusaur - Roar - TM05
  (3, 300, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 15),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Venusaur - Bullet Seed - TM09
  (3, 300, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 17),
  -- Venusaur - Hidden Power - TM10
  (3, 300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Venusaur - Sunny Day - TM11
  (3, 300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Venusaur - Protect - TM17
  (3, 300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Venusaur - Giga Drain - TM19
  (3, 300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 22),
  -- Venusaur - Frustration - TM21
  (3, 300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 24),
  -- Venusaur - Earthquake - TM26
  (3, 300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 25),
  -- Venusaur - Return - TM27
  (3, 300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Venusaur - Sludge Bomb - TM36
  (3, 300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 28),
  -- Venusaur - Facade - TM42
  (3, 300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Venusaur - Secret Power - TM43
  (3, 300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Venusaur - Attract - TM45
  (3, 300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Venusaur - Cut - HM01
  (3, 300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Venusaur - Strength - HM04
  (3, 300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Venusaur - Flash - HM05
  (3, 300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 35),
  -- Venusaur - Rock Smash - HM06
  (3, 300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 7
  (4, 400, 52, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 13
  (4, 400, 108, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Charmander - Rage - Level 19
  (4, 400, 99, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Charmander - Scary Face - Level 25
  (4, 400, 184, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Charmander - Flamethrower - Level 31
  (4, 400, 53, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Charmander - Slash - Level 37
  (4, 400, 163, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Charmander - Dragon Rage - Level 43
  (4, 400, 82, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 49
  (4, 400, 83, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Charmander - Focus Punch - TM01
  (4, 400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Charmander - Dragon Claw - TM02
  (4, 400, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 12),
  -- Charmander - Toxic - TM06
  (4, 400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Charmander - Hidden Power - TM10
  (4, 400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Charmander - Sunny Day - TM11
  (4, 400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Charmander - Protect - TM17
  (4, 400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Charmander - Frustration - TM21
  (4, 400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Charmander - Iron Tail - TM23
  (4, 400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 18),
  -- Charmander - Return - TM27
  (4, 400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Charmander - Dig - TM28
  (4, 400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 20),
  -- Charmander - Brick Break - TM31
  (4, 400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 21),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Charmander - Flamethrower - TM35
  (4, 400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 24),
  -- Charmander - Aerial Ace - TM40
  (4, 400, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 25),
  -- Charmander - Facade - TM42
  (4, 400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Charmander - Secret Power - TM43
  (4, 400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Charmander - Rest - TM44
  (4, 400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Charmander - Attract - TM45
  (4, 400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Charmander - Overheat - TM50
  (4, 400, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 30),
  -- Charmander - Cut - HM01
  (4, 400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Charmander - Strength - HM04
  (4, 400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Charmander - Rock Smash - HM06
  (4, 400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Charmander - Ancient Power - Egg Move
  (4, 400, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Charmander - Beat Up - Egg Move
  (4, 400, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Charmander - Belly Drum - Egg Move
  (4, 400, 187, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Charmander - Bite - Egg Move
  (4, 400, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Charmander - Dragon Dance - Egg Move
  (4, 400, 349, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Charmander - Outrage - Egg Move
  (4, 400, 200, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Charmander - Rock Slide - Egg Move
  (4, 400, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Charmander - Swords Dance - Egg Move
  (4, 400, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 7
  (5, 500, 52, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Charmeleon - Smokescreen - Level 13
  (5, 500, 108, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Charmeleon - Rage - Level 20
  (5, 500, 99, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Charmeleon - Scary Face - Level 27
  (5, 500, 184, 5, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 34
  (5, 500, 53, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Charmeleon - Slash - Level 41
  (5, 500, 163, 5, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Charmeleon - Dragon Rage - Level 48
  (5, 500, 82, 5, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Charmeleon - Fire Spin - Level 55
  (5, 500, 83, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Charmeleon - Focus Punch - TM01
  (5, 500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Charmeleon - Dragon Claw - TM02
  (5, 500, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 13),
  -- Charmeleon - Toxic - TM06
  (5, 500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Charmeleon - Hidden Power - TM10
  (5, 500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Charmeleon - Sunny Day - TM11
  (5, 500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Charmeleon - Protect - TM17
  (5, 500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Charmeleon - Frustration - TM21
  (5, 500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Charmeleon - Iron Tail - TM23
  (5, 500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Charmeleon - Return - TM27
  (5, 500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Charmeleon - Dig - TM28
  (5, 500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Charmeleon - Brick Break - TM31
  (5, 500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 22),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Charmeleon - Flamethrower - TM35
  (5, 500, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 24),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 25),
  -- Charmeleon - Aerial Ace - TM40
  (5, 500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Charmeleon - Facade - TM42
  (5, 500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Charmeleon - Secret Power - TM43
  (5, 500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Charmeleon - Attract - TM45
  (5, 500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Charmeleon - Overheat - TM50
  (5, 500, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 31),
  -- Charmeleon - Cut - HM01
  (5, 500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 32),
  -- Charmeleon - Strength - HM04
  (5, 500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Charmeleon - Rock Smash - HM06
  (5, 500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Ember - Level 7
  (6, 600, 52, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Charizard - Smokescreen - Level 13
  (6, 600, 108, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Charizard - Rage - Level 20
  (6, 600, 99, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charizard - Scary Face - Level 27
  (6, 600, 184, 5, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Charizard - Flamethrower - Level 34
  (6, 600, 53, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Charizard - Wing Attack - Level 36
  (6, 600, 17, 5, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Charizard - Slash - Level 44
  (6, 600, 163, 5, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Charizard - Dragon Rage - Level 54
  (6, 600, 82, 5, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Charizard - Fire Spin - Level 64
  (6, 600, 83, 5, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Charizard - Focus Punch - TM01
  (6, 600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Charizard - Dragon Claw - TM02
  (6, 600, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 15),
  -- Charizard - Roar - TM05
  (6, 600, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 16),
  -- Charizard - Toxic - TM06
  (6, 600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 17),
  -- Charizard - Hidden Power - TM10
  (6, 600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Charizard - Sunny Day - TM11
  (6, 600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Charizard - Protect - TM17
  (6, 600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Charizard - Frustration - TM21
  (6, 600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Charizard - Iron Tail - TM23
  (6, 600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 23),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Charizard - Return - TM27
  (6, 600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Charizard - Dig - TM28
  (6, 600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Charizard - Brick Break - TM31
  (6, 600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Charizard - Flamethrower - TM35
  (6, 600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 30),
  -- Charizard - Aerial Ace - TM40
  (6, 600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 31),
  -- Charizard - Facade - TM42
  (6, 600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Charizard - Secret Power - TM43
  (6, 600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Charizard - Rest - TM44
  (6, 600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Charizard - Attract - TM45
  (6, 600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Charizard - Steel Wing - TM47
  (6, 600, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 36),
  -- Charizard - Overheat - TM50
  (6, 600, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 37),
  -- Charizard - Cut - HM01
  (6, 600, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 38),
  -- Charizard - Fly - HM02
  (6, 600, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 39),
  -- Charizard - Strength - HM04
  (6, 600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 40),
  -- Charizard - Rock Smash - HM06
  (6, 600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 41),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 4
  (7, 700, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Squirtle - Bubble - Level 7
  (7, 700, 145, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 10
  (7, 700, 110, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Squirtle - Water Gun - Level 13
  (7, 700, 55, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 18
  (7, 700, 44, 5, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Squirtle - Rapid Spin - Level 23
  (7, 700, 229, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 28
  (7, 700, 182, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Squirtle - Rain Dance - Level 33
  (7, 700, 240, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Squirtle - Skull Bash - Level 40
  (7, 700, 130, 5, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Squirtle - Hydro Pump - Level 47
  (7, 700, 56, 5, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Squirtle - Focus Punch - TM01
  (7, 700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Squirtle - Water Pulse - TM03
  (7, 700, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Squirtle - Toxic - TM06
  (7, 700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Squirtle - Hail - TM07
  (7, 700, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Squirtle - Hidden Power - TM10
  (7, 700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Squirtle - Ice Beam - TM13
  (7, 700, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Squirtle - Protect - TM17
  (7, 700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Squirtle - Rain Dance - TM18
  (7, 700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Squirtle - Frustration - TM21
  (7, 700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Squirtle - Iron Tail - TM23
  (7, 700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Squirtle - Return - TM27
  (7, 700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Squirtle - Dig - TM28
  (7, 700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Squirtle - Brick Break - TM31
  (7, 700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Squirtle - Facade - TM42
  (7, 700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Squirtle - Secret Power - TM43
  (7, 700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Squirtle - Attract - TM45
  (7, 700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Squirtle - Surf - HM03
  (7, 700, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 31),
  -- Squirtle - Strength - HM04
  (7, 700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Squirtle - Rock Smash - HM06
  (7, 700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Squirtle - Waterfall - HM07
  (7, 700, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Squirtle - Dive - HM08
  (7, 700, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Squirtle - Flail - Egg Move
  (7, 700, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Squirtle - Foresight - Egg Move
  (7, 700, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Squirtle - Haze - Egg Move
  (7, 700, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Squirtle - Mirror Coat - Egg Move
  (7, 700, 243, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Squirtle - Mist - Egg Move
  (7, 700, 54, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Squirtle - Mud Sport - Egg Move
  (7, 700, 300, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Squirtle - Refresh - Egg Move
  (7, 700, 287, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Squirtle - Yawn - Egg Move
  (7, 700, 281, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Bubble - Level 1
  (8, 800, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Tail Whip - Level 4
  (8, 800, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Wartortle - Bubble - Level 7
  (8, 800, 145, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Wartortle - Withdraw - Level 10
  (8, 800, 110, 5, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wartortle - Water Gun - Level 13
  (8, 800, 55, 5, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Wartortle - Bite - Level 19
  (8, 800, 44, 5, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Wartortle - Rapid Spin - Level 25
  (8, 800, 229, 5, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wartortle - Protect - Level 31
  (8, 800, 182, 5, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Wartortle - Rain Dance - Level 37
  (8, 800, 240, 5, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Wartortle - Skull Bash - Level 45
  (8, 800, 130, 5, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 53
  (8, 800, 56, 5, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Wartortle - Focus Punch - TM01
  (8, 800, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Wartortle - Water Pulse - TM03
  (8, 800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 15),
  -- Wartortle - Toxic - TM06
  (8, 800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Wartortle - Hail - TM07
  (8, 800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 17),
  -- Wartortle - Hidden Power - TM10
  (8, 800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Wartortle - Ice Beam - TM13
  (8, 800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 19),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 20),
  -- Wartortle - Protect - TM17
  (8, 800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Wartortle - Rain Dance - TM18
  (8, 800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Wartortle - Frustration - TM21
  (8, 800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Wartortle - Iron Tail - TM23
  (8, 800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Wartortle - Return - TM27
  (8, 800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Wartortle - Dig - TM28
  (8, 800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Wartortle - Brick Break - TM31
  (8, 800, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Wartortle - Facade - TM42
  (8, 800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Wartortle - Secret Power - TM43
  (8, 800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Wartortle - Attract - TM45
  (8, 800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Wartortle - Surf - HM03
  (8, 800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 33),
  -- Wartortle - Strength - HM04
  (8, 800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Wartortle - Rock Smash - HM06
  (8, 800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Wartortle - Waterfall - HM07
  (8, 800, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 36),
  -- Wartortle - Dive - HM08
  (8, 800, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 37),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Bubble - Level 1
  (9, 900, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Tail Whip - Level 4
  (9, 900, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Blastoise - Bubble - Level 7
  (9, 900, 145, 5, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Blastoise - Withdraw - Level 10
  (9, 900, 110, 5, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Blastoise - Water Gun - Level 13
  (9, 900, 55, 5, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Blastoise - Bite - Level 19
  (9, 900, 44, 5, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Blastoise - Rapid Spin - Level 25
  (9, 900, 229, 5, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Blastoise - Protect - Level 31
  (9, 900, 182, 5, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Blastoise - Rain Dance - Level 42
  (9, 900, 240, 5, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Blastoise - Skull Bash - Level 55
  (9, 900, 130, 5, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Blastoise - Hydro Pump - Level 68
  (9, 900, 56, 5, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Blastoise - Focus Punch - TM01
  (9, 900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 15),
  -- Blastoise - Water Pulse - TM03
  (9, 900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 16),
  -- Blastoise - Roar - TM05
  (9, 900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 17),
  -- Blastoise - Toxic - TM06
  (9, 900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 18),
  -- Blastoise - Hail - TM07
  (9, 900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 19),
  -- Blastoise - Hidden Power - TM10
  (9, 900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 20),
  -- Blastoise - Ice Beam - TM13
  (9, 900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 21),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 22),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 23),
  -- Blastoise - Protect - TM17
  (9, 900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 24),
  -- Blastoise - Rain Dance - TM18
  (9, 900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 25),
  -- Blastoise - Frustration - TM21
  (9, 900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 26),
  -- Blastoise - Iron Tail - TM23
  (9, 900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 27),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 28),
  -- Blastoise - Return - TM27
  (9, 900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 29),
  -- Blastoise - Dig - TM28
  (9, 900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 30),
  -- Blastoise - Brick Break - TM31
  (9, 900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 31),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 32),
  -- Blastoise - Facade - TM42
  (9, 900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Blastoise - Secret Power - TM43
  (9, 900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Blastoise - Attract - TM45
  (9, 900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Blastoise - Surf - HM03
  (9, 900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Blastoise - Strength - HM04
  (9, 900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Blastoise - Rock Smash - HM06
  (9, 900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Blastoise - Waterfall - HM07
  (9, 900, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 40),
  -- Blastoise - Dive - HM08
  (9, 900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 41),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Level 7
  (11, 1100, 106, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 10
  (12, 1200, 93, 5, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Butterfree - Poison Powder - Level 13
  (12, 1200, 77, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Butterfree - Stun Spore - Level 14
  (12, 1200, 78, 5, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Butterfree - Sleep Powder - Level 15
  (12, 1200, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Butterfree - Supersonic - Level 18
  (12, 1200, 48, 5, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Butterfree - Whirlwind - Level 23
  (12, 1200, 18, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Butterfree - Gust - Level 28
  (12, 1200, 16, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Butterfree - Psybeam - Level 34
  (12, 1200, 60, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Butterfree - Safeguard - Level 40
  (12, 1200, 219, 5, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Butterfree - Silver Wind - Level 47
  (12, 1200, 318, 5, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Butterfree - Toxic - TM06
  (12, 1200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Butterfree - Hidden Power - TM10
  (12, 1200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Butterfree - Sunny Day - TM11
  (12, 1200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Butterfree - Protect - TM17
  (12, 1200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Butterfree - Rain Dance - TM18
  (12, 1200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Butterfree - Giga Drain - TM19
  (12, 1200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 18),
  -- Butterfree - Safeguard - TM20
  (12, 1200, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 19),
  -- Butterfree - Frustration - TM21
  (12, 1200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Butterfree - Return - TM27
  (12, 1200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 23),
  -- Butterfree - Shadow Ball - TM30
  (12, 1200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 24),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Butterfree - Aerial Ace - TM40
  (12, 1200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Butterfree - Facade - TM42
  (12, 1200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Butterfree - Secret Power - TM43
  (12, 1200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Butterfree - Attract - TM45
  (12, 1200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Butterfree - Thief - TM46
  (12, 1200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Butterfree - Skill Swap - TM48
  (12, 1200, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 32),
  -- Butterfree - Flash - HM05
  (12, 1200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 33),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - Harden - Level 7
  (14, 1400, 106, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Beedrill - Fury Attack - Level 1
  (15, 1500, 31, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Fury Attack - Level 10
  (15, 1500, 31, 5, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beedrill - Focus Energy - Level 15
  (15, 1500, 116, 5, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Beedrill - Twineedle - Level 20
  (15, 1500, 41, 5, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Beedrill - Rage - Level 25
  (15, 1500, 99, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Beedrill - Pursuit - Level 30
  (15, 1500, 228, 5, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Beedrill - Pin Missile - Level 35
  (15, 1500, 42, 5, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Beedrill - Agility - Level 40
  (15, 1500, 97, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Beedrill - Endeavor - Level 45
  (15, 1500, 283, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Beedrill - Toxic - TM06
  (15, 1500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Beedrill - Hidden Power - TM10
  (15, 1500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Beedrill - Sunny Day - TM11
  (15, 1500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 13),
  -- Beedrill - Protect - TM17
  (15, 1500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Beedrill - Giga Drain - TM19
  (15, 1500, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 15),
  -- Beedrill - Frustration - TM21
  (15, 1500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Beedrill - Solar Beam - TM22
  (15, 1500, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 17),
  -- Beedrill - Return - TM27
  (15, 1500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Beedrill - Brick Break - TM31
  (15, 1500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 19),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Beedrill - Sludge Bomb - TM36
  (15, 1500, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 21),
  -- Beedrill - Aerial Ace - TM40
  (15, 1500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 22),
  -- Beedrill - Facade - TM42
  (15, 1500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Beedrill - Secret Power - TM43
  (15, 1500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Beedrill - Attract - TM45
  (15, 1500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Beedrill - Thief - TM46
  (15, 1500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Beedrill - Cut - HM01
  (15, 1500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 28),
  -- Beedrill - Rock Smash - HM06
  (15, 1500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 29),
  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 13
  (16, 1600, 98, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgey - Whirlwind - Level 19
  (16, 1600, 18, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Pidgey - Wing Attack - Level 25
  (16, 1600, 17, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Pidgey - Feather Dance - Level 31
  (16, 1600, 297, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Pidgey - Agility - Level 39
  (16, 1600, 97, 5, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Pidgey - Mirror Move - Level 47
  (16, 1600, 119, 5, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Pidgey - Toxic - TM06
  (16, 1600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Pidgey - Hidden Power - TM10
  (16, 1600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Pidgey - Sunny Day - TM11
  (16, 1600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Pidgey - Protect - TM17
  (16, 1600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Pidgey - Rain Dance - TM18
  (16, 1600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 14),
  -- Pidgey - Frustration - TM21
  (16, 1600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Pidgey - Return - TM27
  (16, 1600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Pidgey - Aerial Ace - TM40
  (16, 1600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 18),
  -- Pidgey - Facade - TM42
  (16, 1600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 19),
  -- Pidgey - Secret Power - TM43
  (16, 1600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 20),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 21),
  -- Pidgey - Attract - TM45
  (16, 1600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 22),
  -- Pidgey - Thief - TM46
  (16, 1600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 23),
  -- Pidgey - Steel Wing - TM47
  (16, 1600, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 24),
  -- Pidgey - Fly - HM02
  (16, 1600, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 25),
  -- Pidgey - Air Cutter - Egg Move
  (16, 1600, 314, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Pidgey - Feint Attack - Egg Move
  (16, 1600, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Pidgey - Foresight - Egg Move
  (16, 1600, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Pidgey - Pursuit - Egg Move
  (16, 1600, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Pidgey - Steel Wing - Egg Move
  (16, 1600, 211, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 5, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pidgeotto - Quick Attack - Level 13
  (17, 1700, 98, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 20
  (17, 1700, 18, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pidgeotto - Wing Attack - Level 27
  (17, 1700, 17, 5, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Pidgeotto - Feather Dance - Level 34
  (17, 1700, 297, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Pidgeotto - Agility - Level 43
  (17, 1700, 97, 5, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Pidgeotto - Mirror Move - Level 52
  (17, 1700, 119, 5, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Pidgeotto - Toxic - TM06
  (17, 1700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Pidgeotto - Hidden Power - TM10
  (17, 1700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Pidgeotto - Sunny Day - TM11
  (17, 1700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Pidgeotto - Protect - TM17
  (17, 1700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Pidgeotto - Rain Dance - TM18
  (17, 1700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Pidgeotto - Frustration - TM21
  (17, 1700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Pidgeotto - Return - TM27
  (17, 1700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Pidgeotto - Aerial Ace - TM40
  (17, 1700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 20),
  -- Pidgeotto - Facade - TM42
  (17, 1700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Pidgeotto - Secret Power - TM43
  (17, 1700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Pidgeotto - Attract - TM45
  (17, 1700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Pidgeotto - Thief - TM46
  (17, 1700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Pidgeotto - Steel Wing - TM47
  (17, 1700, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 26),
  -- Pidgeotto - Fly - HM02
  (17, 1700, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 27),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 5, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 5, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Pidgeot - Quick Attack - Level 13
  (18, 1800, 98, 5, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Pidgeot - Whirlwind - Level 20
  (18, 1800, 18, 5, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pidgeot - Wing Attack - Level 27
  (18, 1800, 17, 5, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pidgeot - Feather Dance - Level 34
  (18, 1800, 297, 5, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Pidgeot - Agility - Level 48
  (18, 1800, 97, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Pidgeot - Mirror Move - Level 62
  (18, 1800, 119, 5, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Pidgeot - Toxic - TM06
  (18, 1800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Pidgeot - Hidden Power - TM10
  (18, 1800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Pidgeot - Sunny Day - TM11
  (18, 1800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Pidgeot - Protect - TM17
  (18, 1800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Pidgeot - Rain Dance - TM18
  (18, 1800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Pidgeot - Frustration - TM21
  (18, 1800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Pidgeot - Return - TM27
  (18, 1800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Pidgeot - Aerial Ace - TM40
  (18, 1800, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 22),
  -- Pidgeot - Facade - TM42
  (18, 1800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Pidgeot - Secret Power - TM43
  (18, 1800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Pidgeot - Attract - TM45
  (18, 1800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Pidgeot - Thief - TM46
  (18, 1800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Pidgeot - Steel Wing - TM47
  (18, 1800, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 28),
  -- Pidgeot - Fly - HM02
  (18, 1800, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 29),
  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 1
  (19, 1900, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 7
  (19, 1900, 98, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Rattata - Hyper Fang - Level 13
  (19, 1900, 158, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Rattata - Focus Energy - Level 20
  (19, 1900, 116, 5, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Rattata - Pursuit - Level 27
  (19, 1900, 228, 5, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Rattata - Super Fang - Level 34
  (19, 1900, 162, 5, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Rattata - Endeavor - Level 41
  (19, 1900, 283, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Rattata - Toxic - TM06
  (19, 1900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Rattata - Hidden Power - TM10
  (19, 1900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 10),
  -- Rattata - Sunny Day - TM11
  (19, 1900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 11),
  -- Rattata - Taunt - TM12
  (19, 1900, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 12),
  -- Rattata - Ice Beam - TM13
  (19, 1900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Rattata - Protect - TM17
  (19, 1900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Rattata - Rain Dance - TM18
  (19, 1900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Rattata - Frustration - TM21
  (19, 1900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Rattata - Iron Tail - TM23
  (19, 1900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 18),
  -- Rattata - Thunderbolt - TM24
  (19, 1900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Rattata - Return - TM27
  (19, 1900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Rattata - Dig - TM28
  (19, 1900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Rattata - Shadow Ball - TM30
  (19, 1900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 23),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Rattata - Shock Wave - TM34
  (19, 1900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 25),
  -- Rattata - Facade - TM42
  (19, 1900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Rattata - Secret Power - TM43
  (19, 1900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Rattata - Attract - TM45
  (19, 1900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Rattata - Thief - TM46
  (19, 1900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Rattata - Cut - HM01
  (19, 1900, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Rattata - Rock Smash - HM06
  (19, 1900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Rattata - Bite - Egg Move
  (19, 1900, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Rattata - Counter - Egg Move
  (19, 1900, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Rattata - Flame Wheel - Egg Move
  (19, 1900, 172, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Rattata - Fury Swipes - Egg Move
  (19, 1900, 154, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rattata - Reversal - Egg Move
  (19, 1900, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Rattata - Screech - Egg Move
  (19, 1900, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Rattata - Swagger - Egg Move
  (19, 1900, 207, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rattata - Uproar - Egg Move
  (19, 1900, 253, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Quick Attack - Level 7
  (20, 2000, 98, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Raticate - Hyper Fang - Level 13
  (20, 2000, 158, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Raticate - Scary Face - Level 20
  (20, 2000, 184, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Raticate - Pursuit - Level 30
  (20, 2000, 228, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Raticate - Super Fang - Level 40
  (20, 2000, 162, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Raticate - Endeavor - Level 50
  (20, 2000, 283, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Raticate - Roar - TM05
  (20, 2000, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Raticate - Toxic - TM06
  (20, 2000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Raticate - Hidden Power - TM10
  (20, 2000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Raticate - Sunny Day - TM11
  (20, 2000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Raticate - Taunt - TM12
  (20, 2000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Raticate - Ice Beam - TM13
  (20, 2000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Raticate - Protect - TM17
  (20, 2000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Raticate - Rain Dance - TM18
  (20, 2000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Raticate - Frustration - TM21
  (20, 2000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Raticate - Iron Tail - TM23
  (20, 2000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Raticate - Thunderbolt - TM24
  (20, 2000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Raticate - Return - TM27
  (20, 2000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Raticate - Dig - TM28
  (20, 2000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Raticate - Shadow Ball - TM30
  (20, 2000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 26),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Raticate - Shock Wave - TM34
  (20, 2000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Raticate - Facade - TM42
  (20, 2000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Raticate - Secret Power - TM43
  (20, 2000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Raticate - Attract - TM45
  (20, 2000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Raticate - Thief - TM46
  (20, 2000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Raticate - Cut - HM01
  (20, 2000, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 34),
  -- Raticate - Strength - HM04
  (20, 2000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Raticate - Rock Smash - HM06
  (20, 2000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Growl - Level 1
  (21, 2100, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 7
  (21, 2100, 43, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Spearow - Fury Attack - Level 13
  (21, 2100, 31, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Spearow - Pursuit - Level 19
  (21, 2100, 228, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spearow - Aerial Ace - Level 25
  (21, 2100, 332, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Spearow - Mirror Move - Level 31
  (21, 2100, 119, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Spearow - Drill Peck - Level 37
  (21, 2100, 65, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Spearow - Agility - Level 43
  (21, 2100, 97, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Spearow - Toxic - TM06
  (21, 2100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Spearow - Hidden Power - TM10
  (21, 2100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Spearow - Sunny Day - TM11
  (21, 2100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Spearow - Protect - TM17
  (21, 2100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Spearow - Rain Dance - TM18
  (21, 2100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 14),
  -- Spearow - Frustration - TM21
  (21, 2100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Spearow - Return - TM27
  (21, 2100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Spearow - Aerial Ace - TM40
  (21, 2100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 18),
  -- Spearow - Facade - TM42
  (21, 2100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 19),
  -- Spearow - Secret Power - TM43
  (21, 2100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 20),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 21),
  -- Spearow - Attract - TM45
  (21, 2100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 22),
  -- Spearow - Thief - TM46
  (21, 2100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 23),
  -- Spearow - Steel Wing - TM47
  (21, 2100, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 24),
  -- Spearow - Fly - HM02
  (21, 2100, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 25),
  -- Spearow - Astonish - Egg Move
  (21, 2100, 310, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Spearow - Feint Attack - Egg Move
  (21, 2100, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Spearow - False Swipe - Egg Move
  (21, 2100, 206, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Spearow - Quick Attack - Egg Move
  (21, 2100, 98, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Spearow - Scary Face - Egg Move
  (21, 2100, 184, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Spearow - Sky Attack - Egg Move
  (21, 2100, 143, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Spearow - Tri Attack - Egg Move
  (21, 2100, 161, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Leer - Level 1
  (22, 2200, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Fury Attack - Level 1
  (22, 2200, 31, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fearow - Leer - Level 7
  (22, 2200, 43, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Fearow - Fury Attack - Level 13
  (22, 2200, 31, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Fearow - Pursuit - Level 26
  (22, 2200, 228, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Fearow - Mirror Move - Level 32
  (22, 2200, 119, 5, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Fearow - Drill Peck - Level 40
  (22, 2200, 65, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Fearow - Agility - Level 47
  (22, 2200, 97, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Fearow - Toxic - TM06
  (22, 2200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Fearow - Hidden Power - TM10
  (22, 2200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Fearow - Sunny Day - TM11
  (22, 2200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 14),
  -- Fearow - Protect - TM17
  (22, 2200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Fearow - Rain Dance - TM18
  (22, 2200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Fearow - Frustration - TM21
  (22, 2200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Fearow - Return - TM27
  (22, 2200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Fearow - Aerial Ace - TM40
  (22, 2200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 20),
  -- Fearow - Facade - TM42
  (22, 2200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Fearow - Secret Power - TM43
  (22, 2200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Fearow - Attract - TM45
  (22, 2200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Fearow - Thief - TM46
  (22, 2200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Fearow - Steel Wing - TM47
  (22, 2200, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 26),
  -- Fearow - Fly - HM02
  (22, 2200, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 27),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 8
  (23, 2300, 40, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 13
  (23, 2300, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 20
  (23, 2300, 137, 5, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 25
  (23, 2300, 103, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 32
  (23, 2300, 51, 5, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Ekans - Stockpile - Level 37
  (23, 2300, 254, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Ekans - Swallow - Level 37
  (23, 2300, 256, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Ekans - Spit Up - Level 37
  (23, 2300, 255, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Ekans - Haze - Level 44
  (23, 2300, 114, 5, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Ekans - Toxic - TM06
  (23, 2300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Ekans - Hidden Power - TM10
  (23, 2300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Ekans - Sunny Day - TM11
  (23, 2300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Ekans - Protect - TM17
  (23, 2300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Ekans - Rain Dance - TM18
  (23, 2300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Ekans - Giga Drain - TM19
  (23, 2300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Ekans - Frustration - TM21
  (23, 2300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Ekans - Iron Tail - TM23
  (23, 2300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Ekans - Return - TM27
  (23, 2300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Ekans - Dig - TM28
  (23, 2300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Ekans - Sludge Bomb - TM36
  (23, 2300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Ekans - Torment - TM41
  (23, 2300, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 25),
  -- Ekans - Facade - TM42
  (23, 2300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Ekans - Secret Power - TM43
  (23, 2300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Ekans - Attract - TM45
  (23, 2300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Ekans - Thief - TM46
  (23, 2300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Ekans - Snatch - TM49
  (23, 2300, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 31),
  -- Ekans - Strength - HM04
  (23, 2300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Ekans - Beat Up - Egg Move
  (23, 2300, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ekans - Poison Fang - Egg Move
  (23, 2300, 305, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Ekans - Pursuit - Egg Move
  (23, 2300, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Ekans - Slam - Egg Move
  (23, 2300, 21, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Ekans - Spite - Egg Move
  (23, 2300, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 1
  (24, 2400, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Poison Sting - Level 8
  (24, 2400, 40, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Arbok - Bite - Level 13
  (24, 2400, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Arbok - Glare - Level 20
  (24, 2400, 137, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Arbok - Screech - Level 28
  (24, 2400, 103, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Arbok - Acid - Level 38
  (24, 2400, 51, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Arbok - Stockpile - Level 46
  (24, 2400, 254, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Arbok - Swallow - Level 46
  (24, 2400, 256, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Arbok - Spit Up - Level 46
  (24, 2400, 255, 5, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Arbok - Haze - Level 56
  (24, 2400, 114, 5, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Arbok - Toxic - TM06
  (24, 2400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Arbok - Hidden Power - TM10
  (24, 2400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Arbok - Sunny Day - TM11
  (24, 2400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Arbok - Protect - TM17
  (24, 2400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Arbok - Rain Dance - TM18
  (24, 2400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Arbok - Giga Drain - TM19
  (24, 2400, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 20),
  -- Arbok - Frustration - TM21
  (24, 2400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Arbok - Iron Tail - TM23
  (24, 2400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Arbok - Return - TM27
  (24, 2400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Arbok - Dig - TM28
  (24, 2400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Arbok - Sludge Bomb - TM36
  (24, 2400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 27),
  -- Arbok - Torment - TM41
  (24, 2400, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 28),
  -- Arbok - Facade - TM42
  (24, 2400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Arbok - Secret Power - TM43
  (24, 2400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Arbok - Attract - TM45
  (24, 2400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Arbok - Thief - TM46
  (24, 2400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Arbok - Snatch - TM49
  (24, 2400, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 34),
  -- Arbok - Strength - HM04
  (24, 2400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Tail Whip - Level 6
  (25, 2500, 39, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pikachu - Thunder Wave - Level 8
  (25, 2500, 86, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pikachu - Quick Attack - Level 11
  (25, 2500, 98, 5, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pikachu - Double Team - Level 15
  (25, 2500, 104, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pikachu - Slam - Level 20
  (25, 2500, 21, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pikachu - Thunderbolt - Level 26
  (25, 2500, 85, 5, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Pikachu - Agility - Level 33
  (25, 2500, 97, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pikachu - Thunder - Level 41
  (25, 2500, 87, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Pikachu - Light Screen - Level 50
  (25, 2500, 113, 5, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Pikachu - Focus Punch - TM01
  (25, 2500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Pikachu - Toxic - TM06
  (25, 2500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Pikachu - Hidden Power - TM10
  (25, 2500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Pikachu - Light Screen - TM16
  (25, 2500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Pikachu - Protect - TM17
  (25, 2500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Pikachu - Rain Dance - TM18
  (25, 2500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Pikachu - Frustration - TM21
  (25, 2500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Pikachu - Iron Tail - TM23
  (25, 2500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Pikachu - Thunderbolt - TM24
  (25, 2500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 20),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 21),
  -- Pikachu - Return - TM27
  (25, 2500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Pikachu - Dig - TM28
  (25, 2500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Pikachu - Brick Break - TM31
  (25, 2500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Pikachu - Shock Wave - TM34
  (25, 2500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Pikachu - Facade - TM42
  (25, 2500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Pikachu - Secret Power - TM43
  (25, 2500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Pikachu - Attract - TM45
  (25, 2500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Pikachu - Strength - HM04
  (25, 2500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Pikachu - Flash - HM05
  (25, 2500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Pikachu - Rock Smash - HM06
  (25, 2500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Thunderbolt - Level 1
  (26, 2600, 85, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Focus Punch - TM01
  (26, 2600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 5),
  -- Raichu - Toxic - TM06
  (26, 2600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 6),
  -- Raichu - Hidden Power - TM10
  (26, 2600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 7),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 8),
  -- Raichu - Light Screen - TM16
  (26, 2600, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 9),
  -- Raichu - Protect - TM17
  (26, 2600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 10),
  -- Raichu - Rain Dance - TM18
  (26, 2600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 11),
  -- Raichu - Frustration - TM21
  (26, 2600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 12),
  -- Raichu - Iron Tail - TM23
  (26, 2600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 13),
  -- Raichu - Thunderbolt - TM24
  (26, 2600, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 14),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 15),
  -- Raichu - Return - TM27
  (26, 2600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Raichu - Dig - TM28
  (26, 2600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 17),
  -- Raichu - Brick Break - TM31
  (26, 2600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 18),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Raichu - Shock Wave - TM34
  (26, 2600, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 20),
  -- Raichu - Facade - TM42
  (26, 2600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Raichu - Secret Power - TM43
  (26, 2600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Raichu - Attract - TM45
  (26, 2600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Raichu - Thief - TM46
  (26, 2600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Raichu - Strength - HM04
  (26, 2600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 26),
  -- Raichu - Flash - HM05
  (26, 2600, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 27),
  -- Raichu - Rock Smash - HM06
  (26, 2600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 28),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 6
  (27, 2700, 111, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sandshrew - Sand Attack - Level 11
  (27, 2700, 28, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sandshrew - Poison Sting - Level 17
  (27, 2700, 40, 5, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sandshrew - Slash - Level 23
  (27, 2700, 163, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Sandshrew - Swift - Level 30
  (27, 2700, 129, 5, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Sandshrew - Fury Swipes - Level 37
  (27, 2700, 154, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Sandshrew - Sand Tomb - Level 45
  (27, 2700, 328, 5, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Sandshrew - Sandstorm - Level 53
  (27, 2700, 201, 5, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Sandshrew - Focus Punch - TM01
  (27, 2700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 10),
  -- Sandshrew - Toxic - TM06
  (27, 2700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Sandshrew - Hidden Power - TM10
  (27, 2700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Sandshrew - Sunny Day - TM11
  (27, 2700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Sandshrew - Protect - TM17
  (27, 2700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Sandshrew - Frustration - TM21
  (27, 2700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Sandshrew - Iron Tail - TM23
  (27, 2700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 16),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 17),
  -- Sandshrew - Return - TM27
  (27, 2700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Sandshrew - Dig - TM28
  (27, 2700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 19),
  -- Sandshrew - Brick Break - TM31
  (27, 2700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 20),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Sandshrew - Sandstorm - TM37
  (27, 2700, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 22),
  -- Sandshrew - Rock Tomb - TM39
  (27, 2700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 23),
  -- Sandshrew - Aerial Ace - TM40
  (27, 2700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 24),
  -- Sandshrew - Facade - TM42
  (27, 2700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Sandshrew - Secret Power - TM43
  (27, 2700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Sandshrew - Attract - TM45
  (27, 2700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Sandshrew - Thief - TM46
  (27, 2700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Sandshrew - Cut - HM01
  (27, 2700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 30),
  -- Sandshrew - Strength - HM04
  (27, 2700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Sandshrew - Rock Smash - HM06
  (27, 2700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Sandshrew - Counter - Egg Move
  (27, 2700, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Sandshrew - Crush Claw - Egg Move
  (27, 2700, 306, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sandshrew - Flail - Egg Move
  (27, 2700, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sandshrew - Metal Claw - Egg Move
  (27, 2700, 232, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sandshrew - Rapid Spin - Egg Move
  (27, 2700, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sandshrew - Rock Slide - Egg Move
  (27, 2700, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sandshrew - Safeguard - Egg Move
  (27, 2700, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sandshrew - Swords Dance - Egg Move
  (27, 2700, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 6
  (28, 2800, 111, 5, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandslash - Sand Attack - Level 11
  (28, 2800, 28, 5, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sandslash - Poison Sting - Level 17
  (28, 2800, 40, 5, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sandslash - Slash - Level 24
  (28, 2800, 163, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Sandslash - Swift - Level 33
  (28, 2800, 129, 5, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Sandslash - Fury Swipes - Level 42
  (28, 2800, 154, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sandslash - Sand Tomb - Level 52
  (28, 2800, 328, 5, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Sandslash - Sandstorm - Level 62
  (28, 2800, 201, 5, NULL, 1, 62, NULL, NULL, NULL, 11),
  -- Sandslash - Focus Punch - TM01
  (28, 2800, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Sandslash - Toxic - TM06
  (28, 2800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Sandslash - Hidden Power - TM10
  (28, 2800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Sandslash - Sunny Day - TM11
  (28, 2800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Sandslash - Protect - TM17
  (28, 2800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Sandslash - Frustration - TM21
  (28, 2800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Sandslash - Iron Tail - TM23
  (28, 2800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Sandslash - Return - TM27
  (28, 2800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Sandslash - Dig - TM28
  (28, 2800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Sandslash - Brick Break - TM31
  (28, 2800, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Sandslash - Sandstorm - TM37
  (28, 2800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 25),
  -- Sandslash - Rock Tomb - TM39
  (28, 2800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Sandslash - Aerial Ace - TM40
  (28, 2800, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 27),
  -- Sandslash - Facade - TM42
  (28, 2800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Sandslash - Secret Power - TM43
  (28, 2800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Sandslash - Attract - TM45
  (28, 2800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Sandslash - Thief - TM46
  (28, 2800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Sandslash - Cut - HM01
  (28, 2800, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Sandslash - Strength - HM04
  (28, 2800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Sandslash - Rock Smash - HM06
  (28, 2800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Scratch - Level 1
  (29, 2900, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Tail Whip - Level 8
  (29, 2900, 39, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran F - Double Kick - Level 12
  (29, 2900, 24, 5, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidoran F - Poison Sting - Level 17
  (29, 2900, 40, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Nidoran F - Bite - Level 20
  (29, 2900, 44, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran F - Helping Hand - Level 23
  (29, 2900, 270, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidoran F - Fury Swipes - Level 30
  (29, 2900, 154, 5, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran F - Flatter - Level 38
  (29, 2900, 260, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nidoran F - Crunch - Level 47
  (29, 2900, 242, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Nidoran F - Water Pulse - TM03
  (29, 2900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Nidoran F - Hidden Power - TM10
  (29, 2900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Nidoran F - Sunny Day - TM11
  (29, 2900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Nidoran F - Ice Beam - TM13
  (29, 2900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Nidoran F - Protect - TM17
  (29, 2900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Nidoran F - Rain Dance - TM18
  (29, 2900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Nidoran F - Frustration - TM21
  (29, 2900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Nidoran F - Iron Tail - TM23
  (29, 2900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Nidoran F - Thunderbolt - TM24
  (29, 2900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Nidoran F - Return - TM27
  (29, 2900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidoran F - Dig - TM28
  (29, 2900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Nidoran F - Shock Wave - TM34
  (29, 2900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Nidoran F - Sludge Bomb - TM36
  (29, 2900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 27),
  -- Nidoran F - Aerial Ace - TM40
  (29, 2900, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 28),
  -- Nidoran F - Facade - TM42
  (29, 2900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Nidoran F - Secret Power - TM43
  (29, 2900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Nidoran F - Attract - TM45
  (29, 2900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Nidoran F - Thief - TM46
  (29, 2900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Nidoran F - Cut - HM01
  (29, 2900, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 34),
  -- Nidoran F - Strength - HM04
  (29, 2900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Nidoran F - Rock Smash - HM06
  (29, 2900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Nidoran F - Beat Up - Egg Move
  (29, 2900, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nidoran F - Charm - Egg Move
  (29, 2900, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nidoran F - Counter - Egg Move
  (29, 2900, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nidoran F - Disable - Egg Move
  (29, 2900, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nidoran F - Focus Energy - Egg Move
  (29, 2900, 116, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidoran F - Supersonic - Egg Move
  (29, 2900, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidoran F - Take Down - Egg Move
  (29, 2900, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Tail Whip - Level 8
  (30, 3000, 39, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidorina - Double Kick - Level 12
  (30, 3000, 24, 5, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidorina - Poison Sting - Level 18
  (30, 3000, 40, 5, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Nidorina - Bite - Level 22
  (30, 3000, 44, 5, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorina - Helping Hand - Level 26
  (30, 3000, 270, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Nidorina - Fury Swipes - Level 34
  (30, 3000, 154, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Nidorina - Flatter - Level 43
  (30, 3000, 260, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorina - Crunch - Level 53
  (30, 3000, 242, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Nidorina - Water Pulse - TM03
  (30, 3000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Nidorina - Hidden Power - TM10
  (30, 3000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Nidorina - Sunny Day - TM11
  (30, 3000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Nidorina - Ice Beam - TM13
  (30, 3000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Nidorina - Protect - TM17
  (30, 3000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Nidorina - Rain Dance - TM18
  (30, 3000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Nidorina - Frustration - TM21
  (30, 3000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Nidorina - Iron Tail - TM23
  (30, 3000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Nidorina - Thunderbolt - TM24
  (30, 3000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Nidorina - Return - TM27
  (30, 3000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidorina - Dig - TM28
  (30, 3000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Nidorina - Shock Wave - TM34
  (30, 3000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Nidorina - Sludge Bomb - TM36
  (30, 3000, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 27),
  -- Nidorina - Aerial Ace - TM40
  (30, 3000, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 28),
  -- Nidorina - Facade - TM42
  (30, 3000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Nidorina - Secret Power - TM43
  (30, 3000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Nidorina - Attract - TM45
  (30, 3000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Nidorina - Thief - TM46
  (30, 3000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Nidorina - Cut - HM01
  (30, 3000, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 34),
  -- Nidorina - Strength - HM04
  (30, 3000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Nidorina - Rock Smash - HM06
  (30, 3000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Double Kick - Level 1
  (31, 3100, 24, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Poison Sting - Level 1
  (31, 3100, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Body Slam - Level 23
  (31, 3100, 34, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoqueen - Focus Punch - TM01
  (31, 3100, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 6),
  -- Nidoqueen - Water Pulse - TM03
  (31, 3100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 7),
  -- Nidoqueen - Roar - TM05
  (31, 3100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 8),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Nidoqueen - Hidden Power - TM10
  (31, 3100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 10),
  -- Nidoqueen - Sunny Day - TM11
  (31, 3100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 11),
  -- Nidoqueen - Taunt - TM12
  (31, 3100, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 12),
  -- Nidoqueen - Ice Beam - TM13
  (31, 3100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Nidoqueen - Protect - TM17
  (31, 3100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Nidoqueen - Rain Dance - TM18
  (31, 3100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Nidoqueen - Frustration - TM21
  (31, 3100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Nidoqueen - Iron Tail - TM23
  (31, 3100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Nidoqueen - Thunderbolt - TM24
  (31, 3100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 20),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 21),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Nidoqueen - Return - TM27
  (31, 3100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidoqueen - Dig - TM28
  (31, 3100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidoqueen - Shadow Ball - TM30
  (31, 3100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Nidoqueen - Brick Break - TM31
  (31, 3100, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Nidoqueen - Shock Wave - TM34
  (31, 3100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Nidoqueen - Flamethrower - TM35
  (31, 3100, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Nidoqueen - Sludge Bomb - TM36
  (31, 3100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 30),
  -- Nidoqueen - Sandstorm - TM37
  (31, 3100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 31),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 32),
  -- Nidoqueen - Rock Tomb - TM39
  (31, 3100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 33),
  -- Nidoqueen - Aerial Ace - TM40
  (31, 3100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 34),
  -- Nidoqueen - Torment - TM41
  (31, 3100, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 35),
  -- Nidoqueen - Facade - TM42
  (31, 3100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 36),
  -- Nidoqueen - Secret Power - TM43
  (31, 3100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 37),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 38),
  -- Nidoqueen - Attract - TM45
  (31, 3100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 39),
  -- Nidoqueen - Thief - TM46
  (31, 3100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 40),
  -- Nidoqueen - Cut - HM01
  (31, 3100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 41),
  -- Nidoqueen - Surf - HM03
  (31, 3100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 42),
  -- Nidoqueen - Strength - HM04
  (31, 3100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 43),
  -- Nidoqueen - Rock Smash - HM06
  (31, 3100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 44),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Peck - Level 1
  (32, 3200, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Focus Energy - Level 8
  (32, 3200, 116, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidoran M - Double Kick - Level 12
  (32, 3200, 24, 5, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidoran M - Poison Sting - Level 17
  (32, 3200, 40, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Nidoran M - Horn Attack - Level 20
  (32, 3200, 30, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran M - Helping Hand - Level 23
  (32, 3200, 270, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidoran M - Fury Attack - Level 30
  (32, 3200, 31, 5, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran M - Flatter - Level 38
  (32, 3200, 260, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nidoran M - Horn Drill - Level 47
  (32, 3200, 32, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Nidoran M - Water Pulse - TM03
  (32, 3200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Nidoran M - Hidden Power - TM10
  (32, 3200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Nidoran M - Sunny Day - TM11
  (32, 3200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Nidoran M - Ice Beam - TM13
  (32, 3200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Nidoran M - Protect - TM17
  (32, 3200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Nidoran M - Rain Dance - TM18
  (32, 3200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Nidoran M - Frustration - TM21
  (32, 3200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Nidoran M - Iron Tail - TM23
  (32, 3200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Nidoran M - Thunderbolt - TM24
  (32, 3200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Nidoran M - Return - TM27
  (32, 3200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidoran M - Dig - TM28
  (32, 3200, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Nidoran M - Shock Wave - TM34
  (32, 3200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Nidoran M - Sludge Bomb - TM36
  (32, 3200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 27),
  -- Nidoran M - Facade - TM42
  (32, 3200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Nidoran M - Secret Power - TM43
  (32, 3200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Nidoran M - Attract - TM45
  (32, 3200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Nidoran M - Thief - TM46
  (32, 3200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Nidoran M - Cut - HM01
  (32, 3200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Nidoran M - Strength - HM04
  (32, 3200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Nidoran M - Rock Smash - HM06
  (32, 3200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Nidoran M - Amnesia - Egg Move
  (32, 3200, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nidoran M - Beat Up - Egg Move
  (32, 3200, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nidoran M - Confusion - Egg Move
  (32, 3200, 93, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nidoran M - Counter - Egg Move
  (32, 3200, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nidoran M - Disable - Egg Move
  (32, 3200, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nidoran M - Supersonic - Egg Move
  (32, 3200, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidoran M - Take Down - Egg Move
  (32, 3200, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Peck - Level 1
  (33, 3300, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Focus Energy - Level 8
  (33, 3300, 116, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nidorino - Double Kick - Level 12
  (33, 3300, 24, 5, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Nidorino - Poison Sting - Level 18
  (33, 3300, 40, 5, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Nidorino - Horn Attack - Level 22
  (33, 3300, 30, 5, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorino - Helping Hand - Level 26
  (33, 3300, 270, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Nidorino - Fury Attack - Level 34
  (33, 3300, 31, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Nidorino - Flatter - Level 43
  (33, 3300, 260, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorino - Horn Drill - Level 53
  (33, 3300, 32, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Nidorino - Water Pulse - TM03
  (33, 3300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Nidorino - Hidden Power - TM10
  (33, 3300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Nidorino - Sunny Day - TM11
  (33, 3300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Nidorino - Ice Beam - TM13
  (33, 3300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Nidorino - Protect - TM17
  (33, 3300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Nidorino - Rain Dance - TM18
  (33, 3300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Nidorino - Frustration - TM21
  (33, 3300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Nidorino - Iron Tail - TM23
  (33, 3300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Nidorino - Thunderbolt - TM24
  (33, 3300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Nidorino - Return - TM27
  (33, 3300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidorino - Dig - TM28
  (33, 3300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Nidorino - Shock Wave - TM34
  (33, 3300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Nidorino - Sludge Bomb - TM36
  (33, 3300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 27),
  -- Nidorino - Facade - TM42
  (33, 3300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Nidorino - Secret Power - TM43
  (33, 3300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Nidorino - Attract - TM45
  (33, 3300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Nidorino - Thief - TM46
  (33, 3300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Nidorino - Cut - HM01
  (33, 3300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Nidorino - Strength - HM04
  (33, 3300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Nidorino - Rock Smash - HM06
  (33, 3300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Nidoking - Peck - Level 1
  (34, 3400, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Focus Energy - Level 1
  (34, 3400, 116, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Double Kick - Level 1
  (34, 3400, 24, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Thrash - Level 23
  (34, 3400, 37, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Nidoking - Focus Punch - TM01
  (34, 3400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 6),
  -- Nidoking - Water Pulse - TM03
  (34, 3400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 7),
  -- Nidoking - Roar - TM05
  (34, 3400, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 8),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Nidoking - Hidden Power - TM10
  (34, 3400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 10),
  -- Nidoking - Sunny Day - TM11
  (34, 3400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 11),
  -- Nidoking - Taunt - TM12
  (34, 3400, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 12),
  -- Nidoking - Ice Beam - TM13
  (34, 3400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Nidoking - Protect - TM17
  (34, 3400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Nidoking - Rain Dance - TM18
  (34, 3400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Nidoking - Frustration - TM21
  (34, 3400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Nidoking - Iron Tail - TM23
  (34, 3400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Nidoking - Thunderbolt - TM24
  (34, 3400, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 20),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 21),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Nidoking - Return - TM27
  (34, 3400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Nidoking - Dig - TM28
  (34, 3400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Nidoking - Shadow Ball - TM30
  (34, 3400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Nidoking - Brick Break - TM31
  (34, 3400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Nidoking - Shock Wave - TM34
  (34, 3400, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Nidoking - Flamethrower - TM35
  (34, 3400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Nidoking - Sludge Bomb - TM36
  (34, 3400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 30),
  -- Nidoking - Sandstorm - TM37
  (34, 3400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 31),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 32),
  -- Nidoking - Rock Tomb - TM39
  (34, 3400, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 33),
  -- Nidoking - Torment - TM41
  (34, 3400, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 34),
  -- Nidoking - Facade - TM42
  (34, 3400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 35),
  -- Nidoking - Secret Power - TM43
  (34, 3400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 36),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 37),
  -- Nidoking - Attract - TM45
  (34, 3400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 38),
  -- Nidoking - Thief - TM46
  (34, 3400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 39),
  -- Nidoking - Cut - HM01
  (34, 3400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 40),
  -- Nidoking - Surf - HM03
  (34, 3400, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 41),
  -- Nidoking - Strength - HM04
  (34, 3400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 42),
  -- Nidoking - Rock Smash - HM06
  (34, 3400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 43),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Encore - Level 5
  (35, 3500, 227, 5, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clefairy - Sing - Level 9
  (35, 3500, 47, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Clefairy - Double Slap - Level 13
  (35, 3500, 3, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Clefairy - Follow Me - Level 17
  (35, 3500, 266, 5, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Clefairy - Minimize - Level 21
  (35, 3500, 107, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Clefairy - Defense Curl - Level 25
  (35, 3500, 111, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Clefairy - Metronome - Level 29
  (35, 3500, 118, 5, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Clefairy - Cosmic Power - Level 33
  (35, 3500, 322, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Clefairy - Moonlight - Level 37
  (35, 3500, 236, 5, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Clefairy - Light Screen - Level 41
  (35, 3500, 113, 5, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Clefairy - Meteor Mash - Level 45
  (35, 3500, 309, 5, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Clefairy - Focus Punch - TM01
  (35, 3500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Clefairy - Water Pulse - TM03
  (35, 3500, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 15),
  -- Clefairy - Calm Mind - TM04
  (35, 3500, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 16),
  -- Clefairy - Toxic - TM06
  (35, 3500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 17),
  -- Clefairy - Hidden Power - TM10
  (35, 3500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Clefairy - Sunny Day - TM11
  (35, 3500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Clefairy - Ice Beam - TM13
  (35, 3500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Clefairy - Light Screen - TM16
  (35, 3500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 22),
  -- Clefairy - Protect - TM17
  (35, 3500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 23),
  -- Clefairy - Rain Dance - TM18
  (35, 3500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 24),
  -- Clefairy - Safeguard - TM20
  (35, 3500, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 25),
  -- Clefairy - Frustration - TM21
  (35, 3500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 26),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 27),
  -- Clefairy - Iron Tail - TM23
  (35, 3500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 28),
  -- Clefairy - Thunderbolt - TM24
  (35, 3500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 29),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 30),
  -- Clefairy - Return - TM27
  (35, 3500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 31),
  -- Clefairy - Dig - TM28
  (35, 3500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 32),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 33),
  -- Clefairy - Shadow Ball - TM30
  (35, 3500, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 34),
  -- Clefairy - Brick Break - TM31
  (35, 3500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 35),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 36),
  -- Clefairy - Reflect - TM33
  (35, 3500, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 37),
  -- Clefairy - Shock Wave - TM34
  (35, 3500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 38),
  -- Clefairy - Flamethrower - TM35
  (35, 3500, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 39),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 40),
  -- Clefairy - Facade - TM42
  (35, 3500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 41),
  -- Clefairy - Secret Power - TM43
  (35, 3500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 42),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 43),
  -- Clefairy - Attract - TM45
  (35, 3500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 44),
  -- Clefairy - Snatch - TM49
  (35, 3500, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 45),
  -- Clefairy - Strength - HM04
  (35, 3500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 46),
  -- Clefairy - Flash - HM05
  (35, 3500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 47),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Double Slap - Level 1
  (36, 3600, 3, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Minimize - Level 1
  (36, 3600, 107, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Focus Punch - TM01
  (36, 3600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 5),
  -- Clefable - Water Pulse - TM03
  (36, 3600, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 6),
  -- Clefable - Calm Mind - TM04
  (36, 3600, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 7),
  -- Clefable - Toxic - TM06
  (36, 3600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 8),
  -- Clefable - Hidden Power - TM10
  (36, 3600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 9),
  -- Clefable - Sunny Day - TM11
  (36, 3600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 10),
  -- Clefable - Ice Beam - TM13
  (36, 3600, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 11),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 12),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 13),
  -- Clefable - Light Screen - TM16
  (36, 3600, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 14),
  -- Clefable - Protect - TM17
  (36, 3600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Clefable - Rain Dance - TM18
  (36, 3600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Clefable - Safeguard - TM20
  (36, 3600, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 17),
  -- Clefable - Frustration - TM21
  (36, 3600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 19),
  -- Clefable - Iron Tail - TM23
  (36, 3600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Clefable - Thunderbolt - TM24
  (36, 3600, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Clefable - Return - TM27
  (36, 3600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Clefable - Dig - TM28
  (36, 3600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 25),
  -- Clefable - Shadow Ball - TM30
  (36, 3600, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 26),
  -- Clefable - Brick Break - TM31
  (36, 3600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Clefable - Reflect - TM33
  (36, 3600, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 29),
  -- Clefable - Shock Wave - TM34
  (36, 3600, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 30),
  -- Clefable - Flamethrower - TM35
  (36, 3600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 31),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 32),
  -- Clefable - Facade - TM42
  (36, 3600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Clefable - Secret Power - TM43
  (36, 3600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Clefable - Attract - TM45
  (36, 3600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Clefable - Snatch - TM49
  (36, 3600, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 37),
  -- Clefable - Strength - HM04
  (36, 3600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Clefable - Flash - HM05
  (36, 3600, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 39),
  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 5
  (37, 3700, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Vulpix - Roar - Level 9
  (37, 3700, 46, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 13
  (37, 3700, 98, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Vulpix - Will-O-Wisp - Level 17
  (37, 3700, 261, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Vulpix - Confuse Ray - Level 21
  (37, 3700, 109, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Vulpix - Imprison - Level 25
  (37, 3700, 286, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Vulpix - Flamethrower - Level 29
  (37, 3700, 53, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Vulpix - Safeguard - Level 33
  (37, 3700, 219, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Vulpix - Grudge - Level 37
  (37, 3700, 288, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vulpix - Fire Spin - Level 41
  (37, 3700, 83, 5, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Vulpix - Roar - TM05
  (37, 3700, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Vulpix - Toxic - TM06
  (37, 3700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Vulpix - Hidden Power - TM10
  (37, 3700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Vulpix - Sunny Day - TM11
  (37, 3700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Vulpix - Protect - TM17
  (37, 3700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Vulpix - Safeguard - TM20
  (37, 3700, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 17),
  -- Vulpix - Frustration - TM21
  (37, 3700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Vulpix - Iron Tail - TM23
  (37, 3700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Vulpix - Return - TM27
  (37, 3700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Vulpix - Dig - TM28
  (37, 3700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Vulpix - Flamethrower - TM35
  (37, 3700, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 24),
  -- Vulpix - Facade - TM42
  (37, 3700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Vulpix - Secret Power - TM43
  (37, 3700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Vulpix - Attract - TM45
  (37, 3700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Vulpix - Overheat - TM50
  (37, 3700, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 29),
  -- Vulpix - Disable - Egg Move
  (37, 3700, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Vulpix - Feint Attack - Egg Move
  (37, 3700, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Vulpix - Flail - Egg Move
  (37, 3700, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Vulpix - Heat Wave - Egg Move
  (37, 3700, 257, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Vulpix - Howl - Egg Move
  (37, 3700, 336, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Vulpix - Hypnosis - Egg Move
  (37, 3700, 95, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Vulpix - Psych Up - Egg Move
  (37, 3700, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Vulpix - Spite - Egg Move
  (37, 3700, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Confuse Ray - Level 1
  (38, 3800, 109, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Safeguard - Level 1
  (38, 3800, 219, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Fire Spin - Level 45
  (38, 3800, 83, 5, NULL, 1, 45, NULL, NULL, NULL, 5),
  -- Ninetales - Roar - TM05
  (38, 3800, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 6),
  -- Ninetales - Toxic - TM06
  (38, 3800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 7),
  -- Ninetales - Hidden Power - TM10
  (38, 3800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 8),
  -- Ninetales - Sunny Day - TM11
  (38, 3800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 9),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 10),
  -- Ninetales - Protect - TM17
  (38, 3800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 11),
  -- Ninetales - Safeguard - TM20
  (38, 3800, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 12),
  -- Ninetales - Frustration - TM21
  (38, 3800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 13),
  -- Ninetales - Iron Tail - TM23
  (38, 3800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 14),
  -- Ninetales - Return - TM27
  (38, 3800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 15),
  -- Ninetales - Dig - TM28
  (38, 3800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 16),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Ninetales - Flamethrower - TM35
  (38, 3800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 18),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 19),
  -- Ninetales - Facade - TM42
  (38, 3800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Ninetales - Secret Power - TM43
  (38, 3800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Ninetales - Attract - TM45
  (38, 3800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Ninetales - Overheat - TM50
  (38, 3800, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 24),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Defense Curl - Level 4
  (39, 3900, 111, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Jigglypuff - Pound - Level 9
  (39, 3900, 1, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Jigglypuff - Disable - Level 14
  (39, 3900, 50, 5, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Jigglypuff - Rollout - Level 19
  (39, 3900, 205, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Jigglypuff - Double Slap - Level 24
  (39, 3900, 3, 5, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Jigglypuff - Rest - Level 29
  (39, 3900, 156, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Jigglypuff - Body Slam - Level 34
  (39, 3900, 34, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Jigglypuff - Mimic - Level 39
  (39, 3900, 102, 5, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Jigglypuff - Hyper Voice - Level 44
  (39, 3900, 304, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Jigglypuff - Double-Edge - Level 49
  (39, 3900, 38, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Jigglypuff - Focus Punch - TM01
  (39, 3900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Jigglypuff - Water Pulse - TM03
  (39, 3900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Jigglypuff - Toxic - TM06
  (39, 3900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Jigglypuff - Hidden Power - TM10
  (39, 3900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Jigglypuff - Sunny Day - TM11
  (39, 3900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Jigglypuff - Ice Beam - TM13
  (39, 3900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Jigglypuff - Light Screen - TM16
  (39, 3900, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Jigglypuff - Protect - TM17
  (39, 3900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Jigglypuff - Rain Dance - TM18
  (39, 3900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Jigglypuff - Safeguard - TM20
  (39, 3900, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 22),
  -- Jigglypuff - Frustration - TM21
  (39, 3900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 24),
  -- Jigglypuff - Thunderbolt - TM24
  (39, 3900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 25),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 26),
  -- Jigglypuff - Return - TM27
  (39, 3900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 27),
  -- Jigglypuff - Dig - TM28
  (39, 3900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 28),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 29),
  -- Jigglypuff - Shadow Ball - TM30
  (39, 3900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 30),
  -- Jigglypuff - Brick Break - TM31
  (39, 3900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 31),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 32),
  -- Jigglypuff - Reflect - TM33
  (39, 3900, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 33),
  -- Jigglypuff - Shock Wave - TM34
  (39, 3900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 34),
  -- Jigglypuff - Flamethrower - TM35
  (39, 3900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 35),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 36),
  -- Jigglypuff - Facade - TM42
  (39, 3900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 37),
  -- Jigglypuff - Secret Power - TM43
  (39, 3900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 38),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 39),
  -- Jigglypuff - Attract - TM45
  (39, 3900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 40),
  -- Jigglypuff - Snatch - TM49
  (39, 3900, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 41),
  -- Jigglypuff - Strength - HM04
  (39, 3900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 42),
  -- Jigglypuff - Flash - HM05
  (39, 3900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 43),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Double Slap - Level 1
  (40, 4000, 3, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Focus Punch - TM01
  (40, 4000, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 5),
  -- Wigglytuff - Water Pulse - TM03
  (40, 4000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 6),
  -- Wigglytuff - Toxic - TM06
  (40, 4000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 7),
  -- Wigglytuff - Hidden Power - TM10
  (40, 4000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 8),
  -- Wigglytuff - Sunny Day - TM11
  (40, 4000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 9),
  -- Wigglytuff - Ice Beam - TM13
  (40, 4000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 10),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 11),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 12),
  -- Wigglytuff - Light Screen - TM16
  (40, 4000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 13),
  -- Wigglytuff - Protect - TM17
  (40, 4000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Wigglytuff - Rain Dance - TM18
  (40, 4000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 15),
  -- Wigglytuff - Safeguard - TM20
  (40, 4000, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 16),
  -- Wigglytuff - Frustration - TM21
  (40, 4000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 18),
  -- Wigglytuff - Thunderbolt - TM24
  (40, 4000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Wigglytuff - Return - TM27
  (40, 4000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Wigglytuff - Dig - TM28
  (40, 4000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 23),
  -- Wigglytuff - Shadow Ball - TM30
  (40, 4000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 24),
  -- Wigglytuff - Brick Break - TM31
  (40, 4000, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Wigglytuff - Reflect - TM33
  (40, 4000, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Wigglytuff - Shock Wave - TM34
  (40, 4000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Wigglytuff - Flamethrower - TM35
  (40, 4000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 30),
  -- Wigglytuff - Facade - TM42
  (40, 4000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Wigglytuff - Secret Power - TM43
  (40, 4000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Wigglytuff - Attract - TM45
  (40, 4000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Wigglytuff - Snatch - TM49
  (40, 4000, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 35),
  -- Wigglytuff - Strength - HM04
  (40, 4000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Wigglytuff - Flash - HM05
  (40, 4000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 37),
  -- Zubat - Leech Life - Level 1
  (41, 4100, 141, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 6
  (41, 4100, 48, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Zubat - Astonish - Level 11
  (41, 4100, 310, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Zubat - Bite - Level 16
  (41, 4100, 44, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 21
  (41, 4100, 17, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Zubat - Confuse Ray - Level 26
  (41, 4100, 109, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Zubat - Air Cutter - Level 31
  (41, 4100, 314, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Zubat - Mean Look - Level 36
  (41, 4100, 212, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Zubat - Poison Fang - Level 41
  (41, 4100, 305, 5, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Zubat - Haze - Level 46
  (41, 4100, 114, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Zubat - Toxic - TM06
  (41, 4100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Zubat - Hidden Power - TM10
  (41, 4100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Zubat - Sunny Day - TM11
  (41, 4100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Zubat - Taunt - TM12
  (41, 4100, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Zubat - Protect - TM17
  (41, 4100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Zubat - Rain Dance - TM18
  (41, 4100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Zubat - Giga Drain - TM19
  (41, 4100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Zubat - Frustration - TM21
  (41, 4100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Zubat - Return - TM27
  (41, 4100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Zubat - Shadow Ball - TM30
  (41, 4100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 20),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Zubat - Sludge Bomb - TM36
  (41, 4100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 22),
  -- Zubat - Aerial Ace - TM40
  (41, 4100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 23),
  -- Zubat - Torment - TM41
  (41, 4100, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 24),
  -- Zubat - Facade - TM42
  (41, 4100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Zubat - Secret Power - TM43
  (41, 4100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Zubat - Attract - TM45
  (41, 4100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Zubat - Thief - TM46
  (41, 4100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Zubat - Steel Wing - TM47
  (41, 4100, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 30),
  -- Zubat - Snatch - TM49
  (41, 4100, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 31),
  -- Zubat - Curse - Egg Move
  (41, 4100, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Zubat - Feint Attack - Egg Move
  (41, 4100, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Zubat - Gust - Egg Move
  (41, 4100, 16, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Zubat - Pursuit - Egg Move
  (41, 4100, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Zubat - Quick Attack - Egg Move
  (41, 4100, 98, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Zubat - Whirlwind - Egg Move
  (41, 4100, 18, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Leech Life - Level 1
  (42, 4200, 141, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Astonish - Level 1
  (42, 4200, 310, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golbat - Supersonic - Level 6
  (42, 4200, 48, 5, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Golbat - Astonish - Level 11
  (42, 4200, 310, 5, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Golbat - Bite - Level 16
  (42, 4200, 44, 5, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golbat - Wing Attack - Level 21
  (42, 4200, 17, 5, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golbat - Confuse Ray - Level 28
  (42, 4200, 109, 5, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Golbat - Air Cutter - Level 35
  (42, 4200, 314, 5, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Golbat - Mean Look - Level 42
  (42, 4200, 212, 5, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Golbat - Poison Fang - Level 49
  (42, 4200, 305, 5, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Golbat - Haze - Level 56
  (42, 4200, 114, 5, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Golbat - Toxic - TM06
  (42, 4200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Golbat - Hidden Power - TM10
  (42, 4200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Golbat - Sunny Day - TM11
  (42, 4200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Golbat - Taunt - TM12
  (42, 4200, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 17),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Golbat - Protect - TM17
  (42, 4200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Golbat - Rain Dance - TM18
  (42, 4200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Golbat - Giga Drain - TM19
  (42, 4200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 21),
  -- Golbat - Frustration - TM21
  (42, 4200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Golbat - Return - TM27
  (42, 4200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Golbat - Shadow Ball - TM30
  (42, 4200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 24),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Golbat - Sludge Bomb - TM36
  (42, 4200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 26),
  -- Golbat - Aerial Ace - TM40
  (42, 4200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 27),
  -- Golbat - Torment - TM41
  (42, 4200, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 28),
  -- Golbat - Facade - TM42
  (42, 4200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Golbat - Secret Power - TM43
  (42, 4200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Golbat - Attract - TM45
  (42, 4200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Golbat - Thief - TM46
  (42, 4200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Golbat - Steel Wing - TM47
  (42, 4200, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 34),
  -- Golbat - Snatch - TM49
  (42, 4200, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 35),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Sweet Scent - Level 7
  (43, 4300, 230, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Oddish - Poison Powder - Level 14
  (43, 4300, 77, 5, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Oddish - Stun Spore - Level 16
  (43, 4300, 78, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Oddish - Sleep Powder - Level 18
  (43, 4300, 79, 5, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Oddish - Acid - Level 23
  (43, 4300, 51, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Oddish - Moonlight - Level 32
  (43, 4300, 236, 5, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Oddish - Petal Dance - Level 39
  (43, 4300, 80, 5, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Oddish - Bullet Seed - TM09
  (43, 4300, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 10),
  -- Oddish - Hidden Power - TM10
  (43, 4300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Oddish - Sunny Day - TM11
  (43, 4300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Oddish - Protect - TM17
  (43, 4300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Oddish - Giga Drain - TM19
  (43, 4300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 14),
  -- Oddish - Frustration - TM21
  (43, 4300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 16),
  -- Oddish - Return - TM27
  (43, 4300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 18),
  -- Oddish - Sludge Bomb - TM36
  (43, 4300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 19),
  -- Oddish - Facade - TM42
  (43, 4300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Oddish - Secret Power - TM43
  (43, 4300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Oddish - Attract - TM45
  (43, 4300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Oddish - Cut - HM01
  (43, 4300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 24),
  -- Oddish - Flash - HM05
  (43, 4300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 25),
  -- Oddish - Charm - Egg Move
  (43, 4300, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Oddish - Flail - Egg Move
  (43, 4300, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Oddish - Ingrain - Egg Move
  (43, 4300, 275, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Oddish - Razor Leaf - Egg Move
  (43, 4300, 75, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Oddish - Swords Dance - Egg Move
  (43, 4300, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Oddish - Synthesis - Egg Move
  (43, 4300, 235, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Poison Powder - Level 1
  (44, 4400, 77, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 7
  (44, 4400, 230, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gloom - Poison Powder - Level 14
  (44, 4400, 77, 5, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Gloom - Stun Spore - Level 16
  (44, 4400, 78, 5, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gloom - Sleep Powder - Level 18
  (44, 4400, 79, 5, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Gloom - Acid - Level 24
  (44, 4400, 51, 5, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gloom - Moonlight - Level 35
  (44, 4400, 236, 5, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Gloom - Petal Dance - Level 44
  (44, 4400, 80, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Gloom - Bullet Seed - TM09
  (44, 4400, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 12),
  -- Gloom - Hidden Power - TM10
  (44, 4400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Gloom - Sunny Day - TM11
  (44, 4400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Gloom - Protect - TM17
  (44, 4400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Gloom - Giga Drain - TM19
  (44, 4400, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 16),
  -- Gloom - Frustration - TM21
  (44, 4400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 18),
  -- Gloom - Return - TM27
  (44, 4400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Gloom - Sludge Bomb - TM36
  (44, 4400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 21),
  -- Gloom - Facade - TM42
  (44, 4400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Gloom - Secret Power - TM43
  (44, 4400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Gloom - Attract - TM45
  (44, 4400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Gloom - Cut - HM01
  (44, 4400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 26),
  -- Gloom - Flash - HM05
  (44, 4400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 27),
  -- Vileplume - Aromatherapy - Level 1
  (45, 4500, 312, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Absorb - Level 1
  (45, 4500, 71, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Mega Drain - Level 1
  (45, 4500, 72, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Petal Dance - Level 44
  (45, 4500, 80, 5, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 6),
  -- Vileplume - Bullet Seed - TM09
  (45, 4500, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 7),
  -- Vileplume - Hidden Power - TM10
  (45, 4500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 8),
  -- Vileplume - Sunny Day - TM11
  (45, 4500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 9),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 10),
  -- Vileplume - Protect - TM17
  (45, 4500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 11),
  -- Vileplume - Giga Drain - TM19
  (45, 4500, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 12),
  -- Vileplume - Frustration - TM21
  (45, 4500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 13),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 14),
  -- Vileplume - Return - TM27
  (45, 4500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 15),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 16),
  -- Vileplume - Sludge Bomb - TM36
  (45, 4500, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 17),
  -- Vileplume - Facade - TM42
  (45, 4500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 18),
  -- Vileplume - Secret Power - TM43
  (45, 4500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 19),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 20),
  -- Vileplume - Attract - TM45
  (45, 4500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 21),
  -- Vileplume - Cut - HM01
  (45, 4500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 22),
  -- Vileplume - Flash - HM05
  (45, 4500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 23),
  -- Paras - Scratch - Level 1
  (46, 4600, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Stun Spore - Level 7
  (46, 4600, 78, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Paras - Poison Powder - Level 13
  (46, 4600, 77, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Paras - Leech Life - Level 19
  (46, 4600, 141, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Paras - Spore - Level 25
  (46, 4600, 147, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Paras - Slash - Level 31
  (46, 4600, 163, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Paras - Growth - Level 37
  (46, 4600, 74, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Paras - Giga Drain - Level 43
  (46, 4600, 202, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Paras - Aromatherapy - Level 49
  (46, 4600, 312, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Paras - Toxic - TM06
  (46, 4600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Paras - Bullet Seed - TM09
  (46, 4600, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 11),
  -- Paras - Hidden Power - TM10
  (46, 4600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Paras - Sunny Day - TM11
  (46, 4600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Paras - Protect - TM17
  (46, 4600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Paras - Giga Drain - TM19
  (46, 4600, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 15),
  -- Paras - Frustration - TM21
  (46, 4600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 17),
  -- Paras - Return - TM27
  (46, 4600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Paras - Dig - TM28
  (46, 4600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 19),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Paras - Sludge Bomb - TM36
  (46, 4600, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 21),
  -- Paras - Aerial Ace - TM40
  (46, 4600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 22),
  -- Paras - Facade - TM42
  (46, 4600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Paras - Secret Power - TM43
  (46, 4600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Paras - Rest - TM44
  (46, 4600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Paras - Attract - TM45
  (46, 4600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Paras - Thief - TM46
  (46, 4600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Paras - Cut - HM01
  (46, 4600, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 28),
  -- Paras - Flash - HM05
  (46, 4600, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 29),
  -- Paras - Rock Smash - HM06
  (46, 4600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 30),
  -- Paras - Counter - Egg Move
  (46, 4600, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Paras - False Swipe - Egg Move
  (46, 4600, 206, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Paras - Flail - Egg Move
  (46, 4600, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Paras - Light Screen - Egg Move
  (46, 4600, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Paras - Psybeam - Egg Move
  (46, 4600, 60, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Paras - Pursuit - Egg Move
  (46, 4600, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Paras - Screech - Egg Move
  (46, 4600, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Paras - Sweet Scent - Egg Move
  (46, 4600, 230, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Poison Powder - Level 1
  (47, 4700, 77, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Stun Spore - Level 7
  (47, 4700, 78, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Parasect - Poison Powder - Level 13
  (47, 4700, 77, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Parasect - Leech Life - Level 19
  (47, 4700, 141, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Parasect - Spore - Level 27
  (47, 4700, 147, 5, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Parasect - Slash - Level 35
  (47, 4700, 163, 5, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Parasect - Growth - Level 43
  (47, 4700, 74, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Parasect - Giga Drain - Level 51
  (47, 4700, 202, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Parasect - Aromatherapy - Level 59
  (47, 4700, 312, 5, NULL, 1, 59, NULL, NULL, NULL, 11),
  -- Parasect - Toxic - TM06
  (47, 4700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Parasect - Bullet Seed - TM09
  (47, 4700, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 13),
  -- Parasect - Hidden Power - TM10
  (47, 4700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Parasect - Sunny Day - TM11
  (47, 4700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Parasect - Protect - TM17
  (47, 4700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Parasect - Giga Drain - TM19
  (47, 4700, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 18),
  -- Parasect - Frustration - TM21
  (47, 4700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Parasect - Return - TM27
  (47, 4700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Parasect - Dig - TM28
  (47, 4700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Parasect - Sludge Bomb - TM36
  (47, 4700, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Parasect - Aerial Ace - TM40
  (47, 4700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 25),
  -- Parasect - Facade - TM42
  (47, 4700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Parasect - Secret Power - TM43
  (47, 4700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Parasect - Attract - TM45
  (47, 4700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Parasect - Thief - TM46
  (47, 4700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Parasect - Cut - HM01
  (47, 4700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Parasect - Flash - HM05
  (47, 4700, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Parasect - Rock Smash - HM06
  (47, 4700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Foresight - Level 1
  (48, 4800, 193, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venonat - Supersonic - Level 9
  (48, 4800, 48, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Venonat - Confusion - Level 17
  (48, 4800, 93, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Venonat - Poison Powder - Level 20
  (48, 4800, 77, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Venonat - Leech Life - Level 25
  (48, 4800, 141, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Venonat - Stun Spore - Level 28
  (48, 4800, 78, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Venonat - Psybeam - Level 33
  (48, 4800, 60, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Venonat - Sleep Powder - Level 36
  (48, 4800, 79, 5, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Venonat - Psychic - Level 41
  (48, 4800, 94, 5, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Venonat - Toxic - TM06
  (48, 4800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Venonat - Hidden Power - TM10
  (48, 4800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Venonat - Sunny Day - TM11
  (48, 4800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Venonat - Protect - TM17
  (48, 4800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Venonat - Giga Drain - TM19
  (48, 4800, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 16),
  -- Venonat - Frustration - TM21
  (48, 4800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 18),
  -- Venonat - Return - TM27
  (48, 4800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 20),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Venonat - Sludge Bomb - TM36
  (48, 4800, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 22),
  -- Venonat - Facade - TM42
  (48, 4800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Venonat - Secret Power - TM43
  (48, 4800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Venonat - Attract - TM45
  (48, 4800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Venonat - Thief - TM46
  (48, 4800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Venonat - Skill Swap - TM48
  (48, 4800, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 28),
  -- Venonat - Flash - HM05
  (48, 4800, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 29),
  -- Venonat - Baton Pass - Egg Move
  (48, 4800, 226, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Venonat - Giga Drain - Egg Move
  (48, 4800, 202, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Venonat - Screech - Egg Move
  (48, 4800, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Venonat - Signal Beam - Egg Move
  (48, 4800, 324, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Venomoth - Silver Wind - Level 1
  (49, 4900, 318, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Foresight - Level 1
  (49, 4900, 193, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venomoth - Supersonic - Level 9
  (49, 4900, 48, 5, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Venomoth - Confusion - Level 17
  (49, 4900, 93, 5, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Venomoth - Poison Powder - Level 20
  (49, 4900, 77, 5, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Venomoth - Leech Life - Level 25
  (49, 4900, 141, 5, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venomoth - Stun Spore - Level 28
  (49, 4900, 78, 5, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Venomoth - Gust - Level 31
  (49, 4900, 16, 5, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Venomoth - Psybeam - Level 36
  (49, 4900, 60, 5, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Venomoth - Sleep Powder - Level 42
  (49, 4900, 79, 5, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Venomoth - Psychic - Level 52
  (49, 4900, 94, 5, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Venomoth - Toxic - TM06
  (49, 4900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Venomoth - Hidden Power - TM10
  (49, 4900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Venomoth - Sunny Day - TM11
  (49, 4900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Venomoth - Protect - TM17
  (49, 4900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Venomoth - Giga Drain - TM19
  (49, 4900, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 20),
  -- Venomoth - Frustration - TM21
  (49, 4900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 22),
  -- Venomoth - Return - TM27
  (49, 4900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 24),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Venomoth - Sludge Bomb - TM36
  (49, 4900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 26),
  -- Venomoth - Aerial Ace - TM40
  (49, 4900, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 27),
  -- Venomoth - Facade - TM42
  (49, 4900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Venomoth - Secret Power - TM43
  (49, 4900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Venomoth - Attract - TM45
  (49, 4900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Venomoth - Thief - TM46
  (49, 4900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Venomoth - Skill Swap - TM48
  (49, 4900, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 33),
  -- Venomoth - Flash - HM05
  (49, 4900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 34),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 1
  (50, 5000, 28, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 5
  (50, 5000, 45, 5, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Diglett - Magnitude - Level 9
  (50, 5000, 222, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Diglett - Dig - Level 17
  (50, 5000, 91, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Diglett - Mud-Slap - Level 25
  (50, 5000, 189, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Diglett - Slash - Level 33
  (50, 5000, 163, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Diglett - Earthquake - Level 41
  (50, 5000, 89, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Diglett - Fissure - Level 49
  (50, 5000, 90, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Diglett - Toxic - TM06
  (50, 5000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Diglett - Hidden Power - TM10
  (50, 5000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Diglett - Sunny Day - TM11
  (50, 5000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Diglett - Protect - TM17
  (50, 5000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Diglett - Frustration - TM21
  (50, 5000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 14),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 15),
  -- Diglett - Return - TM27
  (50, 5000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Diglett - Dig - TM28
  (50, 5000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 17),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 18),
  -- Diglett - Sludge Bomb - TM36
  (50, 5000, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 19),
  -- Diglett - Rock Tomb - TM39
  (50, 5000, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 20),
  -- Diglett - Aerial Ace - TM40
  (50, 5000, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 21),
  -- Diglett - Facade - TM42
  (50, 5000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Diglett - Secret Power - TM43
  (50, 5000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Diglett - Attract - TM45
  (50, 5000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Diglett - Thief - TM46
  (50, 5000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 26),
  -- Diglett - Cut - HM01
  (50, 5000, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 27),
  -- Diglett - Rock Smash - HM06
  (50, 5000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 28),
  -- Diglett - Ancient Power - Egg Move
  (50, 5000, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Diglett - Beat Up - Egg Move
  (50, 5000, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Diglett - Feint Attack - Egg Move
  (50, 5000, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Diglett - Pursuit - Egg Move
  (50, 5000, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Diglett - Rock Slide - Egg Move
  (50, 5000, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Diglett - Screech - Egg Move
  (50, 5000, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Diglett - Uproar - Egg Move
  (50, 5000, 253, 5, NULL, 5, NULL, NULL, NULL, NULL, 35);
