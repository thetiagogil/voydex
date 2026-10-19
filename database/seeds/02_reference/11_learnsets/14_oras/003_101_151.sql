-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB Omega Ruby / Alpha Sapphire learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire learnsets for default forms, species 101-151.
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Spark - Level 1
  (101, 10100, 209, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Charge - Level 1
  (101, 10100, 268, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Magnetic Flux - Level 1
  (101, 10100, 602, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 4
  (101, 10100, 49, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Electrode - Eerie Impulse - Level 6
  (101, 10100, 598, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Electrode - Spark - Level 9
  (101, 10100, 209, 14, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Electrode - Rollout - Level 11
  (101, 10100, 205, 14, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Electrode - Screech - Level 13
  (101, 10100, 103, 14, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Electrode - Charge Beam - Level 16
  (101, 10100, 451, 14, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Electrode - Swift - Level 20
  (101, 10100, 129, 14, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Electrode - Electro Ball - Level 22
  (101, 10100, 486, 14, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Electrode - Self-Destruct - Level 26
  (101, 10100, 120, 14, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Electrode - Light Screen - Level 29
  (101, 10100, 113, 14, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Electrode - Magnet Rise - Level 36
  (101, 10100, 393, 14, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Electrode - Discharge - Level 41
  (101, 10100, 435, 14, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Electrode - Explosion - Level 47
  (101, 10100, 153, 14, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Electrode - Gyro Ball - Level 54
  (101, 10100, 360, 14, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Electrode - Mirror Coat - Level 58
  (101, 10100, 243, 14, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Electrode - Hidden Power - TM10
  (101, 10100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Electrode - Taunt - TM12
  (101, 10100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 23),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Electrode - Light Screen - TM16
  (101, 10100, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Electrode - Frustration - TM21
  (101, 10100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Electrode - Return - TM27
  (101, 10100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Electrode - Torment - TM41
  (101, 10100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 33),
  -- Electrode - Facade - TM42
  (101, 10100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Electrode - Thief - TM46
  (101, 10100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Electrode - Round - TM48
  (101, 10100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Electrode - Charge Beam - TM57
  (101, 10100, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 38),
  -- Electrode - Explosion - TM64
  (101, 10100, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 39),
  -- Electrode - Giga Impact - TM68
  (101, 10100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Electrode - Flash - TM70
  (101, 10100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 41),
  -- Electrode - Volt Switch - TM72
  (101, 10100, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 42),
  -- Electrode - Thunder Wave - TM73
  (101, 10100, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 43),
  -- Electrode - Gyro Ball - TM74
  (101, 10100, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 44),
  -- Electrode - Swagger - TM87
  (101, 10100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Electrode - Sleep Talk - TM88
  (101, 10100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Electrode - Substitute - TM90
  (101, 10100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Electrode - Wild Charge - TM93
  (101, 10100, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 48),
  -- Electrode - Secret Power - TM94
  (101, 10100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Electrode - Confide - TM100
  (101, 10100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Electrode - Snore - Tutor
  (101, 10100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Electrode - Magic Coat - Tutor
  (101, 10100, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Electrode - Signal Beam - Tutor
  (101, 10100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Electrode - Shock Wave - Tutor
  (101, 10100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Electrode - Magnet Rise - Tutor
  (101, 10100, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Electrode - Foul Play - Tutor
  (101, 10100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Uproar - Level 1
  (102, 10200, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggcute - Reflect - Level 7
  (102, 10200, 115, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Exeggcute - Leech Seed - Level 11
  (102, 10200, 73, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Exeggcute - Bullet Seed - Level 17
  (102, 10200, 331, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggcute - Stun Spore - Level 19
  (102, 10200, 78, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Exeggcute - Poison Powder - Level 21
  (102, 10200, 77, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Exeggcute - Sleep Powder - Level 23
  (102, 10200, 79, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Exeggcute - Confusion - Level 27
  (102, 10200, 93, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Exeggcute - Worry Seed - Level 33
  (102, 10200, 388, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Exeggcute - Natural Gift - Level 37
  (102, 10200, 363, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 43
  (102, 10200, 76, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Exeggcute - Extrasensory - Level 47
  (102, 10200, 326, 14, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Exeggcute - Bestow - Level 50
  (102, 10200, 516, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Exeggcute - Hidden Power - TM10
  (102, 10200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Exeggcute - Light Screen - TM16
  (102, 10200, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Exeggcute - Frustration - TM21
  (102, 10200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 22),
  -- Exeggcute - Return - TM27
  (102, 10200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 24),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 26),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 27),
  -- Exeggcute - Facade - TM42
  (102, 10200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 31),
  -- Exeggcute - Round - TM48
  (102, 10200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Exeggcute - Energy Ball - TM53
  (102, 10200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 33),
  -- Exeggcute - Explosion - TM64
  (102, 10200, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 34),
  -- Exeggcute - Flash - TM70
  (102, 10200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 35),
  -- Exeggcute - Swords Dance - TM75
  (102, 10200, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 36),
  -- Exeggcute - Psych Up - TM77
  (102, 10200, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 37),
  -- Exeggcute - Infestation - TM83
  (102, 10200, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 38),
  -- Exeggcute - Dream Eater - TM85
  (102, 10200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 39),
  -- Exeggcute - Grass Knot - TM86
  (102, 10200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 40),
  -- Exeggcute - Swagger - TM87
  (102, 10200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Exeggcute - Sleep Talk - TM88
  (102, 10200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Exeggcute - Substitute - TM90
  (102, 10200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Exeggcute - Trick Room - TM92
  (102, 10200, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 44),
  -- Exeggcute - Secret Power - TM94
  (102, 10200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Exeggcute - Nature Power - TM96
  (102, 10200, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 46),
  -- Exeggcute - Confide - TM100
  (102, 10200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Exeggcute - Strength - HM04
  (102, 10200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 48),
  -- Exeggcute - Curse - Egg
  (102, 10200, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Exeggcute - Giga Drain - Egg
  (102, 10200, 202, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggcute - Synthesis - Egg
  (102, 10200, 235, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Exeggcute - Moonlight - Egg
  (102, 10200, 236, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Exeggcute - Ancient Power - Egg
  (102, 10200, 246, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Exeggcute - Nature Power - Egg
  (102, 10200, 267, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggcute - Ingrain - Egg
  (102, 10200, 275, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Exeggcute - Skill Swap - Egg
  (102, 10200, 285, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Exeggcute - Block - Egg
  (102, 10200, 335, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Exeggcute - Natural Gift - Egg
  (102, 10200, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Exeggcute - Lucky Chant - Egg
  (102, 10200, 381, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Exeggcute - Power Swap - Egg
  (102, 10200, 384, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Exeggcute - Leaf Storm - Egg
  (102, 10200, 437, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Exeggcute - Grassy Terrain - Egg
  (102, 10200, 580, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Exeggcute - Snore - Tutor
  (102, 10200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Exeggcute - Giga Drain - Tutor
  (102, 10200, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Exeggcute - Synthesis - Tutor
  (102, 10200, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Exeggcute - Uproar - Tutor
  (102, 10200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Exeggcute - Skill Swap - Tutor
  (102, 10200, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Exeggcute - Block - Tutor
  (102, 10200, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Exeggcute - Gravity - Tutor
  (102, 10200, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Exeggcute - Worry Seed - Tutor
  (102, 10200, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Exeggcute - Seed Bomb - Tutor
  (102, 10200, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Exeggutor - Stomp - Level 1
  (103, 10300, 23, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Seed Bomb - Level 1
  (103, 10300, 402, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Psyshock - Level 17
  (103, 10300, 473, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggutor - Egg Bomb - Level 27
  (103, 10300, 121, 14, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Exeggutor - Wood Hammer - Level 37
  (103, 10300, 452, 14, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Exeggutor - Leaf Storm - Level 47
  (103, 10300, 437, 14, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Exeggutor - Psyshock - TM03
  (103, 10300, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 10),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 11),
  -- Exeggutor - Hidden Power - TM10
  (103, 10300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 12),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 13),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 14),
  -- Exeggutor - Light Screen - TM16
  (103, 10300, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 15),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 16),
  -- Exeggutor - Frustration - TM21
  (103, 10300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 17),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 18),
  -- Exeggutor - Return - TM27
  (103, 10300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 19),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 20),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 21),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 22),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 23),
  -- Exeggutor - Facade - TM42
  (103, 10300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 24),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 25),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 26),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 27),
  -- Exeggutor - Round - TM48
  (103, 10300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Exeggutor - Energy Ball - TM53
  (103, 10300, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 29),
  -- Exeggutor - Explosion - TM64
  (103, 10300, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 30),
  -- Exeggutor - Giga Impact - TM68
  (103, 10300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 31),
  -- Exeggutor - Flash - TM70
  (103, 10300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 32),
  -- Exeggutor - Swords Dance - TM75
  (103, 10300, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 33),
  -- Exeggutor - Psych Up - TM77
  (103, 10300, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 34),
  -- Exeggutor - Infestation - TM83
  (103, 10300, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 35),
  -- Exeggutor - Dream Eater - TM85
  (103, 10300, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 36),
  -- Exeggutor - Grass Knot - TM86
  (103, 10300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 37),
  -- Exeggutor - Swagger - TM87
  (103, 10300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 38),
  -- Exeggutor - Sleep Talk - TM88
  (103, 10300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 39),
  -- Exeggutor - Substitute - TM90
  (103, 10300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Exeggutor - Trick Room - TM92
  (103, 10300, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 41),
  -- Exeggutor - Secret Power - TM94
  (103, 10300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 42),
  -- Exeggutor - Nature Power - TM96
  (103, 10300, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 43),
  -- Exeggutor - Confide - TM100
  (103, 10300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 45),
  -- Exeggutor - Low Kick - Tutor
  (103, 10300, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Exeggutor - Snore - Tutor
  (103, 10300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Exeggutor - Giga Drain - Tutor
  (103, 10300, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Exeggutor - Synthesis - Tutor
  (103, 10300, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Exeggutor - Skill Swap - Tutor
  (103, 10300, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Exeggutor - Block - Tutor
  (103, 10300, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Exeggutor - Gravity - Tutor
  (103, 10300, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Exeggutor - Worry Seed - Tutor
  (103, 10300, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Exeggutor - Seed Bomb - Tutor
  (103, 10300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Exeggutor - Zen Headbutt - Tutor
  (103, 10300, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 3
  (104, 10400, 39, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Cubone - Bone Club - Level 7
  (104, 10400, 125, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cubone - Headbutt - Level 11
  (104, 10400, 29, 14, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Cubone - Leer - Level 13
  (104, 10400, 43, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cubone - Focus Energy - Level 17
  (104, 10400, 116, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cubone - Bonemerang - Level 21
  (104, 10400, 155, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cubone - Rage - Level 23
  (104, 10400, 99, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Cubone - False Swipe - Level 27
  (104, 10400, 206, 14, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Cubone - Thrash - Level 31
  (104, 10400, 37, 14, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Cubone - Fling - Level 33
  (104, 10400, 374, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Cubone - Bone Rush - Level 37
  (104, 10400, 198, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Cubone - Endeavor - Level 41
  (104, 10400, 283, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Cubone - Double-Edge - Level 43
  (104, 10400, 38, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Cubone - Retaliate - Level 47
  (104, 10400, 514, 14, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Cubone - Hidden Power - TM10
  (104, 10400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 20),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Cubone - Frustration - TM21
  (104, 10400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Cubone - Smack Down - TM23
  (104, 10400, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 23),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 24),
  -- Cubone - Return - TM27
  (104, 10400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 26),
  -- Cubone - Brick Break - TM31
  (104, 10400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 27),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Cubone - Flamethrower - TM35
  (104, 10400, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 29),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 30),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 31),
  -- Cubone - Rock Tomb - TM39
  (104, 10400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 32),
  -- Cubone - Aerial Ace - TM40
  (104, 10400, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 33),
  -- Cubone - Facade - TM42
  (104, 10400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 36),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 37),
  -- Cubone - Round - TM48
  (104, 10400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 38),
  -- Cubone - Echoed Voice - TM49
  (104, 10400, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 39),
  -- Cubone - False Swipe - TM54
  (104, 10400, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 40),
  -- Cubone - Fling - TM56
  (104, 10400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 41),
  -- Cubone - Incinerate - TM59
  (104, 10400, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 42),
  -- Cubone - Retaliate - TM67
  (104, 10400, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 43),
  -- Cubone - Swords Dance - TM75
  (104, 10400, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 44),
  -- Cubone - Bulldoze - TM78
  (104, 10400, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 45),
  -- Cubone - Rock Slide - TM80
  (104, 10400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 46),
  -- Cubone - Swagger - TM87
  (104, 10400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Cubone - Sleep Talk - TM88
  (104, 10400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Cubone - Substitute - TM90
  (104, 10400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Cubone - Secret Power - TM94
  (104, 10400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Cubone - Power-Up Punch - TM98
  (104, 10400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 51),
  -- Cubone - Confide - TM100
  (104, 10400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 52),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 53),
  -- Cubone - Rock Smash - HM06
  (104, 10400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 54),
  -- Cubone - Double Kick - Egg
  (104, 10400, 24, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cubone - Screech - Egg
  (104, 10400, 103, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cubone - Skull Bash - Egg
  (104, 10400, 130, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cubone - Belly Drum - Egg
  (104, 10400, 187, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cubone - Perish Song - Egg
  (104, 10400, 195, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cubone - Detect - Egg
  (104, 10400, 197, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cubone - Endure - Egg
  (104, 10400, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cubone - Ancient Power - Egg
  (104, 10400, 246, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cubone - Iron Head - Egg
  (104, 10400, 442, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cubone - Chip Away - Egg
  (104, 10400, 498, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Cubone - Fire Punch - Tutor
  (104, 10400, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Cubone - Thunder Punch - Tutor
  (104, 10400, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Cubone - Low Kick - Tutor
  (104, 10400, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Cubone - Snore - Tutor
  (104, 10400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Cubone - Icy Wind - Tutor
  (104, 10400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Cubone - Iron Tail - Tutor
  (104, 10400, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Cubone - Uproar - Tutor
  (104, 10400, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Cubone - Focus Punch - Tutor
  (104, 10400, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Cubone - Knock Off - Tutor
  (104, 10400, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Cubone - Endeavor - Tutor
  (104, 10400, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Cubone - Iron Defense - Tutor
  (104, 10400, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Cubone - Earth Power - Tutor
  (104, 10400, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Cubone - Iron Head - Tutor
  (104, 10400, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Cubone - Stealth Rock - Tutor
  (104, 10400, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Marowak - Headbutt - Level 1
  (105, 10500, 29, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 3
  (105, 10500, 39, 14, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Marowak - Bone Club - Level 7
  (105, 10500, 125, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Marowak - Headbutt - Level 11
  (105, 10500, 29, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 13
  (105, 10500, 43, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 17
  (105, 10500, 116, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Marowak - Bonemerang - Level 21
  (105, 10500, 155, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Marowak - Rage - Level 23
  (105, 10500, 99, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Marowak - False Swipe - Level 27
  (105, 10500, 206, 14, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 33
  (105, 10500, 37, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Marowak - Fling - Level 37
  (105, 10500, 374, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Marowak - Bone Rush - Level 43
  (105, 10500, 198, 14, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Marowak - Endeavor - Level 49
  (105, 10500, 283, 14, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Marowak - Double-Edge - Level 53
  (105, 10500, 38, 14, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Marowak - Retaliate - Level 59
  (105, 10500, 514, 14, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Marowak - Hidden Power - TM10
  (105, 10500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 23),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Marowak - Frustration - TM21
  (105, 10500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Marowak - Smack Down - TM23
  (105, 10500, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 27),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 28),
  -- Marowak - Return - TM27
  (105, 10500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 30),
  -- Marowak - Brick Break - TM31
  (105, 10500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 31),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Marowak - Flamethrower - TM35
  (105, 10500, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 33),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 34),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 35),
  -- Marowak - Rock Tomb - TM39
  (105, 10500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 36),
  -- Marowak - Aerial Ace - TM40
  (105, 10500, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 37),
  -- Marowak - Facade - TM42
  (105, 10500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Marowak - Round - TM48
  (105, 10500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Marowak - Echoed Voice - TM49
  (105, 10500, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 43),
  -- Marowak - Focus Blast - TM52
  (105, 10500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Marowak - False Swipe - TM54
  (105, 10500, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 45),
  -- Marowak - Fling - TM56
  (105, 10500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 46),
  -- Marowak - Incinerate - TM59
  (105, 10500, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 47),
  -- Marowak - Retaliate - TM67
  (105, 10500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 48),
  -- Marowak - Giga Impact - TM68
  (105, 10500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 49),
  -- Marowak - Stone Edge - TM71
  (105, 10500, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 50),
  -- Marowak - Swords Dance - TM75
  (105, 10500, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 51),
  -- Marowak - Bulldoze - TM78
  (105, 10500, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 52),
  -- Marowak - Rock Slide - TM80
  (105, 10500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 53),
  -- Marowak - Swagger - TM87
  (105, 10500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 54),
  -- Marowak - Sleep Talk - TM88
  (105, 10500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 55),
  -- Marowak - Substitute - TM90
  (105, 10500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 56),
  -- Marowak - Secret Power - TM94
  (105, 10500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 57),
  -- Marowak - Power-Up Punch - TM98
  (105, 10500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 58),
  -- Marowak - Confide - TM100
  (105, 10500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 60),
  -- Marowak - Rock Smash - HM06
  (105, 10500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 61),
  -- Marowak - Fire Punch - Tutor
  (105, 10500, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Marowak - Thunder Punch - Tutor
  (105, 10500, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Marowak - Low Kick - Tutor
  (105, 10500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Marowak - Snore - Tutor
  (105, 10500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Marowak - Icy Wind - Tutor
  (105, 10500, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Marowak - Outrage - Tutor
  (105, 10500, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Marowak - Iron Tail - Tutor
  (105, 10500, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Marowak - Uproar - Tutor
  (105, 10500, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Marowak - Focus Punch - Tutor
  (105, 10500, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Marowak - Knock Off - Tutor
  (105, 10500, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Marowak - Endeavor - Tutor
  (105, 10500, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Marowak - Iron Defense - Tutor
  (105, 10500, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Marowak - Earth Power - Tutor
  (105, 10500, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Marowak - Iron Head - Tutor
  (105, 10500, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Marowak - Stealth Rock - Tutor
  (105, 10500, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Mega Kick - Level 1
  (106, 10600, 25, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Reversal - Level 1
  (106, 10600, 179, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonlee - Revenge - Level 1
  (106, 10600, 279, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonlee - Close Combat - Level 1
  (106, 10600, 370, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonlee - Meditate - Level 5
  (106, 10600, 96, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Hitmonlee - Rolling Kick - Level 9
  (106, 10600, 27, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Hitmonlee - Jump Kick - Level 13
  (106, 10600, 26, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Hitmonlee - Brick Break - Level 17
  (106, 10600, 280, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Hitmonlee - Focus Energy - Level 21
  (106, 10600, 116, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Hitmonlee - Feint - Level 25
  (106, 10600, 364, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Hitmonlee - High Jump Kick - Level 29
  (106, 10600, 136, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Hitmonlee - Mind Reader - Level 33
  (106, 10600, 170, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Hitmonlee - Foresight - Level 37
  (106, 10600, 193, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Hitmonlee - Wide Guard - Level 41
  (106, 10600, 469, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Hitmonlee - Blaze Kick - Level 45
  (106, 10600, 299, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Hitmonlee - Endure - Level 49
  (106, 10600, 203, 14, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Hitmonlee - Mega Kick - Level 53
  (106, 10600, 25, 14, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Hitmonlee - Close Combat - Level 57
  (106, 10600, 370, 14, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Hitmonlee - Reversal - Level 61
  (106, 10600, 179, 14, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Hitmonlee - Bulk Up - TM08
  (106, 10600, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 22),
  -- Hitmonlee - Hidden Power - TM10
  (106, 10600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Hitmonlee - Rain Dance - TM18
  (106, 10600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Hitmonlee - Frustration - TM21
  (106, 10600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Hitmonlee - Earthquake - TM26
  (106, 10600, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 28),
  -- Hitmonlee - Return - TM27
  (106, 10600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Hitmonlee - Brick Break - TM31
  (106, 10600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 30),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Hitmonlee - Rock Tomb - TM39
  (106, 10600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 32),
  -- Hitmonlee - Facade - TM42
  (106, 10600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Hitmonlee - Low Sweep - TM47
  (106, 10600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 37),
  -- Hitmonlee - Round - TM48
  (106, 10600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 38),
  -- Hitmonlee - Focus Blast - TM52
  (106, 10600, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 39),
  -- Hitmonlee - Fling - TM56
  (106, 10600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 40),
  -- Hitmonlee - Retaliate - TM67
  (106, 10600, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 41),
  -- Hitmonlee - Stone Edge - TM71
  (106, 10600, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 42),
  -- Hitmonlee - Bulldoze - TM78
  (106, 10600, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 43),
  -- Hitmonlee - Rock Slide - TM80
  (106, 10600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Hitmonlee - Poison Jab - TM84
  (106, 10600, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 45),
  -- Hitmonlee - Swagger - TM87
  (106, 10600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Hitmonlee - Sleep Talk - TM88
  (106, 10600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Hitmonlee - Substitute - TM90
  (106, 10600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Hitmonlee - Secret Power - TM94
  (106, 10600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Hitmonlee - Power-Up Punch - TM98
  (106, 10600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 50),
  -- Hitmonlee - Confide - TM100
  (106, 10600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Hitmonlee - Rock Smash - HM06
  (106, 10600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Hitmonlee - Counter - Egg
  (106, 10600, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmonlee - High Jump Kick - Egg
  (106, 10600, 136, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmonlee - Mind Reader - Egg
  (106, 10600, 170, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmonlee - Mach Punch - Egg
  (106, 10600, 183, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hitmonlee - Endure - Egg
  (106, 10600, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hitmonlee - Pursuit - Egg
  (106, 10600, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hitmonlee - Rapid Spin - Egg
  (106, 10600, 229, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hitmonlee - Helping Hand - Egg
  (106, 10600, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hitmonlee - Feint - Egg
  (106, 10600, 364, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Hitmonlee - Vacuum Wave - Egg
  (106, 10600, 410, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Hitmonlee - Bullet Punch - Egg
  (106, 10600, 418, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hitmonlee - Low Kick - Tutor
  (106, 10600, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Hitmonlee - Snore - Tutor
  (106, 10600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Hitmonlee - Focus Punch - Tutor
  (106, 10600, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Hitmonlee - Helping Hand - Tutor
  (106, 10600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Hitmonlee - Role Play - Tutor
  (106, 10600, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Hitmonlee - Superpower - Tutor
  (106, 10600, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Hitmonlee - Knock Off - Tutor
  (106, 10600, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Hitmonlee - Bounce - Tutor
  (106, 10600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Hitmonlee - Covet - Tutor
  (106, 10600, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Counter - Level 1
  (107, 10700, 68, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Focus Punch - Level 1
  (107, 10700, 264, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonchan - Revenge - Level 1
  (107, 10700, 279, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonchan - Close Combat - Level 1
  (107, 10700, 370, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonchan - Agility - Level 6
  (107, 10700, 97, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Hitmonchan - Pursuit - Level 11
  (107, 10700, 228, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Hitmonchan - Mach Punch - Level 16
  (107, 10700, 183, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hitmonchan - Bullet Punch - Level 16
  (107, 10700, 418, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hitmonchan - Feint - Level 21
  (107, 10700, 364, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Hitmonchan - Vacuum Wave - Level 26
  (107, 10700, 410, 14, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Hitmonchan - Quick Guard - Level 31
  (107, 10700, 501, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Hitmonchan - Fire Punch - Level 36
  (107, 10700, 7, 14, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Hitmonchan - Ice Punch - Level 36
  (107, 10700, 8, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Hitmonchan - Thunder Punch - Level 36
  (107, 10700, 9, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Hitmonchan - Sky Uppercut - Level 41
  (107, 10700, 327, 14, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Hitmonchan - Mega Punch - Level 46
  (107, 10700, 5, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Hitmonchan - Detect - Level 50
  (107, 10700, 197, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Hitmonchan - Focus Punch - Level 56
  (107, 10700, 264, 14, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Hitmonchan - Counter - Level 61
  (107, 10700, 68, 14, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Hitmonchan - Close Combat - Level 66
  (107, 10700, 370, 14, NULL, 1, 66, NULL, NULL, NULL, 21),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Hitmonchan - Bulk Up - TM08
  (107, 10700, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Hitmonchan - Hidden Power - TM10
  (107, 10700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Hitmonchan - Rain Dance - TM18
  (107, 10700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Hitmonchan - Frustration - TM21
  (107, 10700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Hitmonchan - Earthquake - TM26
  (107, 10700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 29),
  -- Hitmonchan - Return - TM27
  (107, 10700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Hitmonchan - Brick Break - TM31
  (107, 10700, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 31),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Hitmonchan - Rock Tomb - TM39
  (107, 10700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 33),
  -- Hitmonchan - Facade - TM42
  (107, 10700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 36),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 37),
  -- Hitmonchan - Low Sweep - TM47
  (107, 10700, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 38),
  -- Hitmonchan - Round - TM48
  (107, 10700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Hitmonchan - Focus Blast - TM52
  (107, 10700, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 40),
  -- Hitmonchan - Fling - TM56
  (107, 10700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 41),
  -- Hitmonchan - Retaliate - TM67
  (107, 10700, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 42),
  -- Hitmonchan - Stone Edge - TM71
  (107, 10700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 43),
  -- Hitmonchan - Bulldoze - TM78
  (107, 10700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 44),
  -- Hitmonchan - Rock Slide - TM80
  (107, 10700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 45),
  -- Hitmonchan - Swagger - TM87
  (107, 10700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Hitmonchan - Sleep Talk - TM88
  (107, 10700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Hitmonchan - Substitute - TM90
  (107, 10700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Hitmonchan - Secret Power - TM94
  (107, 10700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Hitmonchan - Power-Up Punch - TM98
  (107, 10700, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 50),
  -- Hitmonchan - Confide - TM100
  (107, 10700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Hitmonchan - Rock Smash - HM06
  (107, 10700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Hitmonchan - Fire Punch - Tutor
  (107, 10700, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Hitmonchan - Ice Punch - Tutor
  (107, 10700, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Hitmonchan - Thunder Punch - Tutor
  (107, 10700, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Hitmonchan - Low Kick - Tutor
  (107, 10700, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Hitmonchan - Snore - Tutor
  (107, 10700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Hitmonchan - Focus Punch - Tutor
  (107, 10700, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Hitmonchan - Helping Hand - Tutor
  (107, 10700, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Hitmonchan - Role Play - Tutor
  (107, 10700, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Hitmonchan - Covet - Tutor
  (107, 10700, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Hitmonchan - Drain Punch - Tutor
  (107, 10700, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 5
  (108, 10800, 48, 14, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickitung - Defense Curl - Level 9
  (108, 10800, 111, 14, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickitung - Knock Off - Level 13
  (108, 10800, 282, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 17
  (108, 10800, 35, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickitung - Stomp - Level 21
  (108, 10800, 23, 14, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickitung - Disable - Level 25
  (108, 10800, 50, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickitung - Slam - Level 29
  (108, 10800, 21, 14, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickitung - Rollout - Level 33
  (108, 10800, 205, 14, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickitung - Chip Away - Level 37
  (108, 10800, 498, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickitung - Me First - Level 41
  (108, 10800, 382, 14, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickitung - Refresh - Level 45
  (108, 10800, 287, 14, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickitung - Screech - Level 49
  (108, 10800, 103, 14, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickitung - Power Whip - Level 53
  (108, 10800, 438, 14, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickitung - Wring Out - Level 57
  (108, 10800, 378, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Lickitung - Hidden Power - TM10
  (108, 10800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 20),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Lickitung - Frustration - TM21
  (108, 10800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Lickitung - Solar Beam - TM22
  (108, 10800, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 25),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 26),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 27),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 28),
  -- Lickitung - Return - TM27
  (108, 10800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Lickitung - Dig - TM28
  (108, 10800, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 30),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 31),
  -- Lickitung - Brick Break - TM31
  (108, 10800, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 32),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Lickitung - Flamethrower - TM35
  (108, 10800, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 34),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 35),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 36),
  -- Lickitung - Rock Tomb - TM39
  (108, 10800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Lickitung - Facade - TM42
  (108, 10800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Lickitung - Round - TM48
  (108, 10800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Lickitung - Fling - TM56
  (108, 10800, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 43),
  -- Lickitung - Incinerate - TM59
  (108, 10800, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 44),
  -- Lickitung - Retaliate - TM67
  (108, 10800, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 45),
  -- Lickitung - Giga Impact - TM68
  (108, 10800, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 46),
  -- Lickitung - Swords Dance - TM75
  (108, 10800, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 47),
  -- Lickitung - Psych Up - TM77
  (108, 10800, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 48),
  -- Lickitung - Bulldoze - TM78
  (108, 10800, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 49),
  -- Lickitung - Rock Slide - TM80
  (108, 10800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 50),
  -- Lickitung - Dragon Tail - TM82
  (108, 10800, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 51),
  -- Lickitung - Dream Eater - TM85
  (108, 10800, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 52),
  -- Lickitung - Swagger - TM87
  (108, 10800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 53),
  -- Lickitung - Sleep Talk - TM88
  (108, 10800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 54),
  -- Lickitung - Substitute - TM90
  (108, 10800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 55),
  -- Lickitung - Secret Power - TM94
  (108, 10800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 56),
  -- Lickitung - Power-Up Punch - TM98
  (108, 10800, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 57),
  -- Lickitung - Confide - TM100
  (108, 10800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 58),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 59),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 60),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 61),
  -- Lickitung - Rock Smash - HM06
  (108, 10800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 62),
  -- Lickitung - Body Slam - Egg
  (108, 10800, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lickitung - Amnesia - Egg
  (108, 10800, 133, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lickitung - Snore - Egg
  (108, 10800, 173, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lickitung - Curse - Egg
  (108, 10800, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lickitung - Belly Drum - Egg
  (108, 10800, 187, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lickitung - Sleep Talk - Egg
  (108, 10800, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lickitung - Magnitude - Egg
  (108, 10800, 222, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lickitung - Smelling Salts - Egg
  (108, 10800, 265, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lickitung - Muddy Water - Egg
  (108, 10800, 330, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Lickitung - Hammer Arm - Egg
  (108, 10800, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Lickitung - Zen Headbutt - Egg
  (108, 10800, 428, 14, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Lickitung - Belch - Egg
  (108, 10800, 562, 14, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Lickitung - Fire Punch - Tutor
  (108, 10800, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Lickitung - Ice Punch - Tutor
  (108, 10800, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Lickitung - Thunder Punch - Tutor
  (108, 10800, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Lickitung - Bind - Tutor
  (108, 10800, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Lickitung - Snore - Tutor
  (108, 10800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Lickitung - Icy Wind - Tutor
  (108, 10800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Lickitung - Iron Tail - Tutor
  (108, 10800, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Lickitung - Focus Punch - Tutor
  (108, 10800, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Lickitung - Knock Off - Tutor
  (108, 10800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Lickitung - Shock Wave - Tutor
  (108, 10800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Lickitung - Water Pulse - Tutor
  (108, 10800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Lickitung - Aqua Tail - Tutor
  (108, 10800, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Lickitung - Zen Headbutt - Tutor
  (108, 10800, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 4
  (109, 10900, 123, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 7
  (109, 10900, 108, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Koffing - Assurance - Level 12
  (109, 10900, 372, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Koffing - Clear Smog - Level 15
  (109, 10900, 499, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 18
  (109, 10900, 124, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Koffing - Self-Destruct - Level 23
  (109, 10900, 120, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Koffing - Haze - Level 26
  (109, 10900, 114, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Koffing - Gyro Ball - Level 29
  (109, 10900, 360, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Koffing - Sludge Bomb - Level 34
  (109, 10900, 188, 14, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Koffing - Explosion - Level 37
  (109, 10900, 153, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Koffing - Destiny Bond - Level 40
  (109, 10900, 194, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Koffing - Belch - Level 42
  (109, 10900, 562, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Koffing - Memento - Level 45
  (109, 10900, 262, 14, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Koffing - Venoshock - TM09
  (109, 10900, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 17),
  -- Koffing - Hidden Power - TM10
  (109, 10900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Koffing - Taunt - TM12
  (109, 10900, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 20),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Koffing - Rain Dance - TM18
  (109, 10900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Koffing - Frustration - TM21
  (109, 10900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Koffing - Return - TM27
  (109, 10900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Koffing - Shadow Ball - TM30
  (109, 10900, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Koffing - Flamethrower - TM35
  (109, 10900, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 29),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 30),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 31),
  -- Koffing - Torment - TM41
  (109, 10900, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 32),
  -- Koffing - Facade - TM42
  (109, 10900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Koffing - Round - TM48
  (109, 10900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Koffing - Incinerate - TM59
  (109, 10900, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Koffing - Will-O-Wisp - TM61
  (109, 10900, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 39),
  -- Koffing - Explosion - TM64
  (109, 10900, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 40),
  -- Koffing - Payback - TM66
  (109, 10900, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 41),
  -- Koffing - Flash - TM70
  (109, 10900, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 42),
  -- Koffing - Gyro Ball - TM74
  (109, 10900, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 43),
  -- Koffing - Infestation - TM83
  (109, 10900, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 44),
  -- Koffing - Swagger - TM87
  (109, 10900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Koffing - Sleep Talk - TM88
  (109, 10900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Koffing - Substitute - TM90
  (109, 10900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Koffing - Secret Power - TM94
  (109, 10900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Koffing - Dark Pulse - TM97
  (109, 10900, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 49),
  -- Koffing - Confide - TM100
  (109, 10900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Koffing - Psybeam - Egg
  (109, 10900, 60, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Screech - Egg
  (109, 10900, 103, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Koffing - Psywave - Egg
  (109, 10900, 149, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Curse - Egg
  (109, 10900, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Koffing - Spite - Egg
  (109, 10900, 180, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Koffing - Destiny Bond - Egg
  (109, 10900, 194, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Koffing - Pain Split - Egg
  (109, 10900, 220, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Koffing - Stockpile - Egg
  (109, 10900, 254, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Koffing - Spit Up - Egg
  (109, 10900, 255, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Koffing - Swallow - Egg
  (109, 10900, 256, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Koffing - Grudge - Egg
  (109, 10900, 288, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Koffing - Toxic Spikes - Egg
  (109, 10900, 390, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Koffing - Snore - Tutor
  (109, 10900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Koffing - Spite - Tutor
  (109, 10900, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Koffing - Pain Split - Tutor
  (109, 10900, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Koffing - Uproar - Tutor
  (109, 10900, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Koffing - Shock Wave - Tutor
  (109, 10900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Smokescreen - Level 1
  (110, 11000, 108, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 4
  (110, 11000, 123, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Weezing - Smokescreen - Level 7
  (110, 11000, 108, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Weezing - Assurance - Level 12
  (110, 11000, 372, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Weezing - Clear Smog - Level 15
  (110, 11000, 499, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Weezing - Sludge - Level 18
  (110, 11000, 124, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Weezing - Self-Destruct - Level 23
  (110, 11000, 120, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Weezing - Haze - Level 26
  (110, 11000, 114, 14, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Weezing - Double Hit - Level 29
  (110, 11000, 458, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Weezing - Sludge Bomb - Level 34
  (110, 11000, 188, 14, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Weezing - Explosion - Level 40
  (110, 11000, 153, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Weezing - Destiny Bond - Level 46
  (110, 11000, 194, 14, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Weezing - Belch - Level 51
  (110, 11000, 562, 14, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Weezing - Memento - Level 57
  (110, 11000, 262, 14, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Weezing - Venoshock - TM09
  (110, 11000, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 19),
  -- Weezing - Hidden Power - TM10
  (110, 11000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Weezing - Taunt - TM12
  (110, 11000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Weezing - Rain Dance - TM18
  (110, 11000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Weezing - Frustration - TM21
  (110, 11000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 27),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 28),
  -- Weezing - Return - TM27
  (110, 11000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Weezing - Shadow Ball - TM30
  (110, 11000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 30),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Weezing - Flamethrower - TM35
  (110, 11000, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 32),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 33),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 34),
  -- Weezing - Torment - TM41
  (110, 11000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 35),
  -- Weezing - Facade - TM42
  (110, 11000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Weezing - Round - TM48
  (110, 11000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Weezing - Incinerate - TM59
  (110, 11000, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 41),
  -- Weezing - Will-O-Wisp - TM61
  (110, 11000, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 42),
  -- Weezing - Explosion - TM64
  (110, 11000, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 43),
  -- Weezing - Payback - TM66
  (110, 11000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 44),
  -- Weezing - Giga Impact - TM68
  (110, 11000, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 45),
  -- Weezing - Flash - TM70
  (110, 11000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 46),
  -- Weezing - Gyro Ball - TM74
  (110, 11000, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 47),
  -- Weezing - Infestation - TM83
  (110, 11000, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 48),
  -- Weezing - Swagger - TM87
  (110, 11000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 49),
  -- Weezing - Sleep Talk - TM88
  (110, 11000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 50),
  -- Weezing - Substitute - TM90
  (110, 11000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 51),
  -- Weezing - Secret Power - TM94
  (110, 11000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Weezing - Dark Pulse - TM97
  (110, 11000, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 53),
  -- Weezing - Confide - TM100
  (110, 11000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Weezing - Snore - Tutor
  (110, 11000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Weezing - Spite - Tutor
  (110, 11000, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Weezing - Pain Split - Tutor
  (110, 11000, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Weezing - Uproar - Tutor
  (110, 11000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Weezing - Shock Wave - Tutor
  (110, 11000, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Fury Attack - Level 5
  (111, 11100, 31, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rhyhorn - Scary Face - Level 9
  (111, 11100, 184, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Rhyhorn - Smack Down - Level 13
  (111, 11100, 479, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Rhyhorn - Stomp - Level 17
  (111, 11100, 23, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Rhyhorn - Bulldoze - Level 21
  (111, 11100, 523, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Rhyhorn - Chip Away - Level 25
  (111, 11100, 498, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhyhorn - Rock Blast - Level 29
  (111, 11100, 350, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rhyhorn - Drill Run - Level 33
  (111, 11100, 529, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Rhyhorn - Take Down - Level 37
  (111, 11100, 36, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Rhyhorn - Stone Edge - Level 41
  (111, 11100, 444, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Rhyhorn - Earthquake - Level 45
  (111, 11100, 89, 14, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Rhyhorn - Megahorn - Level 49
  (111, 11100, 224, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Rhyhorn - Horn Drill - Level 53
  (111, 11100, 32, 14, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 16),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Rhyhorn - Hidden Power - TM10
  (111, 11100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Rhyhorn - Ice Beam - TM13
  (111, 11100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Rhyhorn - Rain Dance - TM18
  (111, 11100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Rhyhorn - Frustration - TM21
  (111, 11100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Rhyhorn - Smack Down - TM23
  (111, 11100, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 25),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 26),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 27),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 28),
  -- Rhyhorn - Return - TM27
  (111, 11100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 30),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Rhyhorn - Flamethrower - TM35
  (111, 11100, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 32),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 33),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 34),
  -- Rhyhorn - Rock Tomb - TM39
  (111, 11100, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 35),
  -- Rhyhorn - Facade - TM42
  (111, 11100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Rhyhorn - Thief - TM46
  (111, 11100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Rhyhorn - Round - TM48
  (111, 11100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Rhyhorn - Incinerate - TM59
  (111, 11100, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 41),
  -- Rhyhorn - Payback - TM66
  (111, 11100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 42),
  -- Rhyhorn - Rock Polish - TM69
  (111, 11100, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 43),
  -- Rhyhorn - Stone Edge - TM71
  (111, 11100, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 44),
  -- Rhyhorn - Swords Dance - TM75
  (111, 11100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 45),
  -- Rhyhorn - Bulldoze - TM78
  (111, 11100, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 46),
  -- Rhyhorn - Rock Slide - TM80
  (111, 11100, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 47),
  -- Rhyhorn - Poison Jab - TM84
  (111, 11100, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 48),
  -- Rhyhorn - Swagger - TM87
  (111, 11100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 49),
  -- Rhyhorn - Sleep Talk - TM88
  (111, 11100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 50),
  -- Rhyhorn - Substitute - TM90
  (111, 11100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 51),
  -- Rhyhorn - Secret Power - TM94
  (111, 11100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Rhyhorn - Confide - TM100
  (111, 11100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 54),
  -- Rhyhorn - Rock Smash - HM06
  (111, 11100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Rhyhorn - Counter - Egg
  (111, 11100, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rhyhorn - Skull Bash - Egg
  (111, 11100, 130, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Rhyhorn - Curse - Egg
  (111, 11100, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Rhyhorn - Reversal - Egg
  (111, 11100, 179, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Rhyhorn - Magnitude - Egg
  (111, 11100, 222, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Iron Tail - Egg
  (111, 11100, 231, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rhyhorn - Crunch - Egg
  (111, 11100, 242, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rhyhorn - Crush Claw - Egg
  (111, 11100, 306, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rhyhorn - Metal Burst - Egg
  (111, 11100, 368, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rhyhorn - Dragon Rush - Egg
  (111, 11100, 407, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhyhorn - Thunder Fang - Egg
  (111, 11100, 422, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rhyhorn - Ice Fang - Egg
  (111, 11100, 423, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rhyhorn - Fire Fang - Egg
  (111, 11100, 424, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rhyhorn - Rock Climb - Egg
  (111, 11100, 431, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rhyhorn - Guard Split - Egg
  (111, 11100, 470, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Rhyhorn - Rototiller - Egg
  (111, 11100, 563, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Rhyhorn - Snore - Tutor
  (111, 11100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Rhyhorn - Spite - Tutor
  (111, 11100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Rhyhorn - Icy Wind - Tutor
  (111, 11100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Rhyhorn - Iron Tail - Tutor
  (111, 11100, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Rhyhorn - Uproar - Tutor
  (111, 11100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Rhyhorn - Superpower - Tutor
  (111, 11100, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Rhyhorn - Endeavor - Tutor
  (111, 11100, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Rhyhorn - Shock Wave - Tutor
  (111, 11100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Rhyhorn - Aqua Tail - Tutor
  (111, 11100, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Rhyhorn - Dragon Pulse - Tutor
  (111, 11100, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Rhyhorn - Earth Power - Tutor
  (111, 11100, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Rhyhorn - Stealth Rock - Tutor
  (111, 11100, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Rhyhorn - Drill Run - Tutor
  (111, 11100, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Horn Drill - Level 1
  (112, 11200, 32, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Scary Face - Level 1
  (112, 11200, 184, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 5
  (112, 11200, 31, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 9
  (112, 11200, 184, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Rhydon - Smack Down - Level 13
  (112, 11200, 479, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Rhydon - Stomp - Level 17
  (112, 11200, 23, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Rhydon - Bulldoze - Level 21
  (112, 11200, 523, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Rhydon - Chip Away - Level 25
  (112, 11200, 498, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Rhydon - Rock Blast - Level 29
  (112, 11200, 350, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Rhydon - Drill Run - Level 33
  (112, 11200, 529, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Rhydon - Take Down - Level 37
  (112, 11200, 36, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Rhydon - Stone Edge - Level 41
  (112, 11200, 444, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Rhydon - Hammer Arm - Level 42
  (112, 11200, 359, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Rhydon - Earthquake - Level 48
  (112, 11200, 89, 14, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Rhydon - Megahorn - Level 55
  (112, 11200, 224, 14, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Rhydon - Horn Drill - Level 62
  (112, 11200, 32, 14, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 20),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Rhydon - Hidden Power - TM10
  (112, 11200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 24),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 25),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Rhydon - Rain Dance - TM18
  (112, 11200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Rhydon - Frustration - TM21
  (112, 11200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Rhydon - Smack Down - TM23
  (112, 11200, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 30),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 32),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 33),
  -- Rhydon - Return - TM27
  (112, 11200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 35),
  -- Rhydon - Brick Break - TM31
  (112, 11200, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 36),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Rhydon - Flamethrower - TM35
  (112, 11200, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 38),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 39),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 40),
  -- Rhydon - Rock Tomb - TM39
  (112, 11200, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 41),
  -- Rhydon - Facade - TM42
  (112, 11200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 42),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 43),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 44),
  -- Rhydon - Thief - TM46
  (112, 11200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 45),
  -- Rhydon - Round - TM48
  (112, 11200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 46),
  -- Rhydon - Focus Blast - TM52
  (112, 11200, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 47),
  -- Rhydon - Fling - TM56
  (112, 11200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 48),
  -- Rhydon - Incinerate - TM59
  (112, 11200, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 49),
  -- Rhydon - Shadow Claw - TM65
  (112, 11200, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 50),
  -- Rhydon - Payback - TM66
  (112, 11200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 51),
  -- Rhydon - Giga Impact - TM68
  (112, 11200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 52),
  -- Rhydon - Rock Polish - TM69
  (112, 11200, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 53),
  -- Rhydon - Stone Edge - TM71
  (112, 11200, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 54),
  -- Rhydon - Swords Dance - TM75
  (112, 11200, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 55),
  -- Rhydon - Bulldoze - TM78
  (112, 11200, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 56),
  -- Rhydon - Rock Slide - TM80
  (112, 11200, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 57),
  -- Rhydon - Dragon Tail - TM82
  (112, 11200, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 58),
  -- Rhydon - Poison Jab - TM84
  (112, 11200, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 59),
  -- Rhydon - Swagger - TM87
  (112, 11200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 60),
  -- Rhydon - Sleep Talk - TM88
  (112, 11200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 61),
  -- Rhydon - Substitute - TM90
  (112, 11200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 62),
  -- Rhydon - Secret Power - TM94
  (112, 11200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 63),
  -- Rhydon - Power-Up Punch - TM98
  (112, 11200, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 64),
  -- Rhydon - Confide - TM100
  (112, 11200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Rhydon - Cut - HM01
  (112, 11200, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 66),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 67),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 68),
  -- Rhydon - Rock Smash - HM06
  (112, 11200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 69),
  -- Rhydon - Fire Punch - Tutor
  (112, 11200, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Rhydon - Ice Punch - Tutor
  (112, 11200, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Rhydon - Thunder Punch - Tutor
  (112, 11200, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Rhydon - Snore - Tutor
  (112, 11200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Rhydon - Spite - Tutor
  (112, 11200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Rhydon - Icy Wind - Tutor
  (112, 11200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Rhydon - Outrage - Tutor
  (112, 11200, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Rhydon - Iron Tail - Tutor
  (112, 11200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Rhydon - Uproar - Tutor
  (112, 11200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Rhydon - Focus Punch - Tutor
  (112, 11200, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Rhydon - Superpower - Tutor
  (112, 11200, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Rhydon - Endeavor - Tutor
  (112, 11200, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Rhydon - Block - Tutor
  (112, 11200, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Rhydon - Shock Wave - Tutor
  (112, 11200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Rhydon - Aqua Tail - Tutor
  (112, 11200, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Rhydon - Dragon Pulse - Tutor
  (112, 11200, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Rhydon - Earth Power - Tutor
  (112, 11200, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Rhydon - Stealth Rock - Tutor
  (112, 11200, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Rhydon - Drill Run - Tutor
  (112, 11200, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Double-Edge - Level 1
  (113, 11300, 38, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Growl - Level 1
  (113, 11300, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chansey - Defense Curl - Level 1
  (113, 11300, 111, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chansey - Tail Whip - Level 5
  (113, 11300, 39, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Chansey - Refresh - Level 9
  (113, 11300, 287, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Chansey - Double Slap - Level 12
  (113, 11300, 3, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Chansey - Soft-Boiled - Level 16
  (113, 11300, 135, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Chansey - Bestow - Level 20
  (113, 11300, 516, 14, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Chansey - Minimize - Level 23
  (113, 11300, 107, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Chansey - Take Down - Level 27
  (113, 11300, 36, 14, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Chansey - Sing - Level 31
  (113, 11300, 47, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Chansey - Fling - Level 34
  (113, 11300, 374, 14, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Chansey - Heal Pulse - Level 38
  (113, 11300, 505, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Chansey - Egg Bomb - Level 42
  (113, 11300, 121, 14, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Chansey - Light Screen - Level 46
  (113, 11300, 113, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Chansey - Healing Wish - Level 50
  (113, 11300, 361, 14, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Chansey - Double-Edge - Level 54
  (113, 11300, 38, 14, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Chansey - Calm Mind - TM04
  (113, 11300, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 19),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Chansey - Hail - TM07
  (113, 11300, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 21),
  -- Chansey - Hidden Power - TM10
  (113, 11300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 24),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 25),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Chansey - Light Screen - TM16
  (113, 11300, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 27),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 28),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 29),
  -- Chansey - Safeguard - TM20
  (113, 11300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 30),
  -- Chansey - Frustration - TM21
  (113, 11300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 31),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 32),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 33),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 34),
  -- Chansey - Earthquake - TM26
  (113, 11300, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 35),
  -- Chansey - Return - TM27
  (113, 11300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 36),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 37),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 38),
  -- Chansey - Brick Break - TM31
  (113, 11300, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 39),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 40),
  -- Chansey - Flamethrower - TM35
  (113, 11300, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 41),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 42),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 43),
  -- Chansey - Rock Tomb - TM39
  (113, 11300, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 44),
  -- Chansey - Facade - TM42
  (113, 11300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 45),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 46),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 47),
  -- Chansey - Round - TM48
  (113, 11300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 48),
  -- Chansey - Echoed Voice - TM49
  (113, 11300, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 49),
  -- Chansey - Fling - TM56
  (113, 11300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 50),
  -- Chansey - Charge Beam - TM57
  (113, 11300, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 51),
  -- Chansey - Incinerate - TM59
  (113, 11300, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 52),
  -- Chansey - Retaliate - TM67
  (113, 11300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 53),
  -- Chansey - Giga Impact - TM68
  (113, 11300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 54),
  -- Chansey - Flash - TM70
  (113, 11300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 55),
  -- Chansey - Thunder Wave - TM73
  (113, 11300, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 56),
  -- Chansey - Psych Up - TM77
  (113, 11300, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 57),
  -- Chansey - Bulldoze - TM78
  (113, 11300, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 58),
  -- Chansey - Rock Slide - TM80
  (113, 11300, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 59),
  -- Chansey - Dream Eater - TM85
  (113, 11300, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 60),
  -- Chansey - Grass Knot - TM86
  (113, 11300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 61),
  -- Chansey - Swagger - TM87
  (113, 11300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 62),
  -- Chansey - Sleep Talk - TM88
  (113, 11300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 63),
  -- Chansey - Substitute - TM90
  (113, 11300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 64),
  -- Chansey - Wild Charge - TM93
  (113, 11300, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 65),
  -- Chansey - Secret Power - TM94
  (113, 11300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 66),
  -- Chansey - Power-Up Punch - TM98
  (113, 11300, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 67),
  -- Chansey - Dazzling Gleam - TM99
  (113, 11300, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 68),
  -- Chansey - Confide - TM100
  (113, 11300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 69),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 70),
  -- Chansey - Rock Smash - HM06
  (113, 11300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 71),
  -- Chansey - Counter - Egg
  (113, 11300, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Chansey - Seismic Toss - Egg
  (113, 11300, 69, 14, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Chansey - Metronome - Egg
  (113, 11300, 118, 14, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Chansey - Endure - Egg
  (113, 11300, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Chansey - Heal Bell - Egg
  (113, 11300, 215, 14, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Chansey - Present - Egg
  (113, 11300, 217, 14, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Chansey - Helping Hand - Egg
  (113, 11300, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Chansey - Aromatherapy - Egg
  (113, 11300, 312, 14, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Chansey - Gravity - Egg
  (113, 11300, 356, 14, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Chansey - Natural Gift - Egg
  (113, 11300, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Chansey - Last Resort - Egg
  (113, 11300, 387, 14, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Chansey - Mud Bomb - Egg
  (113, 11300, 426, 14, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Chansey - Fire Punch - Tutor
  (113, 11300, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Chansey - Ice Punch - Tutor
  (113, 11300, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Chansey - Thunder Punch - Tutor
  (113, 11300, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Chansey - Snore - Tutor
  (113, 11300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Chansey - Icy Wind - Tutor
  (113, 11300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Chansey - Heal Bell - Tutor
  (113, 11300, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Chansey - Iron Tail - Tutor
  (113, 11300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Chansey - Focus Punch - Tutor
  (113, 11300, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Chansey - Helping Hand - Tutor
  (113, 11300, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Chansey - Recycle - Tutor
  (113, 11300, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Chansey - Endeavor - Tutor
  (113, 11300, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 94),
  -- Chansey - Skill Swap - Tutor
  (113, 11300, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 95),
  -- Chansey - Snatch - Tutor
  (113, 11300, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 96),
  -- Chansey - Hyper Voice - Tutor
  (113, 11300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 97),
  -- Chansey - Covet - Tutor
  (113, 11300, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 98),
  -- Chansey - Shock Wave - Tutor
  (113, 11300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 99),
  -- Chansey - Water Pulse - Tutor
  (113, 11300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 100),
  -- Chansey - Gravity - Tutor
  (113, 11300, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 101),
  -- Chansey - Last Resort - Tutor
  (113, 11300, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 102),
  -- Chansey - Drain Punch - Tutor
  (113, 11300, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 103),
  -- Chansey - Zen Headbutt - Tutor
  (113, 11300, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 104),
  -- Chansey - Stealth Rock - Tutor
  (113, 11300, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 105),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Ingrain - Level 1
  (114, 11400, 275, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Sleep Powder - Level 4
  (114, 11400, 79, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangela - Vine Whip - Level 7
  (114, 11400, 22, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tangela - Absorb - Level 10
  (114, 11400, 71, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Tangela - Poison Powder - Level 14
  (114, 11400, 77, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tangela - Bind - Level 17
  (114, 11400, 20, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tangela - Growth - Level 20
  (114, 11400, 74, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tangela - Mega Drain - Level 23
  (114, 11400, 72, 14, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Tangela - Knock Off - Level 27
  (114, 11400, 282, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tangela - Stun Spore - Level 30
  (114, 11400, 78, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tangela - Natural Gift - Level 33
  (114, 11400, 363, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tangela - Giga Drain - Level 36
  (114, 11400, 202, 14, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tangela - Ancient Power - Level 38
  (114, 11400, 246, 14, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tangela - Slam - Level 41
  (114, 11400, 21, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tangela - Tickle - Level 44
  (114, 11400, 321, 14, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Tangela - Wring Out - Level 46
  (114, 11400, 378, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Tangela - Grassy Terrain - Level 48
  (114, 11400, 580, 14, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Tangela - Power Whip - Level 50
  (114, 11400, 438, 14, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Tangela - Hidden Power - TM10
  (114, 11400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Tangela - Frustration - TM21
  (114, 11400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 26),
  -- Tangela - Return - TM27
  (114, 11400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Tangela - Reflect - TM33
  (114, 11400, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 29),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 30),
  -- Tangela - Facade - TM42
  (114, 11400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 34),
  -- Tangela - Round - TM48
  (114, 11400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Tangela - Energy Ball - TM53
  (114, 11400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 36),
  -- Tangela - Giga Impact - TM68
  (114, 11400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Tangela - Flash - TM70
  (114, 11400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Tangela - Swords Dance - TM75
  (114, 11400, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 39),
  -- Tangela - Psych Up - TM77
  (114, 11400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 40),
  -- Tangela - Infestation - TM83
  (114, 11400, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 41),
  -- Tangela - Grass Knot - TM86
  (114, 11400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 42),
  -- Tangela - Swagger - TM87
  (114, 11400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Tangela - Sleep Talk - TM88
  (114, 11400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Tangela - Substitute - TM90
  (114, 11400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Tangela - Secret Power - TM94
  (114, 11400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Tangela - Nature Power - TM96
  (114, 11400, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 47),
  -- Tangela - Confide - TM100
  (114, 11400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 49),
  -- Tangela - Rock Smash - HM06
  (114, 11400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Tangela - Mega Drain - Egg
  (114, 11400, 72, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tangela - Leech Seed - Egg
  (114, 11400, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tangela - Confusion - Egg
  (114, 11400, 93, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tangela - Amnesia - Egg
  (114, 11400, 133, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tangela - Flail - Egg
  (114, 11400, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tangela - Giga Drain - Egg
  (114, 11400, 202, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tangela - Nature Power - Egg
  (114, 11400, 267, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tangela - Endeavor - Egg
  (114, 11400, 283, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tangela - Natural Gift - Egg
  (114, 11400, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tangela - Power Swap - Egg
  (114, 11400, 384, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tangela - Leaf Storm - Egg
  (114, 11400, 437, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tangela - Rage Powder - Egg
  (114, 11400, 476, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tangela - Bind - Tutor
  (114, 11400, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Tangela - Snore - Tutor
  (114, 11400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Tangela - Giga Drain - Tutor
  (114, 11400, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Tangela - Pain Split - Tutor
  (114, 11400, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Tangela - Synthesis - Tutor
  (114, 11400, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Tangela - Knock Off - Tutor
  (114, 11400, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Tangela - Endeavor - Tutor
  (114, 11400, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Tangela - Shock Wave - Tutor
  (114, 11400, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Tangela - Worry Seed - Tutor
  (114, 11400, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Tangela - Seed Bomb - Tutor
  (114, 11400, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 1
  (115, 11500, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Fake Out - Level 7
  (115, 11500, 252, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 10
  (115, 11500, 39, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 13
  (115, 11500, 44, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Kangaskhan - Double Hit - Level 19
  (115, 11500, 458, 14, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Kangaskhan - Rage - Level 22
  (115, 11500, 99, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Kangaskhan - Mega Punch - Level 25
  (115, 11500, 5, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kangaskhan - Chip Away - Level 31
  (115, 11500, 498, 14, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Kangaskhan - Dizzy Punch - Level 34
  (115, 11500, 146, 14, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kangaskhan - Crunch - Level 37
  (115, 11500, 242, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kangaskhan - Endure - Level 43
  (115, 11500, 203, 14, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Kangaskhan - Outrage - Level 46
  (115, 11500, 200, 14, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Kangaskhan - Sucker Punch - Level 49
  (115, 11500, 389, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Kangaskhan - Reversal - Level 50
  (115, 11500, 179, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 16),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Kangaskhan - Hail - TM07
  (115, 11500, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 18),
  -- Kangaskhan - Hidden Power - TM10
  (115, 11500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Kangaskhan - Safeguard - TM20
  (115, 11500, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 26),
  -- Kangaskhan - Frustration - TM21
  (115, 11500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Kangaskhan - Solar Beam - TM22
  (115, 11500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 28),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 31),
  -- Kangaskhan - Return - TM27
  (115, 11500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Kangaskhan - Dig - TM28
  (115, 11500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 33),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 34),
  -- Kangaskhan - Brick Break - TM31
  (115, 11500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 35),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Kangaskhan - Flamethrower - TM35
  (115, 11500, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 37),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 38),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 39),
  -- Kangaskhan - Rock Tomb - TM39
  (115, 11500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 40),
  -- Kangaskhan - Aerial Ace - TM40
  (115, 11500, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 41),
  -- Kangaskhan - Facade - TM42
  (115, 11500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 42),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 43),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 44),
  -- Kangaskhan - Thief - TM46
  (115, 11500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 45),
  -- Kangaskhan - Round - TM48
  (115, 11500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 46),
  -- Kangaskhan - Focus Blast - TM52
  (115, 11500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 47),
  -- Kangaskhan - Fling - TM56
  (115, 11500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 48),
  -- Kangaskhan - Incinerate - TM59
  (115, 11500, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 49),
  -- Kangaskhan - Shadow Claw - TM65
  (115, 11500, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 50),
  -- Kangaskhan - Retaliate - TM67
  (115, 11500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 51),
  -- Kangaskhan - Giga Impact - TM68
  (115, 11500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 52),
  -- Kangaskhan - Bulldoze - TM78
  (115, 11500, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 53),
  -- Kangaskhan - Rock Slide - TM80
  (115, 11500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 54),
  -- Kangaskhan - Swagger - TM87
  (115, 11500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 55),
  -- Kangaskhan - Sleep Talk - TM88
  (115, 11500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 56),
  -- Kangaskhan - Substitute - TM90
  (115, 11500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 57),
  -- Kangaskhan - Secret Power - TM94
  (115, 11500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Kangaskhan - Power-Up Punch - TM98
  (115, 11500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 59),
  -- Kangaskhan - Confide - TM100
  (115, 11500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 60),
  -- Kangaskhan - Cut - HM01
  (115, 11500, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 61),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 62),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 63),
  -- Kangaskhan - Rock Smash - HM06
  (115, 11500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 64),
  -- Kangaskhan - Stomp - Egg
  (115, 11500, 23, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kangaskhan - Double-Edge - Egg
  (115, 11500, 38, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kangaskhan - Disable - Egg
  (115, 11500, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kangaskhan - Counter - Egg
  (115, 11500, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kangaskhan - Focus Energy - Egg
  (115, 11500, 116, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kangaskhan - Foresight - Egg
  (115, 11500, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kangaskhan - Uproar - Egg
  (115, 11500, 253, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kangaskhan - Focus Punch - Egg
  (115, 11500, 264, 14, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kangaskhan - Endeavor - Egg
  (115, 11500, 283, 14, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kangaskhan - Crush Claw - Egg
  (115, 11500, 306, 14, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kangaskhan - Hammer Arm - Egg
  (115, 11500, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Kangaskhan - Trump Card - Egg
  (115, 11500, 376, 14, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Kangaskhan - Circle Throw - Egg
  (115, 11500, 509, 14, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Kangaskhan - Fire Punch - Tutor
  (115, 11500, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Kangaskhan - Ice Punch - Tutor
  (115, 11500, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Kangaskhan - Thunder Punch - Tutor
  (115, 11500, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Kangaskhan - Low Kick - Tutor
  (115, 11500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Kangaskhan - Snore - Tutor
  (115, 11500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Kangaskhan - Spite - Tutor
  (115, 11500, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Kangaskhan - Icy Wind - Tutor
  (115, 11500, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Kangaskhan - Outrage - Tutor
  (115, 11500, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Kangaskhan - Iron Tail - Tutor
  (115, 11500, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Kangaskhan - Uproar - Tutor
  (115, 11500, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Kangaskhan - Focus Punch - Tutor
  (115, 11500, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Kangaskhan - Helping Hand - Tutor
  (115, 11500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Kangaskhan - Endeavor - Tutor
  (115, 11500, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Kangaskhan - Covet - Tutor
  (115, 11500, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Kangaskhan - Shock Wave - Tutor
  (115, 11500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Kangaskhan - Water Pulse - Tutor
  (115, 11500, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Kangaskhan - Aqua Tail - Tutor
  (115, 11500, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 94),
  -- Kangaskhan - Drain Punch - Tutor
  (115, 11500, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 95),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 5
  (116, 11600, 108, 14, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 9
  (116, 11600, 43, 14, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 13
  (116, 11600, 55, 14, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Horsea - Twister - Level 17
  (116, 11600, 239, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Horsea - Bubble Beam - Level 21
  (116, 11600, 61, 14, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Horsea - Focus Energy - Level 26
  (116, 11600, 116, 14, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Horsea - Brine - Level 31
  (116, 11600, 362, 14, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Horsea - Agility - Level 36
  (116, 11600, 97, 14, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Horsea - Dragon Pulse - Level 41
  (116, 11600, 406, 14, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Horsea - Dragon Dance - Level 46
  (116, 11600, 349, 14, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Horsea - Hydro Pump - Level 52
  (116, 11600, 56, 14, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Horsea - Hail - TM07
  (116, 11600, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 14),
  -- Horsea - Hidden Power - TM10
  (116, 11600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 15),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 16),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 17),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 18),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 19),
  -- Horsea - Frustration - TM21
  (116, 11600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Horsea - Return - TM27
  (116, 11600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 21),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 22),
  -- Horsea - Facade - TM42
  (116, 11600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 23),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 24),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 25),
  -- Horsea - Round - TM48
  (116, 11600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 26),
  -- Horsea - Scald - TM55
  (116, 11600, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 27),
  -- Horsea - Swagger - TM87
  (116, 11600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 28),
  -- Horsea - Sleep Talk - TM88
  (116, 11600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 29),
  -- Horsea - Substitute - TM90
  (116, 11600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 30),
  -- Horsea - Flash Cannon - TM91
  (116, 11600, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 31),
  -- Horsea - Secret Power - TM94
  (116, 11600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 32),
  -- Horsea - Confide - TM100
  (116, 11600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 33),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 34),
  -- Horsea - Waterfall - HM05
  (116, 11600, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 35),
  -- Horsea - Dive - HM07
  (116, 11600, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 36),
  -- Horsea - Razor Wind - Egg
  (116, 11600, 13, 14, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Horsea - Disable - Egg
  (116, 11600, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Horsea - Aurora Beam - Egg
  (116, 11600, 62, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Horsea - Dragon Rage - Egg
  (116, 11600, 82, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Horsea - Splash - Egg
  (116, 11600, 150, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Horsea - Flail - Egg
  (116, 11600, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Horsea - Octazooka - Egg
  (116, 11600, 190, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Horsea - Outrage - Egg
  (116, 11600, 200, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Horsea - Dragon Breath - Egg
  (116, 11600, 225, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Horsea - Signal Beam - Egg
  (116, 11600, 324, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Horsea - Muddy Water - Egg
  (116, 11600, 330, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Horsea - Water Pulse - Egg
  (116, 11600, 352, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Horsea - Clear Smog - Egg
  (116, 11600, 499, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Horsea - Snore - Tutor
  (116, 11600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Horsea - Icy Wind - Tutor
  (116, 11600, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Horsea - Outrage - Tutor
  (116, 11600, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Horsea - Signal Beam - Tutor
  (116, 11600, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Horsea - Bounce - Tutor
  (116, 11600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Horsea - Water Pulse - Tutor
  (116, 11600, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Horsea - Dragon Pulse - Tutor
  (116, 11600, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Hydro Pump - Level 1
  (117, 11700, 56, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seadra - Smokescreen - Level 5
  (117, 11700, 108, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Seadra - Leer - Level 9
  (117, 11700, 43, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Seadra - Water Gun - Level 13
  (117, 11700, 55, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Seadra - Twister - Level 17
  (117, 11700, 239, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Seadra - Bubble Beam - Level 21
  (117, 11700, 61, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Seadra - Focus Energy - Level 26
  (117, 11700, 116, 14, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Seadra - Brine - Level 31
  (117, 11700, 362, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Seadra - Agility - Level 38
  (117, 11700, 97, 14, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Seadra - Dragon Pulse - Level 45
  (117, 11700, 406, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Seadra - Dragon Dance - Level 52
  (117, 11700, 349, 14, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Seadra - Hydro Pump - Level 60
  (117, 11700, 56, 14, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Seadra - Hail - TM07
  (117, 11700, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 18),
  -- Seadra - Hidden Power - TM10
  (117, 11700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Seadra - Frustration - TM21
  (117, 11700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Seadra - Return - TM27
  (117, 11700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Seadra - Facade - TM42
  (117, 11700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Seadra - Round - TM48
  (117, 11700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Seadra - Scald - TM55
  (117, 11700, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 32),
  -- Seadra - Giga Impact - TM68
  (117, 11700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 33),
  -- Seadra - Swagger - TM87
  (117, 11700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Seadra - Sleep Talk - TM88
  (117, 11700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Seadra - Substitute - TM90
  (117, 11700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Seadra - Flash Cannon - TM91
  (117, 11700, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 37),
  -- Seadra - Secret Power - TM94
  (117, 11700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 38),
  -- Seadra - Confide - TM100
  (117, 11700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 39),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 40),
  -- Seadra - Waterfall - HM05
  (117, 11700, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 41),
  -- Seadra - Dive - HM07
  (117, 11700, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 42),
  -- Seadra - Snore - Tutor
  (117, 11700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 43),
  -- Seadra - Icy Wind - Tutor
  (117, 11700, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Seadra - Outrage - Tutor
  (117, 11700, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Seadra - Signal Beam - Tutor
  (117, 11700, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Seadra - Bounce - Tutor
  (117, 11700, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Seadra - Water Pulse - Tutor
  (117, 11700, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Seadra - Dragon Pulse - Tutor
  (117, 11700, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Water Sport - Level 1
  (118, 11800, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goldeen - Supersonic - Level 5
  (118, 11800, 48, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 8
  (118, 11800, 30, 14, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Goldeen - Flail - Level 13
  (118, 11800, 175, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Goldeen - Water Pulse - Level 16
  (118, 11800, 352, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Goldeen - Aqua Ring - Level 21
  (118, 11800, 392, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Goldeen - Fury Attack - Level 24
  (118, 11800, 31, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Goldeen - Agility - Level 29
  (118, 11800, 97, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Goldeen - Waterfall - Level 32
  (118, 11800, 127, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Goldeen - Horn Drill - Level 37
  (118, 11800, 32, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Goldeen - Soak - Level 40
  (118, 11800, 487, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Goldeen - Megahorn - Level 45
  (118, 11800, 224, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Goldeen - Hail - TM07
  (118, 11800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Goldeen - Hidden Power - TM10
  (118, 11800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Goldeen - Frustration - TM21
  (118, 11800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Goldeen - Return - TM27
  (118, 11800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 24),
  -- Goldeen - Facade - TM42
  (118, 11800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 25),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 26),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 27),
  -- Goldeen - Round - TM48
  (118, 11800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Goldeen - Scald - TM55
  (118, 11800, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 29),
  -- Goldeen - Poison Jab - TM84
  (118, 11800, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 30),
  -- Goldeen - Swagger - TM87
  (118, 11800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 31),
  -- Goldeen - Sleep Talk - TM88
  (118, 11800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 32),
  -- Goldeen - Substitute - TM90
  (118, 11800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 33),
  -- Goldeen - Secret Power - TM94
  (118, 11800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 34),
  -- Goldeen - Confide - TM100
  (118, 11800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 35),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 36),
  -- Goldeen - Waterfall - HM05
  (118, 11800, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 37),
  -- Goldeen - Dive - HM07
  (118, 11800, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 38),
  -- Goldeen - Body Slam - Egg
  (118, 11800, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Goldeen - Hydro Pump - Egg
  (118, 11800, 56, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Goldeen - Psybeam - Egg
  (118, 11800, 60, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Goldeen - Haze - Egg
  (118, 11800, 114, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Goldeen - Skull Bash - Egg
  (118, 11800, 130, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Goldeen - Mud-Slap - Egg
  (118, 11800, 189, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Goldeen - Sleep Talk - Egg
  (118, 11800, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Goldeen - Mud Sport - Egg
  (118, 11800, 300, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Goldeen - Signal Beam - Egg
  (118, 11800, 324, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Goldeen - Mud Shot - Egg
  (118, 11800, 341, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Goldeen - Aqua Tail - Egg
  (118, 11800, 401, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Goldeen - Snore - Tutor
  (118, 11800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Goldeen - Icy Wind - Tutor
  (118, 11800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Goldeen - Knock Off - Tutor
  (118, 11800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Goldeen - Signal Beam - Tutor
  (118, 11800, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Goldeen - Bounce - Tutor
  (118, 11800, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Goldeen - Water Pulse - Tutor
  (118, 11800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Goldeen - Aqua Tail - Tutor
  (118, 11800, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Goldeen - Drill Run - Tutor
  (118, 11800, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Megahorn - Level 1
  (119, 11900, 224, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Water Sport - Level 1
  (119, 11900, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seaking - Poison Jab - Level 1
  (119, 11900, 398, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Seaking - Supersonic - Level 5
  (119, 11900, 48, 14, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Seaking - Horn Attack - Level 8
  (119, 11900, 30, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Seaking - Flail - Level 13
  (119, 11900, 175, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Seaking - Water Pulse - Level 16
  (119, 11900, 352, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Seaking - Aqua Ring - Level 21
  (119, 11900, 392, 14, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Seaking - Fury Attack - Level 24
  (119, 11900, 31, 14, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Seaking - Agility - Level 29
  (119, 11900, 97, 14, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Seaking - Waterfall - Level 32
  (119, 11900, 127, 14, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Seaking - Horn Drill - Level 40
  (119, 11900, 32, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Seaking - Soak - Level 46
  (119, 11900, 487, 14, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Seaking - Megahorn - Level 54
  (119, 11900, 224, 14, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Seaking - Hail - TM07
  (119, 11900, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 19),
  -- Seaking - Hidden Power - TM10
  (119, 11900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Seaking - Frustration - TM21
  (119, 11900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Seaking - Return - TM27
  (119, 11900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Seaking - Facade - TM42
  (119, 11900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Seaking - Round - TM48
  (119, 11900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Seaking - Scald - TM55
  (119, 11900, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 33),
  -- Seaking - Giga Impact - TM68
  (119, 11900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 34),
  -- Seaking - Poison Jab - TM84
  (119, 11900, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 35),
  -- Seaking - Swagger - TM87
  (119, 11900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 36),
  -- Seaking - Sleep Talk - TM88
  (119, 11900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 37),
  -- Seaking - Substitute - TM90
  (119, 11900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 38),
  -- Seaking - Secret Power - TM94
  (119, 11900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 39),
  -- Seaking - Confide - TM100
  (119, 11900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 40),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 41),
  -- Seaking - Waterfall - HM05
  (119, 11900, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 42),
  -- Seaking - Dive - HM07
  (119, 11900, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 43),
  -- Seaking - Snore - Tutor
  (119, 11900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Seaking - Icy Wind - Tutor
  (119, 11900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Seaking - Knock Off - Tutor
  (119, 11900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Seaking - Signal Beam - Tutor
  (119, 11900, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Seaking - Bounce - Tutor
  (119, 11900, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Seaking - Water Pulse - Tutor
  (119, 11900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Seaking - Aqua Tail - Tutor
  (119, 11900, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Seaking - Drill Run - Tutor
  (119, 11900, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 4
  (120, 12000, 55, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Staryu - Rapid Spin - Level 7
  (120, 12000, 229, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Staryu - Recover - Level 10
  (120, 12000, 105, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Staryu - Psywave - Level 13
  (120, 12000, 149, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 16
  (120, 12000, 129, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Staryu - Bubble Beam - Level 18
  (120, 12000, 61, 14, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Staryu - Camouflage - Level 22
  (120, 12000, 293, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Staryu - Gyro Ball - Level 24
  (120, 12000, 360, 14, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Staryu - Brine - Level 28
  (120, 12000, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Staryu - Minimize - Level 31
  (120, 12000, 107, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Staryu - Reflect Type - Level 35
  (120, 12000, 513, 14, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Staryu - Power Gem - Level 37
  (120, 12000, 408, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Staryu - Confuse Ray - Level 40
  (120, 12000, 109, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Staryu - Psychic - Level 42
  (120, 12000, 94, 14, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Staryu - Light Screen - Level 46
  (120, 12000, 113, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Staryu - Cosmic Power - Level 49
  (120, 12000, 322, 14, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Staryu - Hydro Pump - Level 53
  (120, 12000, 56, 14, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Staryu - Hail - TM07
  (120, 12000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 21),
  -- Staryu - Hidden Power - TM10
  (120, 12000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Staryu - Light Screen - TM16
  (120, 12000, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 25),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Staryu - Frustration - TM21
  (120, 12000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Staryu - Return - TM27
  (120, 12000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 34),
  -- Staryu - Facade - TM42
  (120, 12000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Staryu - Round - TM48
  (120, 12000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Staryu - Scald - TM55
  (120, 12000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 38),
  -- Staryu - Flash - TM70
  (120, 12000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 39),
  -- Staryu - Thunder Wave - TM73
  (120, 12000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 40),
  -- Staryu - Gyro Ball - TM74
  (120, 12000, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 41),
  -- Staryu - Psych Up - TM77
  (120, 12000, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 42),
  -- Staryu - Swagger - TM87
  (120, 12000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Staryu - Sleep Talk - TM88
  (120, 12000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Staryu - Substitute - TM90
  (120, 12000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Staryu - Flash Cannon - TM91
  (120, 12000, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 46),
  -- Staryu - Secret Power - TM94
  (120, 12000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 47),
  -- Staryu - Dazzling Gleam - TM99
  (120, 12000, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 48),
  -- Staryu - Confide - TM100
  (120, 12000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 49),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 50),
  -- Staryu - Waterfall - HM05
  (120, 12000, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 51),
  -- Staryu - Dive - HM07
  (120, 12000, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 52),
  -- Staryu - Snore - Tutor
  (120, 12000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Staryu - Icy Wind - Tutor
  (120, 12000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Staryu - Pain Split - Tutor
  (120, 12000, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Staryu - Magic Coat - Tutor
  (120, 12000, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Staryu - Recycle - Tutor
  (120, 12000, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Staryu - Signal Beam - Tutor
  (120, 12000, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Staryu - Water Pulse - Tutor
  (120, 12000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Staryu - Gravity - Tutor
  (120, 12000, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Hydro Pump - Level 1
  (121, 12100, 56, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Swift - Level 1
  (121, 12100, 129, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Starmie - Confuse Ray - Level 40
  (121, 12100, 109, 14, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Starmie - Psyshock - TM03
  (121, 12100, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 7),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 8),
  -- Starmie - Hail - TM07
  (121, 12100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 9),
  -- Starmie - Hidden Power - TM10
  (121, 12100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 10),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 11),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 12),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 13),
  -- Starmie - Light Screen - TM16
  (121, 12100, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 14),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 15),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 16),
  -- Starmie - Frustration - TM21
  (121, 12100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 17),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 18),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 19),
  -- Starmie - Return - TM27
  (121, 12100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 20),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 21),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 22),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 23),
  -- Starmie - Facade - TM42
  (121, 12100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 24),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 25),
  -- Starmie - Round - TM48
  (121, 12100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 26),
  -- Starmie - Scald - TM55
  (121, 12100, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 27),
  -- Starmie - Giga Impact - TM68
  (121, 12100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 28),
  -- Starmie - Flash - TM70
  (121, 12100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 29),
  -- Starmie - Thunder Wave - TM73
  (121, 12100, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 30),
  -- Starmie - Gyro Ball - TM74
  (121, 12100, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 31),
  -- Starmie - Psych Up - TM77
  (121, 12100, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 32),
  -- Starmie - Dream Eater - TM85
  (121, 12100, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 33),
  -- Starmie - Grass Knot - TM86
  (121, 12100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 34),
  -- Starmie - Swagger - TM87
  (121, 12100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Starmie - Sleep Talk - TM88
  (121, 12100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Starmie - Substitute - TM90
  (121, 12100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 37),
  -- Starmie - Flash Cannon - TM91
  (121, 12100, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 38),
  -- Starmie - Trick Room - TM92
  (121, 12100, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 39),
  -- Starmie - Secret Power - TM94
  (121, 12100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Starmie - Dazzling Gleam - TM99
  (121, 12100, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 41),
  -- Starmie - Confide - TM100
  (121, 12100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 43),
  -- Starmie - Waterfall - HM05
  (121, 12100, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 44),
  -- Starmie - Dive - HM07
  (121, 12100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 45),
  -- Starmie - Snore - Tutor
  (121, 12100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Starmie - Icy Wind - Tutor
  (121, 12100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Starmie - Pain Split - Tutor
  (121, 12100, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Starmie - Trick - Tutor
  (121, 12100, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Starmie - Magic Coat - Tutor
  (121, 12100, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Starmie - Recycle - Tutor
  (121, 12100, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Starmie - Skill Swap - Tutor
  (121, 12100, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Starmie - Signal Beam - Tutor
  (121, 12100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Starmie - Water Pulse - Tutor
  (121, 12100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Starmie - Gravity - Tutor
  (121, 12100, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Starmie - Wonder Room - Tutor
  (121, 12100, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Magical Leaf - Level 1
  (122, 12200, 345, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Power Swap - Level 1
  (122, 12200, 384, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime - Guard Swap - Level 1
  (122, 12200, 385, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Mime - Wide Guard - Level 1
  (122, 12200, 469, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mr. Mime - Quick Guard - Level 1
  (122, 12200, 501, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mr. Mime - Misty Terrain - Level 1
  (122, 12200, 581, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mr. Mime - Copycat - Level 4
  (122, 12200, 383, 14, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Mr. Mime - Meditate - Level 8
  (122, 12200, 96, 14, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Mr. Mime - Double Slap - Level 11
  (122, 12200, 3, 14, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Mr. Mime - Mimic - Level 15
  (122, 12200, 102, 14, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psywave - Level 15
  (122, 12200, 149, 14, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Mr. Mime - Encore - Level 18
  (122, 12200, 227, 14, NULL, 1, 18, NULL, NULL, NULL, 14),
  -- Mr. Mime - Light Screen - Level 22
  (122, 12200, 113, 14, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Mr. Mime - Reflect - Level 22
  (122, 12200, 115, 14, NULL, 1, 22, NULL, NULL, NULL, 16),
  -- Mr. Mime - Psybeam - Level 25
  (122, 12200, 60, 14, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Mr. Mime - Substitute - Level 29
  (122, 12200, 164, 14, NULL, 1, 29, NULL, NULL, NULL, 18),
  -- Mr. Mime - Recycle - Level 32
  (122, 12200, 278, 14, NULL, 1, 32, NULL, NULL, NULL, 19),
  -- Mr. Mime - Trick - Level 36
  (122, 12200, 271, 14, NULL, 1, 36, NULL, NULL, NULL, 20),
  -- Mr. Mime - Psychic - Level 39
  (122, 12200, 94, 14, NULL, 1, 39, NULL, NULL, NULL, 21),
  -- Mr. Mime - Role Play - Level 43
  (122, 12200, 272, 14, NULL, 1, 43, NULL, NULL, NULL, 22),
  -- Mr. Mime - Baton Pass - Level 46
  (122, 12200, 226, 14, NULL, 1, 46, NULL, NULL, NULL, 23),
  -- Mr. Mime - Safeguard - Level 50
  (122, 12200, 219, 14, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Mr. Mime - Psyshock - TM03
  (122, 12200, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 25),
  -- Mr. Mime - Calm Mind - TM04
  (122, 12200, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 26),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 27),
  -- Mr. Mime - Hidden Power - TM10
  (122, 12200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 28),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 29),
  -- Mr. Mime - Taunt - TM12
  (122, 12200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 30),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 31),
  -- Mr. Mime - Light Screen - TM16
  (122, 12200, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 32),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 33),
  -- Mr. Mime - Rain Dance - TM18
  (122, 12200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 34),
  -- Mr. Mime - Safeguard - TM20
  (122, 12200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 35),
  -- Mr. Mime - Frustration - TM21
  (122, 12200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 36),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 37),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 38),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 39),
  -- Mr. Mime - Return - TM27
  (122, 12200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 40),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 41),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 42),
  -- Mr. Mime - Brick Break - TM31
  (122, 12200, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 43),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 44),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 45),
  -- Mr. Mime - Aerial Ace - TM40
  (122, 12200, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 46),
  -- Mr. Mime - Torment - TM41
  (122, 12200, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 47),
  -- Mr. Mime - Facade - TM42
  (122, 12200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 48),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 49),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 50),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 51),
  -- Mr. Mime - Round - TM48
  (122, 12200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 52),
  -- Mr. Mime - Focus Blast - TM52
  (122, 12200, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 53),
  -- Mr. Mime - Energy Ball - TM53
  (122, 12200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 54),
  -- Mr. Mime - Fling - TM56
  (122, 12200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 55),
  -- Mr. Mime - Charge Beam - TM57
  (122, 12200, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 56),
  -- Mr. Mime - Payback - TM66
  (122, 12200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 57),
  -- Mr. Mime - Giga Impact - TM68
  (122, 12200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 58),
  -- Mr. Mime - Flash - TM70
  (122, 12200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 59),
  -- Mr. Mime - Thunder Wave - TM73
  (122, 12200, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 60),
  -- Mr. Mime - Psych Up - TM77
  (122, 12200, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 61),
  -- Mr. Mime - Infestation - TM83
  (122, 12200, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 62),
  -- Mr. Mime - Dream Eater - TM85
  (122, 12200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 63),
  -- Mr. Mime - Grass Knot - TM86
  (122, 12200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 64),
  -- Mr. Mime - Swagger - TM87
  (122, 12200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 65),
  -- Mr. Mime - Sleep Talk - TM88
  (122, 12200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 66),
  -- Mr. Mime - Substitute - TM90
  (122, 12200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 67),
  -- Mr. Mime - Trick Room - TM92
  (122, 12200, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 68),
  -- Mr. Mime - Secret Power - TM94
  (122, 12200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 69),
  -- Mr. Mime - Power-Up Punch - TM98
  (122, 12200, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 70),
  -- Mr. Mime - Dazzling Gleam - TM99
  (122, 12200, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 71),
  -- Mr. Mime - Confide - TM100
  (122, 12200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 72),
  -- Mr. Mime - Hypnosis - Egg
  (122, 12200, 95, 14, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mr. Mime - Mimic - Egg
  (122, 12200, 102, 14, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mr. Mime - Confuse Ray - Egg
  (122, 12200, 109, 14, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mr. Mime - Icy Wind - Egg
  (122, 12200, 196, 14, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mr. Mime - Charm - Egg
  (122, 12200, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mr. Mime - Future Sight - Egg
  (122, 12200, 248, 14, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mr. Mime - Fake Out - Egg
  (122, 12200, 252, 14, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Mr. Mime - Trick - Egg
  (122, 12200, 271, 14, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Mr. Mime - Teeter Dance - Egg
  (122, 12200, 298, 14, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Mr. Mime - Wake-Up Slap - Egg
  (122, 12200, 358, 14, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Mr. Mime - Healing Wish - Egg
  (122, 12200, 361, 14, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Mr. Mime - Nasty Plot - Egg
  (122, 12200, 417, 14, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Mr. Mime - Power Split - Egg
  (122, 12200, 471, 14, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Mr. Mime - Magic Room - Egg
  (122, 12200, 478, 14, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Mr. Mime - Fire Punch - Tutor
  (122, 12200, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Mr. Mime - Ice Punch - Tutor
  (122, 12200, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Mr. Mime - Thunder Punch - Tutor
  (122, 12200, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Mr. Mime - Snore - Tutor
  (122, 12200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Mr. Mime - Icy Wind - Tutor
  (122, 12200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Mr. Mime - Focus Punch - Tutor
  (122, 12200, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Mr. Mime - Helping Hand - Tutor
  (122, 12200, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Mr. Mime - Trick - Tutor
  (122, 12200, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 94),
  -- Mr. Mime - Role Play - Tutor
  (122, 12200, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 95),
  -- Mr. Mime - Magic Coat - Tutor
  (122, 12200, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 96),
  -- Mr. Mime - Recycle - Tutor
  (122, 12200, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 97),
  -- Mr. Mime - Skill Swap - Tutor
  (122, 12200, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 98),
  -- Mr. Mime - Snatch - Tutor
  (122, 12200, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 99),
  -- Mr. Mime - Signal Beam - Tutor
  (122, 12200, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 100),
  -- Mr. Mime - Iron Defense - Tutor
  (122, 12200, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 101),
  -- Mr. Mime - Covet - Tutor
  (122, 12200, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 102),
  -- Mr. Mime - Shock Wave - Tutor
  (122, 12200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 103),
  -- Mr. Mime - Drain Punch - Tutor
  (122, 12200, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 104),
  -- Mr. Mime - Zen Headbutt - Tutor
  (122, 12200, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 105),
  -- Mr. Mime - Wonder Room - Tutor
  (122, 12200, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 106),
  -- Mr. Mime - Magic Room - Tutor
  (122, 12200, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 107),
  -- Mr. Mime - Foul Play - Tutor
  (122, 12200, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 108),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Vacuum Wave - Level 1
  (123, 12300, 410, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scyther - Focus Energy - Level 5
  (123, 12300, 116, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Scyther - Pursuit - Level 9
  (123, 12300, 228, 14, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Scyther - False Swipe - Level 13
  (123, 12300, 206, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scyther - Agility - Level 17
  (123, 12300, 97, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scyther - Wing Attack - Level 21
  (123, 12300, 17, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scyther - Fury Cutter - Level 25
  (123, 12300, 210, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Scyther - Slash - Level 29
  (123, 12300, 163, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Scyther - Razor Wind - Level 33
  (123, 12300, 13, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scyther - Double Team - Level 37
  (123, 12300, 104, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Scyther - X-Scissor - Level 41
  (123, 12300, 404, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Scyther - Night Slash - Level 45
  (123, 12300, 400, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scyther - Double Hit - Level 49
  (123, 12300, 458, 14, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scyther - Air Slash - Level 50
  (123, 12300, 403, 14, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Scyther - Swords Dance - Level 57
  (123, 12300, 14, 14, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Scyther - Feint - Level 61
  (123, 12300, 364, 14, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Scyther - Hidden Power - TM10
  (123, 12300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Scyther - Light Screen - TM16
  (123, 12300, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 23),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Scyther - Rain Dance - TM18
  (123, 12300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Scyther - Roost - TM19
  (123, 12300, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 26),
  -- Scyther - Safeguard - TM20
  (123, 12300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Scyther - Frustration - TM21
  (123, 12300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Scyther - Return - TM27
  (123, 12300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Scyther - Brick Break - TM31
  (123, 12300, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 30),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Scyther - Aerial Ace - TM40
  (123, 12300, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 32),
  -- Scyther - Facade - TM42
  (123, 12300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Scyther - Round - TM48
  (123, 12300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Scyther - Steel Wing - TM51
  (123, 12300, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 38),
  -- Scyther - False Swipe - TM54
  (123, 12300, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 39),
  -- Scyther - Giga Impact - TM68
  (123, 12300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Scyther - Swords Dance - TM75
  (123, 12300, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 41),
  -- Scyther - Struggle Bug - TM76
  (123, 12300, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 42),
  -- Scyther - X-Scissor - TM81
  (123, 12300, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 43),
  -- Scyther - Swagger - TM87
  (123, 12300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 44),
  -- Scyther - Sleep Talk - TM88
  (123, 12300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 45),
  -- Scyther - U-turn - TM89
  (123, 12300, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 46),
  -- Scyther - Substitute - TM90
  (123, 12300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Scyther - Secret Power - TM94
  (123, 12300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Scyther - Confide - TM100
  (123, 12300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 49),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 50),
  -- Scyther - Rock Smash - HM06
  (123, 12300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 51),
  -- Scyther - Razor Wind - Egg
  (123, 12300, 13, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Counter - Egg
  (123, 12300, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Scyther - Reversal - Egg
  (123, 12300, 179, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Scyther - Endure - Egg
  (123, 12300, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scyther - Steel Wing - Egg
  (123, 12300, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scyther - Baton Pass - Egg
  (123, 12300, 226, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Scyther - Silver Wind - Egg
  (123, 12300, 318, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Scyther - Night Slash - Egg
  (123, 12300, 400, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scyther - Bug Buzz - Egg
  (123, 12300, 405, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scyther - Defog - Egg
  (123, 12300, 432, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scyther - Quick Guard - Egg
  (123, 12300, 501, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Scyther - Snore - Tutor
  (123, 12300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Scyther - Knock Off - Tutor
  (123, 12300, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Scyther - Tailwind - Tutor
  (123, 12300, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Scyther - Bug Bite - Tutor
  (123, 12300, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Perish Song - Level 1
  (124, 12400, 195, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jynx - Draining Kiss - Level 1
  (124, 12400, 577, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jynx - Lick - Level 5
  (124, 12400, 122, 14, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Jynx - Lovely Kiss - Level 8
  (124, 12400, 142, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Jynx - Powder Snow - Level 11
  (124, 12400, 181, 14, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Jynx - Double Slap - Level 15
  (124, 12400, 3, 14, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Jynx - Ice Punch - Level 18
  (124, 12400, 8, 14, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Jynx - Heart Stamp - Level 21
  (124, 12400, 531, 14, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Jynx - Mean Look - Level 25
  (124, 12400, 212, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Jynx - Fake Tears - Level 28
  (124, 12400, 313, 14, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Jynx - Wake-Up Slap - Level 33
  (124, 12400, 358, 14, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Jynx - Avalanche - Level 39
  (124, 12400, 419, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Jynx - Body Slam - Level 44
  (124, 12400, 34, 14, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Jynx - Wring Out - Level 49
  (124, 12400, 378, 14, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Jynx - Perish Song - Level 55
  (124, 12400, 195, 14, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Jynx - Blizzard - Level 60
  (124, 12400, 59, 14, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Jynx - Psyshock - TM03
  (124, 12400, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 21),
  -- Jynx - Calm Mind - TM04
  (124, 12400, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 22),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Jynx - Hail - TM07
  (124, 12400, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 24),
  -- Jynx - Hidden Power - TM10
  (124, 12400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 25),
  -- Jynx - Taunt - TM12
  (124, 12400, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 26),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 27),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 28),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 29),
  -- Jynx - Light Screen - TM16
  (124, 12400, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 30),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 31),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 32),
  -- Jynx - Frustration - TM21
  (124, 12400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 33),
  -- Jynx - Return - TM27
  (124, 12400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 35),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 36),
  -- Jynx - Brick Break - TM31
  (124, 12400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 37),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 38),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 39),
  -- Jynx - Torment - TM41
  (124, 12400, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 40),
  -- Jynx - Facade - TM42
  (124, 12400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 41),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 42),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 43),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 44),
  -- Jynx - Round - TM48
  (124, 12400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 45),
  -- Jynx - Echoed Voice - TM49
  (124, 12400, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 46),
  -- Jynx - Focus Blast - TM52
  (124, 12400, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 47),
  -- Jynx - Energy Ball - TM53
  (124, 12400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 48),
  -- Jynx - Fling - TM56
  (124, 12400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 49),
  -- Jynx - Payback - TM66
  (124, 12400, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 50),
  -- Jynx - Giga Impact - TM68
  (124, 12400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 51),
  -- Jynx - Flash - TM70
  (124, 12400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 52),
  -- Jynx - Psych Up - TM77
  (124, 12400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 53),
  -- Jynx - Frost Breath - TM79
  (124, 12400, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 54),
  -- Jynx - Dream Eater - TM85
  (124, 12400, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 55),
  -- Jynx - Grass Knot - TM86
  (124, 12400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 56),
  -- Jynx - Swagger - TM87
  (124, 12400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 57),
  -- Jynx - Sleep Talk - TM88
  (124, 12400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 58),
  -- Jynx - Substitute - TM90
  (124, 12400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 59),
  -- Jynx - Trick Room - TM92
  (124, 12400, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 60),
  -- Jynx - Secret Power - TM94
  (124, 12400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 61),
  -- Jynx - Power-Up Punch - TM98
  (124, 12400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 62),
  -- Jynx - Confide - TM100
  (124, 12400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Jynx - Ice Punch - Egg
  (124, 12400, 8, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Jynx - Meditate - Egg
  (124, 12400, 96, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jynx - Fake Out - Egg
  (124, 12400, 252, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Jynx - Wish - Egg
  (124, 12400, 273, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Jynx - Miracle Eye - Egg
  (124, 12400, 357, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Jynx - Wake-Up Slap - Egg
  (124, 12400, 358, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Jynx - Nasty Plot - Egg
  (124, 12400, 417, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Jynx - Captivate - Egg
  (124, 12400, 445, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Jynx - Ice Punch - Tutor
  (124, 12400, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Jynx - Snore - Tutor
  (124, 12400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Jynx - Icy Wind - Tutor
  (124, 12400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Jynx - Heal Bell - Tutor
  (124, 12400, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Jynx - Focus Punch - Tutor
  (124, 12400, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Jynx - Helping Hand - Tutor
  (124, 12400, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Jynx - Trick - Tutor
  (124, 12400, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Jynx - Role Play - Tutor
  (124, 12400, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Jynx - Magic Coat - Tutor
  (124, 12400, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Jynx - Recycle - Tutor
  (124, 12400, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Jynx - Skill Swap - Tutor
  (124, 12400, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Jynx - Hyper Voice - Tutor
  (124, 12400, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Jynx - Signal Beam - Tutor
  (124, 12400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Jynx - Covet - Tutor
  (124, 12400, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Jynx - Water Pulse - Tutor
  (124, 12400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Jynx - Drain Punch - Tutor
  (124, 12400, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Jynx - Zen Headbutt - Tutor
  (124, 12400, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Jynx - Magic Room - Tutor
  (124, 12400, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Shock - Level 5
  (125, 12500, 84, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Electabuzz - Low Kick - Level 8
  (125, 12500, 67, 14, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Electabuzz - Swift - Level 12
  (125, 12500, 129, 14, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Electabuzz - Shock Wave - Level 15
  (125, 12500, 351, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Electabuzz - Thunder Wave - Level 19
  (125, 12500, 86, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Electabuzz - Electro Ball - Level 22
  (125, 12500, 486, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Electabuzz - Light Screen - Level 26
  (125, 12500, 113, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Electabuzz - Thunder Punch - Level 29
  (125, 12500, 9, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Electabuzz - Discharge - Level 36
  (125, 12500, 435, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Electabuzz - Screech - Level 42
  (125, 12500, 103, 14, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Electabuzz - Thunderbolt - Level 49
  (125, 12500, 85, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Electabuzz - Thunder - Level 55
  (125, 12500, 87, 14, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Electabuzz - Hidden Power - TM10
  (125, 12500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 18),
  -- Electabuzz - Light Screen - TM16
  (125, 12500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 19),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Electabuzz - Frustration - TM21
  (125, 12500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 23),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 24),
  -- Electabuzz - Return - TM27
  (125, 12500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 26),
  -- Electabuzz - Brick Break - TM31
  (125, 12500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 27),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Electabuzz - Facade - TM42
  (125, 12500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Electabuzz - Low Sweep - TM47
  (125, 12500, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 33),
  -- Electabuzz - Round - TM48
  (125, 12500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Electabuzz - Focus Blast - TM52
  (125, 12500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 35),
  -- Electabuzz - Fling - TM56
  (125, 12500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 36),
  -- Electabuzz - Charge Beam - TM57
  (125, 12500, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 37),
  -- Electabuzz - Giga Impact - TM68
  (125, 12500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 38),
  -- Electabuzz - Flash - TM70
  (125, 12500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 39),
  -- Electabuzz - Volt Switch - TM72
  (125, 12500, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 40),
  -- Electabuzz - Thunder Wave - TM73
  (125, 12500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 41),
  -- Electabuzz - Swagger - TM87
  (125, 12500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Electabuzz - Sleep Talk - TM88
  (125, 12500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Electabuzz - Substitute - TM90
  (125, 12500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Electabuzz - Wild Charge - TM93
  (125, 12500, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 45),
  -- Electabuzz - Secret Power - TM94
  (125, 12500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Electabuzz - Power-Up Punch - TM98
  (125, 12500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 47),
  -- Electabuzz - Confide - TM100
  (125, 12500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 49),
  -- Electabuzz - Rock Smash - HM06
  (125, 12500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Electabuzz - Karate Chop - Egg
  (125, 12500, 2, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electabuzz - Fire Punch - Egg
  (125, 12500, 7, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electabuzz - Ice Punch - Egg
  (125, 12500, 8, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electabuzz - Rolling Kick - Egg
  (125, 12500, 27, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electabuzz - Meditate - Egg
  (125, 12500, 96, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Electabuzz - Barrier - Egg
  (125, 12500, 112, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Electabuzz - Dynamic Punch - Egg
  (125, 12500, 223, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Electabuzz - Cross Chop - Egg
  (125, 12500, 238, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Electabuzz - Focus Punch - Egg
  (125, 12500, 264, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Electabuzz - Hammer Arm - Egg
  (125, 12500, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Electabuzz - Feint - Egg
  (125, 12500, 364, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Electabuzz - Fire Punch - Tutor
  (125, 12500, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Electabuzz - Ice Punch - Tutor
  (125, 12500, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Electabuzz - Thunder Punch - Tutor
  (125, 12500, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Electabuzz - Low Kick - Tutor
  (125, 12500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Electabuzz - Snore - Tutor
  (125, 12500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Electabuzz - Iron Tail - Tutor
  (125, 12500, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Electabuzz - Focus Punch - Tutor
  (125, 12500, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Electabuzz - Helping Hand - Tutor
  (125, 12500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Electabuzz - Signal Beam - Tutor
  (125, 12500, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Electabuzz - Covet - Tutor
  (125, 12500, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Electabuzz - Shock Wave - Tutor
  (125, 12500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Electabuzz - Magnet Rise - Tutor
  (125, 12500, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Electabuzz - Electroweb - Tutor
  (125, 12500, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Electabuzz - Dual Chop - Tutor
  (125, 12500, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Ember - Level 5
  (126, 12600, 52, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Magmar - Smokescreen - Level 8
  (126, 12600, 108, 14, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Magmar - Feint Attack - Level 12
  (126, 12600, 185, 14, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Magmar - Fire Spin - Level 15
  (126, 12600, 83, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Magmar - Clear Smog - Level 19
  (126, 12600, 499, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Magmar - Flame Burst - Level 22
  (126, 12600, 481, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Magmar - Confuse Ray - Level 26
  (126, 12600, 109, 14, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Magmar - Fire Punch - Level 29
  (126, 12600, 7, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Magmar - Lava Plume - Level 36
  (126, 12600, 436, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Magmar - Sunny Day - Level 42
  (126, 12600, 241, 14, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Magmar - Flamethrower - Level 49
  (126, 12600, 53, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Magmar - Fire Blast - Level 55
  (126, 12600, 126, 14, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Magmar - Hidden Power - TM10
  (126, 12600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 19),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Magmar - Frustration - TM21
  (126, 12600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Magmar - Return - TM27
  (126, 12600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 23),
  -- Magmar - Brick Break - TM31
  (126, 12600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 24),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Magmar - Flamethrower - TM35
  (126, 12600, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 26),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 27),
  -- Magmar - Facade - TM42
  (126, 12600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Magmar - Flame Charge - TM43
  (126, 12600, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 29),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Magmar - Low Sweep - TM47
  (126, 12600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 33),
  -- Magmar - Round - TM48
  (126, 12600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Magmar - Overheat - TM50
  (126, 12600, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 35),
  -- Magmar - Focus Blast - TM52
  (126, 12600, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 36),
  -- Magmar - Fling - TM56
  (126, 12600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 37),
  -- Magmar - Incinerate - TM59
  (126, 12600, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Magmar - Will-O-Wisp - TM61
  (126, 12600, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 39),
  -- Magmar - Giga Impact - TM68
  (126, 12600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Magmar - Swagger - TM87
  (126, 12600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Magmar - Sleep Talk - TM88
  (126, 12600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Magmar - Substitute - TM90
  (126, 12600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Magmar - Secret Power - TM94
  (126, 12600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Magmar - Power-Up Punch - TM98
  (126, 12600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 45),
  -- Magmar - Confide - TM100
  (126, 12600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 47),
  -- Magmar - Rock Smash - HM06
  (126, 12600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 48),
  -- Magmar - Karate Chop - Egg
  (126, 12600, 2, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magmar - Mega Punch - Egg
  (126, 12600, 5, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magmar - Thunder Punch - Egg
  (126, 12600, 9, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magmar - Screech - Egg
  (126, 12600, 103, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmar - Barrier - Egg
  (126, 12600, 112, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magmar - Focus Energy - Egg
  (126, 12600, 116, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magmar - Mach Punch - Egg
  (126, 12600, 183, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magmar - Belly Drum - Egg
  (126, 12600, 187, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magmar - Dynamic Punch - Egg
  (126, 12600, 223, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Magmar - Iron Tail - Egg
  (126, 12600, 231, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Magmar - Cross Chop - Egg
  (126, 12600, 238, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Magmar - Power Swap - Egg
  (126, 12600, 384, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Magmar - Flare Blitz - Egg
  (126, 12600, 394, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Magmar - Belch - Egg
  (126, 12600, 562, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Magmar - Fire Punch - Tutor
  (126, 12600, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Magmar - Thunder Punch - Tutor
  (126, 12600, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Magmar - Low Kick - Tutor
  (126, 12600, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Magmar - Snore - Tutor
  (126, 12600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Magmar - Iron Tail - Tutor
  (126, 12600, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Magmar - Heat Wave - Tutor
  (126, 12600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Magmar - Focus Punch - Tutor
  (126, 12600, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Magmar - Helping Hand - Tutor
  (126, 12600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Magmar - Covet - Tutor
  (126, 12600, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Magmar - Dual Chop - Tutor
  (126, 12600, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 1
  (127, 12700, 116, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 4
  (127, 12700, 20, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 8
  (127, 12700, 69, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 11
  (127, 12700, 106, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pinsir - Revenge - Level 15
  (127, 12700, 279, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pinsir - Vital Throw - Level 18
  (127, 12700, 233, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Pinsir - Double Hit - Level 22
  (127, 12700, 458, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Pinsir - Brick Break - Level 26
  (127, 12700, 280, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Pinsir - Submission - Level 29
  (127, 12700, 66, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pinsir - X-Scissor - Level 33
  (127, 12700, 404, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pinsir - Storm Throw - Level 36
  (127, 12700, 480, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pinsir - Swords Dance - Level 40
  (127, 12700, 14, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pinsir - Thrash - Level 43
  (127, 12700, 37, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Pinsir - Superpower - Level 47
  (127, 12700, 276, 14, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Pinsir - Guillotine - Level 50
  (127, 12700, 12, 14, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Pinsir - Bulk Up - TM08
  (127, 12700, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 18),
  -- Pinsir - Hidden Power - TM10
  (127, 12700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Pinsir - Rain Dance - TM18
  (127, 12700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Pinsir - Frustration - TM21
  (127, 12700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Pinsir - Smack Down - TM23
  (127, 12700, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 25),
  -- Pinsir - Earthquake - TM26
  (127, 12700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 26),
  -- Pinsir - Return - TM27
  (127, 12700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Pinsir - Dig - TM28
  (127, 12700, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 28),
  -- Pinsir - Brick Break - TM31
  (127, 12700, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 29),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Pinsir - Rock Tomb - TM39
  (127, 12700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Pinsir - Facade - TM42
  (127, 12700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Pinsir - Round - TM48
  (127, 12700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Pinsir - Focus Blast - TM52
  (127, 12700, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 37),
  -- Pinsir - False Swipe - TM54
  (127, 12700, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 38),
  -- Pinsir - Fling - TM56
  (127, 12700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 39),
  -- Pinsir - Giga Impact - TM68
  (127, 12700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Pinsir - Stone Edge - TM71
  (127, 12700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 41),
  -- Pinsir - Swords Dance - TM75
  (127, 12700, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 42),
  -- Pinsir - Struggle Bug - TM76
  (127, 12700, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 43),
  -- Pinsir - Bulldoze - TM78
  (127, 12700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 44),
  -- Pinsir - Rock Slide - TM80
  (127, 12700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 45),
  -- Pinsir - X-Scissor - TM81
  (127, 12700, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 46),
  -- Pinsir - Swagger - TM87
  (127, 12700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Pinsir - Sleep Talk - TM88
  (127, 12700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Pinsir - Substitute - TM90
  (127, 12700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 49),
  -- Pinsir - Secret Power - TM94
  (127, 12700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Pinsir - Confide - TM100
  (127, 12700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 52),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 53),
  -- Pinsir - Rock Smash - HM06
  (127, 12700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 54),
  -- Pinsir - Fury Attack - Egg
  (127, 12700, 31, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pinsir - Quick Attack - Egg
  (127, 12700, 98, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pinsir - Flail - Egg
  (127, 12700, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pinsir - Feint Attack - Egg
  (127, 12700, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pinsir - Superpower - Egg
  (127, 12700, 276, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pinsir - Feint - Egg
  (127, 12700, 364, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pinsir - Close Combat - Egg
  (127, 12700, 370, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pinsir - Me First - Egg
  (127, 12700, 382, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pinsir - Bug Bite - Egg
  (127, 12700, 450, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pinsir - Bind - Tutor
  (127, 12700, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Pinsir - Snore - Tutor
  (127, 12700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Pinsir - Focus Punch - Tutor
  (127, 12700, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Pinsir - Superpower - Tutor
  (127, 12700, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Pinsir - Knock Off - Tutor
  (127, 12700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Pinsir - Iron Defense - Tutor
  (127, 12700, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Pinsir - Stealth Rock - Tutor
  (127, 12700, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Pinsir - Bug Bite - Tutor
  (127, 12700, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 3
  (128, 12800, 39, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 5
  (128, 12800, 99, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 8
  (128, 12800, 30, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tauros - Scary Face - Level 11
  (128, 12800, 184, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tauros - Pursuit - Level 15
  (128, 12800, 228, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tauros - Rest - Level 19
  (128, 12800, 156, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tauros - Payback - Level 24
  (128, 12800, 371, 14, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tauros - Work Up - Level 29
  (128, 12800, 526, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tauros - Zen Headbutt - Level 35
  (128, 12800, 428, 14, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Tauros - Take Down - Level 41
  (128, 12800, 36, 14, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Tauros - Swagger - Level 48
  (128, 12800, 207, 14, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Tauros - Thrash - Level 50
  (128, 12800, 37, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Tauros - Giga Impact - Level 63
  (128, 12800, 416, 14, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Tauros - Hidden Power - TM10
  (128, 12800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 20),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Tauros - Rain Dance - TM18
  (128, 12800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Tauros - Frustration - TM21
  (128, 12800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Tauros - Solar Beam - TM22
  (128, 12800, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 25),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 26),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 27),
  -- Tauros - Return - TM27
  (128, 12800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Tauros - Flamethrower - TM35
  (128, 12800, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 30),
  -- Tauros - Sandstorm - TM37
  (128, 12800, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 31),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 32),
  -- Tauros - Rock Tomb - TM39
  (128, 12800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 33),
  -- Tauros - Facade - TM42
  (128, 12800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 36),
  -- Tauros - Round - TM48
  (128, 12800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Tauros - Incinerate - TM59
  (128, 12800, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Tauros - Payback - TM66
  (128, 12800, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 39),
  -- Tauros - Retaliate - TM67
  (128, 12800, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 40),
  -- Tauros - Giga Impact - TM68
  (128, 12800, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 41),
  -- Tauros - Stone Edge - TM71
  (128, 12800, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 42),
  -- Tauros - Bulldoze - TM78
  (128, 12800, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 43),
  -- Tauros - Rock Slide - TM80
  (128, 12800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 44),
  -- Tauros - Swagger - TM87
  (128, 12800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Tauros - Sleep Talk - TM88
  (128, 12800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Tauros - Substitute - TM90
  (128, 12800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Tauros - Wild Charge - TM93
  (128, 12800, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 48),
  -- Tauros - Secret Power - TM94
  (128, 12800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Tauros - Confide - TM100
  (128, 12800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Tauros - Surf - HM03
  (128, 12800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 51),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Tauros - Rock Smash - HM06
  (128, 12800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Tauros - Snore - Tutor
  (128, 12800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Tauros - Spite - Tutor
  (128, 12800, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Tauros - Icy Wind - Tutor
  (128, 12800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Tauros - Outrage - Tutor
  (128, 12800, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Tauros - Iron Tail - Tutor
  (128, 12800, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Tauros - Uproar - Tutor
  (128, 12800, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Tauros - Helping Hand - Tutor
  (128, 12800, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Tauros - Role Play - Tutor
  (128, 12800, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Tauros - Endeavor - Tutor
  (128, 12800, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Tauros - Shock Wave - Tutor
  (128, 12800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Tauros - Water Pulse - Tutor
  (128, 12800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Tauros - Zen Headbutt - Tutor
  (128, 12800, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Tauros - Iron Head - Tutor
  (128, 12800, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 14, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 30
  (129, 12900, 175, 14, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Magikarp - Bounce - Tutor
  (129, 12900, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 4),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 14, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Gyarados - Dragon Rage - Level 23
  (130, 13000, 82, 14, NULL, 1, 23, NULL, NULL, NULL, 3),
  -- Gyarados - Leer - Level 26
  (130, 13000, 43, 14, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 29
  (130, 13000, 239, 14, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Gyarados - Ice Fang - Level 32
  (130, 13000, 423, 14, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Gyarados - Aqua Tail - Level 35
  (130, 13000, 401, 14, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Gyarados - Rain Dance - Level 38
  (130, 13000, 240, 14, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Gyarados - Crunch - Level 41
  (130, 13000, 242, 14, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Gyarados - Hydro Pump - Level 44
  (130, 13000, 56, 14, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Gyarados - Dragon Dance - Level 47
  (130, 13000, 349, 14, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Gyarados - Hyper Beam - Level 50
  (130, 13000, 63, 14, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 13),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Gyarados - Hail - TM07
  (130, 13000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 15),
  -- Gyarados - Hidden Power - TM10
  (130, 13000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Gyarados - Taunt - TM12
  (130, 13000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 17),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 20),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Gyarados - Frustration - TM21
  (130, 13000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Gyarados - Earthquake - TM26
  (130, 13000, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 26),
  -- Gyarados - Return - TM27
  (130, 13000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Gyarados - Flamethrower - TM35
  (130, 13000, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 29),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 30),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 31),
  -- Gyarados - Torment - TM41
  (130, 13000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 32),
  -- Gyarados - Facade - TM42
  (130, 13000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Gyarados - Round - TM48
  (130, 13000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Gyarados - Scald - TM55
  (130, 13000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 37),
  -- Gyarados - Incinerate - TM59
  (130, 13000, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Gyarados - Payback - TM66
  (130, 13000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 39),
  -- Gyarados - Giga Impact - TM68
  (130, 13000, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 40),
  -- Gyarados - Stone Edge - TM71
  (130, 13000, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 41),
  -- Gyarados - Thunder Wave - TM73
  (130, 13000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 42),
  -- Gyarados - Bulldoze - TM78
  (130, 13000, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 43),
  -- Gyarados - Dragon Tail - TM82
  (130, 13000, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 44),
  -- Gyarados - Swagger - TM87
  (130, 13000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Gyarados - Sleep Talk - TM88
  (130, 13000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Gyarados - Substitute - TM90
  (130, 13000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Gyarados - Secret Power - TM94
  (130, 13000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Gyarados - Dark Pulse - TM97
  (130, 13000, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 49),
  -- Gyarados - Confide - TM100
  (130, 13000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 51),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Gyarados - Waterfall - HM05
  (130, 13000, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 53),
  -- Gyarados - Rock Smash - HM06
  (130, 13000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 54),
  -- Gyarados - Dive - HM07
  (130, 13000, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 55),
  -- Gyarados - Snore - Tutor
  (130, 13000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Gyarados - Spite - Tutor
  (130, 13000, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Gyarados - Icy Wind - Tutor
  (130, 13000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Gyarados - Outrage - Tutor
  (130, 13000, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Gyarados - Iron Tail - Tutor
  (130, 13000, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Gyarados - Uproar - Tutor
  (130, 13000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Gyarados - Bounce - Tutor
  (130, 13000, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Gyarados - Water Pulse - Tutor
  (130, 13000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Gyarados - Aqua Tail - Tutor
  (130, 13000, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Gyarados - Dragon Pulse - Tutor
  (130, 13000, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Gyarados - Iron Head - Tutor
  (130, 13000, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 4
  (131, 13100, 54, 14, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Lapras - Confuse Ray - Level 7
  (131, 13100, 109, 14, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 10
  (131, 13100, 420, 14, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Lapras - Water Pulse - Level 14
  (131, 13100, 352, 14, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Lapras - Body Slam - Level 18
  (131, 13100, 34, 14, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Lapras - Rain Dance - Level 22
  (131, 13100, 240, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Lapras - Perish Song - Level 27
  (131, 13100, 195, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 32
  (131, 13100, 58, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Lapras - Brine - Level 37
  (131, 13100, 362, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lapras - Safeguard - Level 43
  (131, 13100, 219, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lapras - Hydro Pump - Level 47
  (131, 13100, 56, 14, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 50
  (131, 13100, 329, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Lapras - Roar - TM05
  (131, 13100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 16),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Lapras - Hail - TM07
  (131, 13100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 18),
  -- Lapras - Hidden Power - TM10
  (131, 13100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Lapras - Safeguard - TM20
  (131, 13100, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 25),
  -- Lapras - Frustration - TM21
  (131, 13100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 27),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 28),
  -- Lapras - Return - TM27
  (131, 13100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 30),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Lapras - Facade - TM42
  (131, 13100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Lapras - Round - TM48
  (131, 13100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Lapras - Echoed Voice - TM49
  (131, 13100, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 36),
  -- Lapras - Giga Impact - TM68
  (131, 13100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Lapras - Bulldoze - TM78
  (131, 13100, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 38),
  -- Lapras - Frost Breath - TM79
  (131, 13100, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 39),
  -- Lapras - Dream Eater - TM85
  (131, 13100, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 40),
  -- Lapras - Swagger - TM87
  (131, 13100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Lapras - Sleep Talk - TM88
  (131, 13100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Lapras - Substitute - TM90
  (131, 13100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Lapras - Secret Power - TM94
  (131, 13100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Lapras - Confide - TM100
  (131, 13100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 45),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 46),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 47),
  -- Lapras - Waterfall - HM05
  (131, 13100, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 48),
  -- Lapras - Rock Smash - HM06
  (131, 13100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 49),
  -- Lapras - Dive - HM07
  (131, 13100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 50),
  -- Lapras - Horn Drill - Egg
  (131, 13100, 32, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lapras - Fissure - Egg
  (131, 13100, 90, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lapras - Curse - Egg
  (131, 13100, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lapras - Foresight - Egg
  (131, 13100, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lapras - Sleep Talk - Egg
  (131, 13100, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lapras - Ancient Power - Egg
  (131, 13100, 246, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lapras - Future Sight - Egg
  (131, 13100, 248, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lapras - Whirlpool - Egg
  (131, 13100, 250, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lapras - Refresh - Egg
  (131, 13100, 287, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lapras - Tickle - Egg
  (131, 13100, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lapras - Dragon Dance - Egg
  (131, 13100, 349, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lapras - Dragon Pulse - Egg
  (131, 13100, 406, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lapras - Avalanche - Egg
  (131, 13100, 419, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lapras - Freeze-Dry - Egg
  (131, 13100, 573, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lapras - Snore - Tutor
  (131, 13100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Lapras - Icy Wind - Tutor
  (131, 13100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Lapras - Outrage - Tutor
  (131, 13100, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Lapras - Heal Bell - Tutor
  (131, 13100, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Lapras - Iron Tail - Tutor
  (131, 13100, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Lapras - Hyper Voice - Tutor
  (131, 13100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Lapras - Signal Beam - Tutor
  (131, 13100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Lapras - Block - Tutor
  (131, 13100, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Lapras - Shock Wave - Tutor
  (131, 13100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Lapras - Water Pulse - Tutor
  (131, 13100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Lapras - Aqua Tail - Tutor
  (131, 13100, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Lapras - Dragon Pulse - Tutor
  (131, 13100, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Lapras - Zen Headbutt - Tutor
  (131, 13100, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Lapras - Iron Head - Tutor
  (131, 13100, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Lapras - Drill Run - Tutor
  (131, 13100, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Growl - Level 1
  (133, 13300, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eevee - Sand Attack - Level 5
  (133, 13300, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Eevee - Baby-Doll Eyes - Level 9
  (133, 13300, 608, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Eevee - Swift - Level 10
  (133, 13300, 129, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Eevee - Quick Attack - Level 13
  (133, 13300, 98, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Eevee - Bite - Level 17
  (133, 13300, 44, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Eevee - Refresh - Level 20
  (133, 13300, 287, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Eevee - Covet - Level 23
  (133, 13300, 343, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Eevee - Take Down - Level 25
  (133, 13300, 36, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Eevee - Charm - Level 29
  (133, 13300, 204, 14, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Eevee - Baton Pass - Level 33
  (133, 13300, 226, 14, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Eevee - Double-Edge - Level 37
  (133, 13300, 38, 14, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Eevee - Last Resort - Level 41
  (133, 13300, 387, 14, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Eevee - Trump Card - Level 45
  (133, 13300, 376, 14, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Eevee - Hidden Power - TM10
  (133, 13300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Eevee - Frustration - TM21
  (133, 13300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Eevee - Return - TM27
  (133, 13300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Eevee - Dig - TM28
  (133, 13300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 25),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Eevee - Facade - TM42
  (133, 13300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Eevee - Round - TM48
  (133, 13300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Eevee - Echoed Voice - TM49
  (133, 13300, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 32),
  -- Eevee - Retaliate - TM67
  (133, 13300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 33),
  -- Eevee - Swagger - TM87
  (133, 13300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Eevee - Sleep Talk - TM88
  (133, 13300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Eevee - Substitute - TM90
  (133, 13300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Eevee - Secret Power - TM94
  (133, 13300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Eevee - Confide - TM100
  (133, 13300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 38),
  -- Eevee - Curse - Egg
  (133, 13300, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Eevee - Flail - Egg
  (133, 13300, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eevee - Detect - Egg
  (133, 13300, 197, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Eevee - Endure - Egg
  (133, 13300, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Eevee - Charm - Egg
  (133, 13300, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Eevee - Wish - Egg
  (133, 13300, 273, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eevee - Yawn - Egg
  (133, 13300, 281, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eevee - Fake Tears - Egg
  (133, 13300, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eevee - Tickle - Egg
  (133, 13300, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Eevee - Covet - Egg
  (133, 13300, 343, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Eevee - Natural Gift - Egg
  (133, 13300, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Eevee - Captivate - Egg
  (133, 13300, 445, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Eevee - Synchronoise - Egg
  (133, 13300, 485, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Eevee - Stored Power - Egg
  (133, 13300, 500, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Eevee - Snore - Tutor
  (133, 13300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Eevee - Heal Bell - Tutor
  (133, 13300, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Eevee - Iron Tail - Tutor
  (133, 13300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Eevee - Helping Hand - Tutor
  (133, 13300, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Eevee - Hyper Voice - Tutor
  (133, 13300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Eevee - Covet - Tutor
  (133, 13300, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Eevee - Last Resort - Tutor
  (133, 13300, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Sand Attack - Level 5
  (134, 13400, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Vaporeon - Water Gun - Level 9
  (134, 13400, 55, 14, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Vaporeon - Quick Attack - Level 13
  (134, 13400, 98, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vaporeon - Water Pulse - Level 17
  (134, 13400, 352, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Vaporeon - Aurora Beam - Level 20
  (134, 13400, 62, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Vaporeon - Aqua Ring - Level 25
  (134, 13400, 392, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Vaporeon - Acid Armor - Level 29
  (134, 13400, 151, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Vaporeon - Haze - Level 33
  (134, 13400, 114, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Vaporeon - Muddy Water - Level 37
  (134, 13400, 330, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Vaporeon - Last Resort - Level 41
  (134, 13400, 387, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Vaporeon - Hydro Pump - Level 45
  (134, 13400, 56, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 15),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Vaporeon - Hail - TM07
  (134, 13400, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 17),
  -- Vaporeon - Hidden Power - TM10
  (134, 13400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Vaporeon - Frustration - TM21
  (134, 13400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Vaporeon - Return - TM27
  (134, 13400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Vaporeon - Dig - TM28
  (134, 13400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 27),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 28),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Vaporeon - Facade - TM42
  (134, 13400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Vaporeon - Round - TM48
  (134, 13400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Vaporeon - Echoed Voice - TM49
  (134, 13400, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 34),
  -- Vaporeon - Scald - TM55
  (134, 13400, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 35),
  -- Vaporeon - Retaliate - TM67
  (134, 13400, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 36),
  -- Vaporeon - Giga Impact - TM68
  (134, 13400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Vaporeon - Swagger - TM87
  (134, 13400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 38),
  -- Vaporeon - Sleep Talk - TM88
  (134, 13400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 39),
  -- Vaporeon - Substitute - TM90
  (134, 13400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Vaporeon - Secret Power - TM94
  (134, 13400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Vaporeon - Confide - TM100
  (134, 13400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 43),
  -- Vaporeon - Strength - HM04
  (134, 13400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 44),
  -- Vaporeon - Waterfall - HM05
  (134, 13400, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 45),
  -- Vaporeon - Rock Smash - HM06
  (134, 13400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 46),
  -- Vaporeon - Dive - HM07
  (134, 13400, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 47),
  -- Vaporeon - Snore - Tutor
  (134, 13400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Vaporeon - Icy Wind - Tutor
  (134, 13400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Vaporeon - Heal Bell - Tutor
  (134, 13400, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Vaporeon - Iron Tail - Tutor
  (134, 13400, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Vaporeon - Helping Hand - Tutor
  (134, 13400, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Vaporeon - Hyper Voice - Tutor
  (134, 13400, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Vaporeon - Signal Beam - Tutor
  (134, 13400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Vaporeon - Covet - Tutor
  (134, 13400, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Vaporeon - Water Pulse - Tutor
  (134, 13400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Vaporeon - Last Resort - Tutor
  (134, 13400, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Vaporeon - Aqua Tail - Tutor
  (134, 13400, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Sand Attack - Level 5
  (135, 13500, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Jolteon - Thunder Shock - Level 9
  (135, 13500, 84, 14, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Jolteon - Quick Attack - Level 13
  (135, 13500, 98, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Jolteon - Double Kick - Level 17
  (135, 13500, 24, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Jolteon - Thunder Fang - Level 20
  (135, 13500, 422, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Jolteon - Pin Missile - Level 25
  (135, 13500, 42, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Jolteon - Agility - Level 29
  (135, 13500, 97, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Jolteon - Thunder Wave - Level 33
  (135, 13500, 86, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Jolteon - Discharge - Level 37
  (135, 13500, 435, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Jolteon - Last Resort - Level 41
  (135, 13500, 387, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Jolteon - Thunder - Level 45
  (135, 13500, 87, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 15),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Jolteon - Hidden Power - TM10
  (135, 13500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 19),
  -- Jolteon - Light Screen - TM16
  (135, 13500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Jolteon - Frustration - TM21
  (135, 13500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Jolteon - Return - TM27
  (135, 13500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Jolteon - Dig - TM28
  (135, 13500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 27),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 28),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Jolteon - Facade - TM42
  (135, 13500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Jolteon - Round - TM48
  (135, 13500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Jolteon - Echoed Voice - TM49
  (135, 13500, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 34),
  -- Jolteon - Charge Beam - TM57
  (135, 13500, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 35),
  -- Jolteon - Retaliate - TM67
  (135, 13500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 36),
  -- Jolteon - Giga Impact - TM68
  (135, 13500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Jolteon - Flash - TM70
  (135, 13500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Jolteon - Volt Switch - TM72
  (135, 13500, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 39),
  -- Jolteon - Thunder Wave - TM73
  (135, 13500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 40),
  -- Jolteon - Swagger - TM87
  (135, 13500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Jolteon - Sleep Talk - TM88
  (135, 13500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Jolteon - Substitute - TM90
  (135, 13500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Jolteon - Wild Charge - TM93
  (135, 13500, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 44),
  -- Jolteon - Secret Power - TM94
  (135, 13500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Jolteon - Confide - TM100
  (135, 13500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Jolteon - Strength - HM04
  (135, 13500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 47),
  -- Jolteon - Rock Smash - HM06
  (135, 13500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 48),
  -- Jolteon - Snore - Tutor
  (135, 13500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Jolteon - Heal Bell - Tutor
  (135, 13500, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Jolteon - Iron Tail - Tutor
  (135, 13500, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Jolteon - Helping Hand - Tutor
  (135, 13500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Jolteon - Hyper Voice - Tutor
  (135, 13500, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Jolteon - Signal Beam - Tutor
  (135, 13500, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Jolteon - Covet - Tutor
  (135, 13500, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Jolteon - Shock Wave - Tutor
  (135, 13500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Jolteon - Last Resort - Tutor
  (135, 13500, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Jolteon - Magnet Rise - Tutor
  (135, 13500, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Sand Attack - Level 5
  (136, 13600, 28, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Flareon - Ember - Level 9
  (136, 13600, 52, 14, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Flareon - Quick Attack - Level 13
  (136, 13600, 98, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Flareon - Bite - Level 17
  (136, 13600, 44, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Flareon - Fire Fang - Level 20
  (136, 13600, 424, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Flareon - Fire Spin - Level 25
  (136, 13600, 83, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Flareon - Scary Face - Level 29
  (136, 13600, 184, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Flareon - Smog - Level 33
  (136, 13600, 123, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Flareon - Lava Plume - Level 37
  (136, 13600, 436, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Flareon - Last Resort - Level 41
  (136, 13600, 387, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Flareon - Flare Blitz - Level 45
  (136, 13600, 394, 14, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 15),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Flareon - Hidden Power - TM10
  (136, 13600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 19),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Flareon - Frustration - TM21
  (136, 13600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Flareon - Return - TM27
  (136, 13600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Flareon - Dig - TM28
  (136, 13600, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 24),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 25),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Flareon - Flamethrower - TM35
  (136, 13600, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 27),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 28),
  -- Flareon - Facade - TM42
  (136, 13600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Flareon - Flame Charge - TM43
  (136, 13600, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 30),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Flareon - Round - TM48
  (136, 13600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Flareon - Echoed Voice - TM49
  (136, 13600, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 34),
  -- Flareon - Overheat - TM50
  (136, 13600, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 35),
  -- Flareon - Incinerate - TM59
  (136, 13600, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 36),
  -- Flareon - Will-O-Wisp - TM61
  (136, 13600, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 37),
  -- Flareon - Retaliate - TM67
  (136, 13600, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 38),
  -- Flareon - Giga Impact - TM68
  (136, 13600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 39),
  -- Flareon - Swagger - TM87
  (136, 13600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Flareon - Sleep Talk - TM88
  (136, 13600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Flareon - Substitute - TM90
  (136, 13600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Flareon - Secret Power - TM94
  (136, 13600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Flareon - Confide - TM100
  (136, 13600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Flareon - Strength - HM04
  (136, 13600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 45),
  -- Flareon - Rock Smash - HM06
  (136, 13600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 46),
  -- Flareon - Snore - Tutor
  (136, 13600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Flareon - Heal Bell - Tutor
  (136, 13600, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Flareon - Iron Tail - Tutor
  (136, 13600, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Flareon - Heat Wave - Tutor
  (136, 13600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Flareon - Helping Hand - Tutor
  (136, 13600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Flareon - Superpower - Tutor
  (136, 13600, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Flareon - Hyper Voice - Tutor
  (136, 13600, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Flareon - Covet - Tutor
  (136, 13600, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Flareon - Last Resort - Tutor
  (136, 13600, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Sharpen - Level 1
  (137, 13700, 159, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Conversion 2 - Level 1
  (137, 13700, 176, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon - Psybeam - Level 7
  (137, 13700, 60, 14, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Porygon - Agility - Level 12
  (137, 13700, 97, 14, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Porygon - Recover - Level 18
  (137, 13700, 105, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Porygon - Magnet Rise - Level 23
  (137, 13700, 393, 14, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Porygon - Signal Beam - Level 29
  (137, 13700, 324, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Porygon - Recycle - Level 34
  (137, 13700, 278, 14, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 14, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon - Lock-On - Level 45
  (137, 13700, 199, 14, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon - Tri Attack - Level 50
  (137, 13700, 161, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon - Magic Coat - Level 56
  (137, 13700, 277, 14, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Porygon - Zap Cannon - Level 62
  (137, 13700, 192, 14, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Porygon - Psyshock - TM03
  (137, 13700, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 16),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Porygon - Hidden Power - TM10
  (137, 13700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Porygon - Frustration - TM21
  (137, 13700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Porygon - Solar Beam - TM22
  (137, 13700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 26),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 27),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 28),
  -- Porygon - Return - TM27
  (137, 13700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 30),
  -- Porygon - Shadow Ball - TM30
  (137, 13700, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 31),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Porygon - Aerial Ace - TM40
  (137, 13700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 33),
  -- Porygon - Facade - TM42
  (137, 13700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 34),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 35),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Porygon - Round - TM48
  (137, 13700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Porygon - Charge Beam - TM57
  (137, 13700, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 38),
  -- Porygon - Giga Impact - TM68
  (137, 13700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 39),
  -- Porygon - Flash - TM70
  (137, 13700, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 40),
  -- Porygon - Thunder Wave - TM73
  (137, 13700, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 41),
  -- Porygon - Psych Up - TM77
  (137, 13700, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 42),
  -- Porygon - Dream Eater - TM85
  (137, 13700, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 43),
  -- Porygon - Swagger - TM87
  (137, 13700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 44),
  -- Porygon - Sleep Talk - TM88
  (137, 13700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 45),
  -- Porygon - Substitute - TM90
  (137, 13700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 46),
  -- Porygon - Trick Room - TM92
  (137, 13700, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 47),
  -- Porygon - Secret Power - TM94
  (137, 13700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Porygon - Confide - TM100
  (137, 13700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 49),
  -- Porygon - Snore - Tutor
  (137, 13700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Porygon - Icy Wind - Tutor
  (137, 13700, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Porygon - Pain Split - Tutor
  (137, 13700, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Porygon - Iron Tail - Tutor
  (137, 13700, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Porygon - Trick - Tutor
  (137, 13700, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Porygon - Magic Coat - Tutor
  (137, 13700, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Porygon - Recycle - Tutor
  (137, 13700, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Porygon - Signal Beam - Tutor
  (137, 13700, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Porygon - Shock Wave - Tutor
  (137, 13700, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Porygon - Gravity - Tutor
  (137, 13700, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Porygon - Last Resort - Tutor
  (137, 13700, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Porygon - Magnet Rise - Tutor
  (137, 13700, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Porygon - Zen Headbutt - Tutor
  (137, 13700, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Porygon - Wonder Room - Tutor
  (137, 13700, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Porygon - Foul Play - Tutor
  (137, 13700, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Porygon - Electroweb - Tutor
  (137, 13700, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Bite - Level 7
  (138, 13800, 44, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 10
  (138, 13800, 55, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Omanyte - Rollout - Level 16
  (138, 13800, 205, 14, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 19
  (138, 13800, 43, 14, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Omanyte - Brine - Level 28
  (138, 13800, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Omanyte - Protect - Level 34
  (138, 13800, 182, 14, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Omanyte - Ancient Power - Level 37
  (138, 13800, 246, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Omanyte - Tickle - Level 43
  (138, 13800, 321, 14, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Omanyte - Rock Blast - Level 46
  (138, 13800, 350, 14, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Omanyte - Shell Smash - Level 50
  (138, 13800, 504, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Omanyte - Hydro Pump - Level 55
  (138, 13800, 56, 14, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Omanyte - Hail - TM07
  (138, 13800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Omanyte - Hidden Power - TM10
  (138, 13800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Omanyte - Frustration - TM21
  (138, 13800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Omanyte - Smack Down - TM23
  (138, 13800, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 23),
  -- Omanyte - Return - TM27
  (138, 13800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 26),
  -- Omanyte - Rock Tomb - TM39
  (138, 13800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 27),
  -- Omanyte - Facade - TM42
  (138, 13800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 31),
  -- Omanyte - Round - TM48
  (138, 13800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Omanyte - Scald - TM55
  (138, 13800, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 33),
  -- Omanyte - Rock Polish - TM69
  (138, 13800, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 34),
  -- Omanyte - Gyro Ball - TM74
  (138, 13800, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 35),
  -- Omanyte - Rock Slide - TM80
  (138, 13800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 36),
  -- Omanyte - Swagger - TM87
  (138, 13800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Omanyte - Sleep Talk - TM88
  (138, 13800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Omanyte - Substitute - TM90
  (138, 13800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Omanyte - Secret Power - TM94
  (138, 13800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Omanyte - Confide - TM100
  (138, 13800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 41),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 42),
  -- Omanyte - Waterfall - HM05
  (138, 13800, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 43),
  -- Omanyte - Rock Smash - HM06
  (138, 13800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 44),
  -- Omanyte - Dive - HM07
  (138, 13800, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 45),
  -- Omanyte - Slam - Egg
  (138, 13800, 21, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Omanyte - Supersonic - Egg
  (138, 13800, 48, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Omanyte - Bubble Beam - Egg
  (138, 13800, 61, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Omanyte - Aurora Beam - Egg
  (138, 13800, 62, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Omanyte - Haze - Egg
  (138, 13800, 114, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omanyte - Bide - Egg
  (138, 13800, 117, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omanyte - Spikes - Egg
  (138, 13800, 191, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omanyte - Whirlpool - Egg
  (138, 13800, 250, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omanyte - Knock Off - Egg
  (138, 13800, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Omanyte - Muddy Water - Egg
  (138, 13800, 330, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Omanyte - Water Pulse - Egg
  (138, 13800, 352, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Omanyte - Wring Out - Egg
  (138, 13800, 378, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Omanyte - Toxic Spikes - Egg
  (138, 13800, 390, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Omanyte - Reflect Type - Egg
  (138, 13800, 513, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Omanyte - Bind - Tutor
  (138, 13800, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Omanyte - Snore - Tutor
  (138, 13800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Omanyte - Icy Wind - Tutor
  (138, 13800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Omanyte - Knock Off - Tutor
  (138, 13800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Omanyte - Iron Defense - Tutor
  (138, 13800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Omanyte - Water Pulse - Tutor
  (138, 13800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Omanyte - Earth Power - Tutor
  (138, 13800, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Omanyte - Stealth Rock - Tutor
  (138, 13800, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Omastar - Bite - Level 1
  (139, 13900, 44, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Hydro Pump - Level 1
  (139, 13900, 56, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Omastar - Bite - Level 7
  (139, 13900, 44, 14, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Omastar - Water Gun - Level 10
  (139, 13900, 55, 14, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Omastar - Rollout - Level 16
  (139, 13900, 205, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Omastar - Leer - Level 19
  (139, 13900, 43, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Omastar - Brine - Level 28
  (139, 13900, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Omastar - Protect - Level 34
  (139, 13900, 182, 14, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Omastar - Ancient Power - Level 37
  (139, 13900, 246, 14, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Omastar - Spike Cannon - Level 40
  (139, 13900, 131, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Omastar - Tickle - Level 48
  (139, 13900, 321, 14, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Omastar - Rock Blast - Level 56
  (139, 13900, 350, 14, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Omastar - Shell Smash - Level 67
  (139, 13900, 504, 14, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Omastar - Hydro Pump - Level 75
  (139, 13900, 56, 14, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Omastar - Hail - TM07
  (139, 13900, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 19),
  -- Omastar - Hidden Power - TM10
  (139, 13900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Omastar - Frustration - TM21
  (139, 13900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Omastar - Smack Down - TM23
  (139, 13900, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 27),
  -- Omastar - Return - TM27
  (139, 13900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 30),
  -- Omastar - Rock Tomb - TM39
  (139, 13900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Omastar - Facade - TM42
  (139, 13900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Omastar - Round - TM48
  (139, 13900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Omastar - Scald - TM55
  (139, 13900, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 37),
  -- Omastar - Giga Impact - TM68
  (139, 13900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 38),
  -- Omastar - Rock Polish - TM69
  (139, 13900, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 39),
  -- Omastar - Stone Edge - TM71
  (139, 13900, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 40),
  -- Omastar - Gyro Ball - TM74
  (139, 13900, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 41),
  -- Omastar - Rock Slide - TM80
  (139, 13900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 42),
  -- Omastar - Swagger - TM87
  (139, 13900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Omastar - Sleep Talk - TM88
  (139, 13900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Omastar - Substitute - TM90
  (139, 13900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Omastar - Secret Power - TM94
  (139, 13900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Omastar - Confide - TM100
  (139, 13900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 48),
  -- Omastar - Waterfall - HM05
  (139, 13900, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 49),
  -- Omastar - Rock Smash - HM06
  (139, 13900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Omastar - Dive - HM07
  (139, 13900, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 51),
  -- Omastar - Bind - Tutor
  (139, 13900, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Omastar - Snore - Tutor
  (139, 13900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Omastar - Icy Wind - Tutor
  (139, 13900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Omastar - Knock Off - Tutor
  (139, 13900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Omastar - Iron Defense - Tutor
  (139, 13900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Omastar - Water Pulse - Tutor
  (139, 13900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Omastar - Earth Power - Tutor
  (139, 13900, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Omastar - Stealth Rock - Tutor
  (139, 13900, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 6
  (140, 14000, 71, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kabuto - Leer - Level 11
  (140, 14000, 43, 14, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Kabuto - Mud Shot - Level 16
  (140, 14000, 341, 14, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Kabuto - Sand Attack - Level 21
  (140, 14000, 28, 14, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kabuto - Endure - Level 26
  (140, 14000, 203, 14, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kabuto - Aqua Jet - Level 31
  (140, 14000, 453, 14, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Kabuto - Mega Drain - Level 36
  (140, 14000, 72, 14, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Kabuto - Metal Sound - Level 41
  (140, 14000, 319, 14, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Kabuto - Ancient Power - Level 46
  (140, 14000, 246, 14, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Kabuto - Wring Out - Level 50
  (140, 14000, 378, 14, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Kabuto - Hone Claws - TM01
  (140, 14000, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 13),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Kabuto - Hail - TM07
  (140, 14000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 15),
  -- Kabuto - Hidden Power - TM10
  (140, 14000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 17),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 18),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Kabuto - Frustration - TM21
  (140, 14000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Kabuto - Smack Down - TM23
  (140, 14000, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 22),
  -- Kabuto - Return - TM27
  (140, 14000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Kabuto - Dig - TM28
  (140, 14000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 24),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 26),
  -- Kabuto - Rock Tomb - TM39
  (140, 14000, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 27),
  -- Kabuto - Aerial Ace - TM40
  (140, 14000, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 28),
  -- Kabuto - Facade - TM42
  (140, 14000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Kabuto - Round - TM48
  (140, 14000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Kabuto - Scald - TM55
  (140, 14000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 34),
  -- Kabuto - Rock Polish - TM69
  (140, 14000, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 35),
  -- Kabuto - Rock Slide - TM80
  (140, 14000, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 36),
  -- Kabuto - Swagger - TM87
  (140, 14000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Kabuto - Sleep Talk - TM88
  (140, 14000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Kabuto - Substitute - TM90
  (140, 14000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Kabuto - Secret Power - TM94
  (140, 14000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Kabuto - Confide - TM100
  (140, 14000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 41),
  -- Kabuto - Surf - HM03
  (140, 14000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 42),
  -- Kabuto - Waterfall - HM05
  (140, 14000, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 43),
  -- Kabuto - Rock Smash - HM06
  (140, 14000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 44),
  -- Kabuto - Take Down - Egg
  (140, 14000, 36, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Kabuto - Bubble Beam - Egg
  (140, 14000, 61, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kabuto - Aurora Beam - Egg
  (140, 14000, 62, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kabuto - Screech - Egg
  (140, 14000, 103, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kabuto - Confuse Ray - Egg
  (140, 14000, 109, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kabuto - Flail - Egg
  (140, 14000, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kabuto - Foresight - Egg
  (140, 14000, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kabuto - Icy Wind - Egg
  (140, 14000, 196, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kabuto - Giga Drain - Egg
  (140, 14000, 202, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kabuto - Rapid Spin - Egg
  (140, 14000, 229, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kabuto - Knock Off - Egg
  (140, 14000, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kabuto - Mud Shot - Egg
  (140, 14000, 341, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kabuto - Snore - Tutor
  (140, 14000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Kabuto - Icy Wind - Tutor
  (140, 14000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Kabuto - Giga Drain - Tutor
  (140, 14000, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Kabuto - Knock Off - Tutor
  (140, 14000, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Kabuto - Iron Defense - Tutor
  (140, 14000, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Kabuto - Water Pulse - Tutor
  (140, 14000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Kabuto - Earth Power - Tutor
  (140, 14000, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Kabuto - Stealth Rock - Tutor
  (140, 14000, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Leer - Level 1
  (141, 14100, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kabutops - Feint - Level 1
  (141, 14100, 364, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kabutops - Night Slash - Level 1
  (141, 14100, 400, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kabutops - Absorb - Level 6
  (141, 14100, 71, 14, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Kabutops - Leer - Level 11
  (141, 14100, 43, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kabutops - Mud Shot - Level 16
  (141, 14100, 341, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Kabutops - Sand Attack - Level 21
  (141, 14100, 28, 14, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Kabutops - Endure - Level 26
  (141, 14100, 203, 14, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Kabutops - Aqua Jet - Level 31
  (141, 14100, 453, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Kabutops - Mega Drain - Level 36
  (141, 14100, 72, 14, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Kabutops - Slash - Level 40
  (141, 14100, 163, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Kabutops - Metal Sound - Level 45
  (141, 14100, 319, 14, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Kabutops - Ancient Power - Level 54
  (141, 14100, 246, 14, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Kabutops - Wring Out - Level 63
  (141, 14100, 378, 14, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Kabutops - Night Slash - Level 72
  (141, 14100, 400, 14, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Kabutops - Hone Claws - TM01
  (141, 14100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 19),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Kabutops - Hail - TM07
  (141, 14100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 21),
  -- Kabutops - Hidden Power - TM10
  (141, 14100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Kabutops - Frustration - TM21
  (141, 14100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Kabutops - Smack Down - TM23
  (141, 14100, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 29),
  -- Kabutops - Return - TM27
  (141, 14100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Kabutops - Dig - TM28
  (141, 14100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Kabutops - Brick Break - TM31
  (141, 14100, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 32),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 34),
  -- Kabutops - Rock Tomb - TM39
  (141, 14100, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 35),
  -- Kabutops - Aerial Ace - TM40
  (141, 14100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 36),
  -- Kabutops - Facade - TM42
  (141, 14100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 39),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 40),
  -- Kabutops - Round - TM48
  (141, 14100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 41),
  -- Kabutops - Scald - TM55
  (141, 14100, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 42),
  -- Kabutops - Giga Impact - TM68
  (141, 14100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 43),
  -- Kabutops - Rock Polish - TM69
  (141, 14100, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 44),
  -- Kabutops - Stone Edge - TM71
  (141, 14100, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 45),
  -- Kabutops - Swords Dance - TM75
  (141, 14100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 46),
  -- Kabutops - Rock Slide - TM80
  (141, 14100, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 47),
  -- Kabutops - X-Scissor - TM81
  (141, 14100, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 48),
  -- Kabutops - Swagger - TM87
  (141, 14100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 49),
  -- Kabutops - Sleep Talk - TM88
  (141, 14100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 50),
  -- Kabutops - Substitute - TM90
  (141, 14100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 51),
  -- Kabutops - Secret Power - TM94
  (141, 14100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Kabutops - Nature Power - TM96
  (141, 14100, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 53),
  -- Kabutops - Confide - TM100
  (141, 14100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Kabutops - Cut - HM01
  (141, 14100, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 55),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 56),
  -- Kabutops - Waterfall - HM05
  (141, 14100, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 57),
  -- Kabutops - Rock Smash - HM06
  (141, 14100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 58),
  -- Kabutops - Dive - HM07
  (141, 14100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 59),
  -- Kabutops - Low Kick - Tutor
  (141, 14100, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Kabutops - Snore - Tutor
  (141, 14100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Kabutops - Icy Wind - Tutor
  (141, 14100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Kabutops - Giga Drain - Tutor
  (141, 14100, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Kabutops - Superpower - Tutor
  (141, 14100, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Kabutops - Knock Off - Tutor
  (141, 14100, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Kabutops - Iron Defense - Tutor
  (141, 14100, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Kabutops - Water Pulse - Tutor
  (141, 14100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Kabutops - Aqua Tail - Tutor
  (141, 14100, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Kabutops - Earth Power - Tutor
  (141, 14100, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Kabutops - Stealth Rock - Tutor
  (141, 14100, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 1
  (142, 14200, 48, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aerodactyl - Scary Face - Level 1
  (142, 14200, 184, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aerodactyl - Thunder Fang - Level 1
  (142, 14200, 422, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aerodactyl - Ice Fang - Level 1
  (142, 14200, 423, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aerodactyl - Fire Fang - Level 1
  (142, 14200, 424, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Aerodactyl - Iron Head - Level 1
  (142, 14200, 442, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Aerodactyl - Roar - Level 9
  (142, 14200, 46, 14, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Aerodactyl - Agility - Level 17
  (142, 14200, 97, 14, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Aerodactyl - Ancient Power - Level 25
  (142, 14200, 246, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Aerodactyl - Crunch - Level 33
  (142, 14200, 242, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Aerodactyl - Take Down - Level 41
  (142, 14200, 36, 14, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Aerodactyl - Sky Drop - Level 49
  (142, 14200, 507, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Aerodactyl - Iron Head - Level 57
  (142, 14200, 442, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Aerodactyl - Hyper Beam - Level 65
  (142, 14200, 63, 14, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Aerodactyl - Rock Slide - Level 73
  (142, 14200, 157, 14, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Aerodactyl - Giga Impact - Level 81
  (142, 14200, 416, 14, NULL, 1, 81, NULL, NULL, NULL, 18),
  -- Aerodactyl - Hone Claws - TM01
  (142, 14200, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 19),
  -- Aerodactyl - Dragon Claw - TM02
  (142, 14200, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 20),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Aerodactyl - Hidden Power - TM10
  (142, 14200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Aerodactyl - Sunny Day - TM11
  (142, 14200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Aerodactyl - Taunt - TM12
  (142, 14200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Aerodactyl - Roost - TM19
  (142, 14200, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 29),
  -- Aerodactyl - Frustration - TM21
  (142, 14200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Aerodactyl - Smack Down - TM23
  (142, 14200, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 31),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 32),
  -- Aerodactyl - Return - TM27
  (142, 14200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Aerodactyl - Flamethrower - TM35
  (142, 14200, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 36),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 37),
  -- Aerodactyl - Rock Tomb - TM39
  (142, 14200, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 38),
  -- Aerodactyl - Aerial Ace - TM40
  (142, 14200, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 39),
  -- Aerodactyl - Torment - TM41
  (142, 14200, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 40),
  -- Aerodactyl - Facade - TM42
  (142, 14200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 41),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 42),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 43),
  -- Aerodactyl - Thief - TM46
  (142, 14200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 44),
  -- Aerodactyl - Round - TM48
  (142, 14200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 45),
  -- Aerodactyl - Steel Wing - TM51
  (142, 14200, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 46),
  -- Aerodactyl - Sky Drop - TM58
  (142, 14200, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 47),
  -- Aerodactyl - Incinerate - TM59
  (142, 14200, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 48),
  -- Aerodactyl - Payback - TM66
  (142, 14200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 49),
  -- Aerodactyl - Giga Impact - TM68
  (142, 14200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Aerodactyl - Rock Polish - TM69
  (142, 14200, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 51),
  -- Aerodactyl - Stone Edge - TM71
  (142, 14200, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 52),
  -- Aerodactyl - Bulldoze - TM78
  (142, 14200, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 53),
  -- Aerodactyl - Rock Slide - TM80
  (142, 14200, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 54),
  -- Aerodactyl - Swagger - TM87
  (142, 14200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 55),
  -- Aerodactyl - Sleep Talk - TM88
  (142, 14200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 56),
  -- Aerodactyl - Substitute - TM90
  (142, 14200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 57),
  -- Aerodactyl - Secret Power - TM94
  (142, 14200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 58),
  -- Aerodactyl - Confide - TM100
  (142, 14200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 60),
  -- Aerodactyl - Strength - HM04
  (142, 14200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 61),
  -- Aerodactyl - Rock Smash - HM06
  (142, 14200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 62),
  -- Aerodactyl - Whirlwind - Egg
  (142, 14200, 18, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aerodactyl - Curse - Egg
  (142, 14200, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aerodactyl - Foresight - Egg
  (142, 14200, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aerodactyl - Steel Wing - Egg
  (142, 14200, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aerodactyl - Dragon Breath - Egg
  (142, 14200, 225, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Aerodactyl - Pursuit - Egg
  (142, 14200, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Aerodactyl - Roost - Egg
  (142, 14200, 355, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Aerodactyl - Tailwind - Egg
  (142, 14200, 366, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Aerodactyl - Assurance - Egg
  (142, 14200, 372, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Aerodactyl - Wide Guard - Egg
  (142, 14200, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Aerodactyl - Sky Attack - Tutor
  (142, 14200, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Aerodactyl - Snore - Tutor
  (142, 14200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Aerodactyl - Iron Tail - Tutor
  (142, 14200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Aerodactyl - Heat Wave - Tutor
  (142, 14200, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Aerodactyl - Tailwind - Tutor
  (142, 14200, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Aerodactyl - Aqua Tail - Tutor
  (142, 14200, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Aerodactyl - Dragon Pulse - Tutor
  (142, 14200, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Aerodactyl - Earth Power - Tutor
  (142, 14200, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Aerodactyl - Iron Head - Tutor
  (142, 14200, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Aerodactyl - Stealth Rock - Tutor
  (142, 14200, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Defense Curl - Level 4
  (143, 14300, 111, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snorlax - Amnesia - Level 9
  (143, 14300, 133, 14, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Snorlax - Lick - Level 12
  (143, 14300, 122, 14, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Snorlax - Chip Away - Level 17
  (143, 14300, 498, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Snorlax - Yawn - Level 20
  (143, 14300, 281, 14, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorlax - Body Slam - Level 25
  (143, 14300, 34, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorlax - Rest - Level 28
  (143, 14300, 156, 14, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorlax - Snore - Level 28
  (143, 14300, 173, 14, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Snorlax - Sleep Talk - Level 33
  (143, 14300, 214, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Snorlax - Rollout - Level 36
  (143, 14300, 205, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Snorlax - Block - Level 41
  (143, 14300, 335, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Snorlax - Belly Drum - Level 44
  (143, 14300, 187, 14, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Snorlax - Crunch - Level 49
  (143, 14300, 242, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Snorlax - Heavy Slam - Level 50
  (143, 14300, 484, 14, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Snorlax - Giga Impact - Level 57
  (143, 14300, 416, 14, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Snorlax - Hidden Power - TM10
  (143, 14300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Snorlax - Frustration - TM21
  (143, 14300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 26),
  -- Snorlax - Smack Down - TM23
  (143, 14300, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 27),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 28),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 29),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 30),
  -- Snorlax - Return - TM27
  (143, 14300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 32),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Snorlax - Brick Break - TM31
  (143, 14300, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 34),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Snorlax - Flamethrower - TM35
  (143, 14300, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 36),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 37),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 38),
  -- Snorlax - Rock Tomb - TM39
  (143, 14300, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 39),
  -- Snorlax - Facade - TM42
  (143, 14300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 42),
  -- Snorlax - Round - TM48
  (143, 14300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Snorlax - Focus Blast - TM52
  (143, 14300, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Snorlax - Fling - TM56
  (143, 14300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Snorlax - Incinerate - TM59
  (143, 14300, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 46),
  -- Snorlax - Retaliate - TM67
  (143, 14300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 47),
  -- Snorlax - Giga Impact - TM68
  (143, 14300, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 48),
  -- Snorlax - Bulldoze - TM78
  (143, 14300, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 49),
  -- Snorlax - Rock Slide - TM80
  (143, 14300, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 50),
  -- Snorlax - Swagger - TM87
  (143, 14300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 51),
  -- Snorlax - Sleep Talk - TM88
  (143, 14300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 52),
  -- Snorlax - Substitute - TM90
  (143, 14300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 53),
  -- Snorlax - Wild Charge - TM93
  (143, 14300, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 54),
  -- Snorlax - Secret Power - TM94
  (143, 14300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 55),
  -- Snorlax - Power-Up Punch - TM98
  (143, 14300, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 56),
  -- Snorlax - Confide - TM100
  (143, 14300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 57),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 58),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 59),
  -- Snorlax - Rock Smash - HM06
  (143, 14300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 60),
  -- Snorlax - Whirlwind - Egg
  (143, 14300, 18, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snorlax - Double-Edge - Egg
  (143, 14300, 38, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snorlax - Counter - Egg
  (143, 14300, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snorlax - Fissure - Egg
  (143, 14300, 90, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snorlax - Self-Destruct - Egg
  (143, 14300, 120, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snorlax - Lick - Egg
  (143, 14300, 122, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snorlax - Curse - Egg
  (143, 14300, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snorlax - Charm - Egg
  (143, 14300, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snorlax - Pursuit - Egg
  (143, 14300, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snorlax - Natural Gift - Egg
  (143, 14300, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Snorlax - Zen Headbutt - Egg
  (143, 14300, 428, 14, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Snorlax - After You - Egg
  (143, 14300, 495, 14, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Snorlax - Belch - Egg
  (143, 14300, 562, 14, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Snorlax - Fire Punch - Tutor
  (143, 14300, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Snorlax - Ice Punch - Tutor
  (143, 14300, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Snorlax - Thunder Punch - Tutor
  (143, 14300, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Snorlax - Snore - Tutor
  (143, 14300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Snorlax - Icy Wind - Tutor
  (143, 14300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Snorlax - Outrage - Tutor
  (143, 14300, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Snorlax - Focus Punch - Tutor
  (143, 14300, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Snorlax - Superpower - Tutor
  (143, 14300, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Snorlax - Recycle - Tutor
  (143, 14300, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Snorlax - Hyper Voice - Tutor
  (143, 14300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Snorlax - Block - Tutor
  (143, 14300, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Snorlax - Covet - Tutor
  (143, 14300, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Snorlax - Shock Wave - Tutor
  (143, 14300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Snorlax - Water Pulse - Tutor
  (143, 14300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Snorlax - Last Resort - Tutor
  (143, 14300, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Snorlax - Seed Bomb - Tutor
  (143, 14300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Snorlax - Zen Headbutt - Tutor
  (143, 14300, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Snorlax - Gunk Shot - Tutor
  (143, 14300, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Snorlax - Iron Head - Tutor
  (143, 14300, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Snorlax - After You - Tutor
  (143, 14300, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Powder Snow - Level 1
  (144, 14400, 181, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Sheer Cold - Level 1
  (144, 14400, 329, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Articuno - Roost - Level 1
  (144, 14400, 355, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Articuno - Tailwind - Level 1
  (144, 14400, 366, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Articuno - Hurricane - Level 1
  (144, 14400, 542, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Articuno - Freeze-Dry - Level 1
  (144, 14400, 573, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Articuno - Mist - Level 8
  (144, 14400, 54, 14, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 14, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Articuno - Mind Reader - Level 22
  (144, 14400, 170, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Articuno - Ancient Power - Level 29
  (144, 14400, 246, 14, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Articuno - Agility - Level 36
  (144, 14400, 97, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Articuno - Ice Beam - Level 43
  (144, 14400, 58, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Articuno - Reflect - Level 50
  (144, 14400, 115, 14, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Articuno - Hail - Level 57
  (144, 14400, 258, 14, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Articuno - Tailwind - Level 64
  (144, 14400, 366, 14, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Articuno - Blizzard - Level 71
  (144, 14400, 59, 14, NULL, 1, 71, NULL, NULL, NULL, 17),
  -- Articuno - Sheer Cold - Level 78
  (144, 14400, 329, 14, NULL, 1, 78, NULL, NULL, NULL, 18),
  -- Articuno - Roost - Level 85
  (144, 14400, 355, 14, NULL, 1, 85, NULL, NULL, NULL, 19),
  -- Articuno - Hurricane - Level 92
  (144, 14400, 542, 14, NULL, 1, 92, NULL, NULL, NULL, 20),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Articuno - Hail - TM07
  (144, 14400, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 23),
  -- Articuno - Hidden Power - TM10
  (144, 14400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 26),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 27),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 29),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 30),
  -- Articuno - Roost - TM19
  (144, 14400, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 31),
  -- Articuno - Frustration - TM21
  (144, 14400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 32),
  -- Articuno - Return - TM27
  (144, 14400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 35),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 36),
  -- Articuno - Aerial Ace - TM40
  (144, 14400, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 37),
  -- Articuno - Facade - TM42
  (144, 14400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Articuno - Round - TM48
  (144, 14400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Articuno - Steel Wing - TM51
  (144, 14400, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 41),
  -- Articuno - Sky Drop - TM58
  (144, 14400, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 42),
  -- Articuno - Giga Impact - TM68
  (144, 14400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 43),
  -- Articuno - Frost Breath - TM79
  (144, 14400, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 44),
  -- Articuno - Swagger - TM87
  (144, 14400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Articuno - Sleep Talk - TM88
  (144, 14400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Articuno - U-turn - TM89
  (144, 14400, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 47),
  -- Articuno - Substitute - TM90
  (144, 14400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Articuno - Secret Power - TM94
  (144, 14400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Articuno - Confide - TM100
  (144, 14400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 50),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 51),
  -- Articuno - Rock Smash - HM06
  (144, 14400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 52),
  -- Articuno - Sky Attack - Tutor
  (144, 14400, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Articuno - Snore - Tutor
  (144, 14400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Articuno - Icy Wind - Tutor
  (144, 14400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Articuno - Signal Beam - Tutor
  (144, 14400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Articuno - Water Pulse - Tutor
  (144, 14400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Articuno - Tailwind - Tutor
  (144, 14400, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Drill Peck - Level 1
  (145, 14500, 65, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zapdos - Zap Cannon - Level 1
  (145, 14500, 192, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zapdos - Roost - Level 1
  (145, 14500, 355, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zapdos - Thunder Wave - Level 8
  (145, 14500, 86, 14, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Zapdos - Detect - Level 15
  (145, 14500, 197, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Zapdos - Pluck - Level 22
  (145, 14500, 365, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zapdos - Ancient Power - Level 29
  (145, 14500, 246, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zapdos - Charge - Level 36
  (145, 14500, 268, 14, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Zapdos - Agility - Level 43
  (145, 14500, 97, 14, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Zapdos - Discharge - Level 50
  (145, 14500, 435, 14, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos - Rain Dance - Level 57
  (145, 14500, 240, 14, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Zapdos - Light Screen - Level 64
  (145, 14500, 113, 14, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Zapdos - Drill Peck - Level 71
  (145, 14500, 65, 14, NULL, 1, 71, NULL, NULL, NULL, 15),
  -- Zapdos - Thunder - Level 78
  (145, 14500, 87, 14, NULL, 1, 78, NULL, NULL, NULL, 16),
  -- Zapdos - Roost - Level 85
  (145, 14500, 355, 14, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Zapdos - Zap Cannon - Level 92
  (145, 14500, 192, 14, NULL, 1, 92, NULL, NULL, NULL, 18),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 19),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Zapdos - Hidden Power - TM10
  (145, 14500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Zapdos - Light Screen - TM16
  (145, 14500, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Zapdos - Roost - TM19
  (145, 14500, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 27),
  -- Zapdos - Frustration - TM21
  (145, 14500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Zapdos - Return - TM27
  (145, 14500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 33),
  -- Zapdos - Aerial Ace - TM40
  (145, 14500, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 34),
  -- Zapdos - Facade - TM42
  (145, 14500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Zapdos - Round - TM48
  (145, 14500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Zapdos - Steel Wing - TM51
  (145, 14500, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 38),
  -- Zapdos - Charge Beam - TM57
  (145, 14500, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 39),
  -- Zapdos - Sky Drop - TM58
  (145, 14500, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 40),
  -- Zapdos - Giga Impact - TM68
  (145, 14500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 41),
  -- Zapdos - Flash - TM70
  (145, 14500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 42),
  -- Zapdos - Volt Switch - TM72
  (145, 14500, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 43),
  -- Zapdos - Thunder Wave - TM73
  (145, 14500, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 44),
  -- Zapdos - Swagger - TM87
  (145, 14500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Zapdos - Sleep Talk - TM88
  (145, 14500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Zapdos - U-turn - TM89
  (145, 14500, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 47),
  -- Zapdos - Substitute - TM90
  (145, 14500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Zapdos - Wild Charge - TM93
  (145, 14500, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 49),
  -- Zapdos - Secret Power - TM94
  (145, 14500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 50),
  -- Zapdos - Confide - TM100
  (145, 14500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 52),
  -- Zapdos - Rock Smash - HM06
  (145, 14500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Zapdos - Sky Attack - Tutor
  (145, 14500, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Zapdos - Snore - Tutor
  (145, 14500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Zapdos - Heat Wave - Tutor
  (145, 14500, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Zapdos - Signal Beam - Tutor
  (145, 14500, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Zapdos - Shock Wave - Tutor
  (145, 14500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Zapdos - Tailwind - Tutor
  (145, 14500, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Sky Attack - Level 1
  (146, 14600, 143, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Moltres - Heat Wave - Level 1
  (146, 14600, 257, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Moltres - Roost - Level 1
  (146, 14600, 355, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Moltres - Hurricane - Level 1
  (146, 14600, 542, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Moltres - Fire Spin - Level 8
  (146, 14600, 83, 14, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Moltres - Agility - Level 15
  (146, 14600, 97, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Moltres - Endure - Level 22
  (146, 14600, 203, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Moltres - Ancient Power - Level 29
  (146, 14600, 246, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Moltres - Flamethrower - Level 36
  (146, 14600, 53, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Moltres - Safeguard - Level 43
  (146, 14600, 219, 14, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Moltres - Air Slash - Level 50
  (146, 14600, 403, 14, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Moltres - Sunny Day - Level 57
  (146, 14600, 241, 14, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Moltres - Heat Wave - Level 64
  (146, 14600, 257, 14, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Moltres - Solar Beam - Level 71
  (146, 14600, 76, 14, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Moltres - Sky Attack - Level 78
  (146, 14600, 143, 14, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Moltres - Roost - Level 85
  (146, 14600, 355, 14, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Moltres - Hurricane - Level 92
  (146, 14600, 542, 14, NULL, 1, 92, NULL, NULL, NULL, 19),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 20),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Moltres - Hidden Power - TM10
  (146, 14600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 24),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Moltres - Roost - TM19
  (146, 14600, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 27),
  -- Moltres - Safeguard - TM20
  (146, 14600, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Moltres - Frustration - TM21
  (146, 14600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Moltres - Solar Beam - TM22
  (146, 14600, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Moltres - Return - TM27
  (146, 14600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Moltres - Flamethrower - TM35
  (146, 14600, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 33),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 34),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 35),
  -- Moltres - Aerial Ace - TM40
  (146, 14600, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 36),
  -- Moltres - Facade - TM42
  (146, 14600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Moltres - Flame Charge - TM43
  (146, 14600, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 38),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Moltres - Round - TM48
  (146, 14600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Moltres - Overheat - TM50
  (146, 14600, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 41),
  -- Moltres - Steel Wing - TM51
  (146, 14600, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 42),
  -- Moltres - Sky Drop - TM58
  (146, 14600, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 43),
  -- Moltres - Incinerate - TM59
  (146, 14600, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 44),
  -- Moltres - Will-O-Wisp - TM61
  (146, 14600, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 45),
  -- Moltres - Giga Impact - TM68
  (146, 14600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 46),
  -- Moltres - Swagger - TM87
  (146, 14600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 47),
  -- Moltres - Sleep Talk - TM88
  (146, 14600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 48),
  -- Moltres - U-turn - TM89
  (146, 14600, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 49),
  -- Moltres - Substitute - TM90
  (146, 14600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Moltres - Secret Power - TM94
  (146, 14600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Moltres - Confide - TM100
  (146, 14600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 52),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 53),
  -- Moltres - Rock Smash - HM06
  (146, 14600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 54),
  -- Moltres - Sky Attack - Tutor
  (146, 14600, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Moltres - Snore - Tutor
  (146, 14600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Moltres - Heat Wave - Tutor
  (146, 14600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Moltres - Tailwind - Tutor
  (146, 14600, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 5
  (147, 14700, 86, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Twister - Level 11
  (147, 14700, 239, 14, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Rage - Level 15
  (147, 14700, 82, 14, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Slam - Level 21
  (147, 14700, 21, 14, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dratini - Agility - Level 25
  (147, 14700, 97, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Dragon Tail - Level 31
  (147, 14700, 525, 14, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Aqua Tail - Level 35
  (147, 14700, 401, 14, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Dragon Rush - Level 41
  (147, 14700, 407, 14, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Dratini - Safeguard - Level 45
  (147, 14700, 219, 14, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Dragon Dance - Level 51
  (147, 14700, 349, 14, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 14, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Hyper Beam - Level 61
  (147, 14700, 63, 14, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Dratini - Hail - TM07
  (147, 14700, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Dratini - Hidden Power - TM10
  (147, 14700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Dratini - Sunny Day - TM11
  (147, 14700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 20),
  -- Dratini - Hyper Beam - TM15
  (147, 14700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Dratini - Light Screen - TM16
  (147, 14700, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 22),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Dratini - Safeguard - TM20
  (147, 14700, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 25),
  -- Dratini - Frustration - TM21
  (147, 14700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 27),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 28),
  -- Dratini - Return - TM27
  (147, 14700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 29),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Dratini - Flamethrower - TM35
  (147, 14700, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 31),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 32),
  -- Dratini - Facade - TM42
  (147, 14700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Dratini - Round - TM48
  (147, 14700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Dratini - Incinerate - TM59
  (147, 14700, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 37),
  -- Dratini - Thunder Wave - TM73
  (147, 14700, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 38),
  -- Dratini - Dragon Tail - TM82
  (147, 14700, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 39),
  -- Dratini - Swagger - TM87
  (147, 14700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Dratini - Sleep Talk - TM88
  (147, 14700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Dratini - Substitute - TM90
  (147, 14700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Dratini - Secret Power - TM94
  (147, 14700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Dratini - Confide - TM100
  (147, 14700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 45),
  -- Dratini - Waterfall - HM05
  (147, 14700, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 46),
  -- Dratini - Supersonic - Egg
  (147, 14700, 48, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dratini - Mist - Egg
  (147, 14700, 54, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dratini - Haze - Egg
  (147, 14700, 114, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dratini - Dragon Breath - Egg
  (147, 14700, 225, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dratini - Iron Tail - Egg
  (147, 14700, 231, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dratini - Extreme Speed - Egg
  (147, 14700, 245, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dratini - Dragon Dance - Egg
  (147, 14700, 349, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dratini - Water Pulse - Egg
  (147, 14700, 352, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dratini - Dragon Pulse - Egg
  (147, 14700, 406, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dratini - Dragon Rush - Egg
  (147, 14700, 407, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dratini - Aqua Jet - Egg
  (147, 14700, 453, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dratini - Bind - Tutor
  (147, 14700, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Dratini - Snore - Tutor
  (147, 14700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Dratini - Icy Wind - Tutor
  (147, 14700, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Dratini - Outrage - Tutor
  (147, 14700, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Dratini - Iron Tail - Tutor
  (147, 14700, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Dratini - Shock Wave - Tutor
  (147, 14700, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Dratini - Water Pulse - Tutor
  (147, 14700, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Dratini - Aqua Tail - Tutor
  (147, 14700, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Dratini - Dragon Pulse - Tutor
  (147, 14700, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Dratini - Draco Meteor - Tutor
  (147, 14700, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 5
  (148, 14800, 86, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dragonair - Twister - Level 11
  (148, 14800, 239, 14, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 15
  (148, 14800, 82, 14, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dragonair - Slam - Level 21
  (148, 14800, 21, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Dragonair - Agility - Level 25
  (148, 14800, 97, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dragonair - Dragon Tail - Level 33
  (148, 14800, 525, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Dragonair - Aqua Tail - Level 39
  (148, 14800, 401, 14, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Dragonair - Dragon Rush - Level 47
  (148, 14800, 407, 14, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Dragonair - Safeguard - Level 53
  (148, 14800, 219, 14, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Dragonair - Dragon Dance - Level 61
  (148, 14800, 349, 14, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Dragonair - Outrage - Level 67
  (148, 14800, 200, 14, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Dragonair - Hyper Beam - Level 75
  (148, 14800, 63, 14, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Dragonair - Hail - TM07
  (148, 14800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 18),
  -- Dragonair - Hidden Power - TM10
  (148, 14800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Dragonair - Sunny Day - TM11
  (148, 14800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Dragonair - Hyper Beam - TM15
  (148, 14800, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 23),
  -- Dragonair - Light Screen - TM16
  (148, 14800, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Dragonair - Safeguard - TM20
  (148, 14800, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Dragonair - Frustration - TM21
  (148, 14800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 30),
  -- Dragonair - Return - TM27
  (148, 14800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 32),
  -- Dragonair - Flamethrower - TM35
  (148, 14800, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 33),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 34),
  -- Dragonair - Facade - TM42
  (148, 14800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 37),
  -- Dragonair - Round - TM48
  (148, 14800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 38),
  -- Dragonair - Incinerate - TM59
  (148, 14800, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 39),
  -- Dragonair - Thunder Wave - TM73
  (148, 14800, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 40),
  -- Dragonair - Dragon Tail - TM82
  (148, 14800, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 41),
  -- Dragonair - Swagger - TM87
  (148, 14800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Dragonair - Sleep Talk - TM88
  (148, 14800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Dragonair - Substitute - TM90
  (148, 14800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Dragonair - Secret Power - TM94
  (148, 14800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Dragonair - Confide - TM100
  (148, 14800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 47),
  -- Dragonair - Waterfall - HM05
  (148, 14800, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 48),
  -- Dragonair - Bind - Tutor
  (148, 14800, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Dragonair - Snore - Tutor
  (148, 14800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Dragonair - Icy Wind - Tutor
  (148, 14800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Dragonair - Outrage - Tutor
  (148, 14800, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Dragonair - Iron Tail - Tutor
  (148, 14800, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Dragonair - Shock Wave - Tutor
  (148, 14800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Dragonair - Water Pulse - Tutor
  (148, 14800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Dragonair - Aqua Tail - Tutor
  (148, 14800, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Dragonair - Dragon Pulse - Tutor
  (148, 14800, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Dragonair - Draco Meteor - Tutor
  (148, 14800, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Roost - Level 1
  (149, 14900, 355, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Hurricane - Level 1
  (149, 14900, 542, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dragonite - Thunder Wave - Level 5
  (149, 14900, 86, 14, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Dragonite - Twister - Level 11
  (149, 14900, 239, 14, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Dragonite - Dragon Rage - Level 15
  (149, 14900, 82, 14, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Dragonite - Slam - Level 21
  (149, 14900, 21, 14, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Dragonite - Agility - Level 25
  (149, 14900, 97, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Dragonite - Dragon Tail - Level 33
  (149, 14900, 525, 14, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dragonite - Aqua Tail - Level 39
  (149, 14900, 401, 14, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Dragonite - Dragon Rush - Level 47
  (149, 14900, 407, 14, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Dragonite - Safeguard - Level 53
  (149, 14900, 219, 14, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Dragonite - Wing Attack - Level 55
  (149, 14900, 17, 14, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Dragonite - Dragon Dance - Level 61
  (149, 14900, 349, 14, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Dragonite - Outrage - Level 67
  (149, 14900, 200, 14, NULL, 1, 67, NULL, NULL, NULL, 20),
  -- Dragonite - Hyper Beam - Level 75
  (149, 14900, 63, 14, NULL, 1, 75, NULL, NULL, NULL, 21),
  -- Dragonite - Hurricane - Level 81
  (149, 14900, 542, 14, NULL, 1, 81, NULL, NULL, NULL, 22),
  -- Dragonite - Hone Claws - TM01
  (149, 14900, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 23),
  -- Dragonite - Dragon Claw - TM02
  (149, 14900, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 24),
  -- Dragonite - Roar - TM05
  (149, 14900, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 25),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 26),
  -- Dragonite - Hail - TM07
  (149, 14900, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 27),
  -- Dragonite - Hidden Power - TM10
  (149, 14900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 28),
  -- Dragonite - Sunny Day - TM11
  (149, 14900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 29),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 30),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 31),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 32),
  -- Dragonite - Light Screen - TM16
  (149, 14900, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 33),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 34),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 35),
  -- Dragonite - Roost - TM19
  (149, 14900, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 36),
  -- Dragonite - Safeguard - TM20
  (149, 14900, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 37),
  -- Dragonite - Frustration - TM21
  (149, 14900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 38),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 39),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 40),
  -- Dragonite - Earthquake - TM26
  (149, 14900, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 41),
  -- Dragonite - Return - TM27
  (149, 14900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 42),
  -- Dragonite - Brick Break - TM31
  (149, 14900, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 43),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 44),
  -- Dragonite - Flamethrower - TM35
  (149, 14900, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 45),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 46),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 47),
  -- Dragonite - Rock Tomb - TM39
  (149, 14900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 48),
  -- Dragonite - Aerial Ace - TM40
  (149, 14900, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 49),
  -- Dragonite - Facade - TM42
  (149, 14900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 50),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 51),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 52),
  -- Dragonite - Round - TM48
  (149, 14900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 53),
  -- Dragonite - Steel Wing - TM51
  (149, 14900, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 54),
  -- Dragonite - Focus Blast - TM52
  (149, 14900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 55),
  -- Dragonite - Fling - TM56
  (149, 14900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 56),
  -- Dragonite - Sky Drop - TM58
  (149, 14900, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 57),
  -- Dragonite - Incinerate - TM59
  (149, 14900, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 58),
  -- Dragonite - Giga Impact - TM68
  (149, 14900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 59),
  -- Dragonite - Stone Edge - TM71
  (149, 14900, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 60),
  -- Dragonite - Thunder Wave - TM73
  (149, 14900, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 61),
  -- Dragonite - Bulldoze - TM78
  (149, 14900, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 62),
  -- Dragonite - Rock Slide - TM80
  (149, 14900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 63),
  -- Dragonite - Dragon Tail - TM82
  (149, 14900, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 64),
  -- Dragonite - Swagger - TM87
  (149, 14900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 65),
  -- Dragonite - Sleep Talk - TM88
  (149, 14900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 66),
  -- Dragonite - Substitute - TM90
  (149, 14900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 67),
  -- Dragonite - Secret Power - TM94
  (149, 14900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 68),
  -- Dragonite - Power-Up Punch - TM98
  (149, 14900, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 69),
  -- Dragonite - Confide - TM100
  (149, 14900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 70),
  -- Dragonite - Cut - HM01
  (149, 14900, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 71),
  -- Dragonite - Fly - HM02
  (149, 14900, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 72),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 73),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 74),
  -- Dragonite - Waterfall - HM05
  (149, 14900, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 75),
  -- Dragonite - Rock Smash - HM06
  (149, 14900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 76),
  -- Dragonite - Dive - HM07
  (149, 14900, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 77),
  -- Dragonite - Fire Punch - Tutor
  (149, 14900, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Dragonite - Ice Punch - Tutor
  (149, 14900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Dragonite - Thunder Punch - Tutor
  (149, 14900, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Dragonite - Bind - Tutor
  (149, 14900, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Dragonite - Snore - Tutor
  (149, 14900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Dragonite - Icy Wind - Tutor
  (149, 14900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Dragonite - Outrage - Tutor
  (149, 14900, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Dragonite - Iron Tail - Tutor
  (149, 14900, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Dragonite - Heat Wave - Tutor
  (149, 14900, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Dragonite - Focus Punch - Tutor
  (149, 14900, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Dragonite - Superpower - Tutor
  (149, 14900, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Dragonite - Shock Wave - Tutor
  (149, 14900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Dragonite - Water Pulse - Tutor
  (149, 14900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Dragonite - Tailwind - Tutor
  (149, 14900, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Dragonite - Aqua Tail - Tutor
  (149, 14900, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Dragonite - Dragon Pulse - Tutor
  (149, 14900, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Dragonite - Draco Meteor - Tutor
  (149, 14900, 434, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 94),
  -- Dragonite - Iron Head - Tutor
  (149, 14900, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 95),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Safeguard - Level 1
  (150, 15000, 219, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Swift - Level 8
  (150, 15000, 129, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mewtwo - Future Sight - Level 15
  (150, 15000, 248, 14, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mewtwo - Psych Up - Level 22
  (150, 15000, 244, 14, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Mewtwo - Miracle Eye - Level 29
  (150, 15000, 357, 14, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Mewtwo - Psycho Cut - Level 36
  (150, 15000, 427, 14, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Mewtwo - Power Swap - Level 43
  (150, 15000, 384, 14, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Mewtwo - Guard Swap - Level 43
  (150, 15000, 385, 14, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Mewtwo - Recover - Level 50
  (150, 15000, 105, 14, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Mewtwo - Psychic - Level 57
  (150, 15000, 94, 14, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Mewtwo - Barrier - Level 64
  (150, 15000, 112, 14, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Mewtwo - Aura Sphere - Level 70
  (150, 15000, 396, 14, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Mewtwo - Amnesia - Level 79
  (150, 15000, 133, 14, NULL, 1, 79, NULL, NULL, NULL, 15),
  -- Mewtwo - Mist - Level 86
  (150, 15000, 54, 14, NULL, 1, 86, NULL, NULL, NULL, 16),
  -- Mewtwo - Me First - Level 93
  (150, 15000, 382, 14, NULL, 1, 93, NULL, NULL, NULL, 17),
  -- Mewtwo - Psystrike - Level 100
  (150, 15000, 540, 14, NULL, 1, 100, NULL, NULL, NULL, 18),
  -- Mewtwo - Psyshock - TM03
  (150, 15000, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 19),
  -- Mewtwo - Calm Mind - TM04
  (150, 15000, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 20),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Mewtwo - Hail - TM07
  (150, 15000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 22),
  -- Mewtwo - Bulk Up - TM08
  (150, 15000, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Mewtwo - Hidden Power - TM10
  (150, 15000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Mewtwo - Taunt - TM12
  (150, 15000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 26),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 27),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 28),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 29),
  -- Mewtwo - Light Screen - TM16
  (150, 15000, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 30),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 31),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 32),
  -- Mewtwo - Safeguard - TM20
  (150, 15000, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 33),
  -- Mewtwo - Frustration - TM21
  (150, 15000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 34),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 35),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 36),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 37),
  -- Mewtwo - Earthquake - TM26
  (150, 15000, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 38),
  -- Mewtwo - Return - TM27
  (150, 15000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 39),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 40),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 41),
  -- Mewtwo - Brick Break - TM31
  (150, 15000, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 42),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 43),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 44),
  -- Mewtwo - Flamethrower - TM35
  (150, 15000, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 45),
  -- Mewtwo - Sandstorm - TM37
  (150, 15000, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 46),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 47),
  -- Mewtwo - Rock Tomb - TM39
  (150, 15000, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 48),
  -- Mewtwo - Aerial Ace - TM40
  (150, 15000, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 49),
  -- Mewtwo - Torment - TM41
  (150, 15000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 50),
  -- Mewtwo - Facade - TM42
  (150, 15000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 51),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 52),
  -- Mewtwo - Low Sweep - TM47
  (150, 15000, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 53),
  -- Mewtwo - Round - TM48
  (150, 15000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 54),
  -- Mewtwo - Focus Blast - TM52
  (150, 15000, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 55),
  -- Mewtwo - Energy Ball - TM53
  (150, 15000, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 56),
  -- Mewtwo - Fling - TM56
  (150, 15000, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 57),
  -- Mewtwo - Charge Beam - TM57
  (150, 15000, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 58),
  -- Mewtwo - Incinerate - TM59
  (150, 15000, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 59),
  -- Mewtwo - Will-O-Wisp - TM61
  (150, 15000, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 60),
  -- Mewtwo - Embargo - TM63
  (150, 15000, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 61),
  -- Mewtwo - Giga Impact - TM68
  (150, 15000, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 62),
  -- Mewtwo - Flash - TM70
  (150, 15000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 63),
  -- Mewtwo - Stone Edge - TM71
  (150, 15000, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 64),
  -- Mewtwo - Thunder Wave - TM73
  (150, 15000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 65),
  -- Mewtwo - Psych Up - TM77
  (150, 15000, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 66),
  -- Mewtwo - Bulldoze - TM78
  (150, 15000, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 67),
  -- Mewtwo - Rock Slide - TM80
  (150, 15000, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 68),
  -- Mewtwo - Poison Jab - TM84
  (150, 15000, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 69),
  -- Mewtwo - Dream Eater - TM85
  (150, 15000, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 70),
  -- Mewtwo - Grass Knot - TM86
  (150, 15000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 71),
  -- Mewtwo - Swagger - TM87
  (150, 15000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 72),
  -- Mewtwo - Sleep Talk - TM88
  (150, 15000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 73),
  -- Mewtwo - Substitute - TM90
  (150, 15000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 74),
  -- Mewtwo - Trick Room - TM92
  (150, 15000, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 75),
  -- Mewtwo - Secret Power - TM94
  (150, 15000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 76),
  -- Mewtwo - Power-Up Punch - TM98
  (150, 15000, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 77),
  -- Mewtwo - Confide - TM100
  (150, 15000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 78),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 79),
  -- Mewtwo - Rock Smash - HM06
  (150, 15000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 80),
  -- Mewtwo - Dive - HM07
  (150, 15000, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 81),
  -- Mewtwo - Fire Punch - Tutor
  (150, 15000, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Mewtwo - Ice Punch - Tutor
  (150, 15000, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Mewtwo - Thunder Punch - Tutor
  (150, 15000, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Mewtwo - Low Kick - Tutor
  (150, 15000, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Mewtwo - Snore - Tutor
  (150, 15000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Mewtwo - Icy Wind - Tutor
  (150, 15000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Mewtwo - Iron Tail - Tutor
  (150, 15000, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 88),
  -- Mewtwo - Focus Punch - Tutor
  (150, 15000, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 89),
  -- Mewtwo - Trick - Tutor
  (150, 15000, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 90),
  -- Mewtwo - Role Play - Tutor
  (150, 15000, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 91),
  -- Mewtwo - Magic Coat - Tutor
  (150, 15000, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 92),
  -- Mewtwo - Recycle - Tutor
  (150, 15000, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 93),
  -- Mewtwo - Skill Swap - Tutor
  (150, 15000, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 94),
  -- Mewtwo - Snatch - Tutor
  (150, 15000, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 95),
  -- Mewtwo - Signal Beam - Tutor
  (150, 15000, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 96),
  -- Mewtwo - Shock Wave - Tutor
  (150, 15000, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 97),
  -- Mewtwo - Water Pulse - Tutor
  (150, 15000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 98),
  -- Mewtwo - Gravity - Tutor
  (150, 15000, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 99),
  -- Mewtwo - Aqua Tail - Tutor
  (150, 15000, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 100),
  -- Mewtwo - Drain Punch - Tutor
  (150, 15000, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 101),
  -- Mewtwo - Zen Headbutt - Tutor
  (150, 15000, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 102),
  -- Mewtwo - Wonder Room - Tutor
  (150, 15000, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 103),
  -- Mewtwo - Magic Room - Tutor
  (150, 15000, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 104),
  -- Mewtwo - Foul Play - Tutor
  (150, 15000, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 105),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Transform - Level 1
  (151, 15100, 144, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Reflect Type - Level 1
  (151, 15100, 513, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mew - Mega Punch - Level 10
  (151, 15100, 5, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mew - Metronome - Level 20
  (151, 15100, 118, 14, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Mew - Psychic - Level 30
  (151, 15100, 94, 14, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Mew - Barrier - Level 40
  (151, 15100, 112, 14, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Mew - Ancient Power - Level 50
  (151, 15100, 246, 14, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Mew - Amnesia - Level 60
  (151, 15100, 133, 14, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Mew - Me First - Level 70
  (151, 15100, 382, 14, NULL, 1, 70, NULL, NULL, NULL, 10),
  -- Mew - Baton Pass - Level 80
  (151, 15100, 226, 14, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Mew - Nasty Plot - Level 90
  (151, 15100, 417, 14, NULL, 1, 90, NULL, NULL, NULL, 12),
  -- Mew - Aura Sphere - Level 100
  (151, 15100, 396, 14, NULL, 1, 100, NULL, NULL, NULL, 13),
  -- Mew - Hone Claws - TM01
  (151, 15100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 14),
  -- Mew - Dragon Claw - TM02
  (151, 15100, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 15),
  -- Mew - Psyshock - TM03
  (151, 15100, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 16),
  -- Mew - Calm Mind - TM04
  (151, 15100, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 17),
  -- Mew - Roar - TM05
  (151, 15100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 18),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Mew - Hail - TM07
  (151, 15100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 20),
  -- Mew - Bulk Up - TM08
  (151, 15100, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 21),
  -- Mew - Venoshock - TM09
  (151, 15100, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 22),
  -- Mew - Hidden Power - TM10
  (151, 15100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Mew - Taunt - TM12
  (151, 15100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 26),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 27),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Mew - Light Screen - TM16
  (151, 15100, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 29),
  -- Mew - Protect - TM17
  (151, 15100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 30),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 31),
  -- Mew - Roost - TM19
  (151, 15100, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 32),
  -- Mew - Safeguard - TM20
  (151, 15100, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 33),
  -- Mew - Frustration - TM21
  (151, 15100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 34),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 35),
  -- Mew - Smack Down - TM23
  (151, 15100, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 36),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 37),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 38),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 39),
  -- Mew - Return - TM27
  (151, 15100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 40),
  -- Mew - Dig - TM28
  (151, 15100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 41),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 42),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 43),
  -- Mew - Brick Break - TM31
  (151, 15100, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 44),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 45),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 46),
  -- Mew - Sludge Wave - TM34
  (151, 15100, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 47),
  -- Mew - Flamethrower - TM35
  (151, 15100, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 48),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 49),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 50),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 51),
  -- Mew - Rock Tomb - TM39
  (151, 15100, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 52),
  -- Mew - Aerial Ace - TM40
  (151, 15100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 53),
  -- Mew - Torment - TM41
  (151, 15100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 54),
  -- Mew - Facade - TM42
  (151, 15100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 55),
  -- Mew - Flame Charge - TM43
  (151, 15100, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 56),
  -- Mew - Rest - TM44
  (151, 15100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 57),
  -- Mew - Attract - TM45
  (151, 15100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 58),
  -- Mew - Thief - TM46
  (151, 15100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 59),
  -- Mew - Low Sweep - TM47
  (151, 15100, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 60),
  -- Mew - Round - TM48
  (151, 15100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 61),
  -- Mew - Echoed Voice - TM49
  (151, 15100, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 62),
  -- Mew - Overheat - TM50
  (151, 15100, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 63),
  -- Mew - Steel Wing - TM51
  (151, 15100, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 64),
  -- Mew - Focus Blast - TM52
  (151, 15100, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 65),
  -- Mew - Energy Ball - TM53
  (151, 15100, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 66),
  -- Mew - False Swipe - TM54
  (151, 15100, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 67),
  -- Mew - Scald - TM55
  (151, 15100, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 68),
  -- Mew - Fling - TM56
  (151, 15100, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 69),
  -- Mew - Charge Beam - TM57
  (151, 15100, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 70),
  -- Mew - Sky Drop - TM58
  (151, 15100, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 71),
  -- Mew - Incinerate - TM59
  (151, 15100, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 72),
  -- Mew - Quash - TM60
  (151, 15100, 511, 14, NULL, 2, NULL, NULL, 14002060, NULL, 73),
  -- Mew - Will-O-Wisp - TM61
  (151, 15100, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 74),
  -- Mew - Acrobatics - TM62
  (151, 15100, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 75),
  -- Mew - Embargo - TM63
  (151, 15100, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 76),
  -- Mew - Explosion - TM64
  (151, 15100, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 77),
  -- Mew - Shadow Claw - TM65
  (151, 15100, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 78),
  -- Mew - Payback - TM66
  (151, 15100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 79),
  -- Mew - Retaliate - TM67
  (151, 15100, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 80),
  -- Mew - Giga Impact - TM68
  (151, 15100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 81),
  -- Mew - Rock Polish - TM69
  (151, 15100, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 82),
  -- Mew - Flash - TM70
  (151, 15100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 83),
  -- Mew - Stone Edge - TM71
  (151, 15100, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 84),
  -- Mew - Volt Switch - TM72
  (151, 15100, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 85),
  -- Mew - Thunder Wave - TM73
  (151, 15100, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 86),
  -- Mew - Gyro Ball - TM74
  (151, 15100, 360, 14, NULL, 2, NULL, NULL, 14002074, NULL, 87),
  -- Mew - Swords Dance - TM75
  (151, 15100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 88),
  -- Mew - Struggle Bug - TM76
  (151, 15100, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 89),
  -- Mew - Psych Up - TM77
  (151, 15100, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 90),
  -- Mew - Bulldoze - TM78
  (151, 15100, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 91),
  -- Mew - Frost Breath - TM79
  (151, 15100, 524, 14, NULL, 2, NULL, NULL, 14002079, NULL, 92),
  -- Mew - Rock Slide - TM80
  (151, 15100, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 93),
  -- Mew - X-Scissor - TM81
  (151, 15100, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 94),
  -- Mew - Dragon Tail - TM82
  (151, 15100, 525, 14, NULL, 2, NULL, NULL, 14002082, NULL, 95),
  -- Mew - Infestation - TM83
  (151, 15100, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 96),
  -- Mew - Poison Jab - TM84
  (151, 15100, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 97),
  -- Mew - Dream Eater - TM85
  (151, 15100, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 98),
  -- Mew - Grass Knot - TM86
  (151, 15100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 99),
  -- Mew - Swagger - TM87
  (151, 15100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 100),
  -- Mew - Sleep Talk - TM88
  (151, 15100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 101),
  -- Mew - U-turn - TM89
  (151, 15100, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 102),
  -- Mew - Substitute - TM90
  (151, 15100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 103),
  -- Mew - Flash Cannon - TM91
  (151, 15100, 430, 14, NULL, 2, NULL, NULL, 14002091, NULL, 104),
  -- Mew - Trick Room - TM92
  (151, 15100, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 105),
  -- Mew - Wild Charge - TM93
  (151, 15100, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 106),
  -- Mew - Secret Power - TM94
  (151, 15100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 107),
  -- Mew - Snarl - TM95
  (151, 15100, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 108),
  -- Mew - Nature Power - TM96
  (151, 15100, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 109),
  -- Mew - Dark Pulse - TM97
  (151, 15100, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 110),
  -- Mew - Power-Up Punch - TM98
  (151, 15100, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 111),
  -- Mew - Dazzling Gleam - TM99
  (151, 15100, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 112),
  -- Mew - Confide - TM100
  (151, 15100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 113),
  -- Mew - Cut - HM01
  (151, 15100, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 114),
  -- Mew - Fly - HM02
  (151, 15100, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 115),
  -- Mew - Surf - HM03
  (151, 15100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 116),
  -- Mew - Strength - HM04
  (151, 15100, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 117),
  -- Mew - Waterfall - HM05
  (151, 15100, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 118),
  -- Mew - Rock Smash - HM06
  (151, 15100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 119),
  -- Mew - Dive - HM07
  (151, 15100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 120),
  -- Mew - Fire Punch - Tutor
  (151, 15100, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 121),
  -- Mew - Ice Punch - Tutor
  (151, 15100, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 122),
  -- Mew - Thunder Punch - Tutor
  (151, 15100, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 123),
  -- Mew - Bind - Tutor
  (151, 15100, 20, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 124),
  -- Mew - Low Kick - Tutor
  (151, 15100, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 125),
  -- Mew - Sky Attack - Tutor
  (151, 15100, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 126),
  -- Mew - Super Fang - Tutor
  (151, 15100, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 127),
  -- Mew - Snore - Tutor
  (151, 15100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 128),
  -- Mew - Spite - Tutor
  (151, 15100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 129),
  -- Mew - Icy Wind - Tutor
  (151, 15100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 130),
  -- Mew - Outrage - Tutor
  (151, 15100, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 131),
  -- Mew - Giga Drain - Tutor
  (151, 15100, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 132),
  -- Mew - Heal Bell - Tutor
  (151, 15100, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 133),
  -- Mew - Pain Split - Tutor
  (151, 15100, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 134),
  -- Mew - Iron Tail - Tutor
  (151, 15100, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 135),
  -- Mew - Synthesis - Tutor
  (151, 15100, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 136),
  -- Mew - Uproar - Tutor
  (151, 15100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 137),
  -- Mew - Heat Wave - Tutor
  (151, 15100, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 138),
  -- Mew - Focus Punch - Tutor
  (151, 15100, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 139),
  -- Mew - Helping Hand - Tutor
  (151, 15100, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 140),
  -- Mew - Trick - Tutor
  (151, 15100, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 141),
  -- Mew - Role Play - Tutor
  (151, 15100, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 142),
  -- Mew - Superpower - Tutor
  (151, 15100, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 143),
  -- Mew - Magic Coat - Tutor
  (151, 15100, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 144),
  -- Mew - Recycle - Tutor
  (151, 15100, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 145),
  -- Mew - Knock Off - Tutor
  (151, 15100, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 146),
  -- Mew - Endeavor - Tutor
  (151, 15100, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 147),
  -- Mew - Skill Swap - Tutor
  (151, 15100, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 148),
  -- Mew - Snatch - Tutor
  (151, 15100, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 149),
  -- Mew - Hyper Voice - Tutor
  (151, 15100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 150),
  -- Mew - Signal Beam - Tutor
  (151, 15100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 151),
  -- Mew - Iron Defense - Tutor
  (151, 15100, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 152),
  -- Mew - Block - Tutor
  (151, 15100, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 153),
  -- Mew - Bounce - Tutor
  (151, 15100, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 154),
  -- Mew - Covet - Tutor
  (151, 15100, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 155),
  -- Mew - Shock Wave - Tutor
  (151, 15100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 156),
  -- Mew - Water Pulse - Tutor
  (151, 15100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 157),
  -- Mew - Gravity - Tutor
  (151, 15100, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 158),
  -- Mew - Tailwind - Tutor
  (151, 15100, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 159),
  -- Mew - Gastro Acid - Tutor
  (151, 15100, 380, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 160),
  -- Mew - Last Resort - Tutor
  (151, 15100, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 161),
  -- Mew - Worry Seed - Tutor
  (151, 15100, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 162),
  -- Mew - Magnet Rise - Tutor
  (151, 15100, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 163),
  -- Mew - Aqua Tail - Tutor
  (151, 15100, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 164),
  -- Mew - Seed Bomb - Tutor
  (151, 15100, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 165),
  -- Mew - Dragon Pulse - Tutor
  (151, 15100, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 166),
  -- Mew - Drain Punch - Tutor
  (151, 15100, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 167),
  -- Mew - Earth Power - Tutor
  (151, 15100, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 168),
  -- Mew - Zen Headbutt - Tutor
  (151, 15100, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 169),
  -- Mew - Gunk Shot - Tutor
  (151, 15100, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 170),
  -- Mew - Iron Head - Tutor
  (151, 15100, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 171),
  -- Mew - Stealth Rock - Tutor
  (151, 15100, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 172),
  -- Mew - Bug Bite - Tutor
  (151, 15100, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 173),
  -- Mew - Wonder Room - Tutor
  (151, 15100, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 174),
  -- Mew - Magic Room - Tutor
  (151, 15100, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 175),
  -- Mew - Foul Play - Tutor
  (151, 15100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 176),
  -- Mew - After You - Tutor
  (151, 15100, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 177),
  -- Mew - Electroweb - Tutor
  (151, 15100, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 178),
  -- Mew - Drill Run - Tutor
  (151, 15100, 529, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 179),
  -- Mew - Dual Chop - Tutor
  (151, 15100, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 180);
