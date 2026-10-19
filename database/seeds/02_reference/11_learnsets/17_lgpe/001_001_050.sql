-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages, LGPE sections.
-- Cross-check: PokemonDB Let's Go learnset pages and Serebii LGPE Pokedex pages.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! learnsets for default forms, species 001-050.
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
  (1, 100, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 1
  (1, 100, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bulbasaur - Vine Whip - Level 5
  (1, 100, 22, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bulbasaur - Leech Seed - Level 9
  (1, 100, 73, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 14
  (1, 100, 77, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Bulbasaur - Sleep Powder - Level 14
  (1, 100, 79, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Bulbasaur - Take Down - Level 18
  (1, 100, 36, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Bulbasaur - Razor Leaf - Level 23
  (1, 100, 75, 17, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Bulbasaur - Growth - Level 27
  (1, 100, 74, 17, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Bulbasaur - Double-Edge - Level 32
  (1, 100, 38, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bulbasaur - Headbutt - TM01
  (1, 100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Bulbasaur - Rest - TM05
  (1, 100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Bulbasaur - Light Screen - TM06
  (1, 100, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 13),
  -- Bulbasaur - Protect - TM07
  (1, 100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Bulbasaur - Substitute - TM08
  (1, 100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Bulbasaur - Reflect - TM09
  (1, 100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Bulbasaur - Facade - TM12
  (1, 100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Bulbasaur - Toxic - TM27
  (1, 100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Bulbasaur - Outrage - TM39
  (1, 100, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 19),
  -- Bulbasaur - Solar Beam - TM45
  (1, 100, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 20),
  -- Bulbasaur - Sludge Bomb - TM52
  (1, 100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 21),
  -- Bulbasaur - Mega Drain - TM53
  (1, 100, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 22),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Vine Whip - Level 1
  (2, 200, 22, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ivysaur - Vine Whip - Level 5
  (2, 200, 22, 17, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Ivysaur - Leech Seed - Level 9
  (2, 200, 73, 17, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 14
  (2, 200, 77, 17, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 14
  (2, 200, 79, 17, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ivysaur - Take Down - Level 22
  (2, 200, 36, 17, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ivysaur - Razor Leaf - Level 31
  (2, 200, 75, 17, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Ivysaur - Growth - Level 39
  (2, 200, 74, 17, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Ivysaur - Double-Edge - Level 48
  (2, 200, 38, 17, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Ivysaur - Solar Beam - Level 56
  (2, 200, 76, 17, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Ivysaur - Headbutt - TM01
  (2, 200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Ivysaur - Rest - TM05
  (2, 200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Ivysaur - Light Screen - TM06
  (2, 200, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Ivysaur - Protect - TM07
  (2, 200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Ivysaur - Substitute - TM08
  (2, 200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Ivysaur - Reflect - TM09
  (2, 200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Ivysaur - Facade - TM12
  (2, 200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Ivysaur - Toxic - TM27
  (2, 200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Ivysaur - Outrage - TM39
  (2, 200, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 22),
  -- Ivysaur - Solar Beam - TM45
  (2, 200, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 23),
  -- Ivysaur - Sludge Bomb - TM52
  (2, 200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 24),
  -- Ivysaur - Mega Drain - TM53
  (2, 200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 25),
  -- Venusaur - Petal Dance - Level 1
  (3, 300, 80, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Amnesia - Level 1
  (3, 300, 133, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Power Whip - Level 1
  (3, 300, 438, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Venusaur - Petal Dance - Evolution
  (3, 300, 80, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Venusaur - Vine Whip - Level 5
  (3, 300, 22, 17, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Venusaur - Leech Seed - Level 9
  (3, 300, 73, 17, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Venusaur - Poison Powder - Level 14
  (3, 300, 77, 17, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Venusaur - Sleep Powder - Level 14
  (3, 300, 79, 17, NULL, 1, 14, NULL, NULL, NULL, 12),
  -- Venusaur - Take Down - Level 22
  (3, 300, 36, 17, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Venusaur - Razor Leaf - Level 31
  (3, 300, 75, 17, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Venusaur - Growth - Level 44
  (3, 300, 74, 17, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Venusaur - Double-Edge - Level 58
  (3, 300, 38, 17, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Venusaur - Solar Beam - Level 71
  (3, 300, 76, 17, NULL, 1, 71, NULL, NULL, NULL, 17),
  -- Venusaur - Headbutt - TM01
  (3, 300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 18),
  -- Venusaur - Rest - TM05
  (3, 300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Venusaur - Light Screen - TM06
  (3, 300, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 20),
  -- Venusaur - Protect - TM07
  (3, 300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 21),
  -- Venusaur - Substitute - TM08
  (3, 300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 22),
  -- Venusaur - Reflect - TM09
  (3, 300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 23),
  -- Venusaur - Facade - TM12
  (3, 300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Venusaur - Toxic - TM27
  (3, 300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Venusaur - Outrage - TM39
  (3, 300, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 26),
  -- Venusaur - Earthquake - TM41
  (3, 300, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 27),
  -- Venusaur - Solar Beam - TM45
  (3, 300, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 28),
  -- Venusaur - Hyper Beam - TM48
  (3, 300, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Venusaur - Sludge Bomb - TM52
  (3, 300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 30),
  -- Venusaur - Mega Drain - TM53
  (3, 300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 31),
  -- Charmander - Scratch - Level 1
  (4, 400, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 4
  (4, 400, 45, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Charmander - Smokescreen - Level 9
  (4, 400, 108, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Charmander - Ember - Level 13
  (4, 400, 52, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Charmander - Fury Swipes - Level 18
  (4, 400, 154, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Charmander - Dragon Rage - Level 22
  (4, 400, 82, 17, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Charmander - Fire Spin - Level 27
  (4, 400, 83, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Charmander - Slash - Level 31
  (4, 400, 163, 17, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Charmander - Flamethrower - Level 36
  (4, 400, 53, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Charmander - Headbutt - TM01
  (4, 400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Charmander - Rest - TM05
  (4, 400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Charmander - Protect - TM07
  (4, 400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 12),
  -- Charmander - Substitute - TM08
  (4, 400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 13),
  -- Charmander - Reflect - TM09
  (4, 400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 14),
  -- Charmander - Dig - TM10
  (4, 400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Charmander - Will-O-Wisp - TM11
  (4, 400, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 16),
  -- Charmander - Facade - TM12
  (4, 400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Charmander - Brick Break - TM13
  (4, 400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Charmander - Seismic Toss - TM15
  (4, 400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Charmander - Iron Tail - TM19
  (4, 400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Charmander - Rock Slide - TM22
  (4, 400, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Charmander - Thunder Punch - TM23
  (4, 400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Charmander - Toxic - TM27
  (4, 400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Charmander - Fire Punch - TM31
  (4, 400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 24),
  -- Charmander - Dragon Pulse - TM34
  (4, 400, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 25),
  -- Charmander - Flamethrower - TM37
  (4, 400, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 26),
  -- Charmander - Outrage - TM39
  (4, 400, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 27),
  -- Charmander - Fire Blast - TM46
  (4, 400, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 28),
  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Smokescreen - Level 1
  (5, 500, 108, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charmeleon - Growl - Level 4
  (5, 500, 45, 17, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Charmeleon - Smokescreen - Level 9
  (5, 500, 108, 17, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Charmeleon - Ember - Level 13
  (5, 500, 52, 17, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Charmeleon - Fury Swipes - Level 20
  (5, 500, 154, 17, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Charmeleon - Dragon Rage - Level 26
  (5, 500, 82, 17, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Charmeleon - Fire Spin - Level 33
  (5, 500, 83, 17, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Charmeleon - Slash - Level 39
  (5, 500, 163, 17, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Charmeleon - Flamethrower - Level 46
  (5, 500, 53, 17, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Charmeleon - Headbutt - TM01
  (5, 500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Charmeleon - Rest - TM05
  (5, 500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Charmeleon - Protect - TM07
  (5, 500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Charmeleon - Substitute - TM08
  (5, 500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Charmeleon - Reflect - TM09
  (5, 500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Charmeleon - Dig - TM10
  (5, 500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Charmeleon - Will-O-Wisp - TM11
  (5, 500, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 19),
  -- Charmeleon - Facade - TM12
  (5, 500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Charmeleon - Brick Break - TM13
  (5, 500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Charmeleon - Seismic Toss - TM15
  (5, 500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Charmeleon - Iron Tail - TM19
  (5, 500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Charmeleon - Rock Slide - TM22
  (5, 500, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 24),
  -- Charmeleon - Thunder Punch - TM23
  (5, 500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 25),
  -- Charmeleon - Toxic - TM27
  (5, 500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Charmeleon - Fire Punch - TM31
  (5, 500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Charmeleon - Dragon Pulse - TM34
  (5, 500, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 28),
  -- Charmeleon - Flamethrower - TM37
  (5, 500, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 29),
  -- Charmeleon - Outrage - TM39
  (5, 500, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 30),
  -- Charmeleon - Fire Blast - TM46
  (5, 500, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 31),
  -- Charizard - Wing Attack - Level 1
  (6, 600, 17, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Counter - Level 1
  (6, 600, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Crunch - Level 1
  (6, 600, 242, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Heat Wave - Level 1
  (6, 600, 257, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Scratch - Level 1
  (6, 600, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Charizard - Smokescreen - Level 1
  (6, 600, 108, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Charizard - Wing Attack - Evolution
  (6, 600, 17, 17, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Charizard - Growl - Level 4
  (6, 600, 45, 17, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Charizard - Smokescreen - Level 9
  (6, 600, 108, 17, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Charizard - Ember - Level 13
  (6, 600, 52, 17, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Charizard - Fury Swipes - Level 20
  (6, 600, 154, 17, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Charizard - Dragon Rage - Level 26
  (6, 600, 82, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Charizard - Fire Spin - Level 33
  (6, 600, 83, 17, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Charizard - Slash - Level 43
  (6, 600, 163, 17, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Charizard - Flamethrower - Level 54
  (6, 600, 53, 17, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Charizard - Air Slash - Level 62
  (6, 600, 403, 17, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Charizard - Flare Blitz - Level 75
  (6, 600, 394, 17, NULL, 1, 75, NULL, NULL, NULL, 19),
  -- Charizard - Headbutt - TM01
  (6, 600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 20),
  -- Charizard - Rest - TM05
  (6, 600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 21),
  -- Charizard - Protect - TM07
  (6, 600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 22),
  -- Charizard - Substitute - TM08
  (6, 600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 23),
  -- Charizard - Reflect - TM09
  (6, 600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 24),
  -- Charizard - Dig - TM10
  (6, 600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 25),
  -- Charizard - Will-O-Wisp - TM11
  (6, 600, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 26),
  -- Charizard - Facade - TM12
  (6, 600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 27),
  -- Charizard - Brick Break - TM13
  (6, 600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 28),
  -- Charizard - Fly - TM14
  (6, 600, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 29),
  -- Charizard - Seismic Toss - TM15
  (6, 600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 30),
  -- Charizard - Dragon Tail - TM17
  (6, 600, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 31),
  -- Charizard - Iron Tail - TM19
  (6, 600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 32),
  -- Charizard - Rock Slide - TM22
  (6, 600, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 33),
  -- Charizard - Thunder Punch - TM23
  (6, 600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 34),
  -- Charizard - Toxic - TM27
  (6, 600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 35),
  -- Charizard - Fire Punch - TM31
  (6, 600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 36),
  -- Charizard - Dragon Pulse - TM34
  (6, 600, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 37),
  -- Charizard - Flamethrower - TM37
  (6, 600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 38),
  -- Charizard - Outrage - TM39
  (6, 600, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 39),
  -- Charizard - Earthquake - TM41
  (6, 600, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 40),
  -- Charizard - Solar Beam - TM45
  (6, 600, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 41),
  -- Charizard - Fire Blast - TM46
  (6, 600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 42),
  -- Charizard - Hyper Beam - TM48
  (6, 600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 43),
  -- Charizard - Roost - TM50
  (6, 600, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 44),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 5
  (7, 700, 39, 17, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Squirtle - Bubble - Level 9
  (7, 700, 145, 17, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 14
  (7, 700, 110, 17, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Squirtle - Water Gun - Level 18
  (7, 700, 55, 17, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 23
  (7, 700, 44, 17, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Squirtle - Bubble Beam - Level 27
  (7, 700, 61, 17, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 32
  (7, 700, 182, 17, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Squirtle - Headbutt - Level 36
  (7, 700, 29, 17, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Squirtle - Hydro Pump - Level 41
  (7, 700, 56, 17, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Squirtle - Skull Bash - Level 45
  (7, 700, 130, 17, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Squirtle - Headbutt - TM01
  (7, 700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Squirtle - Rest - TM05
  (7, 700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Squirtle - Protect - TM07
  (7, 700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Squirtle - Substitute - TM08
  (7, 700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Squirtle - Reflect - TM09
  (7, 700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Squirtle - Dig - TM10
  (7, 700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Squirtle - Facade - TM12
  (7, 700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Squirtle - Brick Break - TM13
  (7, 700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Squirtle - Seismic Toss - TM15
  (7, 700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Squirtle - Iron Tail - TM19
  (7, 700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Squirtle - Rock Slide - TM22
  (7, 700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 22),
  -- Squirtle - Waterfall - TM25
  (7, 700, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 23),
  -- Squirtle - Toxic - TM27
  (7, 700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Squirtle - Scald - TM29
  (7, 700, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 25),
  -- Squirtle - Dragon Pulse - TM34
  (7, 700, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 26),
  -- Squirtle - Ice Punch - TM35
  (7, 700, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 27),
  -- Squirtle - Outrage - TM39
  (7, 700, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 28),
  -- Squirtle - Surf - TM47
  (7, 700, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 29),
  -- Squirtle - Blizzard - TM51
  (7, 700, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 30),
  -- Squirtle - Ice Beam - TM55
  (7, 700, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 31),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Bubble - Level 1
  (8, 800, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Withdraw - Level 1
  (8, 800, 110, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wartortle - Tail Whip - Level 5
  (8, 800, 39, 17, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Wartortle - Bubble - Level 9
  (8, 800, 145, 17, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Wartortle - Withdraw - Level 14
  (8, 800, 110, 17, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Wartortle - Water Gun - Level 20
  (8, 800, 55, 17, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wartortle - Bite - Level 27
  (8, 800, 44, 17, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wartortle - Bubble Beam - Level 33
  (8, 800, 61, 17, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Wartortle - Protect - Level 40
  (8, 800, 182, 17, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Wartortle - Headbutt - Level 46
  (8, 800, 29, 17, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 53
  (8, 800, 56, 17, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Wartortle - Skull Bash - Level 59
  (8, 800, 130, 17, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Wartortle - Headbutt - TM01
  (8, 800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Wartortle - Rest - TM05
  (8, 800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Wartortle - Protect - TM07
  (8, 800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Wartortle - Substitute - TM08
  (8, 800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Wartortle - Reflect - TM09
  (8, 800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Wartortle - Dig - TM10
  (8, 800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Wartortle - Facade - TM12
  (8, 800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Wartortle - Brick Break - TM13
  (8, 800, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Wartortle - Seismic Toss - TM15
  (8, 800, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Wartortle - Iron Tail - TM19
  (8, 800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 24),
  -- Wartortle - Rock Slide - TM22
  (8, 800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 25),
  -- Wartortle - Waterfall - TM25
  (8, 800, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 26),
  -- Wartortle - Toxic - TM27
  (8, 800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Wartortle - Scald - TM29
  (8, 800, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 28),
  -- Wartortle - Dragon Pulse - TM34
  (8, 800, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 29),
  -- Wartortle - Ice Punch - TM35
  (8, 800, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 30),
  -- Wartortle - Outrage - TM39
  (8, 800, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 31),
  -- Wartortle - Surf - TM47
  (8, 800, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 32),
  -- Wartortle - Blizzard - TM51
  (8, 800, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 33),
  -- Wartortle - Ice Beam - TM55
  (8, 800, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 34),
  -- Blastoise - Flash Cannon - Level 1
  (9, 900, 430, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Fake Out - Level 1
  (9, 900, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Aqua Jet - Level 1
  (9, 900, 453, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blastoise - Bubble - Level 1
  (9, 900, 145, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blastoise - Tail Whip - Level 5
  (9, 900, 39, 17, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Blastoise - Bubble - Level 9
  (9, 900, 145, 17, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Blastoise - Withdraw - Level 14
  (9, 900, 110, 17, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Blastoise - Water Gun - Level 20
  (9, 900, 55, 17, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Blastoise - Bite - Level 27
  (9, 900, 44, 17, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Blastoise - Bubble Beam - Level 33
  (9, 900, 61, 17, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Blastoise - Protect - Level 44
  (9, 900, 182, 17, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Blastoise - Headbutt - Level 54
  (9, 900, 29, 17, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Blastoise - Hydro Pump - Level 65
  (9, 900, 56, 17, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Blastoise - Skull Bash - Level 75
  (9, 900, 130, 17, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Blastoise - Headbutt - TM01
  (9, 900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 18),
  -- Blastoise - Rest - TM05
  (9, 900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Blastoise - Protect - TM07
  (9, 900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Blastoise - Substitute - TM08
  (9, 900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Blastoise - Reflect - TM09
  (9, 900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Blastoise - Dig - TM10
  (9, 900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Blastoise - Facade - TM12
  (9, 900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Blastoise - Brick Break - TM13
  (9, 900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Blastoise - Seismic Toss - TM15
  (9, 900, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 26),
  -- Blastoise - Dragon Tail - TM17
  (9, 900, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 27),
  -- Blastoise - Iron Tail - TM19
  (9, 900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 28),
  -- Blastoise - Dark Pulse - TM20
  (9, 900, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 29),
  -- Blastoise - Rock Slide - TM22
  (9, 900, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 30),
  -- Blastoise - Waterfall - TM25
  (9, 900, 127, 17, NULL, 2, NULL, NULL, 17002025, NULL, 31),
  -- Blastoise - Toxic - TM27
  (9, 900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 32),
  -- Blastoise - Scald - TM29
  (9, 900, 503, 17, NULL, 2, NULL, NULL, 17002029, NULL, 33),
  -- Blastoise - Dragon Pulse - TM34
  (9, 900, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 34),
  -- Blastoise - Ice Punch - TM35
  (9, 900, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 35),
  -- Blastoise - Outrage - TM39
  (9, 900, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 36),
  -- Blastoise - Earthquake - TM41
  (9, 900, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 37),
  -- Blastoise - Surf - TM47
  (9, 900, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 38),
  -- Blastoise - Hyper Beam - TM48
  (9, 900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 39),
  -- Blastoise - Blizzard - TM51
  (9, 900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 40),
  -- Blastoise - Flash Cannon - TM54
  (9, 900, 430, 17, NULL, 2, NULL, NULL, 17002054, NULL, 41),
  -- Blastoise - Ice Beam - TM55
  (9, 900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 42),
  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metapod - Harden - Level 1
  (11, 1100, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Evolution
  (11, 1100, 106, 17, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Butterfree - Gust - Level 1
  (12, 1200, 16, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Butterfree - Gust - Evolution
  (12, 1200, 16, 17, NULL, 7, NULL, NULL, NULL, NULL, 3),
  -- Butterfree - Poison Powder - Level 13
  (12, 1200, 77, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Butterfree - Stun Spore - Level 13
  (12, 1200, 78, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Butterfree - Sleep Powder - Level 13
  (12, 1200, 79, 17, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Butterfree - Psybeam - Level 16
  (12, 1200, 60, 17, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Butterfree - Supersonic - Level 19
  (12, 1200, 48, 17, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Butterfree - Quiver Dance - Level 22
  (12, 1200, 483, 17, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Butterfree - Whirlwind - Level 25
  (12, 1200, 18, 17, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Butterfree - Air Slash - Level 28
  (12, 1200, 403, 17, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Butterfree - Bug Buzz - Level 31
  (12, 1200, 405, 17, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Butterfree - Headbutt - TM01
  (12, 1200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Butterfree - Teleport - TM04
  (12, 1200, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Butterfree - Rest - TM05
  (12, 1200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Butterfree - Protect - TM07
  (12, 1200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Butterfree - Substitute - TM08
  (12, 1200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Butterfree - Reflect - TM09
  (12, 1200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Butterfree - Facade - TM12
  (12, 1200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Butterfree - U-turn - TM18
  (12, 1200, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 20),
  -- Butterfree - Toxic - TM27
  (12, 1200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Butterfree - Psychic - TM40
  (12, 1200, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 22),
  -- Butterfree - Shadow Ball - TM43
  (12, 1200, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 23),
  -- Butterfree - Solar Beam - TM45
  (12, 1200, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 24),
  -- Butterfree - Hyper Beam - TM48
  (12, 1200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 25),
  -- Butterfree - Roost - TM50
  (12, 1200, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 26),
  -- Butterfree - Mega Drain - TM53
  (12, 1200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 27),
  -- Butterfree - Dream Eater - TM59
  (12, 1200, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 28),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - Harden - Evolution
  (14, 1400, 106, 17, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Beedrill - Twineedle - Level 1
  (15, 1500, 41, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Peck - Level 1
  (15, 1500, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beedrill - Twineedle - Evolution
  (15, 1500, 41, 17, NULL, 7, NULL, NULL, NULL, NULL, 3),
  -- Beedrill - Rage - Level 13
  (15, 1500, 99, 17, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Beedrill - Fury Attack - Level 16
  (15, 1500, 31, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Beedrill - Focus Energy - Level 19
  (15, 1500, 116, 17, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Beedrill - Poison Jab - Level 22
  (15, 1500, 398, 17, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Beedrill - Agility - Level 25
  (15, 1500, 97, 17, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Beedrill - Pin Missile - Level 28
  (15, 1500, 42, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Beedrill - Outrage - Level 31
  (15, 1500, 200, 17, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Beedrill - Headbutt - TM01
  (15, 1500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Beedrill - Rest - TM05
  (15, 1500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Beedrill - Protect - TM07
  (15, 1500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Beedrill - Substitute - TM08
  (15, 1500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Beedrill - Reflect - TM09
  (15, 1500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Beedrill - Facade - TM12
  (15, 1500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Beedrill - Brick Break - TM13
  (15, 1500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Beedrill - U-turn - TM18
  (15, 1500, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 18),
  -- Beedrill - X-Scissor - TM24
  (15, 1500, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 19),
  -- Beedrill - Poison Jab - TM26
  (15, 1500, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 20),
  -- Beedrill - Toxic - TM27
  (15, 1500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Beedrill - Outrage - TM39
  (15, 1500, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 22),
  -- Beedrill - Solar Beam - TM45
  (15, 1500, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 23),
  -- Beedrill - Hyper Beam - TM48
  (15, 1500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 24),
  -- Beedrill - Roost - TM50
  (15, 1500, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 25),
  -- Beedrill - Sludge Bomb - TM52
  (15, 1500, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 26),
  -- Beedrill - Mega Drain - TM53
  (15, 1500, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 27),
  -- Beedrill - Drill Run - TM58
  (15, 1500, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 28),
  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 3
  (16, 1600, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 5
  (16, 1600, 16, 17, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pidgey - Mirror Move - Level 9
  (16, 1600, 119, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pidgey - Quick Attack - Level 11
  (16, 1600, 98, 17, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pidgey - Wing Attack - Level 15
  (16, 1600, 17, 17, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pidgey - Roost - Level 17
  (16, 1600, 355, 17, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Pidgey - Whirlwind - Level 21
  (16, 1600, 18, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pidgey - Agility - Level 23
  (16, 1600, 97, 17, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pidgey - Air Slash - Level 27
  (16, 1600, 403, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pidgey - Razor Wind - Level 29
  (16, 1600, 13, 17, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Pidgey - Headbutt - TM01
  (16, 1600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Pidgey - Rest - TM05
  (16, 1600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Pidgey - Protect - TM07
  (16, 1600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Pidgey - Substitute - TM08
  (16, 1600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Pidgey - Reflect - TM09
  (16, 1600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Pidgey - Facade - TM12
  (16, 1600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Pidgey - Fly - TM14
  (16, 1600, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 18),
  -- Pidgey - U-turn - TM18
  (16, 1600, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 19),
  -- Pidgey - Toxic - TM27
  (16, 1600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Pidgey - Roost - TM50
  (16, 1600, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 21),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeotto - Quick Attack - Level 1
  (17, 1700, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeotto - Sand Attack - Level 3
  (17, 1700, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Pidgeotto - Gust - Level 5
  (17, 1700, 16, 17, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Pidgeotto - Quick Attack - Level 9
  (17, 1700, 98, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pidgeotto - Mirror Move - Level 11
  (17, 1700, 119, 17, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Pidgeotto - Wing Attack - Level 15
  (17, 1700, 17, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Pidgeotto - Roost - Level 17
  (17, 1700, 355, 17, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Pidgeotto - Whirlwind - Level 25
  (17, 1700, 18, 17, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Pidgeotto - Agility - Level 31
  (17, 1700, 97, 17, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pidgeotto - Air Slash - Level 39
  (17, 1700, 403, 17, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Pidgeotto - Razor Wind - Level 45
  (17, 1700, 13, 17, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pidgeotto - Headbutt - TM01
  (17, 1700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Pidgeotto - Rest - TM05
  (17, 1700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Pidgeotto - Protect - TM07
  (17, 1700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Pidgeotto - Substitute - TM08
  (17, 1700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Pidgeotto - Reflect - TM09
  (17, 1700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Pidgeotto - Facade - TM12
  (17, 1700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Pidgeotto - Fly - TM14
  (17, 1700, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 21),
  -- Pidgeotto - U-turn - TM18
  (17, 1700, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 22),
  -- Pidgeotto - Toxic - TM27
  (17, 1700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Pidgeotto - Roost - TM50
  (17, 1700, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 24),
  -- Pidgeot - Sky Attack - Level 1
  (18, 1800, 143, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Heat Wave - Level 1
  (18, 1800, 257, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pidgeot - Sand Attack - Level 3
  (18, 1800, 28, 17, NULL, 1, 3, NULL, NULL, NULL, 7),
  -- Pidgeot - Gust - Level 5
  (18, 1800, 16, 17, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Pidgeot - Quick Attack - Level 9
  (18, 1800, 98, 17, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Pidgeot - Mirror Move - Level 11
  (18, 1800, 119, 17, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Pidgeot - Wing Attack - Level 15
  (18, 1800, 17, 17, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Pidgeot - Roost - Level 17
  (18, 1800, 355, 17, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Pidgeot - Whirlwind - Level 25
  (18, 1800, 18, 17, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Pidgeot - Agility - Level 31
  (18, 1800, 97, 17, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Pidgeot - Air Slash - Level 43
  (18, 1800, 403, 17, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Pidgeot - Razor Wind - Level 53
  (18, 1800, 13, 17, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Pidgeot - Headbutt - TM01
  (18, 1800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Pidgeot - Rest - TM05
  (18, 1800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Pidgeot - Protect - TM07
  (18, 1800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Pidgeot - Substitute - TM08
  (18, 1800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Pidgeot - Reflect - TM09
  (18, 1800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 21),
  -- Pidgeot - Facade - TM12
  (18, 1800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Pidgeot - Fly - TM14
  (18, 1800, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 23),
  -- Pidgeot - U-turn - TM18
  (18, 1800, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 24),
  -- Pidgeot - Toxic - TM27
  (18, 1800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Pidgeot - Hyper Beam - TM48
  (18, 1800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 26),
  -- Pidgeot - Roost - TM50
  (18, 1800, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 27),
  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 3
  (19, 1900, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 6
  (19, 1900, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rattata - Focus Energy - Level 9
  (19, 1900, 116, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Rattata - Bite - Level 12
  (19, 1900, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rattata - Super Fang - Level 15
  (19, 1900, 162, 17, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rattata - Crunch - Level 18
  (19, 1900, 242, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rattata - Hyper Fang - Level 21
  (19, 1900, 158, 17, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Rattata - Sucker Punch - Level 24
  (19, 1900, 389, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Rattata - Double-Edge - Level 27
  (19, 1900, 38, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Rattata - Headbutt - TM01
  (19, 1900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Rattata - Taunt - TM02
  (19, 1900, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Rattata - Rest - TM05
  (19, 1900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Rattata - Protect - TM07
  (19, 1900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Rattata - Substitute - TM08
  (19, 1900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Rattata - Dig - TM10
  (19, 1900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Rattata - Facade - TM12
  (19, 1900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Rattata - Thunder Wave - TM16
  (19, 1900, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 18),
  -- Rattata - U-turn - TM18
  (19, 1900, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 19),
  -- Rattata - Iron Tail - TM19
  (19, 1900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Rattata - Toxic - TM27
  (19, 1900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 21),
  -- Rattata - Thunderbolt - TM36
  (19, 1900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 22),
  -- Rattata - Thunder - TM38
  (19, 1900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 23),
  -- Rattata - Shadow Ball - TM43
  (19, 1900, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 24),
  -- Rattata - Blizzard - TM51
  (19, 1900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 25),
  -- Rattata - Ice Beam - TM55
  (19, 1900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 26),
  -- Raticate - Swords Dance - Level 1
  (20, 2000, 14, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Counter - Level 1
  (20, 2000, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Fury Swipes - Level 1
  (20, 2000, 154, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raticate - Focus Energy - Level 1
  (20, 2000, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raticate - Tail Whip - Level 3
  (20, 2000, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Raticate - Quick Attack - Level 6
  (20, 2000, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Raticate - Focus Energy - Level 9
  (20, 2000, 116, 17, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Raticate - Bite - Level 12
  (20, 2000, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Raticate - Super Fang - Level 15
  (20, 2000, 162, 17, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Raticate - Crunch - Level 18
  (20, 2000, 242, 17, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Raticate - Hyper Fang - Level 26
  (20, 2000, 158, 17, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Raticate - Sucker Punch - Level 34
  (20, 2000, 389, 17, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Raticate - Double-Edge - Level 42
  (20, 2000, 38, 17, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Raticate - Headbutt - TM01
  (20, 2000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Raticate - Taunt - TM02
  (20, 2000, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 18),
  -- Raticate - Rest - TM05
  (20, 2000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Raticate - Protect - TM07
  (20, 2000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Raticate - Substitute - TM08
  (20, 2000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Raticate - Dig - TM10
  (20, 2000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 22),
  -- Raticate - Facade - TM12
  (20, 2000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 23),
  -- Raticate - Thunder Wave - TM16
  (20, 2000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Raticate - U-turn - TM18
  (20, 2000, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 25),
  -- Raticate - Iron Tail - TM19
  (20, 2000, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 26),
  -- Raticate - Toxic - TM27
  (20, 2000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Raticate - Thunderbolt - TM36
  (20, 2000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 28),
  -- Raticate - Thunder - TM38
  (20, 2000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 29),
  -- Raticate - Shadow Ball - TM43
  (20, 2000, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 30),
  -- Raticate - Hyper Beam - TM48
  (20, 2000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 31),
  -- Raticate - Blizzard - TM51
  (20, 2000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 32),
  -- Raticate - Ice Beam - TM55
  (20, 2000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 33),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Growl - Level 3
  (21, 2100, 45, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 8
  (21, 2100, 43, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Spearow - Focus Energy - Level 11
  (21, 2100, 116, 17, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Spearow - Fury Attack - Level 16
  (21, 2100, 31, 17, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Spearow - Mirror Move - Level 19
  (21, 2100, 119, 17, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Spearow - Roost - Level 24
  (21, 2100, 355, 17, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Spearow - Agility - Level 27
  (21, 2100, 97, 17, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Spearow - Drill Peck - Level 32
  (21, 2100, 65, 17, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Spearow - Headbutt - TM01
  (21, 2100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Spearow - Rest - TM05
  (21, 2100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Spearow - Protect - TM07
  (21, 2100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 12),
  -- Spearow - Substitute - TM08
  (21, 2100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 13),
  -- Spearow - Facade - TM12
  (21, 2100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 14),
  -- Spearow - Fly - TM14
  (21, 2100, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 15),
  -- Spearow - U-turn - TM18
  (21, 2100, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 16),
  -- Spearow - Toxic - TM27
  (21, 2100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Spearow - Tri Attack - TM28
  (21, 2100, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 18),
  -- Spearow - Roost - TM50
  (21, 2100, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 19),
  -- Spearow - Drill Run - TM58
  (21, 2100, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 20),
  -- Fearow - Sky Attack - Level 1
  (22, 2200, 143, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Drill Run - Level 1
  (22, 2200, 529, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Quick Attack - Level 1
  (22, 2200, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Fearow - Leer - Level 1
  (22, 2200, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Fearow - Focus Energy - Level 1
  (22, 2200, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Fearow - Growl - Level 3
  (22, 2200, 45, 17, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Fearow - Leer - Level 8
  (22, 2200, 43, 17, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Fearow - Focus Energy - Level 11
  (22, 2200, 116, 17, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Fearow - Fury Attack - Level 16
  (22, 2200, 31, 17, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Fearow - Mirror Move - Level 19
  (22, 2200, 119, 17, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Fearow - Roost - Level 29
  (22, 2200, 355, 17, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Fearow - Agility - Level 37
  (22, 2200, 97, 17, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Fearow - Drill Peck - Level 47
  (22, 2200, 65, 17, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Fearow - Headbutt - TM01
  (22, 2200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 16),
  -- Fearow - Rest - TM05
  (22, 2200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 17),
  -- Fearow - Protect - TM07
  (22, 2200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 18),
  -- Fearow - Substitute - TM08
  (22, 2200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 19),
  -- Fearow - Facade - TM12
  (22, 2200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Fearow - Fly - TM14
  (22, 2200, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 21),
  -- Fearow - U-turn - TM18
  (22, 2200, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 22),
  -- Fearow - Toxic - TM27
  (22, 2200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Fearow - Tri Attack - TM28
  (22, 2200, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 24),
  -- Fearow - Hyper Beam - TM48
  (22, 2200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 25),
  -- Fearow - Roost - TM50
  (22, 2200, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 26),
  -- Fearow - Drill Run - TM58
  (22, 2200, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 27),
  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Poison Sting - Level 1
  (23, 2300, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Leer - Level 4
  (23, 2300, 43, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ekans - Acid - Level 8
  (23, 2300, 51, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Ekans - Bite - Level 12
  (23, 2300, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Haze - Level 16
  (23, 2300, 114, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Ekans - Glare - Level 20
  (23, 2300, 137, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ekans - Poison Jab - Level 24
  (23, 2300, 398, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ekans - Slam - Level 28
  (23, 2300, 21, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Ekans - Screech - Level 32
  (23, 2300, 103, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Ekans - Toxic - Level 36
  (23, 2300, 92, 17, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Ekans - Headbutt - TM01
  (23, 2300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Ekans - Rest - TM05
  (23, 2300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Ekans - Protect - TM07
  (23, 2300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Ekans - Substitute - TM08
  (23, 2300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Ekans - Dig - TM10
  (23, 2300, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Ekans - Facade - TM12
  (23, 2300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Ekans - Iron Tail - TM19
  (23, 2300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 18),
  -- Ekans - Dark Pulse - TM20
  (23, 2300, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 19),
  -- Ekans - Rock Slide - TM22
  (23, 2300, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 20),
  -- Ekans - Poison Jab - TM26
  (23, 2300, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Ekans - Toxic - TM27
  (23, 2300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Ekans - Earthquake - TM41
  (23, 2300, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 23),
  -- Ekans - Sludge Bomb - TM52
  (23, 2300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 24),
  -- Ekans - Mega Drain - TM53
  (23, 2300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 25),
  -- Arbok - Crunch - Level 1
  (24, 2400, 242, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Sucker Punch - Level 1
  (24, 2400, 389, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arbok - Acid - Level 1
  (24, 2400, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arbok - Crunch - Evolution
  (24, 2400, 242, 17, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Arbok - Leer - Level 4
  (24, 2400, 43, 17, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Arbok - Acid - Level 9
  (24, 2400, 51, 17, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Arbok - Bite - Level 12
  (24, 2400, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Arbok - Haze - Level 16
  (24, 2400, 114, 17, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Arbok - Glare - Level 20
  (24, 2400, 137, 17, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Arbok - Poison Jab - Level 28
  (24, 2400, 398, 17, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Arbok - Slam - Level 36
  (24, 2400, 21, 17, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Arbok - Screech - Level 44
  (24, 2400, 103, 17, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Arbok - Toxic - Level 52
  (24, 2400, 92, 17, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Arbok - Headbutt - TM01
  (24, 2400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Arbok - Rest - TM05
  (24, 2400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Arbok - Protect - TM07
  (24, 2400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 19),
  -- Arbok - Substitute - TM08
  (24, 2400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 20),
  -- Arbok - Dig - TM10
  (24, 2400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 21),
  -- Arbok - Facade - TM12
  (24, 2400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Arbok - Dragon Tail - TM17
  (24, 2400, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 23),
  -- Arbok - Iron Tail - TM19
  (24, 2400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 24),
  -- Arbok - Dark Pulse - TM20
  (24, 2400, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 25),
  -- Arbok - Rock Slide - TM22
  (24, 2400, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 26),
  -- Arbok - Poison Jab - TM26
  (24, 2400, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 27),
  -- Arbok - Toxic - TM27
  (24, 2400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Arbok - Earthquake - TM41
  (24, 2400, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 29),
  -- Arbok - Hyper Beam - TM48
  (24, 2400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 30),
  -- Arbok - Sludge Bomb - TM52
  (24, 2400, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 31),
  -- Arbok - Mega Drain - TM53
  (24, 2400, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 32),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Tail Whip - Level 3
  (25, 2500, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Pikachu - Quick Attack - Level 6
  (25, 2500, 98, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Pikachu - Double Kick - Level 9
  (25, 2500, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pikachu - Double Team - Level 12
  (25, 2500, 104, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pikachu - Thunder Wave - Level 15
  (25, 2500, 86, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pikachu - Light Screen - Level 18
  (25, 2500, 113, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Pikachu - Thunderbolt - Level 21
  (25, 2500, 85, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Pikachu - Slam - Level 24
  (25, 2500, 21, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pikachu - Agility - Level 27
  (25, 2500, 97, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pikachu - Thunder - Level 30
  (25, 2500, 87, 17, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Pikachu - Headbutt - TM01
  (25, 2500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 13),
  -- Pikachu - Helping Hand - TM03
  (25, 2500, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 14),
  -- Pikachu - Rest - TM05
  (25, 2500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Pikachu - Light Screen - TM06
  (25, 2500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Pikachu - Protect - TM07
  (25, 2500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Pikachu - Substitute - TM08
  (25, 2500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Pikachu - Reflect - TM09
  (25, 2500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Pikachu - Dig - TM10
  (25, 2500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Pikachu - Facade - TM12
  (25, 2500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Pikachu - Brick Break - TM13
  (25, 2500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Pikachu - Seismic Toss - TM15
  (25, 2500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Pikachu - Thunder Wave - TM16
  (25, 2500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Pikachu - Iron Tail - TM19
  (25, 2500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Pikachu - Thunder Punch - TM23
  (25, 2500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Pikachu - Toxic - TM27
  (25, 2500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Pikachu - Calm Mind - TM33
  (25, 2500, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 28),
  -- Pikachu - Thunderbolt - TM36
  (25, 2500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 29),
  -- Pikachu - Thunder - TM38
  (25, 2500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Pikachu - Pay Day - TM57
  (25, 2500, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 31),
  -- Raichu - Thunder Punch - Level 1
  (26, 2600, 9, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Encore - Level 1
  (26, 2600, 227, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Fake Out - Level 1
  (26, 2600, 252, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Growl - Level 1
  (26, 2600, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Raichu - Thunder Punch - Evolution
  (26, 2600, 9, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Raichu - Headbutt - TM01
  (26, 2600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 9),
  -- Raichu - Helping Hand - TM03
  (26, 2600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 10),
  -- Raichu - Rest - TM05
  (26, 2600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 11),
  -- Raichu - Light Screen - TM06
  (26, 2600, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 12),
  -- Raichu - Protect - TM07
  (26, 2600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Raichu - Substitute - TM08
  (26, 2600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Raichu - Reflect - TM09
  (26, 2600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Raichu - Dig - TM10
  (26, 2600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Raichu - Facade - TM12
  (26, 2600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Raichu - Brick Break - TM13
  (26, 2600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Raichu - Seismic Toss - TM15
  (26, 2600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Raichu - Thunder Wave - TM16
  (26, 2600, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 20),
  -- Raichu - Iron Tail - TM19
  (26, 2600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 21),
  -- Raichu - Thunder Punch - TM23
  (26, 2600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 22),
  -- Raichu - Toxic - TM27
  (26, 2600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 23),
  -- Raichu - Calm Mind - TM33
  (26, 2600, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 24),
  -- Raichu - Thunderbolt - TM36
  (26, 2600, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Raichu - Thunder - TM38
  (26, 2600, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Raichu - Hyper Beam - TM48
  (26, 2600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Raichu - Pay Day - TM57
  (26, 2600, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 28),
  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 1
  (27, 2700, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew - Poison Sting - Level 4
  (27, 2700, 40, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sandshrew - Sand Attack - Level 8
  (27, 2700, 28, 17, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sandshrew - Swift - Level 12
  (27, 2700, 129, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sandshrew - Fury Swipes - Level 16
  (27, 2700, 154, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sandshrew - Dig - Level 20
  (27, 2700, 91, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sandshrew - Protect - Level 24
  (27, 2700, 182, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sandshrew - Swords Dance - Level 28
  (27, 2700, 14, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sandshrew - Slash - Level 32
  (27, 2700, 163, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sandshrew - Earthquake - Level 36
  (27, 2700, 89, 17, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sandshrew - Headbutt - TM01
  (27, 2700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Sandshrew - Rest - TM05
  (27, 2700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Sandshrew - Protect - TM07
  (27, 2700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Sandshrew - Substitute - TM08
  (27, 2700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Sandshrew - Dig - TM10
  (27, 2700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Sandshrew - Facade - TM12
  (27, 2700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 17),
  -- Sandshrew - Brick Break - TM13
  (27, 2700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 18),
  -- Sandshrew - Seismic Toss - TM15
  (27, 2700, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 19),
  -- Sandshrew - Iron Tail - TM19
  (27, 2700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Sandshrew - Rock Slide - TM22
  (27, 2700, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 21),
  -- Sandshrew - X-Scissor - TM24
  (27, 2700, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 22),
  -- Sandshrew - Poison Jab - TM26
  (27, 2700, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 23),
  -- Sandshrew - Toxic - TM27
  (27, 2700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Sandshrew - Earthquake - TM41
  (27, 2700, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 25),
  -- Sandshrew - Stealth Rock - TM56
  (27, 2700, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 26),
  -- Sandslash - Counter - Level 1
  (28, 2800, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Poison Sting - Level 1
  (28, 2800, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash - Poison Sting - Level 4
  (28, 2800, 40, 17, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Sandslash - Sand Attack - Level 8
  (28, 2800, 28, 17, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Sandslash - Swift - Level 12
  (28, 2800, 129, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Sandslash - Fury Swipes - Level 16
  (28, 2800, 154, 17, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sandslash - Dig - Level 20
  (28, 2800, 91, 17, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Sandslash - Protect - Level 28
  (28, 2800, 182, 17, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sandslash - Swords Dance - Level 36
  (28, 2800, 14, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Sandslash - Slash - Level 44
  (28, 2800, 163, 17, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Sandslash - Earthquake - Level 52
  (28, 2800, 89, 17, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Sandslash - Headbutt - TM01
  (28, 2800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 15),
  -- Sandslash - Rest - TM05
  (28, 2800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Sandslash - Protect - TM07
  (28, 2800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Sandslash - Substitute - TM08
  (28, 2800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Sandslash - Dig - TM10
  (28, 2800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Sandslash - Facade - TM12
  (28, 2800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Sandslash - Brick Break - TM13
  (28, 2800, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Sandslash - Seismic Toss - TM15
  (28, 2800, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Sandslash - Iron Tail - TM19
  (28, 2800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 23),
  -- Sandslash - Rock Slide - TM22
  (28, 2800, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 24),
  -- Sandslash - X-Scissor - TM24
  (28, 2800, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 25),
  -- Sandslash - Poison Jab - TM26
  (28, 2800, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 26),
  -- Sandslash - Toxic - TM27
  (28, 2800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Sandslash - Earthquake - TM41
  (28, 2800, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 28),
  -- Sandslash - Hyper Beam - TM48
  (28, 2800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Sandslash - Stealth Rock - TM56
  (28, 2800, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 30),
  -- Sandslash - Drill Run - TM58
  (28, 2800, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 31),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Scratch - Level 1
  (29, 2900, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Tail Whip - Level 3
  (29, 2900, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Nidoran F - Poison Sting - Level 6
  (29, 2900, 40, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Nidoran F - Double Kick - Level 9
  (29, 2900, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Nidoran F - Bite - Level 12
  (29, 2900, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Nidoran F - Helping Hand - Level 15
  (29, 2900, 270, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Nidoran F - Toxic - Level 18
  (29, 2900, 92, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Nidoran F - Fury Swipes - Level 21
  (29, 2900, 154, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Nidoran F - Crunch - Level 24
  (29, 2900, 242, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Nidoran F - Super Fang - Level 27
  (29, 2900, 162, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Nidoran F - Headbutt - TM01
  (29, 2900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Nidoran F - Helping Hand - TM03
  (29, 2900, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Nidoran F - Rest - TM05
  (29, 2900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Nidoran F - Protect - TM07
  (29, 2900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Nidoran F - Substitute - TM08
  (29, 2900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Nidoran F - Reflect - TM09
  (29, 2900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Nidoran F - Dig - TM10
  (29, 2900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Nidoran F - Facade - TM12
  (29, 2900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Nidoran F - Iron Tail - TM19
  (29, 2900, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Nidoran F - Poison Jab - TM26
  (29, 2900, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Nidoran F - Toxic - TM27
  (29, 2900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Nidoran F - Thunderbolt - TM36
  (29, 2900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Nidoran F - Thunder - TM38
  (29, 2900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Nidoran F - Blizzard - TM51
  (29, 2900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 25),
  -- Nidoran F - Sludge Bomb - TM52
  (29, 2900, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 26),
  -- Nidoran F - Ice Beam - TM55
  (29, 2900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 27),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Tail Whip - Level 1
  (30, 3000, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorina - Poison Sting - Level 1
  (30, 3000, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidorina - Tail Whip - Level 3
  (30, 3000, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Nidorina - Poison Sting - Level 6
  (30, 3000, 40, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Nidorina - Double Kick - Level 9
  (30, 3000, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Nidorina - Bite - Level 12
  (30, 3000, 44, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Nidorina - Helping Hand - Level 15
  (30, 3000, 270, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Nidorina - Toxic - Level 23
  (30, 3000, 92, 17, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Nidorina - Fury Swipes - Level 31
  (30, 3000, 154, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Nidorina - Crunch - Level 39
  (30, 3000, 242, 17, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Nidorina - Super Fang - Level 47
  (30, 3000, 162, 17, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Nidorina - Headbutt - TM01
  (30, 3000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Nidorina - Helping Hand - TM03
  (30, 3000, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 15),
  -- Nidorina - Rest - TM05
  (30, 3000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Nidorina - Protect - TM07
  (30, 3000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Nidorina - Substitute - TM08
  (30, 3000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Nidorina - Reflect - TM09
  (30, 3000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Nidorina - Dig - TM10
  (30, 3000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Nidorina - Facade - TM12
  (30, 3000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Nidorina - Iron Tail - TM19
  (30, 3000, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Nidorina - Poison Jab - TM26
  (30, 3000, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 23),
  -- Nidorina - Toxic - TM27
  (30, 3000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Nidorina - Thunderbolt - TM36
  (30, 3000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Nidorina - Thunder - TM38
  (30, 3000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Nidorina - Blizzard - TM51
  (30, 3000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 27),
  -- Nidorina - Sludge Bomb - TM52
  (30, 3000, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 28),
  -- Nidorina - Ice Beam - TM55
  (30, 3000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 29),
  -- Nidoqueen - Body Slam - Level 1
  (31, 3100, 34, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Supersonic - Level 1
  (31, 3100, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Counter - Level 1
  (31, 3100, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Growl - Level 1
  (31, 3100, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nidoqueen - Poison Sting - Level 1
  (31, 3100, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nidoqueen - Body Slam - Evolution
  (31, 3100, 34, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Nidoqueen - Superpower - Level 55
  (31, 3100, 276, 17, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Nidoqueen - Headbutt - TM01
  (31, 3100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Nidoqueen - Taunt - TM02
  (31, 3100, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 11),
  -- Nidoqueen - Helping Hand - TM03
  (31, 3100, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Nidoqueen - Rest - TM05
  (31, 3100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Nidoqueen - Protect - TM07
  (31, 3100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Nidoqueen - Substitute - TM08
  (31, 3100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Nidoqueen - Reflect - TM09
  (31, 3100, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Nidoqueen - Dig - TM10
  (31, 3100, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Nidoqueen - Facade - TM12
  (31, 3100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Nidoqueen - Brick Break - TM13
  (31, 3100, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Nidoqueen - Seismic Toss - TM15
  (31, 3100, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Nidoqueen - Dragon Tail - TM17
  (31, 3100, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 21),
  -- Nidoqueen - Iron Tail - TM19
  (31, 3100, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Nidoqueen - Rock Slide - TM22
  (31, 3100, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Nidoqueen - Thunder Punch - TM23
  (31, 3100, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Nidoqueen - Poison Jab - TM26
  (31, 3100, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 25),
  -- Nidoqueen - Toxic - TM27
  (31, 3100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Nidoqueen - Fire Punch - TM31
  (31, 3100, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Nidoqueen - Dragon Pulse - TM34
  (31, 3100, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 28),
  -- Nidoqueen - Ice Punch - TM35
  (31, 3100, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 29),
  -- Nidoqueen - Thunderbolt - TM36
  (31, 3100, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 30),
  -- Nidoqueen - Flamethrower - TM37
  (31, 3100, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 31),
  -- Nidoqueen - Thunder - TM38
  (31, 3100, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 32),
  -- Nidoqueen - Outrage - TM39
  (31, 3100, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 33),
  -- Nidoqueen - Earthquake - TM41
  (31, 3100, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 34),
  -- Nidoqueen - Shadow Ball - TM43
  (31, 3100, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 35),
  -- Nidoqueen - Fire Blast - TM46
  (31, 3100, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 36),
  -- Nidoqueen - Surf - TM47
  (31, 3100, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 37),
  -- Nidoqueen - Hyper Beam - TM48
  (31, 3100, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 38),
  -- Nidoqueen - Superpower - TM49
  (31, 3100, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 39),
  -- Nidoqueen - Blizzard - TM51
  (31, 3100, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 40),
  -- Nidoqueen - Sludge Bomb - TM52
  (31, 3100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 41),
  -- Nidoqueen - Ice Beam - TM55
  (31, 3100, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 42),
  -- Nidoqueen - Stealth Rock - TM56
  (31, 3100, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 43),
  -- Nidoqueen - Pay Day - TM57
  (31, 3100, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 44),
  -- Nidoqueen - Drill Run - TM58
  (31, 3100, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 45),
  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Peck - Level 1
  (32, 3200, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Focus Energy - Level 3
  (32, 3200, 116, 17, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Nidoran M - Poison Sting - Level 6
  (32, 3200, 40, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Nidoran M - Double Kick - Level 9
  (32, 3200, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Nidoran M - Horn Attack - Level 12
  (32, 3200, 30, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Nidoran M - Helping Hand - Level 15
  (32, 3200, 270, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Nidoran M - Toxic - Level 18
  (32, 3200, 92, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Nidoran M - Fury Attack - Level 21
  (32, 3200, 31, 17, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Nidoran M - Poison Jab - Level 24
  (32, 3200, 398, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Nidoran M - Horn Drill - Level 27
  (32, 3200, 32, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Nidoran M - Headbutt - TM01
  (32, 3200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Nidoran M - Helping Hand - TM03
  (32, 3200, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Nidoran M - Rest - TM05
  (32, 3200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Nidoran M - Protect - TM07
  (32, 3200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Nidoran M - Substitute - TM08
  (32, 3200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Nidoran M - Reflect - TM09
  (32, 3200, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Nidoran M - Dig - TM10
  (32, 3200, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Nidoran M - Facade - TM12
  (32, 3200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Nidoran M - Iron Tail - TM19
  (32, 3200, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Nidoran M - Poison Jab - TM26
  (32, 3200, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 21),
  -- Nidoran M - Toxic - TM27
  (32, 3200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Nidoran M - Thunderbolt - TM36
  (32, 3200, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 23),
  -- Nidoran M - Thunder - TM38
  (32, 3200, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 24),
  -- Nidoran M - Blizzard - TM51
  (32, 3200, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 25),
  -- Nidoran M - Sludge Bomb - TM52
  (32, 3200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 26),
  -- Nidoran M - Ice Beam - TM55
  (32, 3200, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 27),
  -- Nidoran M - Drill Run - TM58
  (32, 3200, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 28),
  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Peck - Level 1
  (33, 3300, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Focus Energy - Level 1
  (33, 3300, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidorino - Poison Sting - Level 1
  (33, 3300, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidorino - Focus Energy - Level 3
  (33, 3300, 116, 17, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Nidorino - Poison Sting - Level 6
  (33, 3300, 40, 17, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Nidorino - Double Kick - Level 9
  (33, 3300, 24, 17, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Nidorino - Horn Attack - Level 12
  (33, 3300, 30, 17, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Nidorino - Helping Hand - Level 15
  (33, 3300, 270, 17, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Nidorino - Toxic - Level 23
  (33, 3300, 92, 17, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Nidorino - Fury Attack - Level 31
  (33, 3300, 31, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Nidorino - Poison Jab - Level 39
  (33, 3300, 398, 17, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Nidorino - Horn Drill - Level 47
  (33, 3300, 32, 17, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Nidorino - Headbutt - TM01
  (33, 3300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Nidorino - Helping Hand - TM03
  (33, 3300, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 15),
  -- Nidorino - Rest - TM05
  (33, 3300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 16),
  -- Nidorino - Protect - TM07
  (33, 3300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Nidorino - Substitute - TM08
  (33, 3300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Nidorino - Reflect - TM09
  (33, 3300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Nidorino - Dig - TM10
  (33, 3300, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Nidorino - Facade - TM12
  (33, 3300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Nidorino - Iron Tail - TM19
  (33, 3300, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Nidorino - Poison Jab - TM26
  (33, 3300, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 23),
  -- Nidorino - Toxic - TM27
  (33, 3300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 24),
  -- Nidorino - Thunderbolt - TM36
  (33, 3300, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 25),
  -- Nidorino - Thunder - TM38
  (33, 3300, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Nidorino - Blizzard - TM51
  (33, 3300, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 27),
  -- Nidorino - Sludge Bomb - TM52
  (33, 3300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 28),
  -- Nidorino - Ice Beam - TM55
  (33, 3300, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 29),
  -- Nidorino - Drill Run - TM58
  (33, 3300, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 30),
  -- Nidoking - Thrash - Level 1
  (34, 3400, 37, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Supersonic - Level 1
  (34, 3400, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Counter - Level 1
  (34, 3400, 68, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Leer - Level 1
  (34, 3400, 43, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Peck - Level 1
  (34, 3400, 64, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoking - Focus Energy - Level 1
  (34, 3400, 116, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nidoking - Thrash - Evolution
  (34, 3400, 37, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Nidoking - Megahorn - Level 55
  (34, 3400, 224, 17, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Nidoking - Headbutt - TM01
  (34, 3400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 10),
  -- Nidoking - Taunt - TM02
  (34, 3400, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 11),
  -- Nidoking - Helping Hand - TM03
  (34, 3400, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Nidoking - Rest - TM05
  (34, 3400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Nidoking - Protect - TM07
  (34, 3400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Nidoking - Substitute - TM08
  (34, 3400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Nidoking - Reflect - TM09
  (34, 3400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 16),
  -- Nidoking - Dig - TM10
  (34, 3400, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 17),
  -- Nidoking - Facade - TM12
  (34, 3400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Nidoking - Brick Break - TM13
  (34, 3400, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 19),
  -- Nidoking - Seismic Toss - TM15
  (34, 3400, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 20),
  -- Nidoking - Dragon Tail - TM17
  (34, 3400, 525, 17, NULL, 2, NULL, NULL, 17002017, NULL, 21),
  -- Nidoking - Iron Tail - TM19
  (34, 3400, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 22),
  -- Nidoking - Rock Slide - TM22
  (34, 3400, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 23),
  -- Nidoking - Thunder Punch - TM23
  (34, 3400, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Nidoking - Poison Jab - TM26
  (34, 3400, 398, 17, NULL, 2, NULL, NULL, 17002026, NULL, 25),
  -- Nidoking - Toxic - TM27
  (34, 3400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 26),
  -- Nidoking - Fire Punch - TM31
  (34, 3400, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Nidoking - Dragon Pulse - TM34
  (34, 3400, 406, 17, NULL, 2, NULL, NULL, 17002034, NULL, 28),
  -- Nidoking - Ice Punch - TM35
  (34, 3400, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 29),
  -- Nidoking - Thunderbolt - TM36
  (34, 3400, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 30),
  -- Nidoking - Flamethrower - TM37
  (34, 3400, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 31),
  -- Nidoking - Thunder - TM38
  (34, 3400, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 32),
  -- Nidoking - Outrage - TM39
  (34, 3400, 200, 17, NULL, 2, NULL, NULL, 17002039, NULL, 33),
  -- Nidoking - Earthquake - TM41
  (34, 3400, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 34),
  -- Nidoking - Shadow Ball - TM43
  (34, 3400, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 35),
  -- Nidoking - Fire Blast - TM46
  (34, 3400, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 36),
  -- Nidoking - Surf - TM47
  (34, 3400, 57, 17, NULL, 2, NULL, NULL, 17002047, NULL, 37),
  -- Nidoking - Hyper Beam - TM48
  (34, 3400, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 38),
  -- Nidoking - Superpower - TM49
  (34, 3400, 276, 17, NULL, 2, NULL, NULL, 17002049, NULL, 39),
  -- Nidoking - Blizzard - TM51
  (34, 3400, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 40),
  -- Nidoking - Sludge Bomb - TM52
  (34, 3400, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 41),
  -- Nidoking - Ice Beam - TM55
  (34, 3400, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 42),
  -- Nidoking - Stealth Rock - TM56
  (34, 3400, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 43),
  -- Nidoking - Pay Day - TM57
  (34, 3400, 6, 17, NULL, 2, NULL, NULL, 17002057, NULL, 44),
  -- Nidoking - Drill Run - TM58
  (34, 3400, 529, 17, NULL, 2, NULL, NULL, 17002058, NULL, 45),
  -- Nidoking - Megahorn - TM60
  (34, 3400, 224, 17, NULL, 2, NULL, NULL, 17002060, NULL, 46),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Defense Curl - Level 4
  (35, 3500, 111, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Clefairy - Sing - Level 6
  (35, 3500, 47, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Clefairy - Minimize - Level 10
  (35, 3500, 107, 17, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Clefairy - Double Slap - Level 12
  (35, 3500, 3, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Clefairy - Amnesia - Level 16
  (35, 3500, 133, 17, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Clefairy - Metronome - Level 18
  (35, 3500, 118, 17, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Clefairy - Encore - Level 22
  (35, 3500, 227, 17, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Clefairy - Body Slam - Level 24
  (35, 3500, 34, 17, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Clefairy - Moonblast - Level 28
  (35, 3500, 585, 17, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Clefairy - Headbutt - TM01
  (35, 3500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Clefairy - Helping Hand - TM03
  (35, 3500, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 13),
  -- Clefairy - Teleport - TM04
  (35, 3500, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 14),
  -- Clefairy - Rest - TM05
  (35, 3500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Clefairy - Light Screen - TM06
  (35, 3500, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 16),
  -- Clefairy - Protect - TM07
  (35, 3500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 17),
  -- Clefairy - Substitute - TM08
  (35, 3500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 18),
  -- Clefairy - Reflect - TM09
  (35, 3500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 19),
  -- Clefairy - Dig - TM10
  (35, 3500, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 20),
  -- Clefairy - Facade - TM12
  (35, 3500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 21),
  -- Clefairy - Brick Break - TM13
  (35, 3500, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 22),
  -- Clefairy - Seismic Toss - TM15
  (35, 3500, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 23),
  -- Clefairy - Thunder Wave - TM16
  (35, 3500, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 24),
  -- Clefairy - Iron Tail - TM19
  (35, 3500, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 25),
  -- Clefairy - Thunder Punch - TM23
  (35, 3500, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 26),
  -- Clefairy - Toxic - TM27
  (35, 3500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Clefairy - Tri Attack - TM28
  (35, 3500, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 28),
  -- Clefairy - Fire Punch - TM31
  (35, 3500, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 29),
  -- Clefairy - Dazzling Gleam - TM32
  (35, 3500, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 30),
  -- Clefairy - Calm Mind - TM33
  (35, 3500, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 31),
  -- Clefairy - Ice Punch - TM35
  (35, 3500, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 32),
  -- Clefairy - Thunderbolt - TM36
  (35, 3500, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 33),
  -- Clefairy - Flamethrower - TM37
  (35, 3500, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 34),
  -- Clefairy - Thunder - TM38
  (35, 3500, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 35),
  -- Clefairy - Psychic - TM40
  (35, 3500, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 36),
  -- Clefairy - Shadow Ball - TM43
  (35, 3500, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 37),
  -- Clefairy - Play Rough - TM44
  (35, 3500, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 38),
  -- Clefairy - Solar Beam - TM45
  (35, 3500, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 39),
  -- Clefairy - Fire Blast - TM46
  (35, 3500, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 40),
  -- Clefairy - Blizzard - TM51
  (35, 3500, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 41),
  -- Clefairy - Ice Beam - TM55
  (35, 3500, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 42),
  -- Clefairy - Stealth Rock - TM56
  (35, 3500, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 43),
  -- Clefairy - Dream Eater - TM59
  (35, 3500, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 44),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Growl - Level 1
  (36, 3600, 45, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Pound - Level 1
  (36, 3600, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Defense Curl - Level 1
  (36, 3600, 111, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefable - Metronome - Evolution
  (36, 3600, 118, 17, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Clefable - Headbutt - TM01
  (36, 3600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 7),
  -- Clefable - Helping Hand - TM03
  (36, 3600, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 8),
  -- Clefable - Teleport - TM04
  (36, 3600, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 9),
  -- Clefable - Rest - TM05
  (36, 3600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 10),
  -- Clefable - Light Screen - TM06
  (36, 3600, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 11),
  -- Clefable - Protect - TM07
  (36, 3600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 12),
  -- Clefable - Substitute - TM08
  (36, 3600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 13),
  -- Clefable - Reflect - TM09
  (36, 3600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 14),
  -- Clefable - Dig - TM10
  (36, 3600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Clefable - Facade - TM12
  (36, 3600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Clefable - Brick Break - TM13
  (36, 3600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 17),
  -- Clefable - Seismic Toss - TM15
  (36, 3600, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 18),
  -- Clefable - Thunder Wave - TM16
  (36, 3600, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 19),
  -- Clefable - Iron Tail - TM19
  (36, 3600, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 20),
  -- Clefable - Thunder Punch - TM23
  (36, 3600, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 21),
  -- Clefable - Toxic - TM27
  (36, 3600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Clefable - Tri Attack - TM28
  (36, 3600, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 23),
  -- Clefable - Fire Punch - TM31
  (36, 3600, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 24),
  -- Clefable - Dazzling Gleam - TM32
  (36, 3600, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 25),
  -- Clefable - Calm Mind - TM33
  (36, 3600, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 26),
  -- Clefable - Ice Punch - TM35
  (36, 3600, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 27),
  -- Clefable - Thunderbolt - TM36
  (36, 3600, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 28),
  -- Clefable - Flamethrower - TM37
  (36, 3600, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 29),
  -- Clefable - Thunder - TM38
  (36, 3600, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 30),
  -- Clefable - Psychic - TM40
  (36, 3600, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 31),
  -- Clefable - Shadow Ball - TM43
  (36, 3600, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 32),
  -- Clefable - Play Rough - TM44
  (36, 3600, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 33),
  -- Clefable - Solar Beam - TM45
  (36, 3600, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 34),
  -- Clefable - Fire Blast - TM46
  (36, 3600, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 35),
  -- Clefable - Hyper Beam - TM48
  (36, 3600, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 36),
  -- Clefable - Blizzard - TM51
  (36, 3600, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 37),
  -- Clefable - Ice Beam - TM55
  (36, 3600, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 38),
  -- Clefable - Stealth Rock - TM56
  (36, 3600, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 39),
  -- Clefable - Dream Eater - TM59
  (36, 3600, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 40),
  -- Vulpix - Tackle - Level 1
  (37, 3700, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 3
  (37, 3700, 39, 17, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Vulpix - Ember - Level 7
  (37, 3700, 52, 17, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 10
  (37, 3700, 98, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vulpix - Confuse Ray - Level 14
  (37, 3700, 109, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vulpix - Will-O-Wisp - Level 17
  (37, 3700, 261, 17, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vulpix - Fire Spin - Level 21
  (37, 3700, 83, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Vulpix - Flamethrower - Level 24
  (37, 3700, 53, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix - Roar - Level 28
  (37, 3700, 46, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix - Fire Blast - Level 31
  (37, 3700, 126, 17, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vulpix - Headbutt - TM01
  (37, 3700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Vulpix - Rest - TM05
  (37, 3700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Vulpix - Protect - TM07
  (37, 3700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Vulpix - Substitute - TM08
  (37, 3700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Vulpix - Reflect - TM09
  (37, 3700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Vulpix - Dig - TM10
  (37, 3700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 16),
  -- Vulpix - Will-O-Wisp - TM11
  (37, 3700, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 17),
  -- Vulpix - Facade - TM12
  (37, 3700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 18),
  -- Vulpix - Iron Tail - TM19
  (37, 3700, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 19),
  -- Vulpix - Dark Pulse - TM20
  (37, 3700, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 20),
  -- Vulpix - Foul Play - TM21
  (37, 3700, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 21),
  -- Vulpix - Toxic - TM27
  (37, 3700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Vulpix - Flamethrower - TM37
  (37, 3700, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 23),
  -- Vulpix - Fire Blast - TM46
  (37, 3700, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 24),
  -- Ninetales - Hypnosis - Level 1
  (38, 3800, 95, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Nasty Plot - Level 1
  (38, 3800, 417, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Tackle - Level 1
  (38, 3800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Tail Whip - Level 1
  (38, 3800, 39, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Ember - Level 1
  (38, 3800, 52, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninetales - Headbutt - TM01
  (38, 3800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 7),
  -- Ninetales - Rest - TM05
  (38, 3800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 8),
  -- Ninetales - Protect - TM07
  (38, 3800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 9),
  -- Ninetales - Substitute - TM08
  (38, 3800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 10),
  -- Ninetales - Reflect - TM09
  (38, 3800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 11),
  -- Ninetales - Dig - TM10
  (38, 3800, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 12),
  -- Ninetales - Will-O-Wisp - TM11
  (38, 3800, 261, 17, NULL, 2, NULL, NULL, 17002011, NULL, 13),
  -- Ninetales - Facade - TM12
  (38, 3800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 14),
  -- Ninetales - Iron Tail - TM19
  (38, 3800, 231, 17, NULL, 2, NULL, NULL, 17002019, NULL, 15),
  -- Ninetales - Dark Pulse - TM20
  (38, 3800, 399, 17, NULL, 2, NULL, NULL, 17002020, NULL, 16),
  -- Ninetales - Foul Play - TM21
  (38, 3800, 492, 17, NULL, 2, NULL, NULL, 17002021, NULL, 17),
  -- Ninetales - Toxic - TM27
  (38, 3800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Ninetales - Calm Mind - TM33
  (38, 3800, 347, 17, NULL, 2, NULL, NULL, 17002033, NULL, 19),
  -- Ninetales - Flamethrower - TM37
  (38, 3800, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 20),
  -- Ninetales - Solar Beam - TM45
  (38, 3800, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 21),
  -- Ninetales - Fire Blast - TM46
  (38, 3800, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 22),
  -- Ninetales - Hyper Beam - TM48
  (38, 3800, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 23),
  -- Ninetales - Dream Eater - TM59
  (38, 3800, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 24),
  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Pound - Level 4
  (39, 3900, 1, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Jigglypuff - Defense Curl - Level 6
  (39, 3900, 111, 17, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Jigglypuff - Bide - Level 10
  (39, 3900, 117, 17, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Jigglypuff - Double Slap - Level 12
  (39, 3900, 3, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Jigglypuff - Disable - Level 16
  (39, 3900, 50, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Jigglypuff - Rest - Level 18
  (39, 3900, 156, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Jigglypuff - Body Slam - Level 22
  (39, 3900, 34, 17, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Jigglypuff - Mimic - Level 24
  (39, 3900, 102, 17, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Jigglypuff - Double-Edge - Level 28
  (39, 3900, 38, 17, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Jigglypuff - Headbutt - TM01
  (39, 3900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Jigglypuff - Helping Hand - TM03
  (39, 3900, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 12),
  -- Jigglypuff - Teleport - TM04
  (39, 3900, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 13),
  -- Jigglypuff - Rest - TM05
  (39, 3900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 14),
  -- Jigglypuff - Light Screen - TM06
  (39, 3900, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 15),
  -- Jigglypuff - Protect - TM07
  (39, 3900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Jigglypuff - Substitute - TM08
  (39, 3900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Jigglypuff - Reflect - TM09
  (39, 3900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Jigglypuff - Dig - TM10
  (39, 3900, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 19),
  -- Jigglypuff - Facade - TM12
  (39, 3900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 20),
  -- Jigglypuff - Brick Break - TM13
  (39, 3900, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 21),
  -- Jigglypuff - Seismic Toss - TM15
  (39, 3900, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 22),
  -- Jigglypuff - Thunder Wave - TM16
  (39, 3900, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 23),
  -- Jigglypuff - Thunder Punch - TM23
  (39, 3900, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 24),
  -- Jigglypuff - Toxic - TM27
  (39, 3900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Jigglypuff - Tri Attack - TM28
  (39, 3900, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 26),
  -- Jigglypuff - Fire Punch - TM31
  (39, 3900, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 27),
  -- Jigglypuff - Dazzling Gleam - TM32
  (39, 3900, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 28),
  -- Jigglypuff - Ice Punch - TM35
  (39, 3900, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 29),
  -- Jigglypuff - Thunderbolt - TM36
  (39, 3900, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 30),
  -- Jigglypuff - Flamethrower - TM37
  (39, 3900, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 31),
  -- Jigglypuff - Thunder - TM38
  (39, 3900, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 32),
  -- Jigglypuff - Psychic - TM40
  (39, 3900, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 33),
  -- Jigglypuff - Shadow Ball - TM43
  (39, 3900, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 34),
  -- Jigglypuff - Play Rough - TM44
  (39, 3900, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 35),
  -- Jigglypuff - Solar Beam - TM45
  (39, 3900, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 36),
  -- Jigglypuff - Fire Blast - TM46
  (39, 3900, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 37),
  -- Jigglypuff - Blizzard - TM51
  (39, 3900, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 38),
  -- Jigglypuff - Ice Beam - TM55
  (39, 3900, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 39),
  -- Jigglypuff - Stealth Rock - TM56
  (39, 3900, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 40),
  -- Jigglypuff - Dream Eater - TM59
  (39, 3900, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 41),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Pound - Level 1
  (40, 4000, 1, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Minimize - Level 1
  (40, 4000, 107, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Bide - Level 1
  (40, 4000, 117, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Headbutt - TM01
  (40, 4000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 5),
  -- Wigglytuff - Helping Hand - TM03
  (40, 4000, 270, 17, NULL, 2, NULL, NULL, 17002003, NULL, 6),
  -- Wigglytuff - Teleport - TM04
  (40, 4000, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 7),
  -- Wigglytuff - Rest - TM05
  (40, 4000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 8),
  -- Wigglytuff - Light Screen - TM06
  (40, 4000, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 9),
  -- Wigglytuff - Protect - TM07
  (40, 4000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 10),
  -- Wigglytuff - Substitute - TM08
  (40, 4000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 11),
  -- Wigglytuff - Reflect - TM09
  (40, 4000, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 12),
  -- Wigglytuff - Dig - TM10
  (40, 4000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 13),
  -- Wigglytuff - Facade - TM12
  (40, 4000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 14),
  -- Wigglytuff - Brick Break - TM13
  (40, 4000, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 15),
  -- Wigglytuff - Seismic Toss - TM15
  (40, 4000, 69, 17, NULL, 2, NULL, NULL, 17002015, NULL, 16),
  -- Wigglytuff - Thunder Wave - TM16
  (40, 4000, 86, 17, NULL, 2, NULL, NULL, 17002016, NULL, 17),
  -- Wigglytuff - Thunder Punch - TM23
  (40, 4000, 9, 17, NULL, 2, NULL, NULL, 17002023, NULL, 18),
  -- Wigglytuff - Toxic - TM27
  (40, 4000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Wigglytuff - Tri Attack - TM28
  (40, 4000, 161, 17, NULL, 2, NULL, NULL, 17002028, NULL, 20),
  -- Wigglytuff - Fire Punch - TM31
  (40, 4000, 7, 17, NULL, 2, NULL, NULL, 17002031, NULL, 21),
  -- Wigglytuff - Dazzling Gleam - TM32
  (40, 4000, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 22),
  -- Wigglytuff - Ice Punch - TM35
  (40, 4000, 8, 17, NULL, 2, NULL, NULL, 17002035, NULL, 23),
  -- Wigglytuff - Thunderbolt - TM36
  (40, 4000, 85, 17, NULL, 2, NULL, NULL, 17002036, NULL, 24),
  -- Wigglytuff - Flamethrower - TM37
  (40, 4000, 53, 17, NULL, 2, NULL, NULL, 17002037, NULL, 25),
  -- Wigglytuff - Thunder - TM38
  (40, 4000, 87, 17, NULL, 2, NULL, NULL, 17002038, NULL, 26),
  -- Wigglytuff - Psychic - TM40
  (40, 4000, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 27),
  -- Wigglytuff - Shadow Ball - TM43
  (40, 4000, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 28),
  -- Wigglytuff - Play Rough - TM44
  (40, 4000, 583, 17, NULL, 2, NULL, NULL, 17002044, NULL, 29),
  -- Wigglytuff - Solar Beam - TM45
  (40, 4000, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 30),
  -- Wigglytuff - Fire Blast - TM46
  (40, 4000, 126, 17, NULL, 2, NULL, NULL, 17002046, NULL, 31),
  -- Wigglytuff - Hyper Beam - TM48
  (40, 4000, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 32),
  -- Wigglytuff - Blizzard - TM51
  (40, 4000, 59, 17, NULL, 2, NULL, NULL, 17002051, NULL, 33),
  -- Wigglytuff - Ice Beam - TM55
  (40, 4000, 58, 17, NULL, 2, NULL, NULL, 17002055, NULL, 34),
  -- Wigglytuff - Stealth Rock - TM56
  (40, 4000, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 35),
  -- Wigglytuff - Dream Eater - TM59
  (40, 4000, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 36),
  -- Zubat - Absorb - Level 1
  (41, 4100, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 1
  (41, 4100, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zubat - Wing Attack - Level 4
  (41, 4100, 17, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Zubat - Bite - Level 9
  (41, 4100, 44, 17, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zubat - Swift - Level 12
  (41, 4100, 129, 17, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zubat - Confuse Ray - Level 17
  (41, 4100, 109, 17, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zubat - Haze - Level 20
  (41, 4100, 114, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Zubat - Leech Life - Level 25
  (41, 4100, 141, 17, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zubat - Toxic - Level 28
  (41, 4100, 92, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Zubat - Air Slash - Level 33
  (41, 4100, 403, 17, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zubat - Headbutt - TM01
  (41, 4100, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Zubat - Taunt - TM02
  (41, 4100, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 12),
  -- Zubat - Rest - TM05
  (41, 4100, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Zubat - Protect - TM07
  (41, 4100, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 14),
  -- Zubat - Substitute - TM08
  (41, 4100, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 15),
  -- Zubat - Facade - TM12
  (41, 4100, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Zubat - Fly - TM14
  (41, 4100, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 17),
  -- Zubat - U-turn - TM18
  (41, 4100, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 18),
  -- Zubat - Toxic - TM27
  (41, 4100, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 19),
  -- Zubat - Shadow Ball - TM43
  (41, 4100, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 20),
  -- Zubat - Roost - TM50
  (41, 4100, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 21),
  -- Zubat - Sludge Bomb - TM52
  (41, 4100, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 22),
  -- Zubat - Mega Drain - TM53
  (41, 4100, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 23),
  -- Golbat - Crunch - Level 1
  (42, 4200, 242, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Whirlwind - Level 1
  (42, 4200, 18, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Quick Attack - Level 1
  (42, 4200, 98, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Absorb - Level 1
  (42, 4200, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golbat - Wing Attack - Level 1
  (42, 4200, 17, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Golbat - Bite - Level 1
  (42, 4200, 44, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Golbat - Crunch - Evolution
  (42, 4200, 242, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Golbat - Wing Attack - Level 4
  (42, 4200, 17, 17, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Golbat - Bite - Level 8
  (42, 4200, 44, 17, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Golbat - Swift - Level 12
  (42, 4200, 129, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Golbat - Confuse Ray - Level 17
  (42, 4200, 109, 17, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Golbat - Haze - Level 20
  (42, 4200, 114, 17, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Golbat - Leech Life - Level 31
  (42, 4200, 141, 17, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Golbat - Toxic - Level 40
  (42, 4200, 92, 17, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golbat - Air Slash - Level 51
  (42, 4200, 403, 17, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Golbat - Headbutt - TM01
  (42, 4200, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Golbat - Taunt - TM02
  (42, 4200, 269, 17, NULL, 2, NULL, NULL, 17002002, NULL, 18),
  -- Golbat - Rest - TM05
  (42, 4200, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 19),
  -- Golbat - Protect - TM07
  (42, 4200, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Golbat - Substitute - TM08
  (42, 4200, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Golbat - Facade - TM12
  (42, 4200, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 22),
  -- Golbat - Fly - TM14
  (42, 4200, 19, 17, NULL, 2, NULL, NULL, 17002014, NULL, 23),
  -- Golbat - U-turn - TM18
  (42, 4200, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 24),
  -- Golbat - Toxic - TM27
  (42, 4200, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 25),
  -- Golbat - Shadow Ball - TM43
  (42, 4200, 247, 17, NULL, 2, NULL, NULL, 17002043, NULL, 26),
  -- Golbat - Hyper Beam - TM48
  (42, 4200, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 27),
  -- Golbat - Roost - TM50
  (42, 4200, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 28),
  -- Golbat - Sludge Bomb - TM52
  (42, 4200, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 29),
  -- Golbat - Mega Drain - TM53
  (42, 4200, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 30),
  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Growth - Level 4
  (43, 4300, 74, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Oddish - Acid - Level 8
  (43, 4300, 51, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Oddish - Poison Powder - Level 12
  (43, 4300, 77, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Oddish - Stun Spore - Level 13
  (43, 4300, 78, 17, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oddish - Sleep Powder - Level 14
  (43, 4300, 79, 17, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Oddish - Razor Leaf - Level 18
  (43, 4300, 75, 17, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Oddish - Mega Drain - Level 22
  (43, 4300, 72, 17, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Oddish - Toxic - Level 26
  (43, 4300, 92, 17, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Oddish - Moonblast - Level 30
  (43, 4300, 585, 17, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Oddish - Headbutt - TM01
  (43, 4300, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Oddish - Rest - TM05
  (43, 4300, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Oddish - Protect - TM07
  (43, 4300, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Oddish - Substitute - TM08
  (43, 4300, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Oddish - Reflect - TM09
  (43, 4300, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Oddish - Facade - TM12
  (43, 4300, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Oddish - Toxic - TM27
  (43, 4300, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Oddish - Dazzling Gleam - TM32
  (43, 4300, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 18),
  -- Oddish - Solar Beam - TM45
  (43, 4300, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 19),
  -- Oddish - Sludge Bomb - TM52
  (43, 4300, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 20),
  -- Oddish - Mega Drain - TM53
  (43, 4300, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 21),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Growth - Level 1
  (44, 4400, 74, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Acid - Level 1
  (44, 4400, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Poison Powder - Level 1
  (44, 4400, 77, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gloom - Growth - Level 4
  (44, 4400, 74, 17, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Gloom - Acid - Level 8
  (44, 4400, 51, 17, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Gloom - Poison Powder - Level 12
  (44, 4400, 77, 17, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gloom - Stun Spore - Level 13
  (44, 4400, 78, 17, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Gloom - Sleep Powder - Level 14
  (44, 4400, 79, 17, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Gloom - Razor Leaf - Level 18
  (44, 4400, 75, 17, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Gloom - Mega Drain - Level 27
  (44, 4400, 72, 17, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Gloom - Toxic - Level 36
  (44, 4400, 92, 17, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Gloom - Moonblast - Level 45
  (44, 4400, 585, 17, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Gloom - Headbutt - TM01
  (44, 4400, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 14),
  -- Gloom - Rest - TM05
  (44, 4400, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 15),
  -- Gloom - Protect - TM07
  (44, 4400, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 16),
  -- Gloom - Substitute - TM08
  (44, 4400, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 17),
  -- Gloom - Reflect - TM09
  (44, 4400, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 18),
  -- Gloom - Facade - TM12
  (44, 4400, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Gloom - Toxic - TM27
  (44, 4400, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 20),
  -- Gloom - Dazzling Gleam - TM32
  (44, 4400, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 21),
  -- Gloom - Solar Beam - TM45
  (44, 4400, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 22),
  -- Gloom - Sludge Bomb - TM52
  (44, 4400, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 23),
  -- Gloom - Mega Drain - TM53
  (44, 4400, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 24),
  -- Vileplume - Solar Beam - Level 1
  (45, 4500, 76, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Absorb - Level 1
  (45, 4500, 71, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Growth - Level 1
  (45, 4500, 74, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Acid - Level 1
  (45, 4500, 51, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Poison Powder - Level 1
  (45, 4500, 77, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vileplume - Petal Dance - Level 54
  (45, 4500, 80, 17, NULL, 1, 54, NULL, NULL, NULL, 6),
  -- Vileplume - Headbutt - TM01
  (45, 4500, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 7),
  -- Vileplume - Rest - TM05
  (45, 4500, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 8),
  -- Vileplume - Protect - TM07
  (45, 4500, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 9),
  -- Vileplume - Substitute - TM08
  (45, 4500, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 10),
  -- Vileplume - Reflect - TM09
  (45, 4500, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 11),
  -- Vileplume - Facade - TM12
  (45, 4500, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 12),
  -- Vileplume - Toxic - TM27
  (45, 4500, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 13),
  -- Vileplume - Dazzling Gleam - TM32
  (45, 4500, 605, 17, NULL, 2, NULL, NULL, 17002032, NULL, 14),
  -- Vileplume - Solar Beam - TM45
  (45, 4500, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 15),
  -- Vileplume - Hyper Beam - TM48
  (45, 4500, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 16),
  -- Vileplume - Sludge Bomb - TM52
  (45, 4500, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 17),
  -- Vileplume - Mega Drain - TM53
  (45, 4500, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 18),
  -- Paras - Scratch - Level 1
  (46, 4600, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Sleep Powder - Level 2
  (46, 4600, 79, 17, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Paras - Stun Spore - Level 4
  (46, 4600, 78, 17, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Paras - Poison Powder - Level 6
  (46, 4600, 77, 17, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Paras - Absorb - Level 9
  (46, 4600, 71, 17, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Paras - Growth - Level 12
  (46, 4600, 74, 17, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Paras - Fury Swipes - Level 15
  (46, 4600, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Paras - Slash - Level 19
  (46, 4600, 163, 17, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Paras - Leech Life - Level 23
  (46, 4600, 141, 17, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Paras - Spore - Level 27
  (46, 4600, 147, 17, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Paras - X-Scissor - Level 31
  (46, 4600, 404, 17, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Paras - Headbutt - TM01
  (46, 4600, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 12),
  -- Paras - Rest - TM05
  (46, 4600, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 13),
  -- Paras - Light Screen - TM06
  (46, 4600, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 14),
  -- Paras - Protect - TM07
  (46, 4600, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 15),
  -- Paras - Substitute - TM08
  (46, 4600, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 16),
  -- Paras - Reflect - TM09
  (46, 4600, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 17),
  -- Paras - Dig - TM10
  (46, 4600, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 18),
  -- Paras - Facade - TM12
  (46, 4600, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 19),
  -- Paras - Brick Break - TM13
  (46, 4600, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 20),
  -- Paras - X-Scissor - TM24
  (46, 4600, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 21),
  -- Paras - Toxic - TM27
  (46, 4600, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 22),
  -- Paras - Solar Beam - TM45
  (46, 4600, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 23),
  -- Paras - Sludge Bomb - TM52
  (46, 4600, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 24),
  -- Paras - Mega Drain - TM53
  (46, 4600, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 25),
  -- Parasect - Leech Seed - Level 1
  (47, 4700, 73, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Screech - Level 1
  (47, 4700, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Sleep Powder - Level 1
  (47, 4700, 79, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Parasect - Poison Powder - Level 1
  (47, 4700, 77, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Parasect - Sleep Powder - Level 2
  (47, 4700, 79, 17, NULL, 1, 2, NULL, NULL, NULL, 7),
  -- Parasect - Stun Spore - Level 4
  (47, 4700, 78, 17, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Parasect - Poison Powder - Level 6
  (47, 4700, 77, 17, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Parasect - Absorb - Level 9
  (47, 4700, 71, 17, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Parasect - Growth - Level 12
  (47, 4700, 74, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Parasect - Fury Swipes - Level 15
  (47, 4700, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Parasect - Slash - Level 19
  (47, 4700, 163, 17, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Parasect - Leech Life - Level 23
  (47, 4700, 141, 17, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Parasect - Spore - Level 33
  (47, 4700, 147, 17, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Parasect - X-Scissor - Level 43
  (47, 4700, 404, 17, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Parasect - Headbutt - TM01
  (47, 4700, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 17),
  -- Parasect - Rest - TM05
  (47, 4700, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 18),
  -- Parasect - Light Screen - TM06
  (47, 4700, 113, 17, NULL, 2, NULL, NULL, 17002006, NULL, 19),
  -- Parasect - Protect - TM07
  (47, 4700, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 20),
  -- Parasect - Substitute - TM08
  (47, 4700, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 21),
  -- Parasect - Reflect - TM09
  (47, 4700, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 22),
  -- Parasect - Dig - TM10
  (47, 4700, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 23),
  -- Parasect - Facade - TM12
  (47, 4700, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 24),
  -- Parasect - Brick Break - TM13
  (47, 4700, 280, 17, NULL, 2, NULL, NULL, 17002013, NULL, 25),
  -- Parasect - X-Scissor - TM24
  (47, 4700, 404, 17, NULL, 2, NULL, NULL, 17002024, NULL, 26),
  -- Parasect - Toxic - TM27
  (47, 4700, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 27),
  -- Parasect - Solar Beam - TM45
  (47, 4700, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 28),
  -- Parasect - Hyper Beam - TM48
  (47, 4700, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 29),
  -- Parasect - Sludge Bomb - TM52
  (47, 4700, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 30),
  -- Parasect - Mega Drain - TM53
  (47, 4700, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 31),
  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 4
  (48, 4800, 50, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Venonat - Supersonic - Level 8
  (48, 4800, 48, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Venonat - Confusion - Level 12
  (48, 4800, 93, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Venonat - Poison Powder - Level 14
  (48, 4800, 77, 17, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Venonat - Stun Spore - Level 16
  (48, 4800, 78, 17, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Venonat - Psybeam - Level 20
  (48, 4800, 60, 17, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Venonat - Sleep Powder - Level 24
  (48, 4800, 79, 17, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Venonat - Leech Life - Level 28
  (48, 4800, 141, 17, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Venonat - Psychic - Level 32
  (48, 4800, 94, 17, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Venonat - Headbutt - TM01
  (48, 4800, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Venonat - Rest - TM05
  (48, 4800, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Venonat - Protect - TM07
  (48, 4800, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Venonat - Substitute - TM08
  (48, 4800, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Venonat - Reflect - TM09
  (48, 4800, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 15),
  -- Venonat - Facade - TM12
  (48, 4800, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Venonat - Toxic - TM27
  (48, 4800, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 17),
  -- Venonat - Psychic - TM40
  (48, 4800, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 18),
  -- Venonat - Solar Beam - TM45
  (48, 4800, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 19),
  -- Venonat - Sludge Bomb - TM52
  (48, 4800, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 20),
  -- Venonat - Mega Drain - TM53
  (48, 4800, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 21),
  -- Venomoth - Gust - Level 1
  (49, 4900, 16, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Agility - Level 1
  (49, 4900, 97, 17, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Screech - Level 1
  (49, 4900, 103, 17, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 17, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 17, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 17, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Venomoth - Confusion - Level 1
  (49, 4900, 93, 17, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Venomoth - Gust - Evolution
  (49, 4900, 16, 17, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Venomoth - Disable - Level 4
  (49, 4900, 50, 17, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Venomoth - Supersonic - Level 8
  (49, 4900, 48, 17, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Venomoth - Confusion - Level 12
  (49, 4900, 93, 17, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Venomoth - Poison Powder - Level 14
  (49, 4900, 77, 17, NULL, 1, 14, NULL, NULL, NULL, 12),
  -- Venomoth - Stun Spore - Level 16
  (49, 4900, 78, 17, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Venomoth - Psybeam - Level 20
  (49, 4900, 60, 17, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Venomoth - Sleep Powder - Level 24
  (49, 4900, 79, 17, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Venomoth - Leech Life - Level 28
  (49, 4900, 141, 17, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Venomoth - Psychic - Level 37
  (49, 4900, 94, 17, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Venomoth - Bug Buzz - Level 46
  (49, 4900, 405, 17, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Venomoth - Quiver Dance - Level 55
  (49, 4900, 483, 17, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Venomoth - Headbutt - TM01
  (49, 4900, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 20),
  -- Venomoth - Teleport - TM04
  (49, 4900, 100, 17, NULL, 2, NULL, NULL, 17002004, NULL, 21),
  -- Venomoth - Rest - TM05
  (49, 4900, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 22),
  -- Venomoth - Protect - TM07
  (49, 4900, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 23),
  -- Venomoth - Substitute - TM08
  (49, 4900, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 24),
  -- Venomoth - Reflect - TM09
  (49, 4900, 115, 17, NULL, 2, NULL, NULL, 17002009, NULL, 25),
  -- Venomoth - Facade - TM12
  (49, 4900, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 26),
  -- Venomoth - U-turn - TM18
  (49, 4900, 369, 17, NULL, 2, NULL, NULL, 17002018, NULL, 27),
  -- Venomoth - Toxic - TM27
  (49, 4900, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 28),
  -- Venomoth - Psychic - TM40
  (49, 4900, 94, 17, NULL, 2, NULL, NULL, 17002040, NULL, 29),
  -- Venomoth - Solar Beam - TM45
  (49, 4900, 76, 17, NULL, 2, NULL, NULL, 17002045, NULL, 30),
  -- Venomoth - Hyper Beam - TM48
  (49, 4900, 63, 17, NULL, 2, NULL, NULL, 17002048, NULL, 31),
  -- Venomoth - Roost - TM50
  (49, 4900, 355, 17, NULL, 2, NULL, NULL, 17002050, NULL, 32),
  -- Venomoth - Sludge Bomb - TM52
  (49, 4900, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 33),
  -- Venomoth - Mega Drain - TM53
  (49, 4900, 72, 17, NULL, 2, NULL, NULL, 17002053, NULL, 34),
  -- Venomoth - Dream Eater - TM59
  (49, 4900, 138, 17, NULL, 2, NULL, NULL, 17002059, NULL, 35),
  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 17, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 4
  (50, 5000, 28, 17, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 8
  (50, 5000, 45, 17, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Diglett - Agility - Level 12
  (50, 5000, 97, 17, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Diglett - Fury Swipes - Level 15
  (50, 5000, 154, 17, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Diglett - Dig - Level 18
  (50, 5000, 91, 17, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Diglett - Slash - Level 21
  (50, 5000, 163, 17, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Diglett - Sucker Punch - Level 25
  (50, 5000, 389, 17, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Diglett - Earthquake - Level 29
  (50, 5000, 89, 17, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Diglett - Fissure - Level 33
  (50, 5000, 90, 17, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Diglett - Headbutt - TM01
  (50, 5000, 29, 17, NULL, 2, NULL, NULL, 17002001, NULL, 11),
  -- Diglett - Rest - TM05
  (50, 5000, 156, 17, NULL, 2, NULL, NULL, 17002005, NULL, 12),
  -- Diglett - Protect - TM07
  (50, 5000, 182, 17, NULL, 2, NULL, NULL, 17002007, NULL, 13),
  -- Diglett - Substitute - TM08
  (50, 5000, 164, 17, NULL, 2, NULL, NULL, 17002008, NULL, 14),
  -- Diglett - Dig - TM10
  (50, 5000, 91, 17, NULL, 2, NULL, NULL, 17002010, NULL, 15),
  -- Diglett - Facade - TM12
  (50, 5000, 263, 17, NULL, 2, NULL, NULL, 17002012, NULL, 16),
  -- Diglett - Rock Slide - TM22
  (50, 5000, 157, 17, NULL, 2, NULL, NULL, 17002022, NULL, 17),
  -- Diglett - Toxic - TM27
  (50, 5000, 92, 17, NULL, 2, NULL, NULL, 17002027, NULL, 18),
  -- Diglett - Earthquake - TM41
  (50, 5000, 89, 17, NULL, 2, NULL, NULL, 17002041, NULL, 19),
  -- Diglett - Sludge Bomb - TM52
  (50, 5000, 188, 17, NULL, 2, NULL, NULL, 17002052, NULL, 20),
  -- Diglett - Stealth Rock - TM56
  (50, 5000, 446, 17, NULL, 2, NULL, NULL, 17002056, NULL, 21);
