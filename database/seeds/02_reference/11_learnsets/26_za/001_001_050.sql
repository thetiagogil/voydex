-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM107 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 001-050.
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
  (1, 100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 1
  (1, 100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bulbasaur - Vine Whip - Level 3
  (1, 100, 22, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bulbasaur - Growth - Level 6
  (1, 100, 74, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bulbasaur - Leech Seed - Level 9
  (1, 100, 73, 26, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bulbasaur - Razor Leaf - Level 12
  (1, 100, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Bulbasaur - Take Down - Level 25
  (1, 100, 36, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bulbasaur - Magical Leaf - Level 30
  (1, 100, 345, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Bulbasaur - Synthesis - Level 35
  (1, 100, 235, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Bulbasaur - Amnesia - Level 40
  (1, 100, 133, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bulbasaur - Sludge Wave - Level 42
  (1, 100, 482, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Bulbasaur - Double-Edge - Level 45
  (1, 100, 38, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Bulbasaur - Solar Beam - Level 55
  (1, 100, 76, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Bulbasaur - Toxic - TM007
  (1, 100, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Bulbasaur - Light Screen - TM016
  (1, 100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Bulbasaur - Protect - TM017
  (1, 100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Bulbasaur - Energy Ball - TM026
  (1, 100, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Bulbasaur - Swords Dance - TM030
  (1, 100, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Bulbasaur - Body Slam - TM033
  (1, 100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Bulbasaur - Endure - TM035
  (1, 100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Bulbasaur - Bullet Seed - TM040
  (1, 100, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 23),
  -- Bulbasaur - Giga Drain - TM042
  (1, 100, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 24),
  -- Bulbasaur - Safeguard - TM051
  (1, 100, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 25),
  -- Bulbasaur - Sludge Bomb - TM053
  (1, 100, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Bulbasaur - Double-Edge - TM056
  (1, 100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Bulbasaur - Solar Beam - TM064
  (1, 100, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 28),
  -- Bulbasaur - Substitute - TM085
  (1, 100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Bulbasaur - Work Up - TM103
  (1, 100, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 30),
  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Vine Whip - Level 3
  (2, 200, 22, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Ivysaur - Growth - Level 6
  (2, 200, 74, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 9
  (2, 200, 73, 26, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ivysaur - Razor Leaf - Level 12
  (2, 200, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Take Down - Level 25
  (2, 200, 36, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ivysaur - Magical Leaf - Level 30
  (2, 200, 345, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Ivysaur - Synthesis - Level 35
  (2, 200, 235, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Ivysaur - Amnesia - Level 40
  (2, 200, 133, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Ivysaur - Sludge Wave - Level 42
  (2, 200, 482, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Ivysaur - Double-Edge - Level 45
  (2, 200, 38, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Ivysaur - Solar Beam - Level 55
  (2, 200, 76, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Ivysaur - Roar - TM005
  (2, 200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Ivysaur - Toxic - TM007
  (2, 200, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Ivysaur - Light Screen - TM016
  (2, 200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Ivysaur - Protect - TM017
  (2, 200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Ivysaur - Energy Ball - TM026
  (2, 200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Ivysaur - Swords Dance - TM030
  (2, 200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Ivysaur - Body Slam - TM033
  (2, 200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Ivysaur - Endure - TM035
  (2, 200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Ivysaur - Bullet Seed - TM040
  (2, 200, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 24),
  -- Ivysaur - Giga Drain - TM042
  (2, 200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Ivysaur - Safeguard - TM051
  (2, 200, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 26),
  -- Ivysaur - Sludge Bomb - TM053
  (2, 200, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Ivysaur - Double-Edge - TM056
  (2, 200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Ivysaur - Solar Beam - TM064
  (2, 200, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 29),
  -- Ivysaur - Substitute - TM085
  (2, 200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Ivysaur - Work Up - TM103
  (2, 200, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 31),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Vine Whip - Level 3
  (3, 300, 22, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Venusaur - Growth - Level 6
  (3, 300, 74, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Venusaur - Leech Seed - Level 9
  (3, 300, 73, 26, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Venusaur - Razor Leaf - Level 12
  (3, 300, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Venusaur - Take Down - Level 25
  (3, 300, 36, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venusaur - Magical Leaf - Level 30
  (3, 300, 345, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Venusaur - Synthesis - Level 35
  (3, 300, 235, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Venusaur - Amnesia - Level 40
  (3, 300, 133, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Venusaur - Sludge Wave - Level 42
  (3, 300, 482, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Venusaur - Double-Edge - Level 45
  (3, 300, 38, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Venusaur - Solar Beam - Level 55
  (3, 300, 76, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Venusaur - Power Whip - Evolution
  (3, 300, 438, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Venusaur - Roar - TM005
  (3, 300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Venusaur - Toxic - TM007
  (3, 300, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 18),
  -- Venusaur - Light Screen - TM016
  (3, 300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Venusaur - Protect - TM017
  (3, 300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Venusaur - Energy Ball - TM026
  (3, 300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 21),
  -- Venusaur - Swords Dance - TM030
  (3, 300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Venusaur - Body Slam - TM033
  (3, 300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Venusaur - Endure - TM035
  (3, 300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Venusaur - Bullet Seed - TM040
  (3, 300, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 25),
  -- Venusaur - Giga Drain - TM042
  (3, 300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 26),
  -- Venusaur - Hyper Beam - TM044
  (3, 300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Venusaur - Safeguard - TM051
  (3, 300, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Venusaur - Earth Power - TM052
  (3, 300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Venusaur - Sludge Bomb - TM053
  (3, 300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 30),
  -- Venusaur - Giga Impact - TM055
  (3, 300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Venusaur - Double-Edge - TM056
  (3, 300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Venusaur - Solar Beam - TM064
  (3, 300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Venusaur - Earthquake - TM069
  (3, 300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Venusaur - Substitute - TM085
  (3, 300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Venusaur - Outrage - TM093
  (3, 300, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 36),
  -- Venusaur - Work Up - TM103
  (3, 300, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Charmander - Tackle - Level 1
  (4, 400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 4
  (4, 400, 52, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 8
  (4, 400, 108, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Breath - Level 12
  (4, 400, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmander - Fire Fang - Level 17
  (4, 400, 424, 26, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmander - Fire Spin - Level 20
  (4, 400, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charmander - Slash - Level 24
  (4, 400, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charmander - Flamethrower - Level 30
  (4, 400, 53, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Charmander - Dragon Rush - Level 42
  (4, 400, 407, 26, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Charmander - Flare Blitz - Level 54
  (4, 400, 394, 26, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Charmander - Dragon Claw - TM002
  (4, 400, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 12),
  -- Charmander - Roar - TM005
  (4, 400, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Charmander - Brick Break - TM010
  (4, 400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Charmander - Rock Slide - TM012
  (4, 400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Charmander - Fire Fang - TM014
  (4, 400, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Charmander - Protect - TM017
  (4, 400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Charmander - Thunder Punch - TM023
  (4, 400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Charmander - Crunch - TM025
  (4, 400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Charmander - Swift - TM027
  (4, 400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Charmander - Dig - TM028
  (4, 400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Charmander - Fire Punch - TM029
  (4, 400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Charmander - Swords Dance - TM030
  (4, 400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Charmander - Body Slam - TM033
  (4, 400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Charmander - Endure - TM035
  (4, 400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Charmander - Rock Tomb - TM036
  (4, 400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Charmander - Fire Blast - TM038
  (4, 400, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 27),
  -- Charmander - Overheat - TM050
  (4, 400, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 28),
  -- Charmander - Will-O-Wisp - TM057
  (4, 400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Charmander - Shadow Claw - TM061
  (4, 400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Charmander - Flamethrower - TM062
  (4, 400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Charmander - Heat Wave - TM068
  (4, 400, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 32),
  -- Charmander - Fire Spin - TM072
  (4, 400, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 33),
  -- Charmander - Dragon Pulse - TM075
  (4, 400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Charmander - Substitute - TM085
  (4, 400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Charmander - Iron Tail - TM087
  (4, 400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Charmander - Outrage - TM093
  (4, 400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 37),
  -- Charmander - Focus Blast - TM102
  (4, 400, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Charmander - Flare Blitz - TM104
  (4, 400, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 39),
  -- Charmeleon - Tackle - Level 1
  (5, 500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 4
  (5, 500, 52, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Charmeleon - Smokescreen - Level 8
  (5, 500, 108, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charmeleon - Dragon Breath - Level 12
  (5, 500, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmeleon - Fire Fang - Level 17
  (5, 500, 424, 26, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmeleon - Fire Spin - Level 20
  (5, 500, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charmeleon - Slash - Level 24
  (5, 500, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charmeleon - Flamethrower - Level 30
  (5, 500, 53, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Charmeleon - Dragon Rush - Level 42
  (5, 500, 407, 26, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Charmeleon - Flare Blitz - Level 54
  (5, 500, 394, 26, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Charmeleon - Dragon Claw - TM002
  (5, 500, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 12),
  -- Charmeleon - Roar - TM005
  (5, 500, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Charmeleon - Brick Break - TM010
  (5, 500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Charmeleon - Rock Slide - TM012
  (5, 500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Charmeleon - Fire Fang - TM014
  (5, 500, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Charmeleon - Protect - TM017
  (5, 500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Charmeleon - Thunder Punch - TM023
  (5, 500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Charmeleon - Crunch - TM025
  (5, 500, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Charmeleon - Swift - TM027
  (5, 500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Charmeleon - Dig - TM028
  (5, 500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Charmeleon - Fire Punch - TM029
  (5, 500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Charmeleon - Swords Dance - TM030
  (5, 500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Charmeleon - Body Slam - TM033
  (5, 500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Charmeleon - Endure - TM035
  (5, 500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Charmeleon - Rock Tomb - TM036
  (5, 500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Charmeleon - Fire Blast - TM038
  (5, 500, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 27),
  -- Charmeleon - Overheat - TM050
  (5, 500, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 28),
  -- Charmeleon - Will-O-Wisp - TM057
  (5, 500, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Charmeleon - Shadow Claw - TM061
  (5, 500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Charmeleon - Flamethrower - TM062
  (5, 500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Charmeleon - Heat Wave - TM068
  (5, 500, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 32),
  -- Charmeleon - Fire Spin - TM072
  (5, 500, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 33),
  -- Charmeleon - Dragon Pulse - TM075
  (5, 500, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Charmeleon - Substitute - TM085
  (5, 500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Charmeleon - Iron Tail - TM087
  (5, 500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Charmeleon - Outrage - TM093
  (5, 500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 37),
  -- Charmeleon - Focus Blast - TM102
  (5, 500, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Charmeleon - Flare Blitz - TM104
  (5, 500, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 39),
  -- Charizard - Tackle - Level 1
  (6, 600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Dragon Claw - Level 1
  (6, 600, 337, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Ember - Level 4
  (6, 600, 52, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Charizard - Smokescreen - Level 8
  (6, 600, 108, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Charizard - Dragon Breath - Level 12
  (6, 600, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Charizard - Fire Fang - Level 17
  (6, 600, 424, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Charizard - Fire Spin - Level 20
  (6, 600, 83, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Charizard - Slash - Level 24
  (6, 600, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Charizard - Flamethrower - Level 30
  (6, 600, 53, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Charizard - Dragon Rush - Level 42
  (6, 600, 407, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Charizard - Flare Blitz - Level 54
  (6, 600, 394, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Charizard - Fire Blast - Evolution
  (6, 600, 126, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Charizard - Air Slash - Evolution
  (6, 600, 403, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Charizard - Dragon Claw - TM002
  (6, 600, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Charizard - Roar - TM005
  (6, 600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Charizard - Brick Break - TM010
  (6, 600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Charizard - Rock Slide - TM012
  (6, 600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Charizard - Fire Fang - TM014
  (6, 600, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Charizard - Protect - TM017
  (6, 600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Charizard - Thunder Punch - TM023
  (6, 600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Charizard - Crunch - TM025
  (6, 600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Charizard - Swift - TM027
  (6, 600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Charizard - Dig - TM028
  (6, 600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Charizard - Fire Punch - TM029
  (6, 600, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Charizard - Swords Dance - TM030
  (6, 600, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Charizard - Body Slam - TM033
  (6, 600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Charizard - Endure - TM035
  (6, 600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Charizard - Rock Tomb - TM036
  (6, 600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Charizard - Fire Blast - TM038
  (6, 600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Charizard - Fly - TM043
  (6, 600, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 31),
  -- Charizard - Hyper Beam - TM044
  (6, 600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Charizard - Overheat - TM050
  (6, 600, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 33),
  -- Charizard - Giga Impact - TM055
  (6, 600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Charizard - Double-Edge - TM056
  (6, 600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Charizard - Will-O-Wisp - TM057
  (6, 600, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 36),
  -- Charizard - Shadow Claw - TM061
  (6, 600, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 37),
  -- Charizard - Flamethrower - TM062
  (6, 600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 38),
  -- Charizard - Solar Beam - TM064
  (6, 600, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 39),
  -- Charizard - Heat Wave - TM068
  (6, 600, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 40),
  -- Charizard - Earthquake - TM069
  (6, 600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 41),
  -- Charizard - Fire Spin - TM072
  (6, 600, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 42),
  -- Charizard - Dragon Pulse - TM075
  (6, 600, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 43),
  -- Charizard - Hurricane - TM079
  (6, 600, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 44),
  -- Charizard - Substitute - TM085
  (6, 600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Charizard - Iron Tail - TM087
  (6, 600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 46),
  -- Charizard - Outrage - TM093
  (6, 600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 47),
  -- Charizard - Focus Blast - TM102
  (6, 600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Charizard - Flare Blitz - TM104
  (6, 600, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 49),
  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 1
  (7, 700, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squirtle - Water Gun - Level 3
  (7, 700, 55, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Squirtle - Bite - Level 12
  (7, 700, 44, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Squirtle - Bubble Beam - Level 15
  (7, 700, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Squirtle - Icy Wind - Level 20
  (7, 700, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Squirtle - Aqua Ring - Level 30
  (7, 700, 392, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Squirtle - Aqua Jet - Level 35
  (7, 700, 453, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Squirtle - Iron Defense - Level 40
  (7, 700, 334, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Squirtle - Liquidation - Level 45
  (7, 700, 710, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Squirtle - Headbutt - TM001
  (7, 700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 11),
  -- Squirtle - Flip Turn - TM009
  (7, 700, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 12),
  -- Squirtle - Brick Break - TM010
  (7, 700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Squirtle - Ice Beam - TM013
  (7, 700, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Squirtle - Protect - TM017
  (7, 700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Squirtle - Ice Punch - TM024
  (7, 700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 16),
  -- Squirtle - Dig - TM028
  (7, 700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Squirtle - Body Slam - TM033
  (7, 700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 18),
  -- Squirtle - Endure - TM035
  (7, 700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Squirtle - Rock Tomb - TM036
  (7, 700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 20),
  -- Squirtle - Water Pulse - TM041
  (7, 700, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 21),
  -- Squirtle - Mud Shot - TM046
  (7, 700, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Squirtle - Icy Wind - TM049
  (7, 700, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 23),
  -- Squirtle - Double-Edge - TM056
  (7, 700, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 24),
  -- Squirtle - Iron Head - TM058
  (7, 700, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 25),
  -- Squirtle - Zen Headbutt - TM059
  (7, 700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Squirtle - Whirlpool - TM070
  (7, 700, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 27),
  -- Squirtle - Surf - TM073
  (7, 700, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Squirtle - Dragon Pulse - TM075
  (7, 700, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 29),
  -- Squirtle - Liquidation - TM076
  (7, 700, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 30),
  -- Squirtle - Iron Defense - TM080
  (7, 700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Squirtle - Substitute - TM085
  (7, 700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Squirtle - Iron Tail - TM087
  (7, 700, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Squirtle - Hydro Pump - TM096
  (7, 700, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 34),
  -- Squirtle - Waterfall - TM098
  (7, 700, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 35),
  -- Squirtle - Work Up - TM103
  (7, 700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 36),
  -- Squirtle - Blizzard - TM105
  (7, 700, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Water Gun - Level 3
  (8, 800, 55, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Wartortle - Bite - Level 12
  (8, 800, 44, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Wartortle - Bubble Beam - Level 15
  (8, 800, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wartortle - Icy Wind - Level 20
  (8, 800, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Wartortle - Aqua Ring - Level 30
  (8, 800, 392, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Wartortle - Aqua Jet - Level 35
  (8, 800, 453, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Wartortle - Iron Defense - Level 40
  (8, 800, 334, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Wartortle - Liquidation - Level 45
  (8, 800, 710, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Wartortle - Headbutt - TM001
  (8, 800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 11),
  -- Wartortle - Flip Turn - TM009
  (8, 800, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 12),
  -- Wartortle - Brick Break - TM010
  (8, 800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Wartortle - Ice Beam - TM013
  (8, 800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Wartortle - Protect - TM017
  (8, 800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Wartortle - Ice Punch - TM024
  (8, 800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 16),
  -- Wartortle - Dig - TM028
  (8, 800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Wartortle - Body Slam - TM033
  (8, 800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 18),
  -- Wartortle - Endure - TM035
  (8, 800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Wartortle - Rock Tomb - TM036
  (8, 800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 20),
  -- Wartortle - Water Pulse - TM041
  (8, 800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 21),
  -- Wartortle - Mud Shot - TM046
  (8, 800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Wartortle - Icy Wind - TM049
  (8, 800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 23),
  -- Wartortle - Double-Edge - TM056
  (8, 800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 24),
  -- Wartortle - Iron Head - TM058
  (8, 800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 25),
  -- Wartortle - Zen Headbutt - TM059
  (8, 800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Wartortle - Whirlpool - TM070
  (8, 800, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 27),
  -- Wartortle - Surf - TM073
  (8, 800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Wartortle - Dragon Pulse - TM075
  (8, 800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 29),
  -- Wartortle - Liquidation - TM076
  (8, 800, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 30),
  -- Wartortle - Iron Defense - TM080
  (8, 800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Wartortle - Substitute - TM085
  (8, 800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Wartortle - Iron Tail - TM087
  (8, 800, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Wartortle - Hydro Pump - TM096
  (8, 800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 34),
  -- Wartortle - Waterfall - TM098
  (8, 800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 35),
  -- Wartortle - Work Up - TM103
  (8, 800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 36),
  -- Wartortle - Blizzard - TM105
  (8, 800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 37),
  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Water Gun - Level 3
  (9, 900, 55, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Blastoise - Bite - Level 12
  (9, 900, 44, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Blastoise - Bubble Beam - Level 15
  (9, 900, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Blastoise - Icy Wind - Level 20
  (9, 900, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Blastoise - Aqua Ring - Level 30
  (9, 900, 392, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Blastoise - Aqua Jet - Level 35
  (9, 900, 453, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Blastoise - Iron Defense - Level 40
  (9, 900, 334, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Blastoise - Liquidation - Level 45
  (9, 900, 710, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Blastoise - Hydro Pump - Evolution
  (9, 900, 56, 26, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Blastoise - Flash Cannon - Evolution
  (9, 900, 430, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Blastoise - Headbutt - TM001
  (9, 900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Blastoise - Roar - TM005
  (9, 900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Blastoise - Flip Turn - TM009
  (9, 900, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Blastoise - Brick Break - TM010
  (9, 900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Blastoise - Rock Slide - TM012
  (9, 900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Blastoise - Ice Beam - TM013
  (9, 900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Blastoise - Protect - TM017
  (9, 900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Blastoise - Ice Punch - TM024
  (9, 900, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 20),
  -- Blastoise - Crunch - TM025
  (9, 900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Blastoise - Dig - TM028
  (9, 900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Blastoise - Body Slam - TM033
  (9, 900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Blastoise - Endure - TM035
  (9, 900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Blastoise - Rock Tomb - TM036
  (9, 900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Blastoise - Water Pulse - TM041
  (9, 900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 26),
  -- Blastoise - Hyper Beam - TM044
  (9, 900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Blastoise - Mud Shot - TM046
  (9, 900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Blastoise - Icy Wind - TM049
  (9, 900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Blastoise - Giga Impact - TM055
  (9, 900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Blastoise - Double-Edge - TM056
  (9, 900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Blastoise - Iron Head - TM058
  (9, 900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Blastoise - Zen Headbutt - TM059
  (9, 900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Blastoise - Earthquake - TM069
  (9, 900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Blastoise - Whirlpool - TM070
  (9, 900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 35),
  -- Blastoise - Surf - TM073
  (9, 900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 36),
  -- Blastoise - Dragon Pulse - TM075
  (9, 900, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Blastoise - Liquidation - TM076
  (9, 900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 38),
  -- Blastoise - Iron Defense - TM080
  (9, 900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 39),
  -- Blastoise - Flash Cannon - TM084
  (9, 900, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 40),
  -- Blastoise - Substitute - TM085
  (9, 900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Blastoise - Iron Tail - TM087
  (9, 900, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 42),
  -- Blastoise - Dark Pulse - TM090
  (9, 900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 43),
  -- Blastoise - Outrage - TM093
  (9, 900, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 44),
  -- Blastoise - Hydro Pump - TM096
  (9, 900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 45),
  -- Blastoise - Waterfall - TM098
  (9, 900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 46),
  -- Blastoise - Focus Blast - TM102
  (9, 900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 47),
  -- Blastoise - Work Up - TM103
  (9, 900, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 48),
  -- Blastoise - Blizzard - TM105
  (9, 900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 49),
  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weedle - Electroweb - TM101
  (13, 1300, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 3),
  -- Kakuna - Poison Sting - Level 1
  (14, 1400, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - String Shot - Level 1
  (14, 1400, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kakuna - Harden - Level 7
  (14, 1400, 106, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kakuna - Iron Defense - TM080
  (14, 1400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 4),
  -- Kakuna - Electroweb - TM101
  (14, 1400, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 5),
  -- Beedrill - Poison Sting - Level 1
  (15, 1500, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - String Shot - Level 1
  (15, 1500, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beedrill - Harden - Level 7
  (15, 1500, 106, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Beedrill - Focus Energy - Level 15
  (15, 1500, 116, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Beedrill - Brutal Swing - Level 20
  (15, 1500, 693, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Beedrill - X-Scissor - Level 25
  (15, 1500, 404, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Beedrill - Bug Buzz - Level 27
  (15, 1500, 405, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Beedrill - Toxic Spikes - Level 29
  (15, 1500, 390, 26, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Beedrill - Lunge - Level 33
  (15, 1500, 679, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Beedrill - Poison Jab - Level 35
  (15, 1500, 398, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Beedrill - Drill Run - Level 40
  (15, 1500, 529, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Beedrill - Pin Missile - Evolution
  (15, 1500, 42, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Beedrill - Rock Smash - TM004
  (15, 1500, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Beedrill - Toxic - TM007
  (15, 1500, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 14),
  -- Beedrill - Brick Break - TM010
  (15, 1500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Beedrill - Protect - TM017
  (15, 1500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Beedrill - Aerial Ace - TM022
  (15, 1500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Beedrill - Swords Dance - TM030
  (15, 1500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Beedrill - Endure - TM035
  (15, 1500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Beedrill - Giga Drain - TM042
  (15, 1500, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 20),
  -- Beedrill - Hyper Beam - TM044
  (15, 1500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Beedrill - Agility - TM047
  (15, 1500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 22),
  -- Beedrill - Sludge Bomb - TM053
  (15, 1500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Beedrill - Giga Impact - TM055
  (15, 1500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Beedrill - Solar Beam - TM064
  (15, 1500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Beedrill - Poison Jab - TM077
  (15, 1500, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 26),
  -- Beedrill - Iron Defense - TM080
  (15, 1500, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 27),
  -- Beedrill - X-Scissor - TM081
  (15, 1500, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 28),
  -- Beedrill - U-turn - TM082
  (15, 1500, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 29),
  -- Beedrill - Substitute - TM085
  (15, 1500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Beedrill - Toxic Spikes - TM089
  (15, 1500, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 31),
  -- Beedrill - Outrage - TM093
  (15, 1500, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 32),
  -- Beedrill - Electroweb - TM101
  (15, 1500, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 33),
  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Growl - Level 1
  (16, 1600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 13
  (16, 1600, 98, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgey - Twister - Level 17
  (16, 1600, 239, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgey - Wing Attack - Level 21
  (16, 1600, 17, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgey - Whirlwind - Level 25
  (16, 1600, 18, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgey - Agility - Level 29
  (16, 1600, 97, 26, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgey - Air Slash - Level 33
  (16, 1600, 403, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgey - Feather Dance - Level 40
  (16, 1600, 297, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pidgey - Hurricane - Level 45
  (16, 1600, 542, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pidgey - Brave Bird - Level 50
  (16, 1600, 413, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pidgey - Headbutt - TM001
  (16, 1600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Pidgey - Protect - TM017
  (16, 1600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Pidgey - Aerial Ace - TM022
  (16, 1600, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Pidgey - Reflect - TM031
  (16, 1600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 16),
  -- Pidgey - Double Team - TM032
  (16, 1600, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Pidgey - Endure - TM035
  (16, 1600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Pidgey - Fly - TM043
  (16, 1600, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Pidgey - Agility - TM047
  (16, 1600, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 20),
  -- Pidgey - Heat Wave - TM068
  (16, 1600, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 21),
  -- Pidgey - Hurricane - TM079
  (16, 1600, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 22),
  -- Pidgey - U-turn - TM082
  (16, 1600, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 23),
  -- Pidgey - Substitute - TM085
  (16, 1600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Pidgey - Whirlwind - TM094
  (16, 1600, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 25),
  -- Pidgey - Work Up - TM103
  (16, 1600, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 26),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Growl - Level 1
  (17, 1700, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgeotto - Quick Attack - Level 13
  (17, 1700, 98, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgeotto - Twister - Level 17
  (17, 1700, 239, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgeotto - Wing Attack - Level 21
  (17, 1700, 17, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 25
  (17, 1700, 18, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgeotto - Agility - Level 29
  (17, 1700, 97, 26, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgeotto - Air Slash - Level 33
  (17, 1700, 403, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgeotto - Feather Dance - Level 40
  (17, 1700, 297, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pidgeotto - Hurricane - Level 45
  (17, 1700, 542, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pidgeotto - Brave Bird - Level 50
  (17, 1700, 413, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pidgeotto - Headbutt - TM001
  (17, 1700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Pidgeotto - Protect - TM017
  (17, 1700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Pidgeotto - Aerial Ace - TM022
  (17, 1700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Pidgeotto - Reflect - TM031
  (17, 1700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 16),
  -- Pidgeotto - Double Team - TM032
  (17, 1700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Pidgeotto - Endure - TM035
  (17, 1700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Pidgeotto - Fly - TM043
  (17, 1700, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Pidgeotto - Agility - TM047
  (17, 1700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 20),
  -- Pidgeotto - Heat Wave - TM068
  (17, 1700, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 21),
  -- Pidgeotto - Hurricane - TM079
  (17, 1700, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 22),
  -- Pidgeotto - U-turn - TM082
  (17, 1700, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 23),
  -- Pidgeotto - Substitute - TM085
  (17, 1700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Pidgeotto - Whirlwind - TM094
  (17, 1700, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 25),
  -- Pidgeotto - Work Up - TM103
  (17, 1700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 26),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Growl - Level 1
  (18, 1800, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgeot - Quick Attack - Level 13
  (18, 1800, 98, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgeot - Twister - Level 17
  (18, 1800, 239, 26, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgeot - Wing Attack - Level 21
  (18, 1800, 17, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgeot - Whirlwind - Level 25
  (18, 1800, 18, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgeot - Agility - Level 29
  (18, 1800, 97, 26, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgeot - Air Slash - Level 33
  (18, 1800, 403, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgeot - Feather Dance - Level 40
  (18, 1800, 297, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pidgeot - Hurricane - Level 45
  (18, 1800, 542, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pidgeot - Brave Bird - Level 50
  (18, 1800, 413, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pidgeot - Headbutt - TM001
  (18, 1800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Pidgeot - Protect - TM017
  (18, 1800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Pidgeot - Aerial Ace - TM022
  (18, 1800, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Pidgeot - Reflect - TM031
  (18, 1800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 16),
  -- Pidgeot - Double Team - TM032
  (18, 1800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Pidgeot - Endure - TM035
  (18, 1800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Pidgeot - Fly - TM043
  (18, 1800, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Pidgeot - Hyper Beam - TM044
  (18, 1800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Pidgeot - Agility - TM047
  (18, 1800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 21),
  -- Pidgeot - Giga Impact - TM055
  (18, 1800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 22),
  -- Pidgeot - Heat Wave - TM068
  (18, 1800, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 23),
  -- Pidgeot - Hurricane - TM079
  (18, 1800, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 24),
  -- Pidgeot - U-turn - TM082
  (18, 1800, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 25),
  -- Pidgeot - Substitute - TM085
  (18, 1800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Pidgeot - Whirlwind - TM094
  (18, 1800, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 27),
  -- Pidgeot - Work Up - TM103
  (18, 1800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 28),
  -- Ekans - Tackle - Level 1
  (23, 2300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 7
  (23, 2300, 40, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 9
  (23, 2300, 44, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 12
  (23, 2300, 137, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Brutal Swing - Level 15
  (23, 2300, 693, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ekans - Screech - Level 17
  (23, 2300, 103, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ekans - Toxic - Level 25
  (23, 2300, 92, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ekans - Leech Life - Level 33
  (23, 2300, 141, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Ekans - Poison Jab - Level 36
  (23, 2300, 398, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Ekans - Haze - Level 41
  (23, 2300, 114, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Ekans - Gunk Shot - Level 49
  (23, 2300, 441, 26, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Ekans - Toxic - TM007
  (23, 2300, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 13),
  -- Ekans - Rock Slide - TM012
  (23, 2300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Ekans - Fire Fang - TM014
  (23, 2300, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 15),
  -- Ekans - Ice Fang - TM015
  (23, 2300, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 16),
  -- Ekans - Protect - TM017
  (23, 2300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Ekans - Thunder Fang - TM021
  (23, 2300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 18),
  -- Ekans - Dig - TM028
  (23, 2300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Ekans - Body Slam - TM033
  (23, 2300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Ekans - Endure - TM035
  (23, 2300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Ekans - Rock Tomb - TM036
  (23, 2300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Ekans - Giga Drain - TM042
  (23, 2300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Ekans - Knock Off - TM045
  (23, 2300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 24),
  -- Ekans - Mud Shot - TM046
  (23, 2300, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 25),
  -- Ekans - Sludge Bomb - TM053
  (23, 2300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Ekans - Earthquake - TM069
  (23, 2300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 27),
  -- Ekans - Poison Jab - TM077
  (23, 2300, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 28),
  -- Ekans - Bulldoze - TM078
  (23, 2300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Ekans - Substitute - TM085
  (23, 2300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Ekans - Iron Tail - TM087
  (23, 2300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 31),
  -- Ekans - Dark Pulse - TM090
  (23, 2300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Ekans - Gunk Shot - TM100
  (23, 2300, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 33),
  -- Arbok - Tackle - Level 1
  (24, 2400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Poison Sting - Level 7
  (24, 2400, 40, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 9
  (24, 2400, 44, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Arbok - Glare - Level 12
  (24, 2400, 137, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Arbok - Brutal Swing - Level 15
  (24, 2400, 693, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Arbok - Screech - Level 17
  (24, 2400, 103, 26, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Arbok - Toxic - Level 25
  (24, 2400, 92, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Arbok - Leech Life - Level 33
  (24, 2400, 141, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Arbok - Poison Jab - Level 36
  (24, 2400, 398, 26, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Arbok - Haze - Level 41
  (24, 2400, 114, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Arbok - Gunk Shot - Level 49
  (24, 2400, 441, 26, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Arbok - Crunch - Evolution
  (24, 2400, 242, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Arbok - Toxic - TM007
  (24, 2400, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 14),
  -- Arbok - Rock Slide - TM012
  (24, 2400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Arbok - Fire Fang - TM014
  (24, 2400, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Arbok - Ice Fang - TM015
  (24, 2400, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Arbok - Protect - TM017
  (24, 2400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Arbok - Thunder Fang - TM021
  (24, 2400, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 19),
  -- Arbok - Crunch - TM025
  (24, 2400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Arbok - Dig - TM028
  (24, 2400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Arbok - Body Slam - TM033
  (24, 2400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Arbok - Endure - TM035
  (24, 2400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Arbok - Rock Tomb - TM036
  (24, 2400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Arbok - Giga Drain - TM042
  (24, 2400, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Arbok - Hyper Beam - TM044
  (24, 2400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Arbok - Knock Off - TM045
  (24, 2400, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Arbok - Mud Shot - TM046
  (24, 2400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Arbok - Sludge Bomb - TM053
  (24, 2400, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Arbok - Giga Impact - TM055
  (24, 2400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Arbok - Double-Edge - TM056
  (24, 2400, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Arbok - Earthquake - TM069
  (24, 2400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Arbok - Poison Jab - TM077
  (24, 2400, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Arbok - Bulldoze - TM078
  (24, 2400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Arbok - Substitute - TM085
  (24, 2400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Arbok - Iron Tail - TM087
  (24, 2400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Arbok - Dark Pulse - TM090
  (24, 2400, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 37),
  -- Arbok - Gunk Shot - TM100
  (24, 2400, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 38),
  -- Pikachu - Tail Whip - Level 1
  (25, 2500, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Growl - Level 1
  (25, 2500, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pikachu - Quick Attack - Level 1
  (25, 2500, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pikachu - Thunder Wave - Level 7
  (25, 2500, 86, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Pikachu - Nuzzle - Level 12
  (25, 2500, 609, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pikachu - Spark - Level 16
  (25, 2500, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pikachu - Charm - Level 20
  (25, 2500, 204, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pikachu - Thunderbolt - Level 25
  (25, 2500, 85, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pikachu - Charge - Level 30
  (25, 2500, 268, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Pikachu - Light Screen - Level 35
  (25, 2500, 113, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Pikachu - Thunder - Level 40
  (25, 2500, 87, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pikachu - Volt Tackle - Level 99
  (25, 2500, 344, 26, NULL, 1, 99, NULL, NULL, NULL, 13),
  -- Pikachu - Thunder Wave - TM008
  (25, 2500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Pikachu - Brick Break - TM010
  (25, 2500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Pikachu - Light Screen - TM016
  (25, 2500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Pikachu - Protect - TM017
  (25, 2500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Pikachu - Play Rough - TM020
  (25, 2500, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Pikachu - Thunder Punch - TM023
  (25, 2500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Pikachu - Swift - TM027
  (25, 2500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Pikachu - Dig - TM028
  (25, 2500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Pikachu - Reflect - TM031
  (25, 2500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Pikachu - Double Team - TM032
  (25, 2500, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Pikachu - Body Slam - TM033
  (25, 2500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Pikachu - Endure - TM035
  (25, 2500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Pikachu - Discharge - TM039
  (25, 2500, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 26),
  -- Pikachu - Agility - TM047
  (25, 2500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Pikachu - Volt Switch - TM066
  (25, 2500, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 28),
  -- Pikachu - Thunderbolt - TM067
  (25, 2500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 29),
  -- Pikachu - Surf - TM073
  (25, 2500, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Pikachu - Nasty Plot - TM083
  (25, 2500, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Pikachu - Substitute - TM085
  (25, 2500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Pikachu - Wild Charge - TM086
  (25, 2500, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 33),
  -- Pikachu - Iron Tail - TM087
  (25, 2500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 34),
  -- Pikachu - Electroweb - TM101
  (25, 2500, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 35),
  -- Pikachu - Thunder - TM106
  (25, 2500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 36),
  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Growl - Level 1
  (26, 2600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Thunder Wave - Level 4
  (26, 2600, 86, 26, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Raichu - Nuzzle - Level 12
  (26, 2600, 609, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Raichu - Spark - Level 16
  (26, 2600, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Raichu - Charm - Level 20
  (26, 2600, 204, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Raichu - Thunderbolt - Level 25
  (26, 2600, 85, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Raichu - Charge - Level 30
  (26, 2600, 268, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Raichu - Light Screen - Level 35
  (26, 2600, 113, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Raichu - Thunder - Level 40
  (26, 2600, 87, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Raichu - Volt Tackle - Level 99
  (26, 2600, 344, 26, NULL, 1, 99, NULL, NULL, NULL, 13),
  -- Raichu - Thunder Punch - Evolution
  (26, 2600, 9, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Raichu - Thunder Wave - TM008
  (26, 2600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Raichu - Brick Break - TM010
  (26, 2600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Raichu - Light Screen - TM016
  (26, 2600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Raichu - Protect - TM017
  (26, 2600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Raichu - Play Rough - TM020
  (26, 2600, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 19),
  -- Raichu - Thunder Punch - TM023
  (26, 2600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Raichu - Swift - TM027
  (26, 2600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Raichu - Dig - TM028
  (26, 2600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Raichu - Reflect - TM031
  (26, 2600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Raichu - Double Team - TM032
  (26, 2600, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 24),
  -- Raichu - Body Slam - TM033
  (26, 2600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Raichu - Endure - TM035
  (26, 2600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Raichu - Discharge - TM039
  (26, 2600, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 27),
  -- Raichu - Hyper Beam - TM044
  (26, 2600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Raichu - Agility - TM047
  (26, 2600, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Raichu - Giga Impact - TM055
  (26, 2600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Raichu - Volt Switch - TM066
  (26, 2600, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 31),
  -- Raichu - Thunderbolt - TM067
  (26, 2600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Raichu - Surf - TM073
  (26, 2600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 33),
  -- Raichu - Nasty Plot - TM083
  (26, 2600, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 34),
  -- Raichu - Substitute - TM085
  (26, 2600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Raichu - Wild Charge - TM086
  (26, 2600, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 36),
  -- Raichu - Iron Tail - TM087
  (26, 2600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Raichu - Dazzling Gleam - TM092
  (26, 2600, 605, 26, NULL, 2, NULL, NULL, 26002092, 'Version 2.0.0 onwards.', 38),
  -- Raichu - Electroweb - TM101
  (26, 2600, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 39),
  -- Raichu - Focus Blast - TM102
  (26, 2600, 411, 26, NULL, 2, NULL, NULL, 26002102, 'Version 2.0.0 onwards.', 40),
  -- Raichu - Thunder - TM106
  (26, 2600, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 41),
  -- Alolan Raichu - Tail Whip - Level 1
  (26, 2601, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Raichu - Growl - Level 1
  (26, 2601, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Raichu - Thunder Shock - Level 1
  (26, 2601, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Raichu - Quick Attack - Level 1
  (26, 2601, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Raichu - Thunder Wave - Level 4
  (26, 2601, 86, 26, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Alolan Raichu - Nuzzle - Level 12
  (26, 2601, 609, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Alolan Raichu - Spark - Level 16
  (26, 2601, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Alolan Raichu - Charm - Level 20
  (26, 2601, 204, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Alolan Raichu - Thunderbolt - Level 25
  (26, 2601, 85, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Alolan Raichu - Charge - Level 30
  (26, 2601, 268, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Alolan Raichu - Light Screen - Level 35
  (26, 2601, 113, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Alolan Raichu - Thunder - Level 40
  (26, 2601, 87, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alolan Raichu - Volt Tackle - Level 99
  (26, 2601, 344, 26, NULL, 1, 99, NULL, NULL, NULL, 13),
  -- Alolan Raichu - Psychic - Evolution
  (26, 2601, 94, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Alolan Raichu - Psyshock - TM003
  (26, 2601, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Alolan Raichu - Calm Mind - TM006
  (26, 2601, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Alolan Raichu - Thunder Wave - TM008
  (26, 2601, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Alolan Raichu - Brick Break - TM010
  (26, 2601, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Alolan Raichu - Light Screen - TM016
  (26, 2601, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Alolan Raichu - Protect - TM017
  (26, 2601, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Alolan Raichu - Play Rough - TM020
  (26, 2601, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Alolan Raichu - Thunder Punch - TM023
  (26, 2601, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Alolan Raichu - Swift - TM027
  (26, 2601, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Alolan Raichu - Dig - TM028
  (26, 2601, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Alolan Raichu - Reflect - TM031
  (26, 2601, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Alolan Raichu - Double Team - TM032
  (26, 2601, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Alolan Raichu - Body Slam - TM033
  (26, 2601, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Alolan Raichu - Endure - TM035
  (26, 2601, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Alolan Raichu - Discharge - TM039
  (26, 2601, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Alolan Raichu - Hyper Beam - TM044
  (26, 2601, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Alolan Raichu - Agility - TM047
  (26, 2601, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Alolan Raichu - Giga Impact - TM055
  (26, 2601, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Alolan Raichu - Psychic - TM063
  (26, 2601, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Alolan Raichu - Volt Switch - TM066
  (26, 2601, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 34),
  -- Alolan Raichu - Thunderbolt - TM067
  (26, 2601, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Alolan Raichu - Surf - TM073
  (26, 2601, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 36),
  -- Alolan Raichu - Nasty Plot - TM083
  (26, 2601, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Alolan Raichu - Substitute - TM085
  (26, 2601, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Alolan Raichu - Wild Charge - TM086
  (26, 2601, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Alolan Raichu - Iron Tail - TM087
  (26, 2601, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Alolan Raichu - Dazzling Gleam - TM092
  (26, 2601, 605, 26, NULL, 2, NULL, NULL, 26002092, 'Version 2.0.0 onwards.', 41),
  -- Alolan Raichu - Electroweb - TM101
  (26, 2601, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 42),
  -- Alolan Raichu - Focus Blast - TM102
  (26, 2601, 411, 26, NULL, 2, NULL, NULL, 26002102, 'Version 2.0.0 onwards.', 43),
  -- Alolan Raichu - Thunder - TM106
  (26, 2601, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 44),
  -- Clefairy - Tackle - Level 1
  (35, 3500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Splash - Level 1
  (35, 3500, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Fairy Wind - Level 5
  (35, 3500, 584, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clefairy - Disarming Voice - Level 8
  (35, 3500, 574, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Clefairy - Charm - Level 13
  (35, 3500, 204, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Clefairy - Draining Kiss - Level 16
  (35, 3500, 577, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Clefairy - Magical Leaf - Level 18
  (35, 3500, 345, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Clefairy - Metronome - Level 20
  (35, 3500, 118, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Clefairy - Bubble Beam - Level 22
  (35, 3500, 61, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Clefairy - Moonlight - Level 24
  (35, 3500, 236, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Clefairy - Amnesia - Level 28
  (35, 3500, 133, 26, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Clefairy - Dazzling Gleam - Level 32
  (35, 3500, 605, 26, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Clefairy - Mystical Fire - Level 42
  (35, 3500, 595, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Clefairy - Moonblast - Level 48
  (35, 3500, 585, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Clefairy - Double-Edge - Level 55
  (35, 3500, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Clefairy - Headbutt - TM001
  (35, 3500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Clefairy - Psyshock - TM003
  (35, 3500, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Clefairy - Calm Mind - TM006
  (35, 3500, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Clefairy - Thunder Wave - TM008
  (35, 3500, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Clefairy - Ice Beam - TM013
  (35, 3500, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Clefairy - Light Screen - TM016
  (35, 3500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Clefairy - Protect - TM017
  (35, 3500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Clefairy - Play Rough - TM020
  (35, 3500, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Clefairy - Thunder Punch - TM023
  (35, 3500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Clefairy - Ice Punch - TM024
  (35, 3500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Clefairy - Swift - TM027
  (35, 3500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Clefairy - Dig - TM028
  (35, 3500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 27),
  -- Clefairy - Fire Punch - TM029
  (35, 3500, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Clefairy - Reflect - TM031
  (35, 3500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 29),
  -- Clefairy - Body Slam - TM033
  (35, 3500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 30),
  -- Clefairy - Endure - TM035
  (35, 3500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Clefairy - Stealth Rock - TM037
  (35, 3500, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 32),
  -- Clefairy - Fire Blast - TM038
  (35, 3500, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 33),
  -- Clefairy - Safeguard - TM051
  (35, 3500, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 34),
  -- Clefairy - Double-Edge - TM056
  (35, 3500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Clefairy - Zen Headbutt - TM059
  (35, 3500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Clefairy - Flamethrower - TM062
  (35, 3500, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 37),
  -- Clefairy - Psychic - TM063
  (35, 3500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Clefairy - Solar Beam - TM064
  (35, 3500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 39),
  -- Clefairy - Thunderbolt - TM067
  (35, 3500, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 40),
  -- Clefairy - Hyper Voice - TM071
  (35, 3500, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 41),
  -- Clefairy - Shadow Ball - TM074
  (35, 3500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Clefairy - Substitute - TM085
  (35, 3500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 43),
  -- Clefairy - Iron Tail - TM087
  (35, 3500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 44),
  -- Clefairy - Dazzling Gleam - TM092
  (35, 3500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 45),
  -- Clefairy - Heal Block - TM097
  (35, 3500, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 46),
  -- Clefairy - Metronome - TM099
  (35, 3500, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 47),
  -- Clefairy - Work Up - TM103
  (35, 3500, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 48),
  -- Clefairy - Blizzard - TM105
  (35, 3500, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 49),
  -- Clefairy - Thunder - TM106
  (35, 3500, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 50),
  -- Clefable - Tackle - Level 1
  (36, 3600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Splash - Level 1
  (36, 3600, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Fairy Wind - Level 5
  (36, 3600, 584, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clefable - Disarming Voice - Level 8
  (36, 3600, 574, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Clefable - Charm - Level 13
  (36, 3600, 204, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Clefable - Draining Kiss - Level 16
  (36, 3600, 577, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Clefable - Magical Leaf - Level 18
  (36, 3600, 345, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Clefable - Metronome - Level 20
  (36, 3600, 118, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Clefable - Bubble Beam - Level 22
  (36, 3600, 61, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Clefable - Moonlight - Level 24
  (36, 3600, 236, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Clefable - Amnesia - Level 28
  (36, 3600, 133, 26, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Clefable - Dazzling Gleam - Level 32
  (36, 3600, 605, 26, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Clefable - Mystical Fire - Level 42
  (36, 3600, 595, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Clefable - Moonblast - Level 48
  (36, 3600, 585, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Clefable - Air Slash - Level 52
  (36, 3600, 403, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Clefable - Double-Edge - Level 55
  (36, 3600, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Clefable - Headbutt - TM001
  (36, 3600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Clefable - Psyshock - TM003
  (36, 3600, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 18),
  -- Clefable - Calm Mind - TM006
  (36, 3600, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Clefable - Thunder Wave - TM008
  (36, 3600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Clefable - Ice Beam - TM013
  (36, 3600, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Clefable - Light Screen - TM016
  (36, 3600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Clefable - Protect - TM017
  (36, 3600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Clefable - Play Rough - TM020
  (36, 3600, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 24),
  -- Clefable - Thunder Punch - TM023
  (36, 3600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Clefable - Ice Punch - TM024
  (36, 3600, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 26),
  -- Clefable - Swift - TM027
  (36, 3600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Clefable - Dig - TM028
  (36, 3600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 28),
  -- Clefable - Fire Punch - TM029
  (36, 3600, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 29),
  -- Clefable - Reflect - TM031
  (36, 3600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 30),
  -- Clefable - Body Slam - TM033
  (36, 3600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Clefable - Endure - TM035
  (36, 3600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Clefable - Stealth Rock - TM037
  (36, 3600, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 33),
  -- Clefable - Fire Blast - TM038
  (36, 3600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 34),
  -- Clefable - Hyper Beam - TM044
  (36, 3600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Clefable - Safeguard - TM051
  (36, 3600, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 36),
  -- Clefable - Giga Impact - TM055
  (36, 3600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Clefable - Double-Edge - TM056
  (36, 3600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Clefable - Zen Headbutt - TM059
  (36, 3600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Clefable - Flamethrower - TM062
  (36, 3600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 40),
  -- Clefable - Psychic - TM063
  (36, 3600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 41),
  -- Clefable - Solar Beam - TM064
  (36, 3600, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 42),
  -- Clefable - Thunderbolt - TM067
  (36, 3600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 43),
  -- Clefable - Hyper Voice - TM071
  (36, 3600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 44),
  -- Clefable - Shadow Ball - TM074
  (36, 3600, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 45),
  -- Clefable - Substitute - TM085
  (36, 3600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Clefable - Iron Tail - TM087
  (36, 3600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 47),
  -- Clefable - Dazzling Gleam - TM092
  (36, 3600, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 48),
  -- Clefable - Heal Block - TM097
  (36, 3600, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 49),
  -- Clefable - Metronome - TM099
  (36, 3600, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 50),
  -- Clefable - Focus Blast - TM102
  (36, 3600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 51),
  -- Clefable - Work Up - TM103
  (36, 3600, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 52),
  -- Clefable - Blizzard - TM105
  (36, 3600, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 53),
  -- Clefable - Thunder - TM106
  (36, 3600, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 54);
