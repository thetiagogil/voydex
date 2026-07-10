-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Platinum
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Platinum Pokedex learnset pages, Serebii Platinum
-- Move Tutor pages, and PokemonDB Generation 4 Platinum learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Platinum
-- Pokémon: #101-#151
-- Rows: 3275
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Platinum seed.
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Spark - Level 1
  (101, 10100, 209, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Charge - Level 1
  (101, 10100, 268, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Tackle - Level 5
  (101, 10100, 33, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 8
  (101, 10100, 49, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Electrode - Spark - Level 12
  (101, 10100, 209, 9, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Electrode - Rollout - Level 15
  (101, 10100, 205, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Electrode - Screech - Level 19
  (101, 10100, 103, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Electrode - Light Screen - Level 22
  (101, 10100, 113, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Electrode - Charge Beam - Level 26
  (101, 10100, 451, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Electrode - Self-Destruct - Level 29
  (101, 10100, 120, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Electrode - Swift - Level 35
  (101, 10100, 129, 9, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Electrode - Magnet Rise - Level 40
  (101, 10100, 393, 9, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Electrode - Gyro Ball - Level 46
  (101, 10100, 360, 9, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Electrode - Explosion - Level 51
  (101, 10100, 153, 9, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Electrode - Mirror Coat - Level 57
  (101, 10100, 243, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Electrode - Hidden Power - TM10
  (101, 10100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Electrode - Taunt - TM12
  (101, 10100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Electrode - Light Screen - TM16
  (101, 10100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Electrode - Frustration - TM21
  (101, 10100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Electrode - Return - TM27
  (101, 10100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Electrode - Shock Wave - TM34
  (101, 10100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Electrode - Torment - TM41
  (101, 10100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 31),
  -- Electrode - Facade - TM42
  (101, 10100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Electrode - Secret Power - TM43
  (101, 10100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Electrode - Thief - TM46
  (101, 10100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Electrode - Charge Beam - TM57
  (101, 10100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 36),
  -- Electrode - Endure - TM58
  (101, 10100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Electrode - Explosion - TM64
  (101, 10100, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 38),
  -- Electrode - Giga Impact - TM68
  (101, 10100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Electrode - Flash - TM70
  (101, 10100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Electrode - Thunder Wave - TM73
  (101, 10100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 41),
  -- Electrode - Gyro Ball - TM74
  (101, 10100, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 42),
  -- Electrode - Sleep Talk - TM82
  (101, 10100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Electrode - Natural Gift - TM83
  (101, 10100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Electrode - Swagger - TM87
  (101, 10100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Electrode - Substitute - TM90
  (101, 10100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Electrode - Swift - Tutor
  (101, 10100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Electrode - Snore - Tutor
  (101, 10100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Electrode - Rollout - Tutor
  (101, 10100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Electrode - Signal Beam - Tutor
  (101, 10100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Electrode - Sucker Punch - Tutor
  (101, 10100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Electrode - Magnet Rise - Tutor
  (101, 10100, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Uproar - Level 1
  (102, 10200, 253, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggcute - Reflect - Level 7
  (102, 10200, 115, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Exeggcute - Leech Seed - Level 11
  (102, 10200, 73, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Exeggcute - Bullet Seed - Level 17
  (102, 10200, 331, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggcute - Stun Spore - Level 19
  (102, 10200, 78, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Exeggcute - Poison Powder - Level 21
  (102, 10200, 77, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Exeggcute - Sleep Powder - Level 23
  (102, 10200, 79, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Exeggcute - Confusion - Level 27
  (102, 10200, 93, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Exeggcute - Worry Seed - Level 33
  (102, 10200, 388, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Exeggcute - Natural Gift - Level 37
  (102, 10200, 363, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 43
  (102, 10200, 76, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Exeggcute - Psychic - Level 47
  (102, 10200, 94, 9, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Exeggcute - Bullet Seed - TM09
  (102, 10200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 16),
  -- Exeggcute - Hidden Power - TM10
  (102, 10200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Exeggcute - Light Screen - TM16
  (102, 10200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Exeggcute - Giga Drain - TM19
  (102, 10200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 21),
  -- Exeggcute - Frustration - TM21
  (102, 10200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Exeggcute - Return - TM27
  (102, 10200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 27),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Exeggcute - Facade - TM42
  (102, 10200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Exeggcute - Secret Power - TM43
  (102, 10200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Exeggcute - Skill Swap - TM48
  (102, 10200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 34),
  -- Exeggcute - Energy Ball - TM53
  (102, 10200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Exeggcute - Endure - TM58
  (102, 10200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Exeggcute - Explosion - TM64
  (102, 10200, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 37),
  -- Exeggcute - Flash - TM70
  (102, 10200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Exeggcute - Swords Dance - TM75
  (102, 10200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 39),
  -- Exeggcute - Psych Up - TM77
  (102, 10200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 40),
  -- Exeggcute - Captivate - TM78
  (102, 10200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Exeggcute - Sleep Talk - TM82
  (102, 10200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Exeggcute - Natural Gift - TM83
  (102, 10200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Exeggcute - Dream Eater - TM85
  (102, 10200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 44),
  -- Exeggcute - Grass Knot - TM86
  (102, 10200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Exeggcute - Swagger - TM87
  (102, 10200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Exeggcute - Substitute - TM90
  (102, 10200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Exeggcute - Trick Room - TM92
  (102, 10200, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 48),
  -- Exeggcute - Strength - HM04
  (102, 10200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Exeggcute - Reflect - Egg
  (102, 10200, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggcute - Curse - Egg
  (102, 10200, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Exeggcute - Synthesis - Egg
  (102, 10200, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Exeggcute - Moonlight - Egg
  (102, 10200, 236, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Exeggcute - Psych Up - Egg
  (102, 10200, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggcute - Ancient Power - Egg
  (102, 10200, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Exeggcute - Nature Power - Egg
  (102, 10200, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Exeggcute - Ingrain - Egg
  (102, 10200, 275, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Exeggcute - Lucky Chant - Egg
  (102, 10200, 381, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Exeggcute - Leaf Storm - Egg
  (102, 10200, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Exeggcute - Snore - Tutor
  (102, 10200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Exeggcute - Rollout - Tutor
  (102, 10200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Exeggcute - Synthesis - Tutor
  (102, 10200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Exeggcute - Ancient Power - Tutor
  (102, 10200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Exeggcute - Uproar - Tutor
  (102, 10200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Exeggcute - Seed Bomb - Tutor
  (102, 10200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Exeggutor - Stomp - Level 1
  (103, 10300, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Seed Bomb - Level 1
  (103, 10300, 402, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Stomp - Level 17
  (103, 10300, 23, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggutor - Egg Bomb - Level 27
  (103, 10300, 121, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Exeggutor - Wood Hammer - Level 37
  (103, 10300, 452, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Exeggutor - Leaf Storm - Level 47
  (103, 10300, 437, 9, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 10),
  -- Exeggutor - Bullet Seed - TM09
  (103, 10300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 11),
  -- Exeggutor - Hidden Power - TM10
  (103, 10300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 14),
  -- Exeggutor - Light Screen - TM16
  (103, 10300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 15),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Exeggutor - Giga Drain - TM19
  (103, 10300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 17),
  -- Exeggutor - Frustration - TM21
  (103, 10300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 19),
  -- Exeggutor - Return - TM27
  (103, 10300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 21),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 23),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 24),
  -- Exeggutor - Facade - TM42
  (103, 10300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Exeggutor - Secret Power - TM43
  (103, 10300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 29),
  -- Exeggutor - Skill Swap - TM48
  (103, 10300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 30),
  -- Exeggutor - Energy Ball - TM53
  (103, 10300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 31),
  -- Exeggutor - Endure - TM58
  (103, 10300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Exeggutor - Explosion - TM64
  (103, 10300, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 33),
  -- Exeggutor - Giga Impact - TM68
  (103, 10300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 34),
  -- Exeggutor - Flash - TM70
  (103, 10300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Exeggutor - Swords Dance - TM75
  (103, 10300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 36),
  -- Exeggutor - Psych Up - TM77
  (103, 10300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Exeggutor - Captivate - TM78
  (103, 10300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Exeggutor - Sleep Talk - TM82
  (103, 10300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Exeggutor - Natural Gift - TM83
  (103, 10300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Exeggutor - Dream Eater - TM85
  (103, 10300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Exeggutor - Grass Knot - TM86
  (103, 10300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Exeggutor - Swagger - TM87
  (103, 10300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Exeggutor - Substitute - TM90
  (103, 10300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Exeggutor - Trick Room - TM92
  (103, 10300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 45),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Exeggutor - Snore - Tutor
  (103, 10300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Exeggutor - Rollout - Tutor
  (103, 10300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Exeggutor - Synthesis - Tutor
  (103, 10300, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Exeggutor - Ancient Power - Tutor
  (103, 10300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Exeggutor - Seed Bomb - Tutor
  (103, 10300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Exeggutor - Zen Headbutt - Tutor
  (103, 10300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 3
  (104, 10400, 39, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Cubone - Bone Club - Level 7
  (104, 10400, 125, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cubone - Headbutt - Level 11
  (104, 10400, 29, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Cubone - Leer - Level 13
  (104, 10400, 43, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cubone - Focus Energy - Level 17
  (104, 10400, 116, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cubone - Bonemerang - Level 21
  (104, 10400, 155, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cubone - Rage - Level 23
  (104, 10400, 99, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Cubone - False Swipe - Level 27
  (104, 10400, 206, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Cubone - Thrash - Level 31
  (104, 10400, 37, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Cubone - Fling - Level 33
  (104, 10400, 374, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Cubone - Bone Rush - Level 37
  (104, 10400, 198, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Cubone - Endeavor - Level 41
  (104, 10400, 283, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Cubone - Double-Edge - Level 43
  (104, 10400, 38, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Cubone - Focus Punch - TM01
  (104, 10400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Cubone - Hidden Power - TM10
  (104, 10400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Cubone - Frustration - TM21
  (104, 10400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Cubone - Iron Tail - TM23
  (104, 10400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Cubone - Return - TM27
  (104, 10400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Cubone - Brick Break - TM31
  (104, 10400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Cubone - Flamethrower - TM35
  (104, 10400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Cubone - Rock Tomb - TM39
  (104, 10400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Cubone - Aerial Ace - TM40
  (104, 10400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 33),
  -- Cubone - Facade - TM42
  (104, 10400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Cubone - Secret Power - TM43
  (104, 10400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Cubone - False Swipe - TM54
  (104, 10400, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 39),
  -- Cubone - Fling - TM56
  (104, 10400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Cubone - Endure - TM58
  (104, 10400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Cubone - Swords Dance - TM75
  (104, 10400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 42),
  -- Cubone - Stealth Rock - TM76
  (104, 10400, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 43),
  -- Cubone - Captivate - TM78
  (104, 10400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Cubone - Rock Slide - TM80
  (104, 10400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 45),
  -- Cubone - Sleep Talk - TM82
  (104, 10400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Cubone - Natural Gift - TM83
  (104, 10400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Cubone - Swagger - TM87
  (104, 10400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Cubone - Substitute - TM90
  (104, 10400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Cubone - Rock Smash - HM06
  (104, 10400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Cubone - Rock Climb - HM08
  (104, 10400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 52),
  -- Cubone - Swords Dance - Egg
  (104, 10400, 14, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cubone - Double Kick - Egg
  (104, 10400, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cubone - Screech - Egg
  (104, 10400, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cubone - Skull Bash - Egg
  (104, 10400, 130, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cubone - Rock Slide - Egg
  (104, 10400, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cubone - Belly Drum - Egg
  (104, 10400, 187, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cubone - Perish Song - Egg
  (104, 10400, 195, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cubone - Detect - Egg
  (104, 10400, 197, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cubone - Ancient Power - Egg
  (104, 10400, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cubone - Iron Head - Egg
  (104, 10400, 442, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cubone - Fire Punch - Tutor
  (104, 10400, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Cubone - Thunder Punch - Tutor
  (104, 10400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Cubone - Snore - Tutor
  (104, 10400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Cubone - Mud-Slap - Tutor
  (104, 10400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Cubone - Icy Wind - Tutor
  (104, 10400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Cubone - Fury Cutter - Tutor
  (104, 10400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Cubone - Uproar - Tutor
  (104, 10400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Cubone - Knock Off - Tutor
  (104, 10400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Cubone - Endeavor - Tutor
  (104, 10400, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Cubone - Iron Defense - Tutor
  (104, 10400, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Cubone - Earth Power - Tutor
  (104, 10400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Marowak - Headbutt - Level 1
  (105, 10500, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 3
  (105, 10500, 39, 9, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Marowak - Bone Club - Level 7
  (105, 10500, 125, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Marowak - Headbutt - Level 11
  (105, 10500, 29, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 13
  (105, 10500, 43, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 17
  (105, 10500, 116, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Marowak - Bonemerang - Level 21
  (105, 10500, 155, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Marowak - Rage - Level 23
  (105, 10500, 99, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Marowak - False Swipe - Level 27
  (105, 10500, 206, 9, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 33
  (105, 10500, 37, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Marowak - Fling - Level 37
  (105, 10500, 374, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Marowak - Bone Rush - Level 43
  (105, 10500, 198, 9, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Marowak - Endeavor - Level 49
  (105, 10500, 283, 9, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Marowak - Double-Edge - Level 53
  (105, 10500, 38, 9, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Marowak - Focus Punch - TM01
  (105, 10500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Marowak - Hidden Power - TM10
  (105, 10500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Marowak - Frustration - TM21
  (105, 10500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Marowak - Iron Tail - TM23
  (105, 10500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Marowak - Return - TM27
  (105, 10500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Marowak - Brick Break - TM31
  (105, 10500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Marowak - Flamethrower - TM35
  (105, 10500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Marowak - Rock Tomb - TM39
  (105, 10500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Marowak - Aerial Ace - TM40
  (105, 10500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Marowak - Facade - TM42
  (105, 10500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Marowak - Secret Power - TM43
  (105, 10500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 42),
  -- Marowak - Focus Blast - TM52
  (105, 10500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 43),
  -- Marowak - False Swipe - TM54
  (105, 10500, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 44),
  -- Marowak - Fling - TM56
  (105, 10500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Marowak - Endure - TM58
  (105, 10500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Marowak - Giga Impact - TM68
  (105, 10500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Marowak - Stone Edge - TM71
  (105, 10500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 48),
  -- Marowak - Swords Dance - TM75
  (105, 10500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 49),
  -- Marowak - Stealth Rock - TM76
  (105, 10500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 50),
  -- Marowak - Captivate - TM78
  (105, 10500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Marowak - Rock Slide - TM80
  (105, 10500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Marowak - Sleep Talk - TM82
  (105, 10500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Marowak - Natural Gift - TM83
  (105, 10500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Marowak - Swagger - TM87
  (105, 10500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Marowak - Substitute - TM90
  (105, 10500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Marowak - Rock Smash - HM06
  (105, 10500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Marowak - Rock Climb - HM08
  (105, 10500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 59),
  -- Marowak - Fire Punch - Tutor
  (105, 10500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Marowak - Thunder Punch - Tutor
  (105, 10500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Marowak - Snore - Tutor
  (105, 10500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Marowak - Mud-Slap - Tutor
  (105, 10500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Marowak - Icy Wind - Tutor
  (105, 10500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Marowak - Outrage - Tutor
  (105, 10500, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Marowak - Fury Cutter - Tutor
  (105, 10500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Marowak - Uproar - Tutor
  (105, 10500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Marowak - Knock Off - Tutor
  (105, 10500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Marowak - Endeavor - Tutor
  (105, 10500, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Marowak - Iron Defense - Tutor
  (105, 10500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Marowak - Earth Power - Tutor
  (105, 10500, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Revenge - Level 1
  (106, 10600, 279, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Meditate - Level 5
  (106, 10600, 96, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hitmonlee - Rolling Kick - Level 9
  (106, 10600, 27, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Hitmonlee - Jump Kick - Level 13
  (106, 10600, 26, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Hitmonlee - Brick Break - Level 17
  (106, 10600, 280, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Hitmonlee - Focus Energy - Level 21
  (106, 10600, 116, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hitmonlee - Feint - Level 25
  (106, 10600, 364, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hitmonlee - High Jump Kick - Level 29
  (106, 10600, 136, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Hitmonlee - Mind Reader - Level 33
  (106, 10600, 170, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Hitmonlee - Foresight - Level 37
  (106, 10600, 193, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Hitmonlee - Blaze Kick - Level 41
  (106, 10600, 299, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Hitmonlee - Endure - Level 45
  (106, 10600, 203, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Hitmonlee - Mega Kick - Level 49
  (106, 10600, 25, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Hitmonlee - Close Combat - Level 53
  (106, 10600, 370, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Hitmonlee - Reversal - Level 57
  (106, 10600, 179, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Hitmonlee - Focus Punch - TM01
  (106, 10600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Hitmonlee - Bulk Up - TM08
  (106, 10600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 19),
  -- Hitmonlee - Hidden Power - TM10
  (106, 10600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Hitmonlee - Rain Dance - TM18
  (106, 10600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Hitmonlee - Frustration - TM21
  (106, 10600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Hitmonlee - Earthquake - TM26
  (106, 10600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Hitmonlee - Return - TM27
  (106, 10600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Hitmonlee - Brick Break - TM31
  (106, 10600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Hitmonlee - Rock Tomb - TM39
  (106, 10600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Hitmonlee - Facade - TM42
  (106, 10600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Hitmonlee - Secret Power - TM43
  (106, 10600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Hitmonlee - Focus Blast - TM52
  (106, 10600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Hitmonlee - Fling - TM56
  (106, 10600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Hitmonlee - Endure - TM58
  (106, 10600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Hitmonlee - Stone Edge - TM71
  (106, 10600, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 38),
  -- Hitmonlee - Captivate - TM78
  (106, 10600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Hitmonlee - Rock Slide - TM80
  (106, 10600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Hitmonlee - Sleep Talk - TM82
  (106, 10600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Hitmonlee - Natural Gift - TM83
  (106, 10600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Hitmonlee - Poison Jab - TM84
  (106, 10600, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 43),
  -- Hitmonlee - Swagger - TM87
  (106, 10600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Hitmonlee - Substitute - TM90
  (106, 10600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Hitmonlee - Rock Smash - HM06
  (106, 10600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Hitmonlee - Rock Climb - HM08
  (106, 10600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 48),
  -- Hitmonlee - Swift - Tutor
  (106, 10600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Hitmonlee - Snore - Tutor
  (106, 10600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Hitmonlee - Mud-Slap - Tutor
  (106, 10600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Hitmonlee - Helping Hand - Tutor
  (106, 10600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Hitmonlee - Superpower - Tutor
  (106, 10600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Hitmonlee - Knock Off - Tutor
  (106, 10600, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Hitmonlee - Bounce - Tutor
  (106, 10600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Hitmonlee - Sucker Punch - Tutor
  (106, 10600, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Hitmonlee - Vacuum Wave - Tutor
  (106, 10600, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Revenge - Level 1
  (107, 10700, 279, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Agility - Level 6
  (107, 10700, 97, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hitmonchan - Pursuit - Level 11
  (107, 10700, 228, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Hitmonchan - Mach Punch - Level 16
  (107, 10700, 183, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hitmonchan - Bullet Punch - Level 16
  (107, 10700, 418, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hitmonchan - Feint - Level 21
  (107, 10700, 364, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hitmonchan - Vacuum Wave - Level 26
  (107, 10700, 410, 9, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Hitmonchan - Fire Punch - Level 31
  (107, 10700, 7, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Hitmonchan - Ice Punch - Level 31
  (107, 10700, 8, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Hitmonchan - Thunder Punch - Level 31
  (107, 10700, 9, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Hitmonchan - Sky Uppercut - Level 36
  (107, 10700, 327, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hitmonchan - Mega Punch - Level 41
  (107, 10700, 5, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Hitmonchan - Detect - Level 46
  (107, 10700, 197, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Hitmonchan - Counter - Level 51
  (107, 10700, 68, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Hitmonchan - Close Combat - Level 56
  (107, 10700, 370, 9, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Hitmonchan - Focus Punch - TM01
  (107, 10700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Hitmonchan - Bulk Up - TM08
  (107, 10700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 19),
  -- Hitmonchan - Hidden Power - TM10
  (107, 10700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Hitmonchan - Rain Dance - TM18
  (107, 10700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Hitmonchan - Frustration - TM21
  (107, 10700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Hitmonchan - Earthquake - TM26
  (107, 10700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Hitmonchan - Return - TM27
  (107, 10700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Hitmonchan - Brick Break - TM31
  (107, 10700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Hitmonchan - Rock Tomb - TM39
  (107, 10700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Hitmonchan - Facade - TM42
  (107, 10700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Hitmonchan - Secret Power - TM43
  (107, 10700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Hitmonchan - Focus Blast - TM52
  (107, 10700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Hitmonchan - Fling - TM56
  (107, 10700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Hitmonchan - Endure - TM58
  (107, 10700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Hitmonchan - Drain Punch - TM60
  (107, 10700, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 38),
  -- Hitmonchan - Stone Edge - TM71
  (107, 10700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 39),
  -- Hitmonchan - Captivate - TM78
  (107, 10700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Hitmonchan - Rock Slide - TM80
  (107, 10700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Hitmonchan - Sleep Talk - TM82
  (107, 10700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Hitmonchan - Natural Gift - TM83
  (107, 10700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Hitmonchan - Swagger - TM87
  (107, 10700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Hitmonchan - Substitute - TM90
  (107, 10700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Hitmonchan - Rock Smash - HM06
  (107, 10700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Hitmonchan - Rock Climb - HM08
  (107, 10700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 48),
  -- Hitmonchan - Fire Punch - Tutor
  (107, 10700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Hitmonchan - Ice Punch - Tutor
  (107, 10700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Hitmonchan - Thunder Punch - Tutor
  (107, 10700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Hitmonchan - Swift - Tutor
  (107, 10700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Hitmonchan - Snore - Tutor
  (107, 10700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Hitmonchan - Mud-Slap - Tutor
  (107, 10700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Hitmonchan - Helping Hand - Tutor
  (107, 10700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Hitmonchan - Vacuum Wave - Tutor
  (107, 10700, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 5
  (108, 10800, 48, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickitung - Defense Curl - Level 9
  (108, 10800, 111, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickitung - Knock Off - Level 13
  (108, 10800, 282, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 17
  (108, 10800, 35, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickitung - Stomp - Level 21
  (108, 10800, 23, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickitung - Disable - Level 25
  (108, 10800, 50, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickitung - Slam - Level 29
  (108, 10800, 21, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickitung - Rollout - Level 33
  (108, 10800, 205, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickitung - Me First - Level 37
  (108, 10800, 382, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickitung - Refresh - Level 41
  (108, 10800, 287, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickitung - Screech - Level 45
  (108, 10800, 103, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickitung - Power Whip - Level 49
  (108, 10800, 438, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickitung - Wring Out - Level 53
  (108, 10800, 378, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickitung - Focus Punch - TM01
  (108, 10800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Lickitung - Water Pulse - TM03
  (108, 10800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Lickitung - Hidden Power - TM10
  (108, 10800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Lickitung - Frustration - TM21
  (108, 10800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Lickitung - Solar Beam - TM22
  (108, 10800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Lickitung - Iron Tail - TM23
  (108, 10800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Lickitung - Return - TM27
  (108, 10800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Lickitung - Dig - TM28
  (108, 10800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Lickitung - Brick Break - TM31
  (108, 10800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 34),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Lickitung - Shock Wave - TM34
  (108, 10800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 36),
  -- Lickitung - Flamethrower - TM35
  (108, 10800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 37),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 38),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 39),
  -- Lickitung - Rock Tomb - TM39
  (108, 10800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 40),
  -- Lickitung - Facade - TM42
  (108, 10800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Lickitung - Secret Power - TM43
  (108, 10800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Lickitung - Fling - TM56
  (108, 10800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 46),
  -- Lickitung - Endure - TM58
  (108, 10800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 47),
  -- Lickitung - Giga Impact - TM68
  (108, 10800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 48),
  -- Lickitung - Swords Dance - TM75
  (108, 10800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 49),
  -- Lickitung - Psych Up - TM77
  (108, 10800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Lickitung - Captivate - TM78
  (108, 10800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Lickitung - Rock Slide - TM80
  (108, 10800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Lickitung - Sleep Talk - TM82
  (108, 10800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Lickitung - Natural Gift - TM83
  (108, 10800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Lickitung - Dream Eater - TM85
  (108, 10800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 55),
  -- Lickitung - Swagger - TM87
  (108, 10800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Lickitung - Substitute - TM90
  (108, 10800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 59),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Lickitung - Defog - HM05
  (108, 10800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 61),
  -- Lickitung - Rock Smash - HM06
  (108, 10800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Lickitung - Rock Climb - HM08
  (108, 10800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 63),
  -- Lickitung - Body Slam - Egg
  (108, 10800, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lickitung - Amnesia - Egg
  (108, 10800, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lickitung - Substitute - Egg
  (108, 10800, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lickitung - Snore - Egg
  (108, 10800, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lickitung - Curse - Egg
  (108, 10800, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lickitung - Belly Drum - Egg
  (108, 10800, 187, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lickitung - Sleep Talk - Egg
  (108, 10800, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lickitung - Magnitude - Egg
  (108, 10800, 222, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Lickitung - Smelling Salts - Egg
  (108, 10800, 265, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Lickitung - Hammer Arm - Egg
  (108, 10800, 359, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Lickitung - Fire Punch - Tutor
  (108, 10800, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Lickitung - Ice Punch - Tutor
  (108, 10800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Lickitung - Thunder Punch - Tutor
  (108, 10800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Lickitung - Snore - Tutor
  (108, 10800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Lickitung - Mud-Slap - Tutor
  (108, 10800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Lickitung - Icy Wind - Tutor
  (108, 10800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Lickitung - Rollout - Tutor
  (108, 10800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Lickitung - Knock Off - Tutor
  (108, 10800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Lickitung - Aqua Tail - Tutor
  (108, 10800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Lickitung - Zen Headbutt - Tutor
  (108, 10800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 6
  (109, 10900, 123, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 10
  (109, 10900, 108, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Koffing - Assurance - Level 15
  (109, 10900, 372, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Koffing - Self-Destruct - Level 19
  (109, 10900, 120, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 24
  (109, 10900, 124, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Koffing - Haze - Level 28
  (109, 10900, 114, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Koffing - Gyro Ball - Level 33
  (109, 10900, 360, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Koffing - Explosion - Level 37
  (109, 10900, 153, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Koffing - Sludge Bomb - Level 42
  (109, 10900, 188, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Koffing - Destiny Bond - Level 46
  (109, 10900, 194, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Koffing - Memento - Level 51
  (109, 10900, 262, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Koffing - Hidden Power - TM10
  (109, 10900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Koffing - Taunt - TM12
  (109, 10900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Koffing - Rain Dance - TM18
  (109, 10900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Koffing - Frustration - TM21
  (109, 10900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 21),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 22),
  -- Koffing - Return - TM27
  (109, 10900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Koffing - Shadow Ball - TM30
  (109, 10900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 24),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Koffing - Shock Wave - TM34
  (109, 10900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Koffing - Flamethrower - TM35
  (109, 10900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Koffing - Torment - TM41
  (109, 10900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Koffing - Facade - TM42
  (109, 10900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Koffing - Secret Power - TM43
  (109, 10900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Koffing - Endure - TM58
  (109, 10900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Koffing - Will-O-Wisp - TM61
  (109, 10900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 37),
  -- Koffing - Explosion - TM64
  (109, 10900, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 38),
  -- Koffing - Payback - TM66
  (109, 10900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 39),
  -- Koffing - Flash - TM70
  (109, 10900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Koffing - Gyro Ball - TM74
  (109, 10900, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 41),
  -- Koffing - Captivate - TM78
  (109, 10900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Koffing - Dark Pulse - TM79
  (109, 10900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 43),
  -- Koffing - Sleep Talk - TM82
  (109, 10900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Koffing - Natural Gift - TM83
  (109, 10900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Koffing - Swagger - TM87
  (109, 10900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Koffing - Substitute - TM90
  (109, 10900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Koffing - Psybeam - Egg
  (109, 10900, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Koffing - Screech - Egg
  (109, 10900, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Koffing - Psywave - Egg
  (109, 10900, 149, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Koffing - Curse - Egg
  (109, 10900, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Spite - Egg
  (109, 10900, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Koffing - Destiny Bond - Egg
  (109, 10900, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Pain Split - Egg
  (109, 10900, 220, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Koffing - Will-O-Wisp - Egg
  (109, 10900, 261, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Koffing - Grudge - Egg
  (109, 10900, 288, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Koffing - Snore - Tutor
  (109, 10900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Koffing - Spite - Tutor
  (109, 10900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Koffing - Rollout - Tutor
  (109, 10900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Koffing - Uproar - Tutor
  (109, 10900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Smokescreen - Level 1
  (110, 11000, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 6
  (110, 11000, 123, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Weezing - Smokescreen - Level 10
  (110, 11000, 108, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Weezing - Assurance - Level 15
  (110, 11000, 372, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weezing - Self-Destruct - Level 19
  (110, 11000, 120, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Weezing - Sludge - Level 24
  (110, 11000, 124, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weezing - Haze - Level 28
  (110, 11000, 114, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Weezing - Double Hit - Level 33
  (110, 11000, 458, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Weezing - Explosion - Level 40
  (110, 11000, 153, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Weezing - Sludge Bomb - Level 48
  (110, 11000, 188, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Weezing - Destiny Bond - Level 55
  (110, 11000, 194, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Weezing - Memento - Level 63
  (110, 11000, 262, 9, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Weezing - Hidden Power - TM10
  (110, 11000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Weezing - Taunt - TM12
  (110, 11000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Weezing - Rain Dance - TM18
  (110, 11000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Weezing - Frustration - TM21
  (110, 11000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Weezing - Return - TM27
  (110, 11000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Weezing - Shadow Ball - TM30
  (110, 11000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Weezing - Shock Wave - TM34
  (110, 11000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Weezing - Flamethrower - TM35
  (110, 11000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 30),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 31),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 32),
  -- Weezing - Torment - TM41
  (110, 11000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 33),
  -- Weezing - Facade - TM42
  (110, 11000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Weezing - Secret Power - TM43
  (110, 11000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Weezing - Endure - TM58
  (110, 11000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Weezing - Will-O-Wisp - TM61
  (110, 11000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 40),
  -- Weezing - Explosion - TM64
  (110, 11000, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 41),
  -- Weezing - Payback - TM66
  (110, 11000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Weezing - Giga Impact - TM68
  (110, 11000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Weezing - Flash - TM70
  (110, 11000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 44),
  -- Weezing - Gyro Ball - TM74
  (110, 11000, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 45),
  -- Weezing - Captivate - TM78
  (110, 11000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Weezing - Dark Pulse - TM79
  (110, 11000, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 47),
  -- Weezing - Sleep Talk - TM82
  (110, 11000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Weezing - Natural Gift - TM83
  (110, 11000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Weezing - Swagger - TM87
  (110, 11000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Weezing - Substitute - TM90
  (110, 11000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Weezing - Snore - Tutor
  (110, 11000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Weezing - Spite - Tutor
  (110, 11000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Weezing - Rollout - Tutor
  (110, 11000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Weezing - Uproar - Tutor
  (110, 11000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Stomp - Level 9
  (111, 11100, 23, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 13
  (111, 11100, 31, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Rhyhorn - Scary Face - Level 21
  (111, 11100, 184, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Rhyhorn - Rock Blast - Level 25
  (111, 11100, 350, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Rhyhorn - Take Down - Level 33
  (111, 11100, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Rhyhorn - Horn Drill - Level 37
  (111, 11100, 32, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Rhyhorn - Stone Edge - Level 45
  (111, 11100, 444, 9, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Rhyhorn - Earthquake - Level 49
  (111, 11100, 89, 9, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Rhyhorn - Megahorn - Level 57
  (111, 11100, 224, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rhyhorn - Hidden Power - TM10
  (111, 11100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rhyhorn - Ice Beam - TM13
  (111, 11100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 16),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 17),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Rhyhorn - Rain Dance - TM18
  (111, 11100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Rhyhorn - Frustration - TM21
  (111, 11100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Rhyhorn - Iron Tail - TM23
  (111, 11100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Rhyhorn - Return - TM27
  (111, 11100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Rhyhorn - Shock Wave - TM34
  (111, 11100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Rhyhorn - Flamethrower - TM35
  (111, 11100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Rhyhorn - Rock Tomb - TM39
  (111, 11100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Rhyhorn - Facade - TM42
  (111, 11100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Rhyhorn - Secret Power - TM43
  (111, 11100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Rhyhorn - Thief - TM46
  (111, 11100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Rhyhorn - Endure - TM58
  (111, 11100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Rhyhorn - Dragon Pulse - TM59
  (111, 11100, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 39),
  -- Rhyhorn - Payback - TM66
  (111, 11100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Rhyhorn - Rock Polish - TM69
  (111, 11100, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 41),
  -- Rhyhorn - Stone Edge - TM71
  (111, 11100, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 42),
  -- Rhyhorn - Swords Dance - TM75
  (111, 11100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 43),
  -- Rhyhorn - Stealth Rock - TM76
  (111, 11100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 44),
  -- Rhyhorn - Captivate - TM78
  (111, 11100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Rhyhorn - Rock Slide - TM80
  (111, 11100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Rhyhorn - Sleep Talk - TM82
  (111, 11100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Rhyhorn - Natural Gift - TM83
  (111, 11100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Rhyhorn - Poison Jab - TM84
  (111, 11100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 49),
  -- Rhyhorn - Swagger - TM87
  (111, 11100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Rhyhorn - Substitute - TM90
  (111, 11100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Rhyhorn - Rock Smash - HM06
  (111, 11100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Rhyhorn - Rock Climb - HM08
  (111, 11100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Rhyhorn - Swords Dance - Egg
  (111, 11100, 14, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Rhyhorn - Counter - Egg
  (111, 11100, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rhyhorn - Rock Slide - Egg
  (111, 11100, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Rhyhorn - Curse - Egg
  (111, 11100, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Rhyhorn - Reversal - Egg
  (111, 11100, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Rhyhorn - Magnitude - Egg
  (111, 11100, 222, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Crunch - Egg
  (111, 11100, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rhyhorn - Crush Claw - Egg
  (111, 11100, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rhyhorn - Dragon Rush - Egg
  (111, 11100, 407, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rhyhorn - Thunder Fang - Egg
  (111, 11100, 422, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rhyhorn - Ice Fang - Egg
  (111, 11100, 423, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhyhorn - Fire Fang - Egg
  (111, 11100, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rhyhorn - Snore - Tutor
  (111, 11100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Rhyhorn - Spite - Tutor
  (111, 11100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Rhyhorn - Mud-Slap - Tutor
  (111, 11100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Rhyhorn - Icy Wind - Tutor
  (111, 11100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Rhyhorn - Rollout - Tutor
  (111, 11100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Rhyhorn - Ancient Power - Tutor
  (111, 11100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Rhyhorn - Uproar - Tutor
  (111, 11100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rhyhorn - Superpower - Tutor
  (111, 11100, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rhyhorn - Endeavor - Tutor
  (111, 11100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Rhyhorn - Aqua Tail - Tutor
  (111, 11100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Rhyhorn - Earth Power - Tutor
  (111, 11100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Rhydon - Stomp - Level 1
  (112, 11200, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Stomp - Level 9
  (112, 11200, 23, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 13
  (112, 11200, 31, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 21
  (112, 11200, 184, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Rhydon - Rock Blast - Level 25
  (112, 11200, 350, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhydon - Take Down - Level 33
  (112, 11200, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Rhydon - Horn Drill - Level 37
  (112, 11200, 32, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Rhydon - Hammer Arm - Level 42
  (112, 11200, 359, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Rhydon - Stone Edge - Level 45
  (112, 11200, 444, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Rhydon - Earthquake - Level 49
  (112, 11200, 89, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Rhydon - Megahorn - Level 57
  (112, 11200, 224, 9, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Rhydon - Focus Punch - TM01
  (112, 11200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Rhydon - Hidden Power - TM10
  (112, 11200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Rhydon - Rain Dance - TM18
  (112, 11200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Rhydon - Frustration - TM21
  (112, 11200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Rhydon - Iron Tail - TM23
  (112, 11200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Rhydon - Return - TM27
  (112, 11200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Rhydon - Brick Break - TM31
  (112, 11200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Rhydon - Shock Wave - TM34
  (112, 11200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Rhydon - Flamethrower - TM35
  (112, 11200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 35),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 36),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 37),
  -- Rhydon - Rock Tomb - TM39
  (112, 11200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 38),
  -- Rhydon - Facade - TM42
  (112, 11200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Rhydon - Secret Power - TM43
  (112, 11200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Rhydon - Thief - TM46
  (112, 11200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Rhydon - Focus Blast - TM52
  (112, 11200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Rhydon - Fling - TM56
  (112, 11200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Rhydon - Endure - TM58
  (112, 11200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Rhydon - Dragon Pulse - TM59
  (112, 11200, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 47),
  -- Rhydon - Shadow Claw - TM65
  (112, 11200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 48),
  -- Rhydon - Payback - TM66
  (112, 11200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 49),
  -- Rhydon - Giga Impact - TM68
  (112, 11200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 50),
  -- Rhydon - Rock Polish - TM69
  (112, 11200, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 51),
  -- Rhydon - Stone Edge - TM71
  (112, 11200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 52),
  -- Rhydon - Avalanche - TM72
  (112, 11200, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 53),
  -- Rhydon - Swords Dance - TM75
  (112, 11200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 54),
  -- Rhydon - Stealth Rock - TM76
  (112, 11200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 55),
  -- Rhydon - Captivate - TM78
  (112, 11200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 56),
  -- Rhydon - Rock Slide - TM80
  (112, 11200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 57),
  -- Rhydon - Sleep Talk - TM82
  (112, 11200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 58),
  -- Rhydon - Natural Gift - TM83
  (112, 11200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 59),
  -- Rhydon - Poison Jab - TM84
  (112, 11200, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 60),
  -- Rhydon - Swagger - TM87
  (112, 11200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 61),
  -- Rhydon - Substitute - TM90
  (112, 11200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 62),
  -- Rhydon - Cut - HM01
  (112, 11200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 63),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 64),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 65),
  -- Rhydon - Defog - HM05
  (112, 11200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 66),
  -- Rhydon - Rock Smash - HM06
  (112, 11200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 67),
  -- Rhydon - Rock Climb - HM08
  (112, 11200, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 68),
  -- Rhydon - Fire Punch - Tutor
  (112, 11200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Rhydon - Ice Punch - Tutor
  (112, 11200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Rhydon - Thunder Punch - Tutor
  (112, 11200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Rhydon - Snore - Tutor
  (112, 11200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Rhydon - Spite - Tutor
  (112, 11200, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rhydon - Mud-Slap - Tutor
  (112, 11200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rhydon - Icy Wind - Tutor
  (112, 11200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Rhydon - Outrage - Tutor
  (112, 11200, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Rhydon - Rollout - Tutor
  (112, 11200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Rhydon - Fury Cutter - Tutor
  (112, 11200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Rhydon - Ancient Power - Tutor
  (112, 11200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Rhydon - Uproar - Tutor
  (112, 11200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Rhydon - Superpower - Tutor
  (112, 11200, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Rhydon - Endeavor - Tutor
  (112, 11200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Rhydon - Aqua Tail - Tutor
  (112, 11200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Rhydon - Earth Power - Tutor
  (112, 11200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Growl - Level 1
  (113, 11300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Tail Whip - Level 5
  (113, 11300, 39, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chansey - Refresh - Level 9
  (113, 11300, 287, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chansey - Soft-Boiled - Level 12
  (113, 11300, 135, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chansey - Double Slap - Level 16
  (113, 11300, 3, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chansey - Minimize - Level 20
  (113, 11300, 107, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chansey - Sing - Level 23
  (113, 11300, 47, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chansey - Fling - Level 27
  (113, 11300, 374, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Chansey - Defense Curl - Level 31
  (113, 11300, 111, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chansey - Light Screen - Level 34
  (113, 11300, 113, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chansey - Egg Bomb - Level 38
  (113, 11300, 121, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Chansey - Healing Wish - Level 42
  (113, 11300, 361, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chansey - Double-Edge - Level 46
  (113, 11300, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Chansey - Focus Punch - TM01
  (113, 11300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Chansey - Water Pulse - TM03
  (113, 11300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Chansey - Calm Mind - TM04
  (113, 11300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Chansey - Hail - TM07
  (113, 11300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Chansey - Hidden Power - TM10
  (113, 11300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Chansey - Light Screen - TM16
  (113, 11300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Chansey - Safeguard - TM20
  (113, 11300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 28),
  -- Chansey - Frustration - TM21
  (113, 11300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Chansey - Iron Tail - TM23
  (113, 11300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 31),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 32),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 33),
  -- Chansey - Earthquake - TM26
  (113, 11300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 34),
  -- Chansey - Return - TM27
  (113, 11300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 35),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 36),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 37),
  -- Chansey - Brick Break - TM31
  (113, 11300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 38),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 39),
  -- Chansey - Shock Wave - TM34
  (113, 11300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 40),
  -- Chansey - Flamethrower - TM35
  (113, 11300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 41),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 42),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 43),
  -- Chansey - Rock Tomb - TM39
  (113, 11300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 44),
  -- Chansey - Facade - TM42
  (113, 11300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 45),
  -- Chansey - Secret Power - TM43
  (113, 11300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 46),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 47),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 48),
  -- Chansey - Skill Swap - TM48
  (113, 11300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 49),
  -- Chansey - Snatch - TM49
  (113, 11300, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 50),
  -- Chansey - Fling - TM56
  (113, 11300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 51),
  -- Chansey - Charge Beam - TM57
  (113, 11300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 52),
  -- Chansey - Endure - TM58
  (113, 11300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 53),
  -- Chansey - Drain Punch - TM60
  (113, 11300, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 54),
  -- Chansey - Recycle - TM67
  (113, 11300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 55),
  -- Chansey - Giga Impact - TM68
  (113, 11300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 56),
  -- Chansey - Flash - TM70
  (113, 11300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 57),
  -- Chansey - Thunder Wave - TM73
  (113, 11300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 58),
  -- Chansey - Stealth Rock - TM76
  (113, 11300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 59),
  -- Chansey - Psych Up - TM77
  (113, 11300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 60),
  -- Chansey - Captivate - TM78
  (113, 11300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 61),
  -- Chansey - Rock Slide - TM80
  (113, 11300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 62),
  -- Chansey - Sleep Talk - TM82
  (113, 11300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 63),
  -- Chansey - Natural Gift - TM83
  (113, 11300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 64),
  -- Chansey - Dream Eater - TM85
  (113, 11300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 65),
  -- Chansey - Grass Knot - TM86
  (113, 11300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 66),
  -- Chansey - Swagger - TM87
  (113, 11300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 67),
  -- Chansey - Substitute - TM90
  (113, 11300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 68),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 69),
  -- Chansey - Rock Smash - HM06
  (113, 11300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 70),
  -- Chansey - Rock Climb - HM08
  (113, 11300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 71),
  -- Chansey - Counter - Egg
  (113, 11300, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Chansey - Metronome - Egg
  (113, 11300, 118, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Chansey - Substitute - Egg
  (113, 11300, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Chansey - Heal Bell - Egg
  (113, 11300, 215, 9, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Chansey - Present - Egg
  (113, 11300, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Chansey - Helping Hand - Egg
  (113, 11300, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Chansey - Aromatherapy - Egg
  (113, 11300, 312, 9, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Chansey - Gravity - Egg
  (113, 11300, 356, 9, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Chansey - Last Resort - Egg
  (113, 11300, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Chansey - Fire Punch - Tutor
  (113, 11300, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Chansey - Ice Punch - Tutor
  (113, 11300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Chansey - Thunder Punch - Tutor
  (113, 11300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Chansey - Snore - Tutor
  (113, 11300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Chansey - Mud-Slap - Tutor
  (113, 11300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Chansey - Icy Wind - Tutor
  (113, 11300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Chansey - Rollout - Tutor
  (113, 11300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Chansey - Helping Hand - Tutor
  (113, 11300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Chansey - Endeavor - Tutor
  (113, 11300, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Chansey - Last Resort - Tutor
  (113, 11300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Chansey - Zen Headbutt - Tutor
  (113, 11300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Ingrain - Level 1
  (114, 11400, 275, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Sleep Powder - Level 5
  (114, 11400, 79, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tangela - Absorb - Level 8
  (114, 11400, 71, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tangela - Growth - Level 12
  (114, 11400, 74, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tangela - Poison Powder - Level 15
  (114, 11400, 77, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tangela - Vine Whip - Level 19
  (114, 11400, 22, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tangela - Bind - Level 22
  (114, 11400, 20, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Tangela - Mega Drain - Level 26
  (114, 11400, 72, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Tangela - Stun Spore - Level 29
  (114, 11400, 78, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Tangela - Ancient Power - Level 33
  (114, 11400, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Tangela - Knock Off - Level 36
  (114, 11400, 282, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tangela - Natural Gift - Level 40
  (114, 11400, 363, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tangela - Slam - Level 43
  (114, 11400, 21, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tangela - Tickle - Level 47
  (114, 11400, 321, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tangela - Wring Out - Level 50
  (114, 11400, 378, 9, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Tangela - Power Whip - Level 54
  (114, 11400, 438, 9, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Tangela - Bullet Seed - TM09
  (114, 11400, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 19),
  -- Tangela - Hidden Power - TM10
  (114, 11400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Tangela - Giga Drain - TM19
  (114, 11400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 24),
  -- Tangela - Frustration - TM21
  (114, 11400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Tangela - Return - TM27
  (114, 11400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Tangela - Reflect - TM33
  (114, 11400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Tangela - Shock Wave - TM34
  (114, 11400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 31),
  -- Tangela - Facade - TM42
  (114, 11400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Tangela - Secret Power - TM43
  (114, 11400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Tangela - Energy Ball - TM53
  (114, 11400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 37),
  -- Tangela - Endure - TM58
  (114, 11400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Tangela - Giga Impact - TM68
  (114, 11400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Tangela - Flash - TM70
  (114, 11400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Tangela - Swords Dance - TM75
  (114, 11400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Tangela - Psych Up - TM77
  (114, 11400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Tangela - Captivate - TM78
  (114, 11400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Tangela - Sleep Talk - TM82
  (114, 11400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Tangela - Natural Gift - TM83
  (114, 11400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Tangela - Grass Knot - TM86
  (114, 11400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 46),
  -- Tangela - Swagger - TM87
  (114, 11400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Tangela - Substitute - TM90
  (114, 11400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Tangela - Rock Smash - HM06
  (114, 11400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Tangela - Mega Drain - Egg
  (114, 11400, 72, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tangela - Leech Seed - Egg
  (114, 11400, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tangela - Confusion - Egg
  (114, 11400, 93, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tangela - Reflect - Egg
  (114, 11400, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tangela - Amnesia - Egg
  (114, 11400, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tangela - Flail - Egg
  (114, 11400, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tangela - Nature Power - Egg
  (114, 11400, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tangela - Endeavor - Egg
  (114, 11400, 283, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tangela - Leaf Storm - Egg
  (114, 11400, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tangela - Snore - Tutor
  (114, 11400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Tangela - Synthesis - Tutor
  (114, 11400, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Tangela - Ancient Power - Tutor
  (114, 11400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Tangela - Knock Off - Tutor
  (114, 11400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Tangela - Seed Bomb - Tutor
  (114, 11400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 1
  (115, 11500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Fake Out - Level 7
  (115, 11500, 252, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 10
  (115, 11500, 39, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 13
  (115, 11500, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Kangaskhan - Mega Punch - Level 19
  (115, 11500, 5, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Kangaskhan - Rage - Level 22
  (115, 11500, 99, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Kangaskhan - Dizzy Punch - Level 25
  (115, 11500, 146, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kangaskhan - Crunch - Level 31
  (115, 11500, 242, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Kangaskhan - Endure - Level 34
  (115, 11500, 203, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kangaskhan - Outrage - Level 37
  (115, 11500, 200, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kangaskhan - Double Hit - Level 43
  (115, 11500, 458, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Kangaskhan - Sucker Punch - Level 46
  (115, 11500, 389, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Kangaskhan - Reversal - Level 49
  (115, 11500, 179, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Kangaskhan - Focus Punch - TM01
  (115, 11500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Kangaskhan - Water Pulse - TM03
  (115, 11500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Kangaskhan - Hail - TM07
  (115, 11500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Kangaskhan - Hidden Power - TM10
  (115, 11500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Kangaskhan - Frustration - TM21
  (115, 11500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Kangaskhan - Solar Beam - TM22
  (115, 11500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Kangaskhan - Iron Tail - TM23
  (115, 11500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 32),
  -- Kangaskhan - Return - TM27
  (115, 11500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 33),
  -- Kangaskhan - Dig - TM28
  (115, 11500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 34),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Kangaskhan - Brick Break - TM31
  (115, 11500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Kangaskhan - Shock Wave - TM34
  (115, 11500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Kangaskhan - Flamethrower - TM35
  (115, 11500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 39),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 40),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 41),
  -- Kangaskhan - Rock Tomb - TM39
  (115, 11500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 42),
  -- Kangaskhan - Aerial Ace - TM40
  (115, 11500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 43),
  -- Kangaskhan - Facade - TM42
  (115, 11500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Kangaskhan - Secret Power - TM43
  (115, 11500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 47),
  -- Kangaskhan - Thief - TM46
  (115, 11500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 48),
  -- Kangaskhan - Focus Blast - TM52
  (115, 11500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 49),
  -- Kangaskhan - Fling - TM56
  (115, 11500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 50),
  -- Kangaskhan - Endure - TM58
  (115, 11500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Kangaskhan - Drain Punch - TM60
  (115, 11500, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Kangaskhan - Shadow Claw - TM65
  (115, 11500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 53),
  -- Kangaskhan - Giga Impact - TM68
  (115, 11500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Kangaskhan - Avalanche - TM72
  (115, 11500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 55),
  -- Kangaskhan - Captivate - TM78
  (115, 11500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 56),
  -- Kangaskhan - Rock Slide - TM80
  (115, 11500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 57),
  -- Kangaskhan - Sleep Talk - TM82
  (115, 11500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 58),
  -- Kangaskhan - Natural Gift - TM83
  (115, 11500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 59),
  -- Kangaskhan - Swagger - TM87
  (115, 11500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 60),
  -- Kangaskhan - Substitute - TM90
  (115, 11500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 61),
  -- Kangaskhan - Cut - HM01
  (115, 11500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 62),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 63),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 64),
  -- Kangaskhan - Defog - HM05
  (115, 11500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 65),
  -- Kangaskhan - Rock Smash - HM06
  (115, 11500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 66),
  -- Kangaskhan - Rock Climb - HM08
  (115, 11500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 67),
  -- Kangaskhan - Stomp - Egg
  (115, 11500, 23, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kangaskhan - Double-Edge - Egg
  (115, 11500, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kangaskhan - Disable - Egg
  (115, 11500, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kangaskhan - Counter - Egg
  (115, 11500, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kangaskhan - Focus Energy - Egg
  (115, 11500, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kangaskhan - Substitute - Egg
  (115, 11500, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kangaskhan - Foresight - Egg
  (115, 11500, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kangaskhan - Safeguard - Egg
  (115, 11500, 219, 9, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Kangaskhan - Endeavor - Egg
  (115, 11500, 283, 9, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Kangaskhan - Crush Claw - Egg
  (115, 11500, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Kangaskhan - Hammer Arm - Egg
  (115, 11500, 359, 9, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Kangaskhan - Fire Punch - Tutor
  (115, 11500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Kangaskhan - Ice Punch - Tutor
  (115, 11500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Kangaskhan - Thunder Punch - Tutor
  (115, 11500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Kangaskhan - Snore - Tutor
  (115, 11500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Kangaskhan - Spite - Tutor
  (115, 11500, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Kangaskhan - Mud-Slap - Tutor
  (115, 11500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Kangaskhan - Icy Wind - Tutor
  (115, 11500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Kangaskhan - Outrage - Tutor
  (115, 11500, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Kangaskhan - Fury Cutter - Tutor
  (115, 11500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Kangaskhan - Uproar - Tutor
  (115, 11500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Kangaskhan - Helping Hand - Tutor
  (115, 11500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Kangaskhan - Endeavor - Tutor
  (115, 11500, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Kangaskhan - Sucker Punch - Tutor
  (115, 11500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Kangaskhan - Aqua Tail - Tutor
  (115, 11500, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 92),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 4
  (116, 11600, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 8
  (116, 11600, 43, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 11
  (116, 11600, 55, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Horsea - Focus Energy - Level 14
  (116, 11600, 116, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Horsea - Bubble Beam - Level 18
  (116, 11600, 61, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Horsea - Agility - Level 23
  (116, 11600, 97, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Horsea - Twister - Level 26
  (116, 11600, 239, 9, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Horsea - Brine - Level 30
  (116, 11600, 362, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Horsea - Hydro Pump - Level 35
  (116, 11600, 56, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Horsea - Dragon Dance - Level 38
  (116, 11600, 349, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Horsea - Dragon Pulse - Level 42
  (116, 11600, 406, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Horsea - Water Pulse - TM03
  (116, 11600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Horsea - Hail - TM07
  (116, 11600, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Horsea - Hidden Power - TM10
  (116, 11600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Horsea - Frustration - TM21
  (116, 11600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Horsea - Return - TM27
  (116, 11600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Horsea - Facade - TM42
  (116, 11600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Horsea - Secret Power - TM43
  (116, 11600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Horsea - Brine - TM55
  (116, 11600, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 28),
  -- Horsea - Endure - TM58
  (116, 11600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Horsea - Dragon Pulse - TM59
  (116, 11600, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 30),
  -- Horsea - Captivate - TM78
  (116, 11600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 31),
  -- Horsea - Sleep Talk - TM82
  (116, 11600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 32),
  -- Horsea - Natural Gift - TM83
  (116, 11600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 33),
  -- Horsea - Swagger - TM87
  (116, 11600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 34),
  -- Horsea - Substitute - TM90
  (116, 11600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 35),
  -- Horsea - Flash Cannon - TM91
  (116, 11600, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 36),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 37),
  -- Horsea - Defog - HM05
  (116, 11600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 38),
  -- Horsea - Waterfall - HM07
  (116, 11600, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 39),
  -- Horsea - Disable - Egg
  (116, 11600, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Horsea - Aurora Beam - Egg
  (116, 11600, 62, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Horsea - Dragon Rage - Egg
  (116, 11600, 82, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Horsea - Splash - Egg
  (116, 11600, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Horsea - Flail - Egg
  (116, 11600, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Horsea - Octazooka - Egg
  (116, 11600, 190, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Horsea - Dragon Breath - Egg
  (116, 11600, 225, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Horsea - Signal Beam - Egg
  (116, 11600, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Horsea - Swift - Tutor
  (116, 11600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Horsea - Snore - Tutor
  (116, 11600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Horsea - Icy Wind - Tutor
  (116, 11600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Horsea - Outrage - Tutor
  (116, 11600, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Horsea - Twister - Tutor
  (116, 11600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Horsea - Dive - Tutor
  (116, 11600, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Horsea - Signal Beam - Tutor
  (116, 11600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Horsea - Bounce - Tutor
  (116, 11600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Smokescreen - Level 4
  (117, 11700, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Seadra - Leer - Level 8
  (117, 11700, 43, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Seadra - Water Gun - Level 11
  (117, 11700, 55, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Seadra - Focus Energy - Level 14
  (117, 11700, 116, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Seadra - Bubble Beam - Level 18
  (117, 11700, 61, 9, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Seadra - Agility - Level 23
  (117, 11700, 97, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Seadra - Twister - Level 26
  (117, 11700, 239, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Seadra - Brine - Level 30
  (117, 11700, 362, 9, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seadra - Hydro Pump - Level 40
  (117, 11700, 56, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Seadra - Dragon Dance - Level 48
  (117, 11700, 349, 9, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Seadra - Dragon Pulse - Level 57
  (117, 11700, 406, 9, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Seadra - Water Pulse - TM03
  (117, 11700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Seadra - Hail - TM07
  (117, 11700, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Seadra - Hidden Power - TM10
  (117, 11700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Seadra - Frustration - TM21
  (117, 11700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Seadra - Return - TM27
  (117, 11700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Seadra - Facade - TM42
  (117, 11700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Seadra - Secret Power - TM43
  (117, 11700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Seadra - Brine - TM55
  (117, 11700, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 32),
  -- Seadra - Endure - TM58
  (117, 11700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Seadra - Dragon Pulse - TM59
  (117, 11700, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 34),
  -- Seadra - Giga Impact - TM68
  (117, 11700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Seadra - Captivate - TM78
  (117, 11700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Seadra - Sleep Talk - TM82
  (117, 11700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Seadra - Natural Gift - TM83
  (117, 11700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Seadra - Swagger - TM87
  (117, 11700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Seadra - Substitute - TM90
  (117, 11700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Seadra - Flash Cannon - TM91
  (117, 11700, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 41),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Seadra - Defog - HM05
  (117, 11700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Seadra - Waterfall - HM07
  (117, 11700, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Seadra - Swift - Tutor
  (117, 11700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Seadra - Snore - Tutor
  (117, 11700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Seadra - Icy Wind - Tutor
  (117, 11700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Seadra - Outrage - Tutor
  (117, 11700, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Seadra - Twister - Tutor
  (117, 11700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Seadra - Dive - Tutor
  (117, 11700, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Seadra - Signal Beam - Tutor
  (117, 11700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Seadra - Bounce - Tutor
  (117, 11700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Water Sport - Level 1
  (118, 11800, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goldeen - Supersonic - Level 7
  (118, 11800, 48, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 11
  (118, 11800, 30, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Goldeen - Water Pulse - Level 17
  (118, 11800, 352, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Goldeen - Flail - Level 21
  (118, 11800, 175, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Goldeen - Aqua Ring - Level 27
  (118, 11800, 392, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Goldeen - Fury Attack - Level 31
  (118, 11800, 31, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Goldeen - Waterfall - Level 37
  (118, 11800, 127, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Goldeen - Horn Drill - Level 41
  (118, 11800, 32, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Goldeen - Agility - Level 47
  (118, 11800, 97, 9, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Goldeen - Megahorn - Level 51
  (118, 11800, 224, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Goldeen - Water Pulse - TM03
  (118, 11800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Goldeen - Hail - TM07
  (118, 11800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Goldeen - Hidden Power - TM10
  (118, 11800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Goldeen - Frustration - TM21
  (118, 11800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Goldeen - Return - TM27
  (118, 11800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Goldeen - Facade - TM42
  (118, 11800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Goldeen - Secret Power - TM43
  (118, 11800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Goldeen - Endure - TM58
  (118, 11800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Goldeen - Captivate - TM78
  (118, 11800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 30),
  -- Goldeen - Sleep Talk - TM82
  (118, 11800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Goldeen - Natural Gift - TM83
  (118, 11800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Goldeen - Poison Jab - TM84
  (118, 11800, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 33),
  -- Goldeen - Swagger - TM87
  (118, 11800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 34),
  -- Goldeen - Substitute - TM90
  (118, 11800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 35),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 36),
  -- Goldeen - Defog - HM05
  (118, 11800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 37),
  -- Goldeen - Waterfall - HM07
  (118, 11800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 38),
  -- Goldeen - Hydro Pump - Egg
  (118, 11800, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Goldeen - Psybeam - Egg
  (118, 11800, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Goldeen - Haze - Egg
  (118, 11800, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Goldeen - Mud-Slap - Egg
  (118, 11800, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Goldeen - Sleep Talk - Egg
  (118, 11800, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Goldeen - Mud Sport - Egg
  (118, 11800, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Goldeen - Aqua Tail - Egg
  (118, 11800, 401, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Goldeen - Swift - Tutor
  (118, 11800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Goldeen - Snore - Tutor
  (118, 11800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Goldeen - Mud-Slap - Tutor
  (118, 11800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Goldeen - Icy Wind - Tutor
  (118, 11800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Goldeen - Fury Cutter - Tutor
  (118, 11800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Goldeen - Knock Off - Tutor
  (118, 11800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Goldeen - Dive - Tutor
  (118, 11800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Goldeen - Bounce - Tutor
  (118, 11800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Goldeen - Aqua Tail - Tutor
  (118, 11800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Water Sport - Level 1
  (119, 11900, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Poison Jab - Level 1
  (119, 11900, 398, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seaking - Supersonic - Level 7
  (119, 11900, 48, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Seaking - Horn Attack - Level 11
  (119, 11900, 30, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Seaking - Water Pulse - Level 17
  (119, 11900, 352, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Seaking - Flail - Level 21
  (119, 11900, 175, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seaking - Aqua Ring - Level 27
  (119, 11900, 392, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Seaking - Fury Attack - Level 31
  (119, 11900, 31, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Seaking - Waterfall - Level 40
  (119, 11900, 127, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Seaking - Horn Drill - Level 47
  (119, 11900, 32, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Seaking - Agility - Level 56
  (119, 11900, 97, 9, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Seaking - Megahorn - Level 63
  (119, 11900, 224, 9, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Seaking - Water Pulse - TM03
  (119, 11900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Seaking - Hail - TM07
  (119, 11900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Seaking - Hidden Power - TM10
  (119, 11900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Seaking - Frustration - TM21
  (119, 11900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Seaking - Return - TM27
  (119, 11900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Seaking - Facade - TM42
  (119, 11900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Seaking - Secret Power - TM43
  (119, 11900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Seaking - Endure - TM58
  (119, 11900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Seaking - Giga Impact - TM68
  (119, 11900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Seaking - Captivate - TM78
  (119, 11900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Seaking - Sleep Talk - TM82
  (119, 11900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Seaking - Natural Gift - TM83
  (119, 11900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Seaking - Poison Jab - TM84
  (119, 11900, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 37),
  -- Seaking - Swagger - TM87
  (119, 11900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Seaking - Substitute - TM90
  (119, 11900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 40),
  -- Seaking - Defog - HM05
  (119, 11900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 41),
  -- Seaking - Waterfall - HM07
  (119, 11900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 42),
  -- Seaking - Swift - Tutor
  (119, 11900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Seaking - Snore - Tutor
  (119, 11900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Seaking - Mud-Slap - Tutor
  (119, 11900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Seaking - Icy Wind - Tutor
  (119, 11900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Seaking - Fury Cutter - Tutor
  (119, 11900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Seaking - Knock Off - Tutor
  (119, 11900, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Seaking - Dive - Tutor
  (119, 11900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Seaking - Bounce - Tutor
  (119, 11900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Seaking - Aqua Tail - Tutor
  (119, 11900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 6
  (120, 12000, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Staryu - Rapid Spin - Level 10
  (120, 12000, 229, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Staryu - Recover - Level 15
  (120, 12000, 105, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Staryu - Camouflage - Level 19
  (120, 12000, 293, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 24
  (120, 12000, 129, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Staryu - Bubble Beam - Level 28
  (120, 12000, 61, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Staryu - Minimize - Level 33
  (120, 12000, 107, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Staryu - Gyro Ball - Level 37
  (120, 12000, 360, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Staryu - Light Screen - Level 42
  (120, 12000, 113, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Staryu - Power Gem - Level 46
  (120, 12000, 408, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Staryu - Cosmic Power - Level 51
  (120, 12000, 322, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Staryu - Hydro Pump - Level 55
  (120, 12000, 56, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Staryu - Water Pulse - TM03
  (120, 12000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Staryu - Hail - TM07
  (120, 12000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Staryu - Hidden Power - TM10
  (120, 12000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Staryu - Light Screen - TM16
  (120, 12000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Staryu - Frustration - TM21
  (120, 12000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Staryu - Return - TM27
  (120, 12000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Staryu - Facade - TM42
  (120, 12000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Staryu - Secret Power - TM43
  (120, 12000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Staryu - Brine - TM55
  (120, 12000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 34),
  -- Staryu - Endure - TM58
  (120, 12000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Staryu - Recycle - TM67
  (120, 12000, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 36),
  -- Staryu - Flash - TM70
  (120, 12000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Staryu - Thunder Wave - TM73
  (120, 12000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 38),
  -- Staryu - Gyro Ball - TM74
  (120, 12000, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 39),
  -- Staryu - Psych Up - TM77
  (120, 12000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 40),
  -- Staryu - Sleep Talk - TM82
  (120, 12000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Staryu - Natural Gift - TM83
  (120, 12000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Staryu - Swagger - TM87
  (120, 12000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Staryu - Substitute - TM90
  (120, 12000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Staryu - Flash Cannon - TM91
  (120, 12000, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 45),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 46),
  -- Staryu - Defog - HM05
  (120, 12000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Staryu - Waterfall - HM07
  (120, 12000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 48),
  -- Staryu - Swift - Tutor
  (120, 12000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Staryu - Snore - Tutor
  (120, 12000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Staryu - Icy Wind - Tutor
  (120, 12000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Staryu - Rollout - Tutor
  (120, 12000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Staryu - Twister - Tutor
  (120, 12000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Staryu - Dive - Tutor
  (120, 12000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Staryu - Signal Beam - Tutor
  (120, 12000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Swift - Level 1
  (121, 12100, 129, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Confuse Ray - Level 28
  (121, 12100, 109, 9, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Starmie - Water Pulse - TM03
  (121, 12100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 6),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Starmie - Hail - TM07
  (121, 12100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 8),
  -- Starmie - Hidden Power - TM10
  (121, 12100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 10),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 11),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 12),
  -- Starmie - Light Screen - TM16
  (121, 12100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 13),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 14),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 15),
  -- Starmie - Frustration - TM21
  (121, 12100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 17),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 18),
  -- Starmie - Return - TM27
  (121, 12100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 19),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 20),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 22),
  -- Starmie - Facade - TM42
  (121, 12100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 23),
  -- Starmie - Secret Power - TM43
  (121, 12100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 24),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 25),
  -- Starmie - Skill Swap - TM48
  (121, 12100, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 26),
  -- Starmie - Brine - TM55
  (121, 12100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 27),
  -- Starmie - Endure - TM58
  (121, 12100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 28),
  -- Starmie - Recycle - TM67
  (121, 12100, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 29),
  -- Starmie - Giga Impact - TM68
  (121, 12100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 30),
  -- Starmie - Flash - TM70
  (121, 12100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 31),
  -- Starmie - Avalanche - TM72
  (121, 12100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 32),
  -- Starmie - Thunder Wave - TM73
  (121, 12100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 33),
  -- Starmie - Gyro Ball - TM74
  (121, 12100, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 34),
  -- Starmie - Psych Up - TM77
  (121, 12100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Starmie - Sleep Talk - TM82
  (121, 12100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Starmie - Natural Gift - TM83
  (121, 12100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Starmie - Dream Eater - TM85
  (121, 12100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 38),
  -- Starmie - Grass Knot - TM86
  (121, 12100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 39),
  -- Starmie - Swagger - TM87
  (121, 12100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Starmie - Substitute - TM90
  (121, 12100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Starmie - Flash Cannon - TM91
  (121, 12100, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 42),
  -- Starmie - Trick Room - TM92
  (121, 12100, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 43),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 44),
  -- Starmie - Defog - HM05
  (121, 12100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 45),
  -- Starmie - Waterfall - HM07
  (121, 12100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 46),
  -- Starmie - Swift - Tutor
  (121, 12100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Starmie - Snore - Tutor
  (121, 12100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Starmie - Icy Wind - Tutor
  (121, 12100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Starmie - Rollout - Tutor
  (121, 12100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Starmie - Twister - Tutor
  (121, 12100, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Starmie - Trick - Tutor
  (121, 12100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Starmie - Dive - Tutor
  (121, 12100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Starmie - Signal Beam - Tutor
  (121, 12100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Magical Leaf - Level 1
  (122, 12200, 345, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Power Swap - Level 1
  (122, 12200, 384, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime - Guard Swap - Level 1
  (122, 12200, 385, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Mime - Copycat - Level 4
  (122, 12200, 383, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Mr. Mime - Meditate - Level 8
  (122, 12200, 96, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mr. Mime - Encore - Level 11
  (122, 12200, 227, 9, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Mr. Mime - Double Slap - Level 15
  (122, 12200, 3, 9, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Mr. Mime - Mimic - Level 18
  (122, 12200, 102, 9, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Mr. Mime - Light Screen - Level 22
  (122, 12200, 113, 9, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Mr. Mime - Reflect - Level 22
  (122, 12200, 115, 9, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psybeam - Level 25
  (122, 12200, 60, 9, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Mr. Mime - Substitute - Level 29
  (122, 12200, 164, 9, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Mr. Mime - Recycle - Level 32
  (122, 12200, 278, 9, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Mr. Mime - Trick - Level 36
  (122, 12200, 271, 9, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Mr. Mime - Psychic - Level 39
  (122, 12200, 94, 9, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Mr. Mime - Role Play - Level 43
  (122, 12200, 272, 9, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Mr. Mime - Baton Pass - Level 46
  (122, 12200, 226, 9, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Mr. Mime - Safeguard - Level 50
  (122, 12200, 219, 9, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Mr. Mime - Focus Punch - TM01
  (122, 12200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 21),
  -- Mr. Mime - Calm Mind - TM04
  (122, 12200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 22),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Mr. Mime - Hidden Power - TM10
  (122, 12200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Mr. Mime - Taunt - TM12
  (122, 12200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 27),
  -- Mr. Mime - Light Screen - TM16
  (122, 12200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 28),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Mr. Mime - Rain Dance - TM18
  (122, 12200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Mr. Mime - Safeguard - TM20
  (122, 12200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 31),
  -- Mr. Mime - Frustration - TM21
  (122, 12200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 33),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 34),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 35),
  -- Mr. Mime - Return - TM27
  (122, 12200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 36),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 37),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 38),
  -- Mr. Mime - Brick Break - TM31
  (122, 12200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 39),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 40),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 41),
  -- Mr. Mime - Shock Wave - TM34
  (122, 12200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 42),
  -- Mr. Mime - Aerial Ace - TM40
  (122, 12200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 43),
  -- Mr. Mime - Torment - TM41
  (122, 12200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 44),
  -- Mr. Mime - Facade - TM42
  (122, 12200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 45),
  -- Mr. Mime - Secret Power - TM43
  (122, 12200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 46),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 47),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 48),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 49),
  -- Mr. Mime - Skill Swap - TM48
  (122, 12200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 50),
  -- Mr. Mime - Snatch - TM49
  (122, 12200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 51),
  -- Mr. Mime - Focus Blast - TM52
  (122, 12200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 52),
  -- Mr. Mime - Energy Ball - TM53
  (122, 12200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 53),
  -- Mr. Mime - Fling - TM56
  (122, 12200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 54),
  -- Mr. Mime - Charge Beam - TM57
  (122, 12200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 55),
  -- Mr. Mime - Endure - TM58
  (122, 12200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 56),
  -- Mr. Mime - Drain Punch - TM60
  (122, 12200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 57),
  -- Mr. Mime - Payback - TM66
  (122, 12200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 58),
  -- Mr. Mime - Recycle - TM67
  (122, 12200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 59),
  -- Mr. Mime - Giga Impact - TM68
  (122, 12200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 60),
  -- Mr. Mime - Flash - TM70
  (122, 12200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 61),
  -- Mr. Mime - Thunder Wave - TM73
  (122, 12200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 62),
  -- Mr. Mime - Psych Up - TM77
  (122, 12200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 63),
  -- Mr. Mime - Captivate - TM78
  (122, 12200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 64),
  -- Mr. Mime - Sleep Talk - TM82
  (122, 12200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 65),
  -- Mr. Mime - Natural Gift - TM83
  (122, 12200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 66),
  -- Mr. Mime - Dream Eater - TM85
  (122, 12200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 67),
  -- Mr. Mime - Grass Knot - TM86
  (122, 12200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 68),
  -- Mr. Mime - Swagger - TM87
  (122, 12200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 69),
  -- Mr. Mime - Substitute - TM90
  (122, 12200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 70),
  -- Mr. Mime - Trick Room - TM92
  (122, 12200, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 71),
  -- Mr. Mime - Hypnosis - Egg
  (122, 12200, 95, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mr. Mime - Mimic - Egg
  (122, 12200, 102, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mr. Mime - Confuse Ray - Egg
  (122, 12200, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mr. Mime - Charm - Egg
  (122, 12200, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mr. Mime - Psych Up - Egg
  (122, 12200, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mr. Mime - Future Sight - Egg
  (122, 12200, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mr. Mime - Fake Out - Egg
  (122, 12200, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mr. Mime - Trick - Egg
  (122, 12200, 271, 9, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Mr. Mime - Teeter Dance - Egg
  (122, 12200, 298, 9, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Mr. Mime - Wake-Up Slap - Egg
  (122, 12200, 358, 9, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Mr. Mime - Healing Wish - Egg
  (122, 12200, 361, 9, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Mr. Mime - Fire Punch - Tutor
  (122, 12200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Mr. Mime - Ice Punch - Tutor
  (122, 12200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Mr. Mime - Thunder Punch - Tutor
  (122, 12200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Mr. Mime - Snore - Tutor
  (122, 12200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Mr. Mime - Mud-Slap - Tutor
  (122, 12200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Mr. Mime - Helping Hand - Tutor
  (122, 12200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Mr. Mime - Trick - Tutor
  (122, 12200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Mr. Mime - Signal Beam - Tutor
  (122, 12200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Mr. Mime - Iron Defense - Tutor
  (122, 12200, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Mr. Mime - Zen Headbutt - Tutor
  (122, 12200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 92),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Vacuum Wave - Level 1
  (123, 12300, 410, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scyther - Focus Energy - Level 5
  (123, 12300, 116, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Scyther - Pursuit - Level 9
  (123, 12300, 228, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Scyther - False Swipe - Level 13
  (123, 12300, 206, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scyther - Agility - Level 17
  (123, 12300, 97, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scyther - Wing Attack - Level 21
  (123, 12300, 17, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scyther - Fury Cutter - Level 25
  (123, 12300, 210, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Scyther - Slash - Level 29
  (123, 12300, 163, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Scyther - Razor Wind - Level 33
  (123, 12300, 13, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scyther - Double Team - Level 37
  (123, 12300, 104, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Scyther - X-Scissor - Level 41
  (123, 12300, 404, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Scyther - Night Slash - Level 45
  (123, 12300, 400, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scyther - Double Hit - Level 49
  (123, 12300, 458, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scyther - Air Slash - Level 53
  (123, 12300, 403, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Scyther - Swords Dance - Level 57
  (123, 12300, 14, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Scyther - Feint - Level 61
  (123, 12300, 364, 9, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Scyther - Hidden Power - TM10
  (123, 12300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Scyther - Rain Dance - TM18
  (123, 12300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Scyther - Frustration - TM21
  (123, 12300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Scyther - Return - TM27
  (123, 12300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Scyther - Brick Break - TM31
  (123, 12300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Scyther - Aerial Ace - TM40
  (123, 12300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Scyther - Facade - TM42
  (123, 12300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Scyther - Secret Power - TM43
  (123, 12300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Scyther - Steel Wing - TM47
  (123, 12300, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 35),
  -- Scyther - Roost - TM51
  (123, 12300, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 36),
  -- Scyther - False Swipe - TM54
  (123, 12300, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 37),
  -- Scyther - Endure - TM58
  (123, 12300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Scyther - Silver Wind - TM62
  (123, 12300, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 39),
  -- Scyther - Giga Impact - TM68
  (123, 12300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Scyther - Swords Dance - TM75
  (123, 12300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Scyther - Captivate - TM78
  (123, 12300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Scyther - X-Scissor - TM81
  (123, 12300, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 43),
  -- Scyther - Sleep Talk - TM82
  (123, 12300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Scyther - Natural Gift - TM83
  (123, 12300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Scyther - Swagger - TM87
  (123, 12300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Scyther - U-turn - TM89
  (123, 12300, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 47),
  -- Scyther - Substitute - TM90
  (123, 12300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Scyther - Defog - HM05
  (123, 12300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Scyther - Rock Smash - HM06
  (123, 12300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Scyther - Razor Wind - Egg
  (123, 12300, 13, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Counter - Egg
  (123, 12300, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Scyther - Light Screen - Egg
  (123, 12300, 113, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Scyther - Reversal - Egg
  (123, 12300, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scyther - Endure - Egg
  (123, 12300, 203, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scyther - Safeguard - Egg
  (123, 12300, 219, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Scyther - Baton Pass - Egg
  (123, 12300, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Scyther - Silver Wind - Egg
  (123, 12300, 318, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scyther - Night Slash - Egg
  (123, 12300, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scyther - Bug Buzz - Egg
  (123, 12300, 405, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scyther - Swift - Tutor
  (123, 12300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Scyther - Snore - Tutor
  (123, 12300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Scyther - Fury Cutter - Tutor
  (123, 12300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Scyther - Knock Off - Tutor
  (123, 12300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Scyther - Ominous Wind - Tutor
  (123, 12300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Lick - Level 5
  (124, 12400, 122, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Jynx - Lovely Kiss - Level 8
  (124, 12400, 142, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Jynx - Powder Snow - Level 11
  (124, 12400, 181, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Jynx - Double Slap - Level 15
  (124, 12400, 3, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Jynx - Ice Punch - Level 18
  (124, 12400, 8, 9, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Jynx - Mean Look - Level 21
  (124, 12400, 212, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Jynx - Fake Tears - Level 25
  (124, 12400, 313, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Jynx - Wake-Up Slap - Level 28
  (124, 12400, 358, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Jynx - Avalanche - Level 33
  (124, 12400, 419, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Jynx - Body Slam - Level 39
  (124, 12400, 34, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Jynx - Wring Out - Level 44
  (124, 12400, 378, 9, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Jynx - Perish Song - Level 49
  (124, 12400, 195, 9, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Jynx - Blizzard - Level 55
  (124, 12400, 59, 9, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Jynx - Focus Punch - TM01
  (124, 12400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Jynx - Water Pulse - TM03
  (124, 12400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Jynx - Calm Mind - TM04
  (124, 12400, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Jynx - Hail - TM07
  (124, 12400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 22),
  -- Jynx - Hidden Power - TM10
  (124, 12400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Jynx - Taunt - TM12
  (124, 12400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 24),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 25),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 26),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 27),
  -- Jynx - Light Screen - TM16
  (124, 12400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 28),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Jynx - Frustration - TM21
  (124, 12400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 31),
  -- Jynx - Return - TM27
  (124, 12400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Jynx - Brick Break - TM31
  (124, 12400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 37),
  -- Jynx - Torment - TM41
  (124, 12400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Jynx - Facade - TM42
  (124, 12400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Jynx - Secret Power - TM43
  (124, 12400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Jynx - Skill Swap - TM48
  (124, 12400, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 44),
  -- Jynx - Focus Blast - TM52
  (124, 12400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 45),
  -- Jynx - Energy Ball - TM53
  (124, 12400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 46),
  -- Jynx - Fling - TM56
  (124, 12400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 47),
  -- Jynx - Endure - TM58
  (124, 12400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Jynx - Drain Punch - TM60
  (124, 12400, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 49),
  -- Jynx - Payback - TM66
  (124, 12400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 50),
  -- Jynx - Recycle - TM67
  (124, 12400, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 51),
  -- Jynx - Giga Impact - TM68
  (124, 12400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 52),
  -- Jynx - Flash - TM70
  (124, 12400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 53),
  -- Jynx - Avalanche - TM72
  (124, 12400, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 54),
  -- Jynx - Psych Up - TM77
  (124, 12400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 55),
  -- Jynx - Captivate - TM78
  (124, 12400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 56),
  -- Jynx - Sleep Talk - TM82
  (124, 12400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 57),
  -- Jynx - Natural Gift - TM83
  (124, 12400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 58),
  -- Jynx - Dream Eater - TM85
  (124, 12400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 59),
  -- Jynx - Grass Knot - TM86
  (124, 12400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 60),
  -- Jynx - Swagger - TM87
  (124, 12400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 61),
  -- Jynx - Substitute - TM90
  (124, 12400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 62),
  -- Jynx - Trick Room - TM92
  (124, 12400, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 63),
  -- Jynx - Ice Punch - Tutor
  (124, 12400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Jynx - Snore - Tutor
  (124, 12400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Jynx - Mud-Slap - Tutor
  (124, 12400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Jynx - Icy Wind - Tutor
  (124, 12400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Jynx - Helping Hand - Tutor
  (124, 12400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Jynx - Trick - Tutor
  (124, 12400, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Jynx - Signal Beam - Tutor
  (124, 12400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Jynx - Zen Headbutt - Tutor
  (124, 12400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Shock - Level 7
  (125, 12500, 84, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Electabuzz - Low Kick - Level 10
  (125, 12500, 67, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Electabuzz - Swift - Level 16
  (125, 12500, 129, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electabuzz - Shock Wave - Level 19
  (125, 12500, 351, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Electabuzz - Light Screen - Level 25
  (125, 12500, 113, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder Punch - Level 28
  (125, 12500, 9, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electabuzz - Discharge - Level 37
  (125, 12500, 435, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Electabuzz - Thunderbolt - Level 43
  (125, 12500, 85, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Electabuzz - Screech - Level 52
  (125, 12500, 103, 9, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 9, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Electabuzz - Focus Punch - TM01
  (125, 12500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Electabuzz - Hidden Power - TM10
  (125, 12500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Electabuzz - Light Screen - TM16
  (125, 12500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Electabuzz - Frustration - TM21
  (125, 12500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Electabuzz - Iron Tail - TM23
  (125, 12500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 23),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 24),
  -- Electabuzz - Return - TM27
  (125, 12500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Electabuzz - Brick Break - TM31
  (125, 12500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Electabuzz - Shock Wave - TM34
  (125, 12500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Electabuzz - Facade - TM42
  (125, 12500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Electabuzz - Secret Power - TM43
  (125, 12500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Electabuzz - Focus Blast - TM52
  (125, 12500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Electabuzz - Fling - TM56
  (125, 12500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Electabuzz - Charge Beam - TM57
  (125, 12500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Electabuzz - Endure - TM58
  (125, 12500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Electabuzz - Giga Impact - TM68
  (125, 12500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Electabuzz - Flash - TM70
  (125, 12500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Electabuzz - Thunder Wave - TM73
  (125, 12500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 41),
  -- Electabuzz - Captivate - TM78
  (125, 12500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Electabuzz - Sleep Talk - TM82
  (125, 12500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Electabuzz - Natural Gift - TM83
  (125, 12500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Electabuzz - Swagger - TM87
  (125, 12500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Electabuzz - Substitute - TM90
  (125, 12500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 47),
  -- Electabuzz - Rock Smash - HM06
  (125, 12500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Electabuzz - Rock Climb - HM08
  (125, 12500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 49),
  -- Electabuzz - Fire Punch - Tutor
  (125, 12500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Electabuzz - Ice Punch - Tutor
  (125, 12500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Electabuzz - Thunder Punch - Tutor
  (125, 12500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Electabuzz - Swift - Tutor
  (125, 12500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Electabuzz - Snore - Tutor
  (125, 12500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Electabuzz - Mud-Slap - Tutor
  (125, 12500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Electabuzz - Helping Hand - Tutor
  (125, 12500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Electabuzz - Signal Beam - Tutor
  (125, 12500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Electabuzz - Magnet Rise - Tutor
  (125, 12500, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Ember - Level 7
  (126, 12600, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Magmar - Smokescreen - Level 10
  (126, 12600, 108, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Magmar - Feint Attack - Level 16
  (126, 12600, 185, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmar - Fire Spin - Level 19
  (126, 12600, 83, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Magmar - Confuse Ray - Level 25
  (126, 12600, 109, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magmar - Fire Punch - Level 28
  (126, 12600, 7, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmar - Lava Plume - Level 36
  (126, 12600, 436, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Magmar - Flamethrower - Level 41
  (126, 12600, 53, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Magmar - Sunny Day - Level 49
  (126, 12600, 241, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Magmar - Fire Blast - Level 54
  (126, 12600, 126, 9, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Magmar - Focus Punch - TM01
  (126, 12600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Magmar - Hidden Power - TM10
  (126, 12600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Magmar - Frustration - TM21
  (126, 12600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Magmar - Iron Tail - TM23
  (126, 12600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Magmar - Return - TM27
  (126, 12600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 23),
  -- Magmar - Brick Break - TM31
  (126, 12600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Magmar - Flamethrower - TM35
  (126, 12600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Magmar - Facade - TM42
  (126, 12600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Magmar - Secret Power - TM43
  (126, 12600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Magmar - Overheat - TM50
  (126, 12600, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 33),
  -- Magmar - Focus Blast - TM52
  (126, 12600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 34),
  -- Magmar - Fling - TM56
  (126, 12600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 35),
  -- Magmar - Endure - TM58
  (126, 12600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Magmar - Will-O-Wisp - TM61
  (126, 12600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 37),
  -- Magmar - Giga Impact - TM68
  (126, 12600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Magmar - Captivate - TM78
  (126, 12600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Magmar - Sleep Talk - TM82
  (126, 12600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Magmar - Natural Gift - TM83
  (126, 12600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Magmar - Swagger - TM87
  (126, 12600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Magmar - Substitute - TM90
  (126, 12600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Magmar - Rock Smash - HM06
  (126, 12600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Magmar - Rock Climb - HM08
  (126, 12600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 46),
  -- Magmar - Fire Punch - Tutor
  (126, 12600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Magmar - Thunder Punch - Tutor
  (126, 12600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Magmar - Snore - Tutor
  (126, 12600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Magmar - Mud-Slap - Tutor
  (126, 12600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Magmar - Heat Wave - Tutor
  (126, 12600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Magmar - Helping Hand - Tutor
  (126, 12600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 1
  (127, 12700, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 4
  (127, 12700, 20, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 8
  (127, 12700, 69, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 13
  (127, 12700, 106, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pinsir - Revenge - Level 18
  (127, 12700, 279, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pinsir - Brick Break - Level 21
  (127, 12700, 280, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Pinsir - Vital Throw - Level 25
  (127, 12700, 233, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pinsir - X-Scissor - Level 30
  (127, 12700, 404, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Pinsir - Thrash - Level 35
  (127, 12700, 37, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Pinsir - Swords Dance - Level 38
  (127, 12700, 14, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Pinsir - Submission - Level 42
  (127, 12700, 66, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pinsir - Guillotine - Level 47
  (127, 12700, 12, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pinsir - Superpower - Level 52
  (127, 12700, 276, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Pinsir - Focus Punch - TM01
  (127, 12700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Pinsir - Bulk Up - TM08
  (127, 12700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Pinsir - Hidden Power - TM10
  (127, 12700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Pinsir - Rain Dance - TM18
  (127, 12700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Pinsir - Frustration - TM21
  (127, 12700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Pinsir - Earthquake - TM26
  (127, 12700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Pinsir - Return - TM27
  (127, 12700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Pinsir - Dig - TM28
  (127, 12700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Pinsir - Brick Break - TM31
  (127, 12700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Pinsir - Rock Tomb - TM39
  (127, 12700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Pinsir - Facade - TM42
  (127, 12700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Pinsir - Secret Power - TM43
  (127, 12700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Pinsir - Focus Blast - TM52
  (127, 12700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Pinsir - False Swipe - TM54
  (127, 12700, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 36),
  -- Pinsir - Fling - TM56
  (127, 12700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Pinsir - Endure - TM58
  (127, 12700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Pinsir - Giga Impact - TM68
  (127, 12700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Pinsir - Stone Edge - TM71
  (127, 12700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 40),
  -- Pinsir - Swords Dance - TM75
  (127, 12700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Pinsir - Stealth Rock - TM76
  (127, 12700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 42),
  -- Pinsir - Captivate - TM78
  (127, 12700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Pinsir - Rock Slide - TM80
  (127, 12700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Pinsir - X-Scissor - TM81
  (127, 12700, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 45),
  -- Pinsir - Sleep Talk - TM82
  (127, 12700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Pinsir - Natural Gift - TM83
  (127, 12700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Pinsir - Swagger - TM87
  (127, 12700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Pinsir - Substitute - TM90
  (127, 12700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 50),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Pinsir - Rock Smash - HM06
  (127, 12700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Pinsir - Rock Climb - HM08
  (127, 12700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 53),
  -- Pinsir - Fury Attack - Egg
  (127, 12700, 31, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pinsir - Quick Attack - Egg
  (127, 12700, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pinsir - Flail - Egg
  (127, 12700, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pinsir - Feint Attack - Egg
  (127, 12700, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pinsir - False Swipe - Egg
  (127, 12700, 206, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pinsir - Feint - Egg
  (127, 12700, 364, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pinsir - Close Combat - Egg
  (127, 12700, 370, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pinsir - Snore - Tutor
  (127, 12700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Pinsir - Fury Cutter - Tutor
  (127, 12700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Pinsir - Superpower - Tutor
  (127, 12700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Pinsir - Knock Off - Tutor
  (127, 12700, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Pinsir - Iron Defense - Tutor
  (127, 12700, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 3
  (128, 12800, 39, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 5
  (128, 12800, 99, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 8
  (128, 12800, 30, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tauros - Scary Face - Level 11
  (128, 12800, 184, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tauros - Pursuit - Level 15
  (128, 12800, 228, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tauros - Rest - Level 19
  (128, 12800, 156, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tauros - Payback - Level 24
  (128, 12800, 371, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tauros - Zen Headbutt - Level 29
  (128, 12800, 428, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tauros - Take Down - Level 35
  (128, 12800, 36, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Tauros - Swagger - Level 41
  (128, 12800, 207, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Tauros - Thrash - Level 48
  (128, 12800, 37, 9, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Tauros - Giga Impact - Level 55
  (128, 12800, 416, 9, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros - Water Pulse - TM03
  (128, 12800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Tauros - Hidden Power - TM10
  (128, 12800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Tauros - Rain Dance - TM18
  (128, 12800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Tauros - Frustration - TM21
  (128, 12800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Tauros - Solar Beam - TM22
  (128, 12800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Tauros - Iron Tail - TM23
  (128, 12800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Tauros - Return - TM27
  (128, 12800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Tauros - Shock Wave - TM34
  (128, 12800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Tauros - Flamethrower - TM35
  (128, 12800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 32),
  -- Tauros - Sandstorm - TM37
  (128, 12800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 33),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 34),
  -- Tauros - Rock Tomb - TM39
  (128, 12800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Tauros - Facade - TM42
  (128, 12800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Tauros - Secret Power - TM43
  (128, 12800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Tauros - Endure - TM58
  (128, 12800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Tauros - Payback - TM66
  (128, 12800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Tauros - Giga Impact - TM68
  (128, 12800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Tauros - Stone Edge - TM71
  (128, 12800, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Tauros - Captivate - TM78
  (128, 12800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Tauros - Rock Slide - TM80
  (128, 12800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 45),
  -- Tauros - Sleep Talk - TM82
  (128, 12800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Tauros - Natural Gift - TM83
  (128, 12800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Tauros - Swagger - TM87
  (128, 12800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Tauros - Substitute - TM90
  (128, 12800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Tauros - Surf - HM03
  (128, 12800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 50),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Tauros - Defog - HM05
  (128, 12800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Tauros - Rock Smash - HM06
  (128, 12800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Tauros - Rock Climb - HM08
  (128, 12800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Tauros - Snore - Tutor
  (128, 12800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Tauros - Spite - Tutor
  (128, 12800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Tauros - Icy Wind - Tutor
  (128, 12800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Tauros - Outrage - Tutor
  (128, 12800, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Tauros - Uproar - Tutor
  (128, 12800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Tauros - Helping Hand - Tutor
  (128, 12800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Tauros - Endeavor - Tutor
  (128, 12800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Tauros - Zen Headbutt - Tutor
  (128, 12800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Tauros - Iron Head - Tutor
  (128, 12800, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 9, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 30
  (129, 12900, 175, 9, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Magikarp - Bounce - Tutor
  (129, 12900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 4),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 9, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Gyarados - Dragon Rage - Level 23
  (130, 13000, 82, 9, NULL, 1, 23, NULL, NULL, NULL, 3),
  -- Gyarados - Leer - Level 26
  (130, 13000, 43, 9, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 29
  (130, 13000, 239, 9, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Gyarados - Ice Fang - Level 32
  (130, 13000, 423, 9, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Gyarados - Aqua Tail - Level 35
  (130, 13000, 401, 9, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Gyarados - Rain Dance - Level 38
  (130, 13000, 240, 9, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Gyarados - Hydro Pump - Level 41
  (130, 13000, 56, 9, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Gyarados - Dragon Dance - Level 44
  (130, 13000, 349, 9, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Gyarados - Hyper Beam - Level 47
  (130, 13000, 63, 9, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Gyarados - Water Pulse - TM03
  (130, 13000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Gyarados - Hail - TM07
  (130, 13000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Gyarados - Hidden Power - TM10
  (130, 13000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Gyarados - Taunt - TM12
  (130, 13000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Gyarados - Frustration - TM21
  (130, 13000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Gyarados - Earthquake - TM26
  (130, 13000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Gyarados - Return - TM27
  (130, 13000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Gyarados - Flamethrower - TM35
  (130, 13000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Gyarados - Torment - TM41
  (130, 13000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Gyarados - Facade - TM42
  (130, 13000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Gyarados - Secret Power - TM43
  (130, 13000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Gyarados - Brine - TM55
  (130, 13000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 37),
  -- Gyarados - Endure - TM58
  (130, 13000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Gyarados - Dragon Pulse - TM59
  (130, 13000, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 39),
  -- Gyarados - Payback - TM66
  (130, 13000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Gyarados - Giga Impact - TM68
  (130, 13000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Gyarados - Stone Edge - TM71
  (130, 13000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 42),
  -- Gyarados - Avalanche - TM72
  (130, 13000, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 43),
  -- Gyarados - Thunder Wave - TM73
  (130, 13000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Gyarados - Captivate - TM78
  (130, 13000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Gyarados - Dark Pulse - TM79
  (130, 13000, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 46),
  -- Gyarados - Sleep Talk - TM82
  (130, 13000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Gyarados - Natural Gift - TM83
  (130, 13000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Gyarados - Swagger - TM87
  (130, 13000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Gyarados - Substitute - TM90
  (130, 13000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 51),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Gyarados - Defog - HM05
  (130, 13000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Gyarados - Rock Smash - HM06
  (130, 13000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Gyarados - Waterfall - HM07
  (130, 13000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 55),
  -- Gyarados - Snore - Tutor
  (130, 13000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Gyarados - Spite - Tutor
  (130, 13000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Gyarados - Icy Wind - Tutor
  (130, 13000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Gyarados - Outrage - Tutor
  (130, 13000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Gyarados - Twister - Tutor
  (130, 13000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Gyarados - Uproar - Tutor
  (130, 13000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Gyarados - Dive - Tutor
  (130, 13000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Gyarados - Bounce - Tutor
  (130, 13000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Gyarados - Aqua Tail - Tutor
  (130, 13000, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Gyarados - Iron Head - Tutor
  (130, 13000, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 4
  (131, 13100, 54, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Lapras - Confuse Ray - Level 7
  (131, 13100, 109, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 10
  (131, 13100, 420, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Lapras - Water Pulse - Level 14
  (131, 13100, 352, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Lapras - Body Slam - Level 18
  (131, 13100, 34, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Lapras - Rain Dance - Level 22
  (131, 13100, 240, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Lapras - Perish Song - Level 27
  (131, 13100, 195, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 32
  (131, 13100, 58, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Lapras - Brine - Level 37
  (131, 13100, 362, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lapras - Safeguard - Level 43
  (131, 13100, 219, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lapras - Hydro Pump - Level 49
  (131, 13100, 56, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 55
  (131, 13100, 329, 9, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Lapras - Water Pulse - TM03
  (131, 13100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Lapras - Roar - TM05
  (131, 13100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Lapras - Hail - TM07
  (131, 13100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Lapras - Hidden Power - TM10
  (131, 13100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Lapras - Safeguard - TM20
  (131, 13100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Lapras - Frustration - TM21
  (131, 13100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Lapras - Iron Tail - TM23
  (131, 13100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Lapras - Return - TM27
  (131, 13100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 32),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Lapras - Shock Wave - TM34
  (131, 13100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Lapras - Facade - TM42
  (131, 13100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Lapras - Secret Power - TM43
  (131, 13100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Lapras - Brine - TM55
  (131, 13100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 39),
  -- Lapras - Endure - TM58
  (131, 13100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Lapras - Dragon Pulse - TM59
  (131, 13100, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 41),
  -- Lapras - Giga Impact - TM68
  (131, 13100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Lapras - Avalanche - TM72
  (131, 13100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 43),
  -- Lapras - Captivate - TM78
  (131, 13100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Lapras - Sleep Talk - TM82
  (131, 13100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Lapras - Natural Gift - TM83
  (131, 13100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Lapras - Dream Eater - TM85
  (131, 13100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 47),
  -- Lapras - Swagger - TM87
  (131, 13100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Lapras - Substitute - TM90
  (131, 13100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 50),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Lapras - Defog - HM05
  (131, 13100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Lapras - Rock Smash - HM06
  (131, 13100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Lapras - Waterfall - HM07
  (131, 13100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 54),
  -- Lapras - Horn Drill - Egg
  (131, 13100, 32, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lapras - Fissure - Egg
  (131, 13100, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lapras - Substitute - Egg
  (131, 13100, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lapras - Curse - Egg
  (131, 13100, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lapras - Foresight - Egg
  (131, 13100, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lapras - Sleep Talk - Egg
  (131, 13100, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lapras - Ancient Power - Egg
  (131, 13100, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lapras - Whirlpool - Egg
  (131, 13100, 250, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lapras - Refresh - Egg
  (131, 13100, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lapras - Tickle - Egg
  (131, 13100, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lapras - Dragon Dance - Egg
  (131, 13100, 349, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lapras - Snore - Tutor
  (131, 13100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Lapras - Icy Wind - Tutor
  (131, 13100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Lapras - Outrage - Tutor
  (131, 13100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Lapras - Ancient Power - Tutor
  (131, 13100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Lapras - Dive - Tutor
  (131, 13100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Lapras - Signal Beam - Tutor
  (131, 13100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Lapras - Aqua Tail - Tutor
  (131, 13100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Lapras - Zen Headbutt - Tutor
  (131, 13100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Lapras - Iron Head - Tutor
  (131, 13100, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Sand Attack - Level 8
  (133, 13300, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Eevee - Growl - Level 15
  (133, 13300, 45, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Eevee - Quick Attack - Level 22
  (133, 13300, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Eevee - Bite - Level 29
  (133, 13300, 44, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Eevee - Baton Pass - Level 36
  (133, 13300, 226, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Eevee - Take Down - Level 43
  (133, 13300, 36, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Eevee - Last Resort - Level 50
  (133, 13300, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Eevee - Trump Card - Level 57
  (133, 13300, 376, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Eevee - Hidden Power - TM10
  (133, 13300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Eevee - Frustration - TM21
  (133, 13300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Eevee - Iron Tail - TM23
  (133, 13300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 18),
  -- Eevee - Return - TM27
  (133, 13300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 19),
  -- Eevee - Dig - TM28
  (133, 13300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 20),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 21),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Eevee - Facade - TM42
  (133, 13300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 23),
  -- Eevee - Secret Power - TM43
  (133, 13300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 24),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 25),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 26),
  -- Eevee - Endure - TM58
  (133, 13300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 27),
  -- Eevee - Captivate - TM78
  (133, 13300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 28),
  -- Eevee - Sleep Talk - TM82
  (133, 13300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 29),
  -- Eevee - Natural Gift - TM83
  (133, 13300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 30),
  -- Eevee - Swagger - TM87
  (133, 13300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 31),
  -- Eevee - Substitute - TM90
  (133, 13300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 32),
  -- Eevee - Curse - Egg
  (133, 13300, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Eevee - Flail - Egg
  (133, 13300, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Eevee - Endure - Egg
  (133, 13300, 203, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Eevee - Charm - Egg
  (133, 13300, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Eevee - Wish - Egg
  (133, 13300, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Eevee - Yawn - Egg
  (133, 13300, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Eevee - Fake Tears - Egg
  (133, 13300, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Eevee - Tickle - Egg
  (133, 13300, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eevee - Covet - Egg
  (133, 13300, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Eevee - Swift - Tutor
  (133, 13300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Eevee - Snore - Tutor
  (133, 13300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Eevee - Mud-Slap - Tutor
  (133, 13300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Eevee - Helping Hand - Tutor
  (133, 13300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Eevee - Last Resort - Tutor
  (133, 13300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Sand Attack - Level 8
  (134, 13400, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vaporeon - Water Gun - Level 15
  (134, 13400, 55, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Vaporeon - Quick Attack - Level 22
  (134, 13400, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Vaporeon - Bite - Level 29
  (134, 13400, 44, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Vaporeon - Aurora Beam - Level 36
  (134, 13400, 62, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Vaporeon - Aqua Ring - Level 43
  (134, 13400, 392, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Vaporeon - Last Resort - Level 50
  (134, 13400, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Vaporeon - Haze - Level 57
  (134, 13400, 114, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Vaporeon - Acid Armor - Level 64
  (134, 13400, 151, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Vaporeon - Hydro Pump - Level 71
  (134, 13400, 56, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Vaporeon - Muddy Water - Level 78
  (134, 13400, 330, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Vaporeon - Water Pulse - TM03
  (134, 13400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Vaporeon - Hail - TM07
  (134, 13400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Vaporeon - Hidden Power - TM10
  (134, 13400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Vaporeon - Frustration - TM21
  (134, 13400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Vaporeon - Iron Tail - TM23
  (134, 13400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Vaporeon - Return - TM27
  (134, 13400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Vaporeon - Dig - TM28
  (134, 13400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Vaporeon - Facade - TM42
  (134, 13400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Vaporeon - Secret Power - TM43
  (134, 13400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Vaporeon - Brine - TM55
  (134, 13400, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 36),
  -- Vaporeon - Endure - TM58
  (134, 13400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Vaporeon - Giga Impact - TM68
  (134, 13400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Vaporeon - Captivate - TM78
  (134, 13400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Vaporeon - Sleep Talk - TM82
  (134, 13400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Vaporeon - Natural Gift - TM83
  (134, 13400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Vaporeon - Swagger - TM87
  (134, 13400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Vaporeon - Substitute - TM90
  (134, 13400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 44),
  -- Vaporeon - Strength - HM04
  (134, 13400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 45),
  -- Vaporeon - Defog - HM05
  (134, 13400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 46),
  -- Vaporeon - Rock Smash - HM06
  (134, 13400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Vaporeon - Waterfall - HM07
  (134, 13400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 48),
  -- Vaporeon - Swift - Tutor
  (134, 13400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Vaporeon - Snore - Tutor
  (134, 13400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Vaporeon - Mud-Slap - Tutor
  (134, 13400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Vaporeon - Icy Wind - Tutor
  (134, 13400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Vaporeon - Helping Hand - Tutor
  (134, 13400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Vaporeon - Dive - Tutor
  (134, 13400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Vaporeon - Signal Beam - Tutor
  (134, 13400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Vaporeon - Last Resort - Tutor
  (134, 13400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Vaporeon - Aqua Tail - Tutor
  (134, 13400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Sand Attack - Level 8
  (135, 13500, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Jolteon - Thunder Shock - Level 15
  (135, 13500, 84, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Jolteon - Quick Attack - Level 22
  (135, 13500, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Jolteon - Double Kick - Level 29
  (135, 13500, 24, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Jolteon - Pin Missile - Level 36
  (135, 13500, 42, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Jolteon - Thunder Fang - Level 43
  (135, 13500, 422, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Jolteon - Last Resort - Level 50
  (135, 13500, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Jolteon - Thunder Wave - Level 57
  (135, 13500, 86, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Jolteon - Agility - Level 64
  (135, 13500, 97, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Jolteon - Thunder - Level 71
  (135, 13500, 87, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Jolteon - Discharge - Level 78
  (135, 13500, 435, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Jolteon - Hidden Power - TM10
  (135, 13500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Jolteon - Light Screen - TM16
  (135, 13500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Jolteon - Frustration - TM21
  (135, 13500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Jolteon - Iron Tail - TM23
  (135, 13500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Jolteon - Return - TM27
  (135, 13500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Jolteon - Dig - TM28
  (135, 13500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Jolteon - Shock Wave - TM34
  (135, 13500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Jolteon - Facade - TM42
  (135, 13500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Jolteon - Secret Power - TM43
  (135, 13500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Jolteon - Charge Beam - TM57
  (135, 13500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 36),
  -- Jolteon - Endure - TM58
  (135, 13500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Jolteon - Giga Impact - TM68
  (135, 13500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Jolteon - Flash - TM70
  (135, 13500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Jolteon - Thunder Wave - TM73
  (135, 13500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 40),
  -- Jolteon - Captivate - TM78
  (135, 13500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Jolteon - Sleep Talk - TM82
  (135, 13500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Jolteon - Natural Gift - TM83
  (135, 13500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Jolteon - Swagger - TM87
  (135, 13500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Jolteon - Substitute - TM90
  (135, 13500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Jolteon - Strength - HM04
  (135, 13500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Jolteon - Rock Smash - HM06
  (135, 13500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Jolteon - Swift - Tutor
  (135, 13500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Jolteon - Snore - Tutor
  (135, 13500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Jolteon - Mud-Slap - Tutor
  (135, 13500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Jolteon - Helping Hand - Tutor
  (135, 13500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Jolteon - Signal Beam - Tutor
  (135, 13500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Jolteon - Last Resort - Tutor
  (135, 13500, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Jolteon - Magnet Rise - Tutor
  (135, 13500, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Sand Attack - Level 8
  (136, 13600, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Flareon - Ember - Level 15
  (136, 13600, 52, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flareon - Quick Attack - Level 22
  (136, 13600, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Flareon - Bite - Level 29
  (136, 13600, 44, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Flareon - Fire Spin - Level 36
  (136, 13600, 83, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Flareon - Fire Fang - Level 43
  (136, 13600, 424, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Flareon - Last Resort - Level 50
  (136, 13600, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Flareon - Smog - Level 57
  (136, 13600, 123, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Flareon - Scary Face - Level 64
  (136, 13600, 184, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Flareon - Fire Blast - Level 71
  (136, 13600, 126, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Flareon - Lava Plume - Level 78
  (136, 13600, 436, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Flareon - Hidden Power - TM10
  (136, 13600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Flareon - Frustration - TM21
  (136, 13600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Flareon - Iron Tail - TM23
  (136, 13600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Flareon - Return - TM27
  (136, 13600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Flareon - Dig - TM28
  (136, 13600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Flareon - Flamethrower - TM35
  (136, 13600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 28),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Flareon - Facade - TM42
  (136, 13600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Flareon - Secret Power - TM43
  (136, 13600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Flareon - Overheat - TM50
  (136, 13600, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 34),
  -- Flareon - Endure - TM58
  (136, 13600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Flareon - Will-O-Wisp - TM61
  (136, 13600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 36),
  -- Flareon - Giga Impact - TM68
  (136, 13600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Flareon - Captivate - TM78
  (136, 13600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Flareon - Sleep Talk - TM82
  (136, 13600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Flareon - Natural Gift - TM83
  (136, 13600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Flareon - Swagger - TM87
  (136, 13600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Flareon - Substitute - TM90
  (136, 13600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Flareon - Strength - HM04
  (136, 13600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Flareon - Rock Smash - HM06
  (136, 13600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 44),
  -- Flareon - Swift - Tutor
  (136, 13600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Flareon - Snore - Tutor
  (136, 13600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Flareon - Mud-Slap - Tutor
  (136, 13600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Flareon - Heat Wave - Tutor
  (136, 13600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Flareon - Helping Hand - Tutor
  (136, 13600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Flareon - Superpower - Tutor
  (136, 13600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Flareon - Last Resort - Tutor
  (136, 13600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Sharpen - Level 1
  (137, 13700, 159, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Conversion 2 - Level 1
  (137, 13700, 176, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon - Psybeam - Level 7
  (137, 13700, 60, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Porygon - Agility - Level 12
  (137, 13700, 97, 9, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Porygon - Recover - Level 18
  (137, 13700, 105, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Porygon - Magnet Rise - Level 23
  (137, 13700, 393, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Porygon - Signal Beam - Level 29
  (137, 13700, 324, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Porygon - Recycle - Level 34
  (137, 13700, 278, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon - Lock-On - Level 45
  (137, 13700, 199, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon - Tri Attack - Level 51
  (137, 13700, 161, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Porygon - Magic Coat - Level 56
  (137, 13700, 277, 9, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Porygon - Zap Cannon - Level 62
  (137, 13700, 192, 9, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Porygon - Hidden Power - TM10
  (137, 13700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Porygon - Frustration - TM21
  (137, 13700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Porygon - Solar Beam - TM22
  (137, 13700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Porygon - Iron Tail - TM23
  (137, 13700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Porygon - Return - TM27
  (137, 13700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Porygon - Shadow Ball - TM30
  (137, 13700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Porygon - Shock Wave - TM34
  (137, 13700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Porygon - Aerial Ace - TM40
  (137, 13700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Porygon - Facade - TM42
  (137, 13700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Porygon - Secret Power - TM43
  (137, 13700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Porygon - Charge Beam - TM57
  (137, 13700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 39),
  -- Porygon - Endure - TM58
  (137, 13700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Porygon - Recycle - TM67
  (137, 13700, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 41),
  -- Porygon - Giga Impact - TM68
  (137, 13700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Porygon - Flash - TM70
  (137, 13700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Porygon - Thunder Wave - TM73
  (137, 13700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Porygon - Psych Up - TM77
  (137, 13700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Porygon - Sleep Talk - TM82
  (137, 13700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Porygon - Natural Gift - TM83
  (137, 13700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Porygon - Dream Eater - TM85
  (137, 13700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 48),
  -- Porygon - Swagger - TM87
  (137, 13700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Porygon - Substitute - TM90
  (137, 13700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Porygon - Trick Room - TM92
  (137, 13700, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 51),
  -- Porygon - Swift - Tutor
  (137, 13700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Porygon - Snore - Tutor
  (137, 13700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Porygon - Icy Wind - Tutor
  (137, 13700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Porygon - Trick - Tutor
  (137, 13700, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Porygon - Signal Beam - Tutor
  (137, 13700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Porygon - Last Resort - Tutor
  (137, 13700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Porygon - Zen Headbutt - Tutor
  (137, 13700, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Bite - Level 7
  (138, 13800, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 10
  (138, 13800, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Omanyte - Rollout - Level 16
  (138, 13800, 205, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 19
  (138, 13800, 43, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Omanyte - Brine - Level 28
  (138, 13800, 362, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Omanyte - Protect - Level 34
  (138, 13800, 182, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Omanyte - Ancient Power - Level 37
  (138, 13800, 246, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Omanyte - Tickle - Level 43
  (138, 13800, 321, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Omanyte - Rock Blast - Level 46
  (138, 13800, 350, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Omanyte - Hydro Pump - Level 52
  (138, 13800, 56, 9, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Omanyte - Water Pulse - TM03
  (138, 13800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Omanyte - Hail - TM07
  (138, 13800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Omanyte - Hidden Power - TM10
  (138, 13800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Omanyte - Frustration - TM21
  (138, 13800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Omanyte - Return - TM27
  (138, 13800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 25),
  -- Omanyte - Rock Tomb - TM39
  (138, 13800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 26),
  -- Omanyte - Facade - TM42
  (138, 13800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Omanyte - Secret Power - TM43
  (138, 13800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 31),
  -- Omanyte - Brine - TM55
  (138, 13800, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 32),
  -- Omanyte - Endure - TM58
  (138, 13800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Omanyte - Rock Polish - TM69
  (138, 13800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 34),
  -- Omanyte - Gyro Ball - TM74
  (138, 13800, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 35),
  -- Omanyte - Stealth Rock - TM76
  (138, 13800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Omanyte - Captivate - TM78
  (138, 13800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Omanyte - Rock Slide - TM80
  (138, 13800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 38),
  -- Omanyte - Sleep Talk - TM82
  (138, 13800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Omanyte - Natural Gift - TM83
  (138, 13800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Omanyte - Swagger - TM87
  (138, 13800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Omanyte - Substitute - TM90
  (138, 13800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 43),
  -- Omanyte - Defog - HM05
  (138, 13800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Omanyte - Rock Smash - HM06
  (138, 13800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Omanyte - Waterfall - HM07
  (138, 13800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 46),
  -- Omanyte - Slam - Egg
  (138, 13800, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Omanyte - Supersonic - Egg
  (138, 13800, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Omanyte - Bubble Beam - Egg
  (138, 13800, 61, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Omanyte - Aurora Beam - Egg
  (138, 13800, 62, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omanyte - Haze - Egg
  (138, 13800, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omanyte - Rock Slide - Egg
  (138, 13800, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omanyte - Spikes - Egg
  (138, 13800, 191, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omanyte - Knock Off - Egg
  (138, 13800, 282, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Omanyte - Wring Out - Egg
  (138, 13800, 378, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Omanyte - Toxic Spikes - Egg
  (138, 13800, 390, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Omanyte - Snore - Tutor
  (138, 13800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Omanyte - Icy Wind - Tutor
  (138, 13800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Omanyte - Rollout - Tutor
  (138, 13800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Omanyte - Ancient Power - Tutor
  (138, 13800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Omanyte - Knock Off - Tutor
  (138, 13800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Omanyte - Dive - Tutor
  (138, 13800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Omanyte - Iron Defense - Tutor
  (138, 13800, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Omanyte - Earth Power - Tutor
  (138, 13800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Omastar - Bite - Level 1
  (139, 13900, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Bite - Level 7
  (139, 13900, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Omastar - Water Gun - Level 10
  (139, 13900, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Omastar - Rollout - Level 16
  (139, 13900, 205, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Omastar - Leer - Level 19
  (139, 13900, 43, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Omastar - Brine - Level 28
  (139, 13900, 362, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Omastar - Protect - Level 34
  (139, 13900, 182, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Omastar - Ancient Power - Level 37
  (139, 13900, 246, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Omastar - Spike Cannon - Level 40
  (139, 13900, 131, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Omastar - Tickle - Level 48
  (139, 13900, 321, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Omastar - Rock Blast - Level 56
  (139, 13900, 350, 9, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Omastar - Hydro Pump - Level 67
  (139, 13900, 56, 9, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Omastar - Water Pulse - TM03
  (139, 13900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Omastar - Hail - TM07
  (139, 13900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Omastar - Hidden Power - TM10
  (139, 13900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Omastar - Frustration - TM21
  (139, 13900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Omastar - Return - TM27
  (139, 13900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Omastar - Rock Tomb - TM39
  (139, 13900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Omastar - Facade - TM42
  (139, 13900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Omastar - Secret Power - TM43
  (139, 13900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Omastar - Brine - TM55
  (139, 13900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 35),
  -- Omastar - Endure - TM58
  (139, 13900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Omastar - Giga Impact - TM68
  (139, 13900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Omastar - Rock Polish - TM69
  (139, 13900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 38),
  -- Omastar - Stone Edge - TM71
  (139, 13900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 39),
  -- Omastar - Gyro Ball - TM74
  (139, 13900, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 40),
  -- Omastar - Stealth Rock - TM76
  (139, 13900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 41),
  -- Omastar - Captivate - TM78
  (139, 13900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Omastar - Rock Slide - TM80
  (139, 13900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Omastar - Sleep Talk - TM82
  (139, 13900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Omastar - Natural Gift - TM83
  (139, 13900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Omastar - Swagger - TM87
  (139, 13900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Omastar - Substitute - TM90
  (139, 13900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Omastar - Defog - HM05
  (139, 13900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Omastar - Rock Smash - HM06
  (139, 13900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Omastar - Waterfall - HM07
  (139, 13900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Omastar - Rock Climb - HM08
  (139, 13900, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 52),
  -- Omastar - Snore - Tutor
  (139, 13900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Omastar - Icy Wind - Tutor
  (139, 13900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Omastar - Rollout - Tutor
  (139, 13900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Omastar - Ancient Power - Tutor
  (139, 13900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Omastar - Knock Off - Tutor
  (139, 13900, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Omastar - Dive - Tutor
  (139, 13900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Omastar - Iron Defense - Tutor
  (139, 13900, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Omastar - Earth Power - Tutor
  (139, 13900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 6
  (140, 14000, 71, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kabuto - Leer - Level 11
  (140, 14000, 43, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Kabuto - Mud Shot - Level 16
  (140, 14000, 341, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Kabuto - Sand Attack - Level 21
  (140, 14000, 28, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kabuto - Endure - Level 26
  (140, 14000, 203, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kabuto - Aqua Jet - Level 31
  (140, 14000, 453, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Kabuto - Mega Drain - Level 36
  (140, 14000, 72, 9, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Kabuto - Metal Sound - Level 41
  (140, 14000, 319, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Kabuto - Ancient Power - Level 46
  (140, 14000, 246, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Kabuto - Wring Out - Level 51
  (140, 14000, 378, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Kabuto - Water Pulse - TM03
  (140, 14000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Kabuto - Hail - TM07
  (140, 14000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Kabuto - Hidden Power - TM10
  (140, 14000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Kabuto - Giga Drain - TM19
  (140, 14000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 21),
  -- Kabuto - Frustration - TM21
  (140, 14000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Kabuto - Return - TM27
  (140, 14000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Kabuto - Dig - TM28
  (140, 14000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 26),
  -- Kabuto - Rock Tomb - TM39
  (140, 14000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 27),
  -- Kabuto - Facade - TM42
  (140, 14000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Kabuto - Secret Power - TM43
  (140, 14000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Kabuto - Brine - TM55
  (140, 14000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Kabuto - Endure - TM58
  (140, 14000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Kabuto - Rock Polish - TM69
  (140, 14000, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 35),
  -- Kabuto - Stealth Rock - TM76
  (140, 14000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Kabuto - Captivate - TM78
  (140, 14000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Kabuto - Rock Slide - TM80
  (140, 14000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 38),
  -- Kabuto - Sleep Talk - TM82
  (140, 14000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Kabuto - Natural Gift - TM83
  (140, 14000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Kabuto - Swagger - TM87
  (140, 14000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Kabuto - Substitute - TM90
  (140, 14000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Kabuto - Surf - HM03
  (140, 14000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 43),
  -- Kabuto - Defog - HM05
  (140, 14000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Kabuto - Rock Smash - HM06
  (140, 14000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Kabuto - Waterfall - HM07
  (140, 14000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 46),
  -- Kabuto - Bubble Beam - Egg
  (140, 14000, 61, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kabuto - Aurora Beam - Egg
  (140, 14000, 62, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kabuto - Dig - Egg
  (140, 14000, 91, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kabuto - Screech - Egg
  (140, 14000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kabuto - Confuse Ray - Egg
  (140, 14000, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kabuto - Flail - Egg
  (140, 14000, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kabuto - Icy Wind - Egg
  (140, 14000, 196, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kabuto - Rapid Spin - Egg
  (140, 14000, 229, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kabuto - Knock Off - Egg
  (140, 14000, 282, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kabuto - Mud Shot - Egg
  (140, 14000, 341, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kabuto - Snore - Tutor
  (140, 14000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Kabuto - Mud-Slap - Tutor
  (140, 14000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Kabuto - Icy Wind - Tutor
  (140, 14000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Kabuto - Rollout - Tutor
  (140, 14000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Kabuto - Ancient Power - Tutor
  (140, 14000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Kabuto - Knock Off - Tutor
  (140, 14000, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Kabuto - Iron Defense - Tutor
  (140, 14000, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Kabuto - Earth Power - Tutor
  (140, 14000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Leer - Level 1
  (141, 14100, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kabutops - Feint - Level 1
  (141, 14100, 364, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kabutops - Absorb - Level 6
  (141, 14100, 71, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Kabutops - Leer - Level 11
  (141, 14100, 43, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Kabutops - Mud Shot - Level 16
  (141, 14100, 341, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kabutops - Sand Attack - Level 21
  (141, 14100, 28, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Kabutops - Endure - Level 26
  (141, 14100, 203, 9, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Kabutops - Aqua Jet - Level 31
  (141, 14100, 453, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kabutops - Mega Drain - Level 36
  (141, 14100, 72, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kabutops - Slash - Level 40
  (141, 14100, 163, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Kabutops - Metal Sound - Level 45
  (141, 14100, 319, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kabutops - Ancient Power - Level 54
  (141, 14100, 246, 9, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Kabutops - Wring Out - Level 63
  (141, 14100, 378, 9, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Kabutops - Night Slash - Level 72
  (141, 14100, 400, 9, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Kabutops - Water Pulse - TM03
  (141, 14100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Kabutops - Hail - TM07
  (141, 14100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 20),
  -- Kabutops - Hidden Power - TM10
  (141, 14100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Kabutops - Giga Drain - TM19
  (141, 14100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 27),
  -- Kabutops - Frustration - TM21
  (141, 14100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Kabutops - Return - TM27
  (141, 14100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Kabutops - Dig - TM28
  (141, 14100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Kabutops - Brick Break - TM31
  (141, 14100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 33),
  -- Kabutops - Rock Tomb - TM39
  (141, 14100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Kabutops - Aerial Ace - TM40
  (141, 14100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Kabutops - Facade - TM42
  (141, 14100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Kabutops - Secret Power - TM43
  (141, 14100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Kabutops - Brine - TM55
  (141, 14100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 41),
  -- Kabutops - Endure - TM58
  (141, 14100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Kabutops - Giga Impact - TM68
  (141, 14100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Kabutops - Rock Polish - TM69
  (141, 14100, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 44),
  -- Kabutops - Stone Edge - TM71
  (141, 14100, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 45),
  -- Kabutops - Swords Dance - TM75
  (141, 14100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 46),
  -- Kabutops - Stealth Rock - TM76
  (141, 14100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 47),
  -- Kabutops - Captivate - TM78
  (141, 14100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Kabutops - Rock Slide - TM80
  (141, 14100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Kabutops - X-Scissor - TM81
  (141, 14100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 50),
  -- Kabutops - Sleep Talk - TM82
  (141, 14100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Kabutops - Natural Gift - TM83
  (141, 14100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Kabutops - Swagger - TM87
  (141, 14100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Kabutops - Substitute - TM90
  (141, 14100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Kabutops - Cut - HM01
  (141, 14100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 55),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 56),
  -- Kabutops - Defog - HM05
  (141, 14100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 57),
  -- Kabutops - Rock Smash - HM06
  (141, 14100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Kabutops - Waterfall - HM07
  (141, 14100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 59),
  -- Kabutops - Rock Climb - HM08
  (141, 14100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 60),
  -- Kabutops - Snore - Tutor
  (141, 14100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Kabutops - Mud-Slap - Tutor
  (141, 14100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Kabutops - Icy Wind - Tutor
  (141, 14100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Kabutops - Rollout - Tutor
  (141, 14100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Kabutops - Fury Cutter - Tutor
  (141, 14100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Kabutops - Ancient Power - Tutor
  (141, 14100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Kabutops - Superpower - Tutor
  (141, 14100, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Kabutops - Knock Off - Tutor
  (141, 14100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Kabutops - Dive - Tutor
  (141, 14100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Kabutops - Iron Defense - Tutor
  (141, 14100, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Kabutops - Aqua Tail - Tutor
  (141, 14100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Kabutops - Earth Power - Tutor
  (141, 14100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 1
  (142, 14200, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aerodactyl - Scary Face - Level 1
  (142, 14200, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aerodactyl - Thunder Fang - Level 1
  (142, 14200, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aerodactyl - Ice Fang - Level 1
  (142, 14200, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aerodactyl - Fire Fang - Level 1
  (142, 14200, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Aerodactyl - Roar - Level 9
  (142, 14200, 46, 9, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Aerodactyl - Agility - Level 17
  (142, 14200, 97, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Aerodactyl - Ancient Power - Level 25
  (142, 14200, 246, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Aerodactyl - Crunch - Level 33
  (142, 14200, 242, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Aerodactyl - Take Down - Level 41
  (142, 14200, 36, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Aerodactyl - Iron Head - Level 49
  (142, 14200, 442, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Aerodactyl - Hyper Beam - Level 57
  (142, 14200, 63, 9, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Aerodactyl - Rock Slide - Level 65
  (142, 14200, 157, 9, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Aerodactyl - Giga Impact - Level 73
  (142, 14200, 416, 9, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Aerodactyl - Dragon Claw - TM02
  (142, 14200, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 17),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Aerodactyl - Hidden Power - TM10
  (142, 14200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Aerodactyl - Sunny Day - TM11
  (142, 14200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Aerodactyl - Taunt - TM12
  (142, 14200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Aerodactyl - Frustration - TM21
  (142, 14200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Aerodactyl - Iron Tail - TM23
  (142, 14200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Aerodactyl - Return - TM27
  (142, 14200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Aerodactyl - Flamethrower - TM35
  (142, 14200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 31),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 32),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 33),
  -- Aerodactyl - Rock Tomb - TM39
  (142, 14200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Aerodactyl - Aerial Ace - TM40
  (142, 14200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Aerodactyl - Torment - TM41
  (142, 14200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Aerodactyl - Facade - TM42
  (142, 14200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Aerodactyl - Secret Power - TM43
  (142, 14200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Aerodactyl - Thief - TM46
  (142, 14200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Aerodactyl - Steel Wing - TM47
  (142, 14200, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 42),
  -- Aerodactyl - Roost - TM51
  (142, 14200, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 43),
  -- Aerodactyl - Endure - TM58
  (142, 14200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Aerodactyl - Dragon Pulse - TM59
  (142, 14200, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 45),
  -- Aerodactyl - Payback - TM66
  (142, 14200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 46),
  -- Aerodactyl - Giga Impact - TM68
  (142, 14200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Aerodactyl - Rock Polish - TM69
  (142, 14200, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 48),
  -- Aerodactyl - Stone Edge - TM71
  (142, 14200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 49),
  -- Aerodactyl - Stealth Rock - TM76
  (142, 14200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 50),
  -- Aerodactyl - Captivate - TM78
  (142, 14200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Aerodactyl - Rock Slide - TM80
  (142, 14200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Aerodactyl - Sleep Talk - TM82
  (142, 14200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Aerodactyl - Natural Gift - TM83
  (142, 14200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Aerodactyl - Swagger - TM87
  (142, 14200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Aerodactyl - Substitute - TM90
  (142, 14200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 57),
  -- Aerodactyl - Strength - HM04
  (142, 14200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Aerodactyl - Defog - HM05
  (142, 14200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 59),
  -- Aerodactyl - Rock Smash - HM06
  (142, 14200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Aerodactyl - Whirlwind - Egg
  (142, 14200, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aerodactyl - Curse - Egg
  (142, 14200, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aerodactyl - Foresight - Egg
  (142, 14200, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aerodactyl - Steel Wing - Egg
  (142, 14200, 211, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aerodactyl - Dragon Breath - Egg
  (142, 14200, 225, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aerodactyl - Pursuit - Egg
  (142, 14200, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aerodactyl - Assurance - Egg
  (142, 14200, 372, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Aerodactyl - Swift - Tutor
  (142, 14200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Aerodactyl - Snore - Tutor
  (142, 14200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Aerodactyl - Twister - Tutor
  (142, 14200, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Aerodactyl - Ancient Power - Tutor
  (142, 14200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Aerodactyl - Heat Wave - Tutor
  (142, 14200, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Aerodactyl - Air Cutter - Tutor
  (142, 14200, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Aerodactyl - Aqua Tail - Tutor
  (142, 14200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Aerodactyl - Earth Power - Tutor
  (142, 14200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Aerodactyl - Iron Head - Tutor
  (142, 14200, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Aerodactyl - Ominous Wind - Tutor
  (142, 14200, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Defense Curl - Level 4
  (143, 14300, 111, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snorlax - Amnesia - Level 9
  (143, 14300, 133, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Snorlax - Lick - Level 12
  (143, 14300, 122, 9, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Snorlax - Belly Drum - Level 17
  (143, 14300, 187, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Snorlax - Yawn - Level 20
  (143, 14300, 281, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorlax - Rest - Level 25
  (143, 14300, 156, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorlax - Snore - Level 28
  (143, 14300, 173, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorlax - Sleep Talk - Level 28
  (143, 14300, 214, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Snorlax - Body Slam - Level 33
  (143, 14300, 34, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Snorlax - Block - Level 36
  (143, 14300, 335, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Snorlax - Rollout - Level 41
  (143, 14300, 205, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Snorlax - Crunch - Level 44
  (143, 14300, 242, 9, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Snorlax - Giga Impact - Level 49
  (143, 14300, 416, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Snorlax - Focus Punch - TM01
  (143, 14300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Snorlax - Water Pulse - TM03
  (143, 14300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Snorlax - Hidden Power - TM10
  (143, 14300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Snorlax - Frustration - TM21
  (143, 14300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Snorlax - Return - TM27
  (143, 14300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Snorlax - Brick Break - TM31
  (143, 14300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 33),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Snorlax - Shock Wave - TM34
  (143, 14300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Snorlax - Flamethrower - TM35
  (143, 14300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 36),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 37),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 38),
  -- Snorlax - Rock Tomb - TM39
  (143, 14300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Snorlax - Facade - TM42
  (143, 14300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 40),
  -- Snorlax - Secret Power - TM43
  (143, 14300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 41),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 42),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 43),
  -- Snorlax - Focus Blast - TM52
  (143, 14300, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Snorlax - Fling - TM56
  (143, 14300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Snorlax - Endure - TM58
  (143, 14300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Snorlax - Recycle - TM67
  (143, 14300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 47),
  -- Snorlax - Giga Impact - TM68
  (143, 14300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 48),
  -- Snorlax - Captivate - TM78
  (143, 14300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Snorlax - Rock Slide - TM80
  (143, 14300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Snorlax - Sleep Talk - TM82
  (143, 14300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Snorlax - Natural Gift - TM83
  (143, 14300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Snorlax - Swagger - TM87
  (143, 14300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Snorlax - Substitute - TM90
  (143, 14300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 55),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 56),
  -- Snorlax - Defog - HM05
  (143, 14300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 57),
  -- Snorlax - Rock Smash - HM06
  (143, 14300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Snorlax - Rock Climb - HM08
  (143, 14300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 59),
  -- Snorlax - Whirlwind - Egg
  (143, 14300, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snorlax - Double-Edge - Egg
  (143, 14300, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snorlax - Fissure - Egg
  (143, 14300, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snorlax - Lick - Egg
  (143, 14300, 122, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snorlax - Substitute - Egg
  (143, 14300, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snorlax - Curse - Egg
  (143, 14300, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snorlax - Charm - Egg
  (143, 14300, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snorlax - Pursuit - Egg
  (143, 14300, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snorlax - Zen Headbutt - Egg
  (143, 14300, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snorlax - Fire Punch - Tutor
  (143, 14300, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Snorlax - Ice Punch - Tutor
  (143, 14300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Snorlax - Thunder Punch - Tutor
  (143, 14300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Snorlax - Snore - Tutor
  (143, 14300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Snorlax - Mud-Slap - Tutor
  (143, 14300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Snorlax - Icy Wind - Tutor
  (143, 14300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Snorlax - Outrage - Tutor
  (143, 14300, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Snorlax - Rollout - Tutor
  (143, 14300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Snorlax - Superpower - Tutor
  (143, 14300, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Snorlax - Last Resort - Tutor
  (143, 14300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Snorlax - Seed Bomb - Tutor
  (143, 14300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Snorlax - Zen Headbutt - Tutor
  (143, 14300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Snorlax - Gunk Shot - Tutor
  (143, 14300, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Snorlax - Iron Head - Tutor
  (143, 14300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Powder Snow - Level 1
  (144, 14400, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Mist - Level 8
  (144, 14400, 54, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Articuno - Mind Reader - Level 22
  (144, 14400, 170, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Articuno - Ancient Power - Level 29
  (144, 14400, 246, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Articuno - Agility - Level 36
  (144, 14400, 97, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Articuno - Ice Beam - Level 43
  (144, 14400, 58, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Articuno - Reflect - Level 50
  (144, 14400, 115, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Articuno - Roost - Level 57
  (144, 14400, 355, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Articuno - Tailwind - Level 64
  (144, 14400, 366, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Articuno - Blizzard - Level 71
  (144, 14400, 59, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Articuno - Sheer Cold - Level 78
  (144, 14400, 329, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Articuno - Hail - Level 85
  (144, 14400, 258, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Articuno - Water Pulse - TM03
  (144, 14400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Articuno - Hail - TM07
  (144, 14400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Articuno - Hidden Power - TM10
  (144, 14400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Articuno - Frustration - TM21
  (144, 14400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Articuno - Return - TM27
  (144, 14400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Articuno - Aerial Ace - TM40
  (144, 14400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Articuno - Facade - TM42
  (144, 14400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Articuno - Secret Power - TM43
  (144, 14400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Articuno - Steel Wing - TM47
  (144, 14400, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 35),
  -- Articuno - Roost - TM51
  (144, 14400, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 36),
  -- Articuno - Endure - TM58
  (144, 14400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Articuno - Giga Impact - TM68
  (144, 14400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Articuno - Avalanche - TM72
  (144, 14400, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 39),
  -- Articuno - Sleep Talk - TM82
  (144, 14400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Articuno - Natural Gift - TM83
  (144, 14400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Articuno - Swagger - TM87
  (144, 14400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Articuno - Pluck - TM88
  (144, 14400, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 43),
  -- Articuno - U-turn - TM89
  (144, 14400, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 44),
  -- Articuno - Substitute - TM90
  (144, 14400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 46),
  -- Articuno - Defog - HM05
  (144, 14400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Articuno - Rock Smash - HM06
  (144, 14400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Articuno - Swift - Tutor
  (144, 14400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Articuno - Snore - Tutor
  (144, 14400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Articuno - Mud-Slap - Tutor
  (144, 14400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Articuno - Icy Wind - Tutor
  (144, 14400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Articuno - Twister - Tutor
  (144, 14400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Articuno - Ancient Power - Tutor
  (144, 14400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Articuno - Air Cutter - Tutor
  (144, 14400, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Articuno - Signal Beam - Tutor
  (144, 14400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Articuno - Ominous Wind - Tutor
  (144, 14400, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Wave - Level 8
  (145, 14500, 86, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Zapdos - Detect - Level 15
  (145, 14500, 197, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Zapdos - Pluck - Level 22
  (145, 14500, 365, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Zapdos - Ancient Power - Level 29
  (145, 14500, 246, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Zapdos - Charge - Level 36
  (145, 14500, 268, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Zapdos - Agility - Level 43
  (145, 14500, 97, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Zapdos - Discharge - Level 50
  (145, 14500, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Zapdos - Roost - Level 57
  (145, 14500, 355, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Zapdos - Light Screen - Level 64
  (145, 14500, 113, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Zapdos - Drill Peck - Level 71
  (145, 14500, 65, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Zapdos - Thunder - Level 78
  (145, 14500, 87, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Zapdos - Rain Dance - Level 85
  (145, 14500, 240, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Zapdos - Hidden Power - TM10
  (145, 14500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Zapdos - Light Screen - TM16
  (145, 14500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Zapdos - Frustration - TM21
  (145, 14500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Zapdos - Return - TM27
  (145, 14500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Zapdos - Shock Wave - TM34
  (145, 14500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Zapdos - Aerial Ace - TM40
  (145, 14500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Zapdos - Facade - TM42
  (145, 14500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Zapdos - Secret Power - TM43
  (145, 14500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Zapdos - Steel Wing - TM47
  (145, 14500, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 34),
  -- Zapdos - Roost - TM51
  (145, 14500, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 35),
  -- Zapdos - Charge Beam - TM57
  (145, 14500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 36),
  -- Zapdos - Endure - TM58
  (145, 14500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Zapdos - Giga Impact - TM68
  (145, 14500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Zapdos - Flash - TM70
  (145, 14500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Zapdos - Thunder Wave - TM73
  (145, 14500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 40),
  -- Zapdos - Sleep Talk - TM82
  (145, 14500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Zapdos - Natural Gift - TM83
  (145, 14500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Zapdos - Swagger - TM87
  (145, 14500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Zapdos - Pluck - TM88
  (145, 14500, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 44),
  -- Zapdos - U-turn - TM89
  (145, 14500, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 45),
  -- Zapdos - Substitute - TM90
  (145, 14500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 47),
  -- Zapdos - Defog - HM05
  (145, 14500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 48),
  -- Zapdos - Rock Smash - HM06
  (145, 14500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Zapdos - Swift - Tutor
  (145, 14500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Zapdos - Snore - Tutor
  (145, 14500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Zapdos - Mud-Slap - Tutor
  (145, 14500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Zapdos - Twister - Tutor
  (145, 14500, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Zapdos - Ancient Power - Tutor
  (145, 14500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Zapdos - Heat Wave - Tutor
  (145, 14500, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Zapdos - Air Cutter - Tutor
  (145, 14500, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Zapdos - Signal Beam - Tutor
  (145, 14500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Zapdos - Ominous Wind - Tutor
  (145, 14500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Fire Spin - Level 8
  (146, 14600, 83, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Moltres - Agility - Level 15
  (146, 14600, 97, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Moltres - Endure - Level 22
  (146, 14600, 203, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Moltres - Ancient Power - Level 29
  (146, 14600, 246, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Moltres - Flamethrower - Level 36
  (146, 14600, 53, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Moltres - Safeguard - Level 43
  (146, 14600, 219, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Moltres - Air Slash - Level 50
  (146, 14600, 403, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Moltres - Roost - Level 57
  (146, 14600, 355, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Moltres - Heat Wave - Level 64
  (146, 14600, 257, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Moltres - Solar Beam - Level 71
  (146, 14600, 76, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Moltres - Sky Attack - Level 78
  (146, 14600, 143, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Moltres - Sunny Day - Level 85
  (146, 14600, 241, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Moltres - Hidden Power - TM10
  (146, 14600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Moltres - Safeguard - TM20
  (146, 14600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Moltres - Frustration - TM21
  (146, 14600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Moltres - Solar Beam - TM22
  (146, 14600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Moltres - Return - TM27
  (146, 14600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Moltres - Flamethrower - TM35
  (146, 14600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Moltres - Aerial Ace - TM40
  (146, 14600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Moltres - Facade - TM42
  (146, 14600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Moltres - Secret Power - TM43
  (146, 14600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Moltres - Steel Wing - TM47
  (146, 14600, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 34),
  -- Moltres - Overheat - TM50
  (146, 14600, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 35),
  -- Moltres - Roost - TM51
  (146, 14600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 36),
  -- Moltres - Endure - TM58
  (146, 14600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Moltres - Will-O-Wisp - TM61
  (146, 14600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 38),
  -- Moltres - Giga Impact - TM68
  (146, 14600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Moltres - Sleep Talk - TM82
  (146, 14600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Moltres - Natural Gift - TM83
  (146, 14600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Moltres - Swagger - TM87
  (146, 14600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Moltres - Pluck - TM88
  (146, 14600, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 43),
  -- Moltres - U-turn - TM89
  (146, 14600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 44),
  -- Moltres - Substitute - TM90
  (146, 14600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 46),
  -- Moltres - Defog - HM05
  (146, 14600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Moltres - Rock Smash - HM06
  (146, 14600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Moltres - Swift - Tutor
  (146, 14600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Moltres - Snore - Tutor
  (146, 14600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Moltres - Mud-Slap - Tutor
  (146, 14600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Moltres - Twister - Tutor
  (146, 14600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Moltres - Ancient Power - Tutor
  (146, 14600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Moltres - Heat Wave - Tutor
  (146, 14600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Moltres - Air Cutter - Tutor
  (146, 14600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Moltres - Ominous Wind - Tutor
  (146, 14600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 5
  (147, 14700, 86, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Twister - Level 11
  (147, 14700, 239, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Rage - Level 15
  (147, 14700, 82, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Slam - Level 21
  (147, 14700, 21, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dratini - Agility - Level 25
  (147, 14700, 97, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Aqua Tail - Level 31
  (147, 14700, 401, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Dragon Rush - Level 35
  (147, 14700, 407, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Safeguard - Level 41
  (147, 14700, 219, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Dratini - Dragon Dance - Level 45
  (147, 14700, 349, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Outrage - Level 51
  (147, 14700, 200, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Dratini - Hyper Beam - Level 55
  (147, 14700, 63, 9, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Water Pulse - TM03
  (147, 14700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Dratini - Hail - TM07
  (147, 14700, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Dratini - Hidden Power - TM10
  (147, 14700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Dratini - Sunny Day - TM11
  (147, 14700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Dratini - Hyper Beam - TM15
  (147, 14700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Dratini - Safeguard - TM20
  (147, 14700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Dratini - Frustration - TM21
  (147, 14700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Dratini - Iron Tail - TM23
  (147, 14700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Dratini - Return - TM27
  (147, 14700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Dratini - Shock Wave - TM34
  (147, 14700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Dratini - Flamethrower - TM35
  (147, 14700, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 32),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 33),
  -- Dratini - Facade - TM42
  (147, 14700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Dratini - Secret Power - TM43
  (147, 14700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Dratini - Endure - TM58
  (147, 14700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Dratini - Dragon Pulse - TM59
  (147, 14700, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 39),
  -- Dratini - Thunder Wave - TM73
  (147, 14700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 40),
  -- Dratini - Captivate - TM78
  (147, 14700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Dratini - Sleep Talk - TM82
  (147, 14700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Dratini - Natural Gift - TM83
  (147, 14700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Dratini - Swagger - TM87
  (147, 14700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Dratini - Substitute - TM90
  (147, 14700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 46),
  -- Dratini - Defog - HM05
  (147, 14700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Dratini - Waterfall - HM07
  (147, 14700, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 48),
  -- Dratini - Supersonic - Egg
  (147, 14700, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dratini - Mist - Egg
  (147, 14700, 54, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dratini - Light Screen - Egg
  (147, 14700, 113, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dratini - Haze - Egg
  (147, 14700, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dratini - Dragon Breath - Egg
  (147, 14700, 225, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dratini - Dragon Dance - Egg
  (147, 14700, 349, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dratini - Dragon Rush - Egg
  (147, 14700, 407, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dratini - Swift - Tutor
  (147, 14700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Dratini - Snore - Tutor
  (147, 14700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Dratini - Icy Wind - Tutor
  (147, 14700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Dratini - Outrage - Tutor
  (147, 14700, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Dratini - Twister - Tutor
  (147, 14700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Dratini - Aqua Tail - Tutor
  (147, 14700, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Dratini - Draco Meteor - Tutor
  (147, 14700, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 5
  (148, 14800, 86, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dragonair - Twister - Level 11
  (148, 14800, 239, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 15
  (148, 14800, 82, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dragonair - Slam - Level 21
  (148, 14800, 21, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Dragonair - Agility - Level 25
  (148, 14800, 97, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dragonair - Aqua Tail - Level 33
  (148, 14800, 401, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Dragonair - Dragon Rush - Level 39
  (148, 14800, 407, 9, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Dragonair - Safeguard - Level 47
  (148, 14800, 219, 9, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Dragonair - Dragon Dance - Level 53
  (148, 14800, 349, 9, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Dragonair - Outrage - Level 61
  (148, 14800, 200, 9, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Dragonair - Hyper Beam - Level 67
  (148, 14800, 63, 9, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Dragonair - Water Pulse - TM03
  (148, 14800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Dragonair - Hail - TM07
  (148, 14800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Dragonair - Hidden Power - TM10
  (148, 14800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Dragonair - Sunny Day - TM11
  (148, 14800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Dragonair - Hyper Beam - TM15
  (148, 14800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Dragonair - Safeguard - TM20
  (148, 14800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Dragonair - Frustration - TM21
  (148, 14800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Dragonair - Iron Tail - TM23
  (148, 14800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Dragonair - Return - TM27
  (148, 14800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Dragonair - Shock Wave - TM34
  (148, 14800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Dragonair - Flamethrower - TM35
  (148, 14800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Dragonair - Facade - TM42
  (148, 14800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Dragonair - Secret Power - TM43
  (148, 14800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Dragonair - Endure - TM58
  (148, 14800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Dragonair - Dragon Pulse - TM59
  (148, 14800, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 41),
  -- Dragonair - Thunder Wave - TM73
  (148, 14800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 42),
  -- Dragonair - Captivate - TM78
  (148, 14800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Dragonair - Sleep Talk - TM82
  (148, 14800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Dragonair - Natural Gift - TM83
  (148, 14800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Dragonair - Swagger - TM87
  (148, 14800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Dragonair - Substitute - TM90
  (148, 14800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Dragonair - Defog - HM05
  (148, 14800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Dragonair - Waterfall - HM07
  (148, 14800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 50),
  -- Dragonair - Swift - Tutor
  (148, 14800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Dragonair - Snore - Tutor
  (148, 14800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Dragonair - Icy Wind - Tutor
  (148, 14800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Dragonair - Outrage - Tutor
  (148, 14800, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Dragonair - Twister - Tutor
  (148, 14800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Dragonair - Aqua Tail - Tutor
  (148, 14800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Dragonair - Draco Meteor - Tutor
  (148, 14800, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Roost - Level 1
  (149, 14900, 355, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Thunder Wave - Level 5
  (149, 14900, 86, 9, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Dragonite - Twister - Level 11
  (149, 14900, 239, 9, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Dragonite - Dragon Rage - Level 15
  (149, 14900, 82, 9, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Dragonite - Slam - Level 21
  (149, 14900, 21, 9, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Dragonite - Agility - Level 25
  (149, 14900, 97, 9, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Dragonite - Aqua Tail - Level 33
  (149, 14900, 401, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Dragonite - Dragon Rush - Level 39
  (149, 14900, 407, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Dragonite - Safeguard - Level 47
  (149, 14900, 219, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Dragonite - Dragon Dance - Level 53
  (149, 14900, 349, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Dragonite - Wing Attack - Level 55
  (149, 14900, 17, 9, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Dragonite - Outrage - Level 64
  (149, 14900, 200, 9, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Dragonite - Hyper Beam - Level 73
  (149, 14900, 63, 9, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Dragonite - Focus Punch - TM01
  (149, 14900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 20),
  -- Dragonite - Dragon Claw - TM02
  (149, 14900, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 21),
  -- Dragonite - Water Pulse - TM03
  (149, 14900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 22),
  -- Dragonite - Roar - TM05
  (149, 14900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 23),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 24),
  -- Dragonite - Hail - TM07
  (149, 14900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 25),
  -- Dragonite - Hidden Power - TM10
  (149, 14900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 26),
  -- Dragonite - Sunny Day - TM11
  (149, 14900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 27),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 28),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 29),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 30),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 31),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 32),
  -- Dragonite - Safeguard - TM20
  (149, 14900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 33),
  -- Dragonite - Frustration - TM21
  (149, 14900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 34),
  -- Dragonite - Iron Tail - TM23
  (149, 14900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 35),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 36),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 37),
  -- Dragonite - Earthquake - TM26
  (149, 14900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 38),
  -- Dragonite - Return - TM27
  (149, 14900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 39),
  -- Dragonite - Brick Break - TM31
  (149, 14900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 40),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 41),
  -- Dragonite - Shock Wave - TM34
  (149, 14900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 42),
  -- Dragonite - Flamethrower - TM35
  (149, 14900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 43),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 44),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 45),
  -- Dragonite - Rock Tomb - TM39
  (149, 14900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 46),
  -- Dragonite - Aerial Ace - TM40
  (149, 14900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 47),
  -- Dragonite - Facade - TM42
  (149, 14900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 48),
  -- Dragonite - Secret Power - TM43
  (149, 14900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 49),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 50),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 51),
  -- Dragonite - Steel Wing - TM47
  (149, 14900, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 52),
  -- Dragonite - Roost - TM51
  (149, 14900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 53),
  -- Dragonite - Focus Blast - TM52
  (149, 14900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 54),
  -- Dragonite - Fling - TM56
  (149, 14900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 55),
  -- Dragonite - Endure - TM58
  (149, 14900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 56),
  -- Dragonite - Dragon Pulse - TM59
  (149, 14900, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 57),
  -- Dragonite - Giga Impact - TM68
  (149, 14900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 58),
  -- Dragonite - Stone Edge - TM71
  (149, 14900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 59),
  -- Dragonite - Thunder Wave - TM73
  (149, 14900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 60),
  -- Dragonite - Captivate - TM78
  (149, 14900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 61),
  -- Dragonite - Rock Slide - TM80
  (149, 14900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 62),
  -- Dragonite - Sleep Talk - TM82
  (149, 14900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 63),
  -- Dragonite - Natural Gift - TM83
  (149, 14900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 64),
  -- Dragonite - Swagger - TM87
  (149, 14900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 65),
  -- Dragonite - Substitute - TM90
  (149, 14900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 66),
  -- Dragonite - Cut - HM01
  (149, 14900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 67),
  -- Dragonite - Fly - HM02
  (149, 14900, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 68),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 69),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 70),
  -- Dragonite - Defog - HM05
  (149, 14900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 71),
  -- Dragonite - Rock Smash - HM06
  (149, 14900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 72),
  -- Dragonite - Waterfall - HM07
  (149, 14900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 73),
  -- Dragonite - Fire Punch - Tutor
  (149, 14900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Dragonite - Ice Punch - Tutor
  (149, 14900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Dragonite - Thunder Punch - Tutor
  (149, 14900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Dragonite - Swift - Tutor
  (149, 14900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Dragonite - Snore - Tutor
  (149, 14900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Dragonite - Mud-Slap - Tutor
  (149, 14900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Dragonite - Icy Wind - Tutor
  (149, 14900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Dragonite - Outrage - Tutor
  (149, 14900, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Dragonite - Fury Cutter - Tutor
  (149, 14900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Dragonite - Twister - Tutor
  (149, 14900, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Dragonite - Heat Wave - Tutor
  (149, 14900, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Dragonite - Superpower - Tutor
  (149, 14900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Dragonite - Dive - Tutor
  (149, 14900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Dragonite - Air Cutter - Tutor
  (149, 14900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Dragonite - Aqua Tail - Tutor
  (149, 14900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Dragonite - Draco Meteor - Tutor
  (149, 14900, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Dragonite - Iron Head - Tutor
  (149, 14900, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Dragonite - Ominous Wind - Tutor
  (149, 14900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Barrier - Level 8
  (150, 15000, 112, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Mewtwo - Swift - Level 15
  (150, 15000, 129, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mewtwo - Future Sight - Level 22
  (150, 15000, 248, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Mewtwo - Psych Up - Level 29
  (150, 15000, 244, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Mewtwo - Miracle Eye - Level 36
  (150, 15000, 357, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mewtwo - Mist - Level 43
  (150, 15000, 54, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Mewtwo - Psycho Cut - Level 50
  (150, 15000, 427, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Mewtwo - Amnesia - Level 57
  (150, 15000, 133, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Mewtwo - Power Swap - Level 64
  (150, 15000, 384, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Mewtwo - Guard Swap - Level 64
  (150, 15000, 385, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Mewtwo - Psychic - Level 71
  (150, 15000, 94, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Mewtwo - Me First - Level 79
  (150, 15000, 382, 9, NULL, 1, 79, NULL, NULL, NULL, 14),
  -- Mewtwo - Recover - Level 86
  (150, 15000, 105, 9, NULL, 1, 86, NULL, NULL, NULL, 15),
  -- Mewtwo - Safeguard - Level 93
  (150, 15000, 219, 9, NULL, 1, 93, NULL, NULL, NULL, 16),
  -- Mewtwo - Aura Sphere - Level 100
  (150, 15000, 396, 9, NULL, 1, 100, NULL, NULL, NULL, 17),
  -- Mewtwo - Focus Punch - TM01
  (150, 15000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Mewtwo - Water Pulse - TM03
  (150, 15000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Mewtwo - Calm Mind - TM04
  (150, 15000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Mewtwo - Hail - TM07
  (150, 15000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 22),
  -- Mewtwo - Bulk Up - TM08
  (150, 15000, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 23),
  -- Mewtwo - Hidden Power - TM10
  (150, 15000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Mewtwo - Taunt - TM12
  (150, 15000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 27),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 28),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 29),
  -- Mewtwo - Light Screen - TM16
  (150, 15000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 30),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 31),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 32),
  -- Mewtwo - Safeguard - TM20
  (150, 15000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 33),
  -- Mewtwo - Frustration - TM21
  (150, 15000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 34),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 35),
  -- Mewtwo - Iron Tail - TM23
  (150, 15000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 36),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 37),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 38),
  -- Mewtwo - Earthquake - TM26
  (150, 15000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 39),
  -- Mewtwo - Return - TM27
  (150, 15000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 40),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 41),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 42),
  -- Mewtwo - Brick Break - TM31
  (150, 15000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 43),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 44),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 45),
  -- Mewtwo - Shock Wave - TM34
  (150, 15000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 46),
  -- Mewtwo - Flamethrower - TM35
  (150, 15000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 47),
  -- Mewtwo - Sandstorm - TM37
  (150, 15000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 48),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 49),
  -- Mewtwo - Rock Tomb - TM39
  (150, 15000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 50),
  -- Mewtwo - Aerial Ace - TM40
  (150, 15000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 51),
  -- Mewtwo - Torment - TM41
  (150, 15000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 52),
  -- Mewtwo - Facade - TM42
  (150, 15000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 53),
  -- Mewtwo - Secret Power - TM43
  (150, 15000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 54),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 55),
  -- Mewtwo - Skill Swap - TM48
  (150, 15000, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 56),
  -- Mewtwo - Snatch - TM49
  (150, 15000, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 57),
  -- Mewtwo - Focus Blast - TM52
  (150, 15000, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 58),
  -- Mewtwo - Energy Ball - TM53
  (150, 15000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 59),
  -- Mewtwo - Fling - TM56
  (150, 15000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 60),
  -- Mewtwo - Charge Beam - TM57
  (150, 15000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 61),
  -- Mewtwo - Endure - TM58
  (150, 15000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 62),
  -- Mewtwo - Drain Punch - TM60
  (150, 15000, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 63),
  -- Mewtwo - Will-O-Wisp - TM61
  (150, 15000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 64),
  -- Mewtwo - Embargo - TM63
  (150, 15000, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 65),
  -- Mewtwo - Recycle - TM67
  (150, 15000, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 66),
  -- Mewtwo - Giga Impact - TM68
  (150, 15000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 67),
  -- Mewtwo - Flash - TM70
  (150, 15000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 68),
  -- Mewtwo - Stone Edge - TM71
  (150, 15000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 69),
  -- Mewtwo - Avalanche - TM72
  (150, 15000, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 70),
  -- Mewtwo - Thunder Wave - TM73
  (150, 15000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 71),
  -- Mewtwo - Psych Up - TM77
  (150, 15000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 72),
  -- Mewtwo - Rock Slide - TM80
  (150, 15000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 73),
  -- Mewtwo - Sleep Talk - TM82
  (150, 15000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 74),
  -- Mewtwo - Natural Gift - TM83
  (150, 15000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 75),
  -- Mewtwo - Poison Jab - TM84
  (150, 15000, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 76),
  -- Mewtwo - Dream Eater - TM85
  (150, 15000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 77),
  -- Mewtwo - Grass Knot - TM86
  (150, 15000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 78),
  -- Mewtwo - Swagger - TM87
  (150, 15000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 79),
  -- Mewtwo - Substitute - TM90
  (150, 15000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 80),
  -- Mewtwo - Trick Room - TM92
  (150, 15000, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 81),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 82),
  -- Mewtwo - Rock Smash - HM06
  (150, 15000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 83),
  -- Mewtwo - Rock Climb - HM08
  (150, 15000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 84),
  -- Mewtwo - Fire Punch - Tutor
  (150, 15000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Mewtwo - Ice Punch - Tutor
  (150, 15000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Mewtwo - Thunder Punch - Tutor
  (150, 15000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Mewtwo - Swift - Tutor
  (150, 15000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Mewtwo - Snore - Tutor
  (150, 15000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Mewtwo - Mud-Slap - Tutor
  (150, 15000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Mewtwo - Icy Wind - Tutor
  (150, 15000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Mewtwo - Trick - Tutor
  (150, 15000, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 92),
  -- Mewtwo - Signal Beam - Tutor
  (150, 15000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 93),
  -- Mewtwo - Aqua Tail - Tutor
  (150, 15000, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 94),
  -- Mewtwo - Zen Headbutt - Tutor
  (150, 15000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 95),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Transform - Level 1
  (151, 15100, 144, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Mega Punch - Level 10
  (151, 15100, 5, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mew - Metronome - Level 20
  (151, 15100, 118, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mew - Psychic - Level 30
  (151, 15100, 94, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Mew - Barrier - Level 40
  (151, 15100, 112, 9, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Mew - Ancient Power - Level 50
  (151, 15100, 246, 9, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Mew - Amnesia - Level 60
  (151, 15100, 133, 9, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Mew - Me First - Level 70
  (151, 15100, 382, 9, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Mew - Baton Pass - Level 80
  (151, 15100, 226, 9, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Mew - Nasty Plot - Level 90
  (151, 15100, 417, 9, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Mew - Aura Sphere - Level 100
  (151, 15100, 396, 9, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Mew - Focus Punch - TM01
  (151, 15100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Mew - Dragon Claw - TM02
  (151, 15100, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 14),
  -- Mew - Water Pulse - TM03
  (151, 15100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Mew - Calm Mind - TM04
  (151, 15100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Mew - Roar - TM05
  (151, 15100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Mew - Hail - TM07
  (151, 15100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Mew - Bulk Up - TM08
  (151, 15100, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Mew - Bullet Seed - TM09
  (151, 15100, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 21),
  -- Mew - Hidden Power - TM10
  (151, 15100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Mew - Taunt - TM12
  (151, 15100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 24),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 25),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 26),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 27),
  -- Mew - Light Screen - TM16
  (151, 15100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 28),
  -- Mew - Protect - TM17
  (151, 15100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Mew - Giga Drain - TM19
  (151, 15100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 31),
  -- Mew - Safeguard - TM20
  (151, 15100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 32),
  -- Mew - Frustration - TM21
  (151, 15100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 33),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 34),
  -- Mew - Iron Tail - TM23
  (151, 15100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 35),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 36),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 37),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 38),
  -- Mew - Return - TM27
  (151, 15100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 39),
  -- Mew - Dig - TM28
  (151, 15100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 40),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 41),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 42),
  -- Mew - Brick Break - TM31
  (151, 15100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 43),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 44),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 45),
  -- Mew - Shock Wave - TM34
  (151, 15100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 46),
  -- Mew - Flamethrower - TM35
  (151, 15100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 47),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 48),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 49),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 50),
  -- Mew - Rock Tomb - TM39
  (151, 15100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 51),
  -- Mew - Aerial Ace - TM40
  (151, 15100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 52),
  -- Mew - Torment - TM41
  (151, 15100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 53),
  -- Mew - Facade - TM42
  (151, 15100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 54),
  -- Mew - Secret Power - TM43
  (151, 15100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 55),
  -- Mew - Rest - TM44
  (151, 15100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 56),
  -- Mew - Attract - TM45
  (151, 15100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 57),
  -- Mew - Thief - TM46
  (151, 15100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 58),
  -- Mew - Steel Wing - TM47
  (151, 15100, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 59),
  -- Mew - Skill Swap - TM48
  (151, 15100, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 60),
  -- Mew - Snatch - TM49
  (151, 15100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 61),
  -- Mew - Overheat - TM50
  (151, 15100, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 62),
  -- Mew - Roost - TM51
  (151, 15100, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 63),
  -- Mew - Focus Blast - TM52
  (151, 15100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 64),
  -- Mew - Energy Ball - TM53
  (151, 15100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 65),
  -- Mew - False Swipe - TM54
  (151, 15100, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 66),
  -- Mew - Brine - TM55
  (151, 15100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 67),
  -- Mew - Fling - TM56
  (151, 15100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 68),
  -- Mew - Charge Beam - TM57
  (151, 15100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 69),
  -- Mew - Endure - TM58
  (151, 15100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 70),
  -- Mew - Dragon Pulse - TM59
  (151, 15100, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 71),
  -- Mew - Drain Punch - TM60
  (151, 15100, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 72),
  -- Mew - Will-O-Wisp - TM61
  (151, 15100, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 73),
  -- Mew - Silver Wind - TM62
  (151, 15100, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 74),
  -- Mew - Embargo - TM63
  (151, 15100, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 75),
  -- Mew - Explosion - TM64
  (151, 15100, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 76),
  -- Mew - Shadow Claw - TM65
  (151, 15100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 77),
  -- Mew - Payback - TM66
  (151, 15100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 78),
  -- Mew - Recycle - TM67
  (151, 15100, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 79),
  -- Mew - Giga Impact - TM68
  (151, 15100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 80),
  -- Mew - Rock Polish - TM69
  (151, 15100, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 81),
  -- Mew - Flash - TM70
  (151, 15100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 82),
  -- Mew - Stone Edge - TM71
  (151, 15100, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 83),
  -- Mew - Avalanche - TM72
  (151, 15100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 84),
  -- Mew - Thunder Wave - TM73
  (151, 15100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 85),
  -- Mew - Gyro Ball - TM74
  (151, 15100, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 86),
  -- Mew - Swords Dance - TM75
  (151, 15100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 87),
  -- Mew - Stealth Rock - TM76
  (151, 15100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 88),
  -- Mew - Psych Up - TM77
  (151, 15100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 89),
  -- Mew - Captivate - TM78
  (151, 15100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 90),
  -- Mew - Dark Pulse - TM79
  (151, 15100, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 91),
  -- Mew - Rock Slide - TM80
  (151, 15100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 92),
  -- Mew - X-Scissor - TM81
  (151, 15100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 93),
  -- Mew - Sleep Talk - TM82
  (151, 15100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 94),
  -- Mew - Natural Gift - TM83
  (151, 15100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 95),
  -- Mew - Poison Jab - TM84
  (151, 15100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 96),
  -- Mew - Dream Eater - TM85
  (151, 15100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 97),
  -- Mew - Grass Knot - TM86
  (151, 15100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 98),
  -- Mew - Swagger - TM87
  (151, 15100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 99),
  -- Mew - Pluck - TM88
  (151, 15100, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 100),
  -- Mew - U-turn - TM89
  (151, 15100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 101),
  -- Mew - Substitute - TM90
  (151, 15100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 102),
  -- Mew - Flash Cannon - TM91
  (151, 15100, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 103),
  -- Mew - Trick Room - TM92
  (151, 15100, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 104),
  -- Mew - Cut - HM01
  (151, 15100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 105),
  -- Mew - Fly - HM02
  (151, 15100, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 106),
  -- Mew - Surf - HM03
  (151, 15100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 107),
  -- Mew - Strength - HM04
  (151, 15100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 108),
  -- Mew - Defog - HM05
  (151, 15100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 109),
  -- Mew - Rock Smash - HM06
  (151, 15100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 110),
  -- Mew - Waterfall - HM07
  (151, 15100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 111),
  -- Mew - Rock Climb - HM08
  (151, 15100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 112),
  -- Mew - Fire Punch - Tutor
  (151, 15100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 113),
  -- Mew - Ice Punch - Tutor
  (151, 15100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 114),
  -- Mew - Thunder Punch - Tutor
  (151, 15100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 115),
  -- Mew - Swift - Tutor
  (151, 15100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 116),
  -- Mew - Snore - Tutor
  (151, 15100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 117),
  -- Mew - Spite - Tutor
  (151, 15100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 118),
  -- Mew - Mud-Slap - Tutor
  (151, 15100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 119),
  -- Mew - Icy Wind - Tutor
  (151, 15100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 120),
  -- Mew - Outrage - Tutor
  (151, 15100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 121),
  -- Mew - Rollout - Tutor
  (151, 15100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 122),
  -- Mew - Fury Cutter - Tutor
  (151, 15100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 123),
  -- Mew - Synthesis - Tutor
  (151, 15100, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 124),
  -- Mew - Twister - Tutor
  (151, 15100, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 125),
  -- Mew - Ancient Power - Tutor
  (151, 15100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 126),
  -- Mew - Uproar - Tutor
  (151, 15100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 127),
  -- Mew - Heat Wave - Tutor
  (151, 15100, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 128),
  -- Mew - Helping Hand - Tutor
  (151, 15100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 129),
  -- Mew - Trick - Tutor
  (151, 15100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 130),
  -- Mew - Superpower - Tutor
  (151, 15100, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 131),
  -- Mew - Knock Off - Tutor
  (151, 15100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 132),
  -- Mew - Endeavor - Tutor
  (151, 15100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 133),
  -- Mew - Dive - Tutor
  (151, 15100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 134),
  -- Mew - Air Cutter - Tutor
  (151, 15100, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 135),
  -- Mew - Signal Beam - Tutor
  (151, 15100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 136),
  -- Mew - Iron Defense - Tutor
  (151, 15100, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 137),
  -- Mew - Bounce - Tutor
  (151, 15100, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 138),
  -- Mew - Gastro Acid - Tutor
  (151, 15100, 380, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 139),
  -- Mew - Last Resort - Tutor
  (151, 15100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 140),
  -- Mew - Sucker Punch - Tutor
  (151, 15100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 141),
  -- Mew - Magnet Rise - Tutor
  (151, 15100, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 142),
  -- Mew - Aqua Tail - Tutor
  (151, 15100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 143),
  -- Mew - Seed Bomb - Tutor
  (151, 15100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 144),
  -- Mew - Vacuum Wave - Tutor
  (151, 15100, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 145),
  -- Mew - Earth Power - Tutor
  (151, 15100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 146),
  -- Mew - Zen Headbutt - Tutor
  (151, 15100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 147),
  -- Mew - Gunk Shot - Tutor
  (151, 15100, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 148),
  -- Mew - Iron Head - Tutor
  (151, 15100, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 149),
  -- Mew - Ominous Wind - Tutor
  (151, 15100, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 150);
