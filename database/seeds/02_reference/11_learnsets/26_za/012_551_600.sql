-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 551-600.
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
  -- Sandile - Tackle - Level 1
  (551, 55100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Leer - Level 1
  (551, 55100, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Sand Tomb - Level 9
  (551, 55100, 328, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sandile - Bite - Level 15
  (551, 55100, 44, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sandile - Dig - Level 21
  (551, 55100, 91, 26, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Sandile - Take Down - Level 24
  (551, 55100, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sandile - Crunch - Level 27
  (551, 55100, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Sandile - Iron Tail - Level 36
  (551, 55100, 231, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sandile - Earthquake - Level 42
  (551, 55100, 89, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sandile - Double-Edge - Level 50
  (551, 55100, 38, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Sandile - Dragon Claw - TM002
  (551, 55100, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 11),
  -- Sandile - Roar - TM005
  (551, 55100, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Sandile - Brick Break - TM010
  (551, 55100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Sandile - Rock Slide - TM012
  (551, 55100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Sandile - Fire Fang - TM014
  (551, 55100, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 15),
  -- Sandile - Protect - TM017
  (551, 55100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Sandile - Thunder Fang - TM021
  (551, 55100, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 17),
  -- Sandile - Aerial Ace - TM022
  (551, 55100, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Sandile - Crunch - TM025
  (551, 55100, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Sandile - Dig - TM028
  (551, 55100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Sandile - Body Slam - TM033
  (551, 55100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Sandile - Endure - TM035
  (551, 55100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Sandile - Rock Tomb - TM036
  (551, 55100, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Sandile - Stealth Rock - TM037
  (551, 55100, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Sandile - Earth Power - TM052
  (551, 55100, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 25),
  -- Sandile - Sludge Bomb - TM053
  (551, 55100, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Sandile - Double-Edge - TM056
  (551, 55100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Sandile - Shadow Claw - TM061
  (551, 55100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 28),
  -- Sandile - Stone Edge - TM065
  (551, 55100, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 29),
  -- Sandile - Earthquake - TM069
  (551, 55100, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Sandile - Bulldoze - TM078
  (551, 55100, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Sandile - Substitute - TM085
  (551, 55100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Sandile - Iron Tail - TM087
  (551, 55100, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Sandile - Dark Pulse - TM090
  (551, 55100, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 34),
  -- Sandile - Taunt - TM095
  (551, 55100, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Sandile - Facade - TM109
  (551, 55100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Sandile - Torment - TM121
  (551, 55100, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 37),
  -- Sandile - Scorching Sands - TM136
  (551, 55100, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 38),
  -- Sandile - Swagger - TM139
  (551, 55100, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 39),
  -- Krokorok - Tackle - Level 1
  (552, 55200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Sand Tomb - Level 9
  (552, 55200, 328, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Krokorok - Bite - Level 15
  (552, 55200, 44, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Krokorok - Dig - Level 21
  (552, 55200, 91, 26, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Krokorok - Take Down - Level 24
  (552, 55200, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Krokorok - Crunch - Level 27
  (552, 55200, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Krokorok - Iron Tail - Level 36
  (552, 55200, 231, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Krokorok - Earthquake - Level 42
  (552, 55200, 89, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Krokorok - Double-Edge - Level 50
  (552, 55200, 38, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Krokorok - Dragon Claw - TM002
  (552, 55200, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 11),
  -- Krokorok - Roar - TM005
  (552, 55200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Krokorok - Brick Break - TM010
  (552, 55200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Krokorok - Rock Slide - TM012
  (552, 55200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Krokorok - Fire Fang - TM014
  (552, 55200, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 15),
  -- Krokorok - Protect - TM017
  (552, 55200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Krokorok - Thunder Fang - TM021
  (552, 55200, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 17),
  -- Krokorok - Aerial Ace - TM022
  (552, 55200, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Krokorok - Crunch - TM025
  (552, 55200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Krokorok - Dig - TM028
  (552, 55200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Krokorok - Body Slam - TM033
  (552, 55200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Krokorok - Endure - TM035
  (552, 55200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Krokorok - Rock Tomb - TM036
  (552, 55200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Krokorok - Stealth Rock - TM037
  (552, 55200, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Krokorok - Knock Off - TM045
  (552, 55200, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Krokorok - Earth Power - TM052
  (552, 55200, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Krokorok - Sludge Bomb - TM053
  (552, 55200, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Krokorok - Double-Edge - TM056
  (552, 55200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Krokorok - Shadow Claw - TM061
  (552, 55200, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 29),
  -- Krokorok - Stone Edge - TM065
  (552, 55200, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 30),
  -- Krokorok - Earthquake - TM069
  (552, 55200, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 31),
  -- Krokorok - Bulldoze - TM078
  (552, 55200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 32),
  -- Krokorok - Substitute - TM085
  (552, 55200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Krokorok - Iron Tail - TM087
  (552, 55200, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 34),
  -- Krokorok - Dark Pulse - TM090
  (552, 55200, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Krokorok - Curse - TM091
  (552, 55200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 36),
  -- Krokorok - Taunt - TM095
  (552, 55200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Krokorok - Facade - TM109
  (552, 55200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Krokorok - Low Sweep - TM113
  (552, 55200, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 39),
  -- Krokorok - Torment - TM121
  (552, 55200, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 40),
  -- Krokorok - Scorching Sands - TM136
  (552, 55200, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 41),
  -- Krokorok - Swagger - TM139
  (552, 55200, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 42),
  -- Krokorok - Scale Shot - TM143
  (552, 55200, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 43),
  -- Krookodile - Tackle - Level 1
  (553, 55300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Sand Tomb - Level 9
  (553, 55300, 328, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Krookodile - Bite - Level 15
  (553, 55300, 44, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Krookodile - Dig - Level 21
  (553, 55300, 91, 26, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Krookodile - Take Down - Level 24
  (553, 55300, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Krookodile - Crunch - Level 27
  (553, 55300, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Krookodile - Iron Tail - Level 36
  (553, 55300, 231, 26, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Krookodile - Earthquake - Level 42
  (553, 55300, 89, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Krookodile - Double-Edge - Level 50
  (553, 55300, 38, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Krookodile - Outrage - Level 58
  (553, 55300, 200, 26, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Krookodile - Breaking Swipe - Evolution
  (553, 55300, 784, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Krookodile - Dragon Claw - TM002
  (553, 55300, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 13),
  -- Krookodile - Roar - TM005
  (553, 55300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Krookodile - Brick Break - TM010
  (553, 55300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Krookodile - Bulk Up - TM011
  (553, 55300, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Krookodile - Rock Slide - TM012
  (553, 55300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Krookodile - Fire Fang - TM014
  (553, 55300, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Krookodile - Protect - TM017
  (553, 55300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Krookodile - Thunder Fang - TM021
  (553, 55300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Krookodile - Aerial Ace - TM022
  (553, 55300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Krookodile - Crunch - TM025
  (553, 55300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Krookodile - Dig - TM028
  (553, 55300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Krookodile - Body Slam - TM033
  (553, 55300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Krookodile - Endure - TM035
  (553, 55300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Krookodile - Rock Tomb - TM036
  (553, 55300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Krookodile - Stealth Rock - TM037
  (553, 55300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Krookodile - Hyper Beam - TM044
  (553, 55300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Krookodile - Knock Off - TM045
  (553, 55300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Krookodile - Earth Power - TM052
  (553, 55300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 30),
  -- Krookodile - Sludge Bomb - TM053
  (553, 55300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Krookodile - Giga Impact - TM055
  (553, 55300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Krookodile - Double-Edge - TM056
  (553, 55300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Krookodile - Iron Head - TM058
  (553, 55300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 34),
  -- Krookodile - Shadow Claw - TM061
  (553, 55300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 35),
  -- Krookodile - Stone Edge - TM065
  (553, 55300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 36),
  -- Krookodile - Earthquake - TM069
  (553, 55300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Krookodile - Bulldoze - TM078
  (553, 55300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 38),
  -- Krookodile - Substitute - TM085
  (553, 55300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Krookodile - Iron Tail - TM087
  (553, 55300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Krookodile - Dark Pulse - TM090
  (553, 55300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Krookodile - Curse - TM091
  (553, 55300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 42),
  -- Krookodile - Outrage - TM093
  (553, 55300, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 43),
  -- Krookodile - Taunt - TM095
  (553, 55300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Krookodile - Gunk Shot - TM100
  (553, 55300, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 45),
  -- Krookodile - Focus Blast - TM102
  (553, 55300, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 46),
  -- Krookodile - Close Combat - TM107
  (553, 55300, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 47),
  -- Krookodile - Facade - TM109
  (553, 55300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 48),
  -- Krookodile - Low Sweep - TM113
  (553, 55300, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 49),
  -- Krookodile - Torment - TM121
  (553, 55300, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 50),
  -- Krookodile - Scorching Sands - TM136
  (553, 55300, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 51),
  -- Krookodile - Swagger - TM139
  (553, 55300, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 52),
  -- Krookodile - Scale Shot - TM143
  (553, 55300, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 53),
  -- Krookodile - Fissure - TM154
  (553, 55300, 90, 26, NULL, 2, NULL, NULL, 26002154, NULL, 54),
  -- Scraggy - Tackle - Level 1
  (559, 55900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Headbutt - Level 8
  (559, 55900, 29, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Scraggy - Power-Up Punch - Level 12
  (559, 55900, 612, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Scraggy - Rock Tomb - Level 16
  (559, 55900, 317, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Scraggy - Protect - Level 20
  (559, 55900, 182, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Scraggy - Parting Shot - Level 26
  (559, 55900, 575, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Scraggy - Brick Break - Level 32
  (559, 55900, 280, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Scraggy - Detect - Level 35
  (559, 55900, 197, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Scraggy - Crunch - Level 40
  (559, 55900, 242, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Scraggy - Iron Tail - Level 44
  (559, 55900, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Scraggy - Dynamic Punch - Level 48
  (559, 55900, 223, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Scraggy - Head Smash - Level 52
  (559, 55900, 457, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Scraggy - Headbutt - TM001
  (559, 55900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Scraggy - Dragon Claw - TM002
  (559, 55900, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Scraggy - Roar - TM005
  (559, 55900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Scraggy - Brick Break - TM010
  (559, 55900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Scraggy - Bulk Up - TM011
  (559, 55900, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Scraggy - Rock Slide - TM012
  (559, 55900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Scraggy - Protect - TM017
  (559, 55900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Scraggy - Power-Up Punch - TM018
  (559, 55900, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Scraggy - Thunder Punch - TM023
  (559, 55900, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Scraggy - Ice Punch - TM024
  (559, 55900, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Scraggy - Crunch - TM025
  (559, 55900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Scraggy - Dig - TM028
  (559, 55900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Scraggy - Fire Punch - TM029
  (559, 55900, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Scraggy - Endure - TM035
  (559, 55900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Scraggy - Rock Tomb - TM036
  (559, 55900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Scraggy - Sludge Bomb - TM053
  (559, 55900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Scraggy - Iron Head - TM058
  (559, 55900, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Scraggy - Zen Headbutt - TM059
  (559, 55900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Scraggy - Stone Edge - TM065
  (559, 55900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Scraggy - Dragon Pulse - TM075
  (559, 55900, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 33),
  -- Scraggy - Poison Jab - TM077
  (559, 55900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Scraggy - Iron Defense - TM080
  (559, 55900, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Scraggy - Substitute - TM085
  (559, 55900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Scraggy - Iron Tail - TM087
  (559, 55900, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Scraggy - Dark Pulse - TM090
  (559, 55900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Scraggy - Curse - TM091
  (559, 55900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Scraggy - Taunt - TM095
  (559, 55900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Scraggy - Focus Blast - TM102
  (559, 55900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Scraggy - Work Up - TM103
  (559, 55900, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 42),
  -- Scraggy - Facade - TM109
  (559, 55900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Scraggy - Acid Spray - TM112
  (559, 55900, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 44),
  -- Scraggy - Low Sweep - TM113
  (559, 55900, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 45),
  -- Scraggy - Trailblaze - TM115
  (559, 55900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 46),
  -- Scraggy - Torment - TM121
  (559, 55900, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 47),
  -- Scraggy - Drain Punch - TM131
  (559, 55900, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 48),
  -- Scraggy - Swagger - TM139
  (559, 55900, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 49),
  -- Scraggy - Fake Out - TM141
  (559, 55900, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 50),
  -- Scrafty - Tackle - Level 1
  (560, 56000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Headbutt - Level 8
  (560, 56000, 29, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Scrafty - Power-Up Punch - Level 12
  (560, 56000, 612, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Scrafty - Rock Tomb - Level 16
  (560, 56000, 317, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Scrafty - Protect - Level 20
  (560, 56000, 182, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Scrafty - Parting Shot - Level 26
  (560, 56000, 575, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Scrafty - Brick Break - Level 32
  (560, 56000, 280, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Scrafty - Detect - Level 35
  (560, 56000, 197, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Scrafty - Crunch - Level 40
  (560, 56000, 242, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Scrafty - Iron Tail - Level 44
  (560, 56000, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Scrafty - Dynamic Punch - Level 48
  (560, 56000, 223, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Scrafty - Head Smash - Level 52
  (560, 56000, 457, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Scrafty - Headbutt - TM001
  (560, 56000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Scrafty - Dragon Claw - TM002
  (560, 56000, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Scrafty - Rock Smash - TM004
  (560, 56000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Scrafty - Roar - TM005
  (560, 56000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Scrafty - Brick Break - TM010
  (560, 56000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Scrafty - Bulk Up - TM011
  (560, 56000, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Scrafty - Rock Slide - TM012
  (560, 56000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Scrafty - Protect - TM017
  (560, 56000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Scrafty - Power-Up Punch - TM018
  (560, 56000, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 22),
  -- Scrafty - Thunder Punch - TM023
  (560, 56000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 23),
  -- Scrafty - Ice Punch - TM024
  (560, 56000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 24),
  -- Scrafty - Crunch - TM025
  (560, 56000, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Scrafty - Dig - TM028
  (560, 56000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Scrafty - Fire Punch - TM029
  (560, 56000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Scrafty - Swords Dance - TM030
  (560, 56000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 28),
  -- Scrafty - Endure - TM035
  (560, 56000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Scrafty - Rock Tomb - TM036
  (560, 56000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Scrafty - Hyper Beam - TM044
  (560, 56000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Scrafty - Knock Off - TM045
  (560, 56000, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 32),
  -- Scrafty - Sludge Bomb - TM053
  (560, 56000, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 33),
  -- Scrafty - Giga Impact - TM055
  (560, 56000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Scrafty - Double-Edge - TM056
  (560, 56000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Scrafty - Iron Head - TM058
  (560, 56000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Scrafty - Zen Headbutt - TM059
  (560, 56000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Scrafty - Stone Edge - TM065
  (560, 56000, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 38),
  -- Scrafty - Dragon Pulse - TM075
  (560, 56000, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 39),
  -- Scrafty - Poison Jab - TM077
  (560, 56000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Scrafty - Iron Defense - TM080
  (560, 56000, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 41),
  -- Scrafty - Substitute - TM085
  (560, 56000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Scrafty - Iron Tail - TM087
  (560, 56000, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Scrafty - Dark Pulse - TM090
  (560, 56000, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 44),
  -- Scrafty - Curse - TM091
  (560, 56000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 45),
  -- Scrafty - Outrage - TM093
  (560, 56000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 46),
  -- Scrafty - Taunt - TM095
  (560, 56000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Scrafty - Metronome - TM099
  (560, 56000, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 48),
  -- Scrafty - Focus Blast - TM102
  (560, 56000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 49),
  -- Scrafty - Work Up - TM103
  (560, 56000, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 50),
  -- Scrafty - Close Combat - TM107
  (560, 56000, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 51),
  -- Scrafty - Facade - TM109
  (560, 56000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 52),
  -- Scrafty - Acid Spray - TM112
  (560, 56000, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 53),
  -- Scrafty - Low Sweep - TM113
  (560, 56000, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 54),
  -- Scrafty - Trailblaze - TM115
  (560, 56000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 55),
  -- Scrafty - Torment - TM121
  (560, 56000, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 56),
  -- Scrafty - Drain Punch - TM131
  (560, 56000, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 57),
  -- Scrafty - Dual Chop - TM135
  (560, 56000, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 58),
  -- Scrafty - Swagger - TM139
  (560, 56000, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 59),
  -- Scrafty - Fake Out - TM141
  (560, 56000, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 60),
  -- Scrafty - Skull Bash - TM146
  (560, 56000, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 61),
  -- Trubbish - Headbutt - Level 1
  (568, 56800, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trubbish - Smokescreen - Level 1
  (568, 56800, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trubbish - Amnesia - Level 9
  (568, 56800, 133, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Trubbish - Rollout - Level 12
  (568, 56800, 205, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Trubbish - Toxic Spikes - Level 15
  (568, 56800, 390, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Trubbish - Brutal Swing - Level 18
  (568, 56800, 693, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Trubbish - Take Down - Level 20
  (568, 56800, 36, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Trubbish - Poison Jab - Level 24
  (568, 56800, 398, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Trubbish - Sludge Bomb - Level 27
  (568, 56800, 188, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Trubbish - Toxic - Level 30
  (568, 56800, 92, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Trubbish - Self-Destruct - Level 34
  (568, 56800, 120, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Trubbish - Sludge Wave - Level 39
  (568, 56800, 482, 26, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Trubbish - Gunk Shot - Level 44
  (568, 56800, 441, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Trubbish - Explosion - Level 53
  (568, 56800, 153, 26, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Trubbish - Headbutt - TM001
  (568, 56800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Trubbish - Toxic - TM007
  (568, 56800, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Trubbish - Protect - TM017
  (568, 56800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Trubbish - Endure - TM035
  (568, 56800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Trubbish - Bullet Seed - TM040
  (568, 56800, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 19),
  -- Trubbish - Giga Drain - TM042
  (568, 56800, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 20),
  -- Trubbish - Mud Shot - TM046
  (568, 56800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Trubbish - Self-Destruct - TM048
  (568, 56800, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 22),
  -- Trubbish - Sludge Bomb - TM053
  (568, 56800, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 23),
  -- Trubbish - Poison Jab - TM077
  (568, 56800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 24),
  -- Trubbish - Substitute - TM085
  (568, 56800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Trubbish - Spikes - TM088
  (568, 56800, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 26),
  -- Trubbish - Toxic Spikes - TM089
  (568, 56800, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 27),
  -- Trubbish - Dark Pulse - TM090
  (568, 56800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 28),
  -- Trubbish - Gunk Shot - TM100
  (568, 56800, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 29),
  -- Trubbish - Facade - TM109
  (568, 56800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 30),
  -- Trubbish - Acid Spray - TM112
  (568, 56800, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 31),
  -- Trubbish - Seed Bomb - TM128
  (568, 56800, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 32),
  -- Trubbish - Drain Punch - TM131
  (568, 56800, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 33),
  -- Garbodor - Headbutt - Level 1
  (569, 56900, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garbodor - Smokescreen - Level 1
  (569, 56900, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garbodor - Metal Claw - Level 1
  (569, 56900, 232, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garbodor - Amnesia - Level 9
  (569, 56900, 133, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Garbodor - Rollout - Level 12
  (569, 56900, 205, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Garbodor - Toxic Spikes - Level 15
  (569, 56900, 390, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Garbodor - Brutal Swing - Level 18
  (569, 56900, 693, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Garbodor - Take Down - Level 20
  (569, 56900, 36, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Garbodor - Poison Jab - Level 24
  (569, 56900, 398, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Garbodor - Sludge Bomb - Level 27
  (569, 56900, 188, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Garbodor - Toxic - Level 30
  (569, 56900, 92, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Garbodor - Self-Destruct - Level 34
  (569, 56900, 120, 26, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Garbodor - Sludge Wave - Level 39
  (569, 56900, 482, 26, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Garbodor - Gunk Shot - Level 44
  (569, 56900, 441, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Garbodor - Explosion - Level 53
  (569, 56900, 153, 26, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Garbodor - Headbutt - TM001
  (569, 56900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Garbodor - Toxic - TM007
  (569, 56900, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Garbodor - Protect - TM017
  (569, 56900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Garbodor - Body Slam - TM033
  (569, 56900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Garbodor - Endure - TM035
  (569, 56900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Garbodor - Bullet Seed - TM040
  (569, 56900, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 21),
  -- Garbodor - Giga Drain - TM042
  (569, 56900, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Garbodor - Hyper Beam - TM044
  (569, 56900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Garbodor - Mud Shot - TM046
  (569, 56900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Garbodor - Self-Destruct - TM048
  (569, 56900, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Garbodor - Sludge Bomb - TM053
  (569, 56900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 26),
  -- Garbodor - Giga Impact - TM055
  (569, 56900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Garbodor - Psychic - TM063
  (569, 56900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Garbodor - Solar Beam - TM064
  (569, 56900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 29),
  -- Garbodor - Thunderbolt - TM067
  (569, 56900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 30),
  -- Garbodor - Poison Jab - TM077
  (569, 56900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 31),
  -- Garbodor - Substitute - TM085
  (569, 56900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Garbodor - Spikes - TM088
  (569, 56900, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 33),
  -- Garbodor - Toxic Spikes - TM089
  (569, 56900, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 34),
  -- Garbodor - Dark Pulse - TM090
  (569, 56900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Garbodor - Heal Block - TM097
  (569, 56900, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 36),
  -- Garbodor - Gunk Shot - TM100
  (569, 56900, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 37),
  -- Garbodor - Focus Blast - TM102
  (569, 56900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Garbodor - Facade - TM109
  (569, 56900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Garbodor - Acid Spray - TM112
  (569, 56900, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 40),
  -- Garbodor - Ancient Power - TM120
  (569, 56900, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 41),
  -- Garbodor - Magnet Bomb - TM126
  (569, 56900, 443, 26, NULL, 2, NULL, NULL, 26002126, NULL, 42),
  -- Garbodor - Seed Bomb - TM128
  (569, 56900, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 43),
  -- Garbodor - Drain Punch - TM131
  (569, 56900, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 44),
  -- Vanillite - Tackle - Level 1
  (582, 58200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillite - Harden - Level 1
  (582, 58200, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillite - Taunt - Level 4
  (582, 58200, 269, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vanillite - Mist - Level 8
  (582, 58200, 54, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vanillite - Icy Wind - Level 12
  (582, 58200, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vanillite - Self-Destruct - Level 20
  (582, 58200, 120, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Vanillite - Icicle Crash - Level 24
  (582, 58200, 556, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Vanillite - Acid Armor - Level 32
  (582, 58200, 151, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Vanillite - Ice Beam - Level 35
  (582, 58200, 58, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Vanillite - Explosion - Level 46
  (582, 58200, 153, 26, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Vanillite - Blizzard - Level 58
  (582, 58200, 59, 26, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Vanillite - Ice Beam - TM013
  (582, 58200, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 12),
  -- Vanillite - Light Screen - TM016
  (582, 58200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 13),
  -- Vanillite - Protect - TM017
  (582, 58200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Vanillite - Endure - TM035
  (582, 58200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 15),
  -- Vanillite - Self-Destruct - TM048
  (582, 58200, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 16),
  -- Vanillite - Icy Wind - TM049
  (582, 58200, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 17),
  -- Vanillite - Hyper Voice - TM071
  (582, 58200, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 18),
  -- Vanillite - Iron Defense - TM080
  (582, 58200, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 19),
  -- Vanillite - Flash Cannon - TM084
  (582, 58200, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 20),
  -- Vanillite - Substitute - TM085
  (582, 58200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 21),
  -- Vanillite - Taunt - TM095
  (582, 58200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 22),
  -- Vanillite - Blizzard - TM105
  (582, 58200, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 23),
  -- Vanillite - Facade - TM109
  (582, 58200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 24),
  -- Vanillite - Frost Breath - TM138
  (582, 58200, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 25),
  -- Vanillite - Icicle Spear - TM149
  (582, 58200, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 26),
  -- Vanillite - Sheer Cold - TM155
  (582, 58200, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 27),
  -- Vanillish - Tackle - Level 1
  (583, 58300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillish - Harden - Level 1
  (583, 58300, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillish - Taunt - Level 4
  (583, 58300, 269, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vanillish - Mist - Level 8
  (583, 58300, 54, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vanillish - Icy Wind - Level 12
  (583, 58300, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vanillish - Self-Destruct - Level 20
  (583, 58300, 120, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Vanillish - Icicle Crash - Level 24
  (583, 58300, 556, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Vanillish - Acid Armor - Level 32
  (583, 58300, 151, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Vanillish - Ice Beam - Level 35
  (583, 58300, 58, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Vanillish - Explosion - Level 46
  (583, 58300, 153, 26, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Vanillish - Blizzard - Level 58
  (583, 58300, 59, 26, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Vanillish - Ice Beam - TM013
  (583, 58300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 12),
  -- Vanillish - Light Screen - TM016
  (583, 58300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 13),
  -- Vanillish - Protect - TM017
  (583, 58300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Vanillish - Endure - TM035
  (583, 58300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 15),
  -- Vanillish - Self-Destruct - TM048
  (583, 58300, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 16),
  -- Vanillish - Icy Wind - TM049
  (583, 58300, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 17),
  -- Vanillish - Hyper Voice - TM071
  (583, 58300, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 18),
  -- Vanillish - Iron Defense - TM080
  (583, 58300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 19),
  -- Vanillish - Flash Cannon - TM084
  (583, 58300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 20),
  -- Vanillish - Substitute - TM085
  (583, 58300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 21),
  -- Vanillish - Taunt - TM095
  (583, 58300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 22),
  -- Vanillish - Blizzard - TM105
  (583, 58300, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 23),
  -- Vanillish - Facade - TM109
  (583, 58300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 24),
  -- Vanillish - Frost Breath - TM138
  (583, 58300, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 25),
  -- Vanillish - Icicle Spear - TM149
  (583, 58300, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 26),
  -- Vanillish - Sheer Cold - TM155
  (583, 58300, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 27),
  -- Vanilluxe - Tackle - Level 1
  (584, 58400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanilluxe - Harden - Level 1
  (584, 58400, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanilluxe - Freeze-Dry - Level 1
  (584, 58400, 573, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanilluxe - Taunt - Level 4
  (584, 58400, 269, 26, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Vanilluxe - Mist - Level 8
  (584, 58400, 54, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Vanilluxe - Icy Wind - Level 12
  (584, 58400, 196, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Vanilluxe - Self-Destruct - Level 20
  (584, 58400, 120, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vanilluxe - Icicle Crash - Level 24
  (584, 58400, 556, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vanilluxe - Acid Armor - Level 32
  (584, 58400, 151, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Vanilluxe - Ice Beam - Level 35
  (584, 58400, 58, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Vanilluxe - Explosion - Level 46
  (584, 58400, 153, 26, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Vanilluxe - Blizzard - Level 58
  (584, 58400, 59, 26, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Vanilluxe - Ice Beam - TM013
  (584, 58400, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 13),
  -- Vanilluxe - Light Screen - TM016
  (584, 58400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Vanilluxe - Protect - TM017
  (584, 58400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Vanilluxe - Endure - TM035
  (584, 58400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 16),
  -- Vanilluxe - Hyper Beam - TM044
  (584, 58400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 17),
  -- Vanilluxe - Self-Destruct - TM048
  (584, 58400, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 18),
  -- Vanilluxe - Icy Wind - TM049
  (584, 58400, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 19),
  -- Vanilluxe - Giga Impact - TM055
  (584, 58400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 20),
  -- Vanilluxe - Hyper Voice - TM071
  (584, 58400, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 21),
  -- Vanilluxe - Iron Defense - TM080
  (584, 58400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 22),
  -- Vanilluxe - Flash Cannon - TM084
  (584, 58400, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 23),
  -- Vanilluxe - Substitute - TM085
  (584, 58400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Vanilluxe - Taunt - TM095
  (584, 58400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 25),
  -- Vanilluxe - Blizzard - TM105
  (584, 58400, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 26),
  -- Vanilluxe - Facade - TM109
  (584, 58400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 27),
  -- Vanilluxe - Chilling Water - TM110
  (584, 58400, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 28),
  -- Vanilluxe - Frost Breath - TM138
  (584, 58400, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 29),
  -- Vanilluxe - Icicle Spear - TM149
  (584, 58400, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 30),
  -- Vanilluxe - Sheer Cold - TM155
  (584, 58400, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 31),
  -- Emolga - Tail Whip - Level 1
  (587, 58700, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emolga - Nuzzle - Level 1
  (587, 58700, 609, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emolga - Double Team - Level 5
  (587, 58700, 104, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Emolga - Charm - Level 7
  (587, 58700, 204, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Emolga - Quick Attack - Level 10
  (587, 58700, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Emolga - Thunder Shock - Level 15
  (587, 58700, 84, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Emolga - Charge - Level 20
  (587, 58700, 268, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Emolga - Wing Attack - Level 22
  (587, 58700, 17, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Emolga - Eerie Impulse - Level 25
  (587, 58700, 598, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Emolga - Spark - Level 29
  (587, 58700, 209, 26, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Emolga - Air Slash - Level 35
  (587, 58700, 403, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Emolga - Volt Switch - Level 40
  (587, 58700, 521, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Emolga - Light Screen - Level 44
  (587, 58700, 113, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Emolga - Discharge - Level 52
  (587, 58700, 435, 26, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Emolga - Thunder Wave - TM008
  (587, 58700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Emolga - Light Screen - TM016
  (587, 58700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Emolga - Protect - TM017
  (587, 58700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Emolga - Energy Ball - TM026
  (587, 58700, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Emolga - Swift - TM027
  (587, 58700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Emolga - Double Team - TM032
  (587, 58700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Emolga - Endure - TM035
  (587, 58700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Emolga - Discharge - TM039
  (587, 58700, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 22),
  -- Emolga - Agility - TM047
  (587, 58700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Emolga - Solar Beam - TM064
  (587, 58700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 24),
  -- Emolga - Volt Switch - TM066
  (587, 58700, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 25),
  -- Emolga - Thunderbolt - TM067
  (587, 58700, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 26),
  -- Emolga - U-turn - TM082
  (587, 58700, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 27),
  -- Emolga - Substitute - TM085
  (587, 58700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Emolga - Wild Charge - TM086
  (587, 58700, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 29),
  -- Emolga - Iron Tail - TM087
  (587, 58700, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 30),
  -- Emolga - Taunt - TM095
  (587, 58700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 31),
  -- Emolga - Electroweb - TM101
  (587, 58700, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 32),
  -- Emolga - Thunder - TM106
  (587, 58700, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 33),
  -- Emolga - Facade - TM109
  (587, 58700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 34),
  -- Emolga - Charge Beam - TM130
  (587, 58700, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 35),
  -- Emolga - Dual Wingbeat - TM134
  (587, 58700, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 36),
  -- Emolga - Razor Wind - TM145
  (587, 58700, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 37);
