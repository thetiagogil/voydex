-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 101-151.
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
  -- Electrode - Magnetic Flux - Starting Move
  (101, 10100, 602, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Electrode - Charge - Starting Move
  (101, 10100, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Electrode - Tackle - Starting Move
  (101, 10100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Electrode - Eerie Impulse - Starting Move
  (101, 10100, 598, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Electrode - Thunder Shock - Level 4
  (101, 10100, 84, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Electrode - Eerie Impulse - Level 6
  (101, 10100, 598, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Electrode - Spark - Level 9
  (101, 10100, 209, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Electrode - Rollout - Level 11
  (101, 10100, 205, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Electrode - Screech - Level 13
  (101, 10100, 103, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Electrode - Charge Beam - Level 16
  (101, 10100, 451, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Electrode - Swift - Level 20
  (101, 10100, 129, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Electrode - Electro Ball - Level 22
  (101, 10100, 486, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Electrode - Self-Destruct - Level 26
  (101, 10100, 120, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Electrode - Light Screen - Level 29
  (101, 10100, 113, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Electrode - Magnet Rise - Level 36
  (101, 10100, 393, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Electrode - Discharge - Level 41
  (101, 10100, 435, 21, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Electrode - Explosion - Level 47
  (101, 10100, 153, 21, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Electrode - Gyro Ball - Level 54
  (101, 10100, 360, 21, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Electrode - Mirror Coat - Level 58
  (101, 10100, 243, 21, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Electrode - Taunt - TM12
  (101, 10100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Electrode - Light Screen - TM16
  (101, 10100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Electrode - Shock Wave - TM34
  (101, 10100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Electrode - Torment - TM41
  (101, 10100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Electrode - Facade - TM42
  (101, 10100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Electrode - Volt Switch - TM43
  (101, 10100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Electrode - Thief - TM46
  (101, 10100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Electrode - Charge Beam - TM57
  (101, 10100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 34),
  -- Electrode - Endure - TM58
  (101, 10100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Electrode - Explosion - TM64
  (101, 10100, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 36),
  -- Electrode - Giga Impact - TM68
  (101, 10100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Electrode - Flash - TM70
  (101, 10100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Electrode - Thunder Wave - TM73
  (101, 10100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Electrode - Gyro Ball - TM74
  (101, 10100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 40),
  -- Electrode - Sleep Talk - TM82
  (101, 10100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Electrode - Swagger - TM87
  (101, 10100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Electrode - Substitute - TM90
  (101, 10100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Exeggcute - Absorb - Starting Move
  (102, 10200, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Starting Move
  (102, 10200, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Exeggcute - Reflect - Level 5
  (102, 10200, 115, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Exeggcute - Leech Seed - Level 10
  (102, 10200, 73, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Exeggcute - Mega Drain - Level 15
  (102, 10200, 72, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Exeggcute - Confusion - Level 20
  (102, 10200, 93, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Exeggcute - Synthesis - Level 25
  (102, 10200, 235, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Exeggcute - Bullet Seed - Level 30
  (102, 10200, 331, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Exeggcute - Giga Drain - Level 35
  (102, 10200, 202, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Exeggcute - Extrasensory - Level 40
  (102, 10200, 326, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Exeggcute - Uproar - Level 45
  (102, 10200, 253, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Exeggcute - Worry Seed - Level 50
  (102, 10200, 388, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 55
  (102, 10200, 76, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Exeggcute - Bullet Seed - TM09
  (102, 10200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 14),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Exeggcute - Light Screen - TM16
  (102, 10200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Exeggcute - Giga Drain - TM19
  (102, 10200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 19),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 20),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 22),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 23),
  -- Exeggcute - Facade - TM42
  (102, 10200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Exeggcute - Skill Swap - TM48
  (102, 10200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 28),
  -- Exeggcute - Energy Ball - TM53
  (102, 10200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 29),
  -- Exeggcute - Endure - TM58
  (102, 10200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Exeggcute - Explosion - TM64
  (102, 10200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 31),
  -- Exeggcute - Flash - TM70
  (102, 10200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Exeggcute - Swords Dance - TM75
  (102, 10200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 33),
  -- Exeggcute - Psych Up - TM77
  (102, 10200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 34),
  -- Exeggcute - Sleep Talk - TM82
  (102, 10200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Exeggcute - Dream Eater - TM85
  (102, 10200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 36),
  -- Exeggcute - Grass Knot - TM86
  (102, 10200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 37),
  -- Exeggcute - Swagger - TM87
  (102, 10200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Exeggcute - Substitute - TM90
  (102, 10200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Exeggcute - Trick Room - TM92
  (102, 10200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 40),
  -- Exeggcute - Strength - TM96
  (102, 10200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 41),
  -- Exeggcute - Ancient Power - Egg
  (102, 10200, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Exeggcute - Block - Egg
  (102, 10200, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Exeggcute - Curse - Egg
  (102, 10200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Exeggcute - Grassy Terrain - Egg
  (102, 10200, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Exeggcute - Ingrain - Egg
  (102, 10200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Exeggcute - Leaf Storm - Egg
  (102, 10200, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Exeggcute - Moonlight - Egg
  (102, 10200, 236, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Exeggcute - Nature Power - Egg
  (102, 10200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Exeggcute - Poison Powder - Egg
  (102, 10200, 77, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggcute - Power Swap - Egg
  (102, 10200, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Exeggcute - Sleep Powder - Egg
  (102, 10200, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Exeggcute - Stun Spore - Egg
  (102, 10200, 78, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Exeggcute - Synthesis - Egg
  (102, 10200, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggutor - Stomp - Starting Move
  (103, 10300, 23, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Exeggutor - Seed Bomb - Starting Move
  (103, 10300, 402, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Exeggutor - Psyshock - Starting Move
  (103, 10300, 473, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Exeggutor - Wood Hammer - Starting Move
  (103, 10300, 452, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Exeggutor - Leaf Storm - Starting Move
  (103, 10300, 437, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Exeggutor - Mega Drain - Starting Move
  (103, 10300, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Exeggutor - Confusion - Starting Move
  (103, 10300, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Exeggutor - Synthesis - Starting Move
  (103, 10300, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Exeggutor - Bullet Seed - Starting Move
  (103, 10300, 331, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Exeggutor - Giga Drain - Starting Move
  (103, 10300, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Exeggutor - Extrasensory - Starting Move
  (103, 10300, 326, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Exeggutor - Uproar - Starting Move
  (103, 10300, 253, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Exeggutor - Worry Seed - Starting Move
  (103, 10300, 388, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Exeggutor - Solar Beam - Starting Move
  (103, 10300, 76, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Exeggutor - Absorb - Starting Move
  (103, 10300, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Exeggutor - Hypnosis - Starting Move
  (103, 10300, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Exeggutor - Reflect - Starting Move
  (103, 10300, 115, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Exeggutor - Leech Seed - Starting Move
  (103, 10300, 73, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Exeggutor - Stomp - Evolution
  (103, 10300, 23, 21, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Exeggutor - Calm Mind - TM04
  (103, 10300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Exeggutor - Bullet Seed - TM09
  (103, 10300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Exeggutor - Light Screen - TM16
  (103, 10300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Exeggutor - Giga Drain - TM19
  (103, 10300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 30),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Exeggutor - Facade - TM42
  (103, 10300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Exeggutor - Skill Swap - TM48
  (103, 10300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Exeggutor - Energy Ball - TM53
  (103, 10300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Exeggutor - Endure - TM58
  (103, 10300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Exeggutor - Explosion - TM64
  (103, 10300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Exeggutor - Giga Impact - TM68
  (103, 10300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Exeggutor - Flash - TM70
  (103, 10300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Exeggutor - Swords Dance - TM75
  (103, 10300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Exeggutor - Psych Up - TM77
  (103, 10300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Exeggutor - Sleep Talk - TM82
  (103, 10300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Exeggutor - Bulldoze - TM83
  (103, 10300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Exeggutor - Dream Eater - TM85
  (103, 10300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Exeggutor - Grass Knot - TM86
  (103, 10300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Exeggutor - Swagger - TM87
  (103, 10300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Exeggutor - Substitute - TM90
  (103, 10300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Exeggutor - Trick Room - TM92
  (103, 10300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 50),
  -- Exeggutor - Strength - TM96
  (103, 10300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Exeggutor - Ancient Power - Egg
  (103, 10300, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Exeggutor - Block - Egg
  (103, 10300, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Exeggutor - Curse - Egg
  (103, 10300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggutor - Grassy Terrain - Egg
  (103, 10300, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Exeggutor - Ingrain - Egg
  (103, 10300, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Exeggutor - Leaf Storm - Egg
  (103, 10300, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Exeggutor - Moonlight - Egg
  (103, 10300, 236, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Exeggutor - Nature Power - Egg
  (103, 10300, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Exeggutor - Poison Powder - Egg
  (103, 10300, 77, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Exeggutor - Power Swap - Egg
  (103, 10300, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Exeggutor - Sleep Powder - Egg
  (103, 10300, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Exeggutor - Stun Spore - Egg
  (103, 10300, 78, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Exeggutor - Synthesis - Egg
  (103, 10300, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Cubone - Mud-Slap - Starting Move
  (104, 10400, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cubone - Growl - Starting Move
  (104, 10400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cubone - Tail Whip - Level 4
  (104, 10400, 39, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cubone - False Swipe - Level 8
  (104, 10400, 206, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cubone - Headbutt - Level 12
  (104, 10400, 29, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cubone - Retaliate - Level 16
  (104, 10400, 514, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cubone - Fling - Level 20
  (104, 10400, 374, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Cubone - Stomping Tantrum - Level 24
  (104, 10400, 707, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Cubone - Bone Rush - Level 29
  (104, 10400, 198, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cubone - Focus Energy - Level 32
  (104, 10400, 116, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Cubone - Endeavor - Level 36
  (104, 10400, 283, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Cubone - Bonemerang - Level 40
  (104, 10400, 155, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Cubone - Thrash - Level 44
  (104, 10400, 37, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Cubone - Double-Edge - Level 48
  (104, 10400, 38, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Cubone - Focus Punch - TM01
  (104, 10400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Cubone - Iron Tail - TM23
  (104, 10400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Cubone - Brick Break - TM31
  (104, 10400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 23),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Cubone - Flamethrower - TM35
  (104, 10400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Cubone - Rock Tomb - TM39
  (104, 10400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Cubone - Aerial Ace - TM40
  (104, 10400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Cubone - Facade - TM42
  (104, 10400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Cubone - False Swipe - TM54
  (104, 10400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 34),
  -- Cubone - Fling - TM56
  (104, 10400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Cubone - Endure - TM58
  (104, 10400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Cubone - Swords Dance - TM75
  (104, 10400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Cubone - Stealth Rock - TM76
  (104, 10400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Cubone - Rock Slide - TM80
  (104, 10400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Cubone - Sleep Talk - TM82
  (104, 10400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Cubone - Bulldoze - TM83
  (104, 10400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Cubone - Swagger - TM87
  (104, 10400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Cubone - Substitute - TM90
  (104, 10400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Cubone - Strength - TM96
  (104, 10400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Cubone - Rock Smash - TM98
  (104, 10400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Cubone - Rock Climb - TM100
  (104, 10400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 46),
  -- Cubone - Ancient Power - Egg
  (104, 10400, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cubone - Belly Drum - Egg
  (104, 10400, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cubone - Curse - Egg
  (104, 10400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cubone - Detect - Egg
  (104, 10400, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cubone - Double Kick - Egg
  (104, 10400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cubone - Iron Head - Egg
  (104, 10400, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cubone - Leer - Egg
  (104, 10400, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cubone - Perish Song - Egg
  (104, 10400, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cubone - Screech - Egg
  (104, 10400, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cubone - Skull Bash - Egg
  (104, 10400, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marowak - Mud-Slap - Starting Move
  (105, 10500, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Marowak - Growl - Starting Move
  (105, 10500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Marowak - Tail Whip - Starting Move
  (105, 10500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Marowak - False Swipe - Starting Move
  (105, 10500, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Marowak - Headbutt - Level 12
  (105, 10500, 29, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Marowak - Retaliate - Level 16
  (105, 10500, 514, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Marowak - Fling - Level 20
  (105, 10500, 374, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Marowak - Stomping Tantrum - Level 24
  (105, 10500, 707, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Marowak - Bone Rush - Level 31
  (105, 10500, 198, 21, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Marowak - Focus Energy - Level 36
  (105, 10500, 116, 21, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Marowak - Endeavor - Level 42
  (105, 10500, 283, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Marowak - Bonemerang - Level 48
  (105, 10500, 155, 21, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 54
  (105, 10500, 37, 21, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Marowak - Double-Edge - Level 60
  (105, 10500, 38, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Marowak - Focus Punch - TM01
  (105, 10500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Marowak - Iron Tail - TM23
  (105, 10500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Marowak - Brick Break - TM31
  (105, 10500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Marowak - Flamethrower - TM35
  (105, 10500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 28),
  -- Marowak - Rock Tomb - TM39
  (105, 10500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Marowak - Aerial Ace - TM40
  (105, 10500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Marowak - Facade - TM42
  (105, 10500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Marowak - Focus Blast - TM52
  (105, 10500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Marowak - False Swipe - TM54
  (105, 10500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 36),
  -- Marowak - Fling - TM56
  (105, 10500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Marowak - Endure - TM58
  (105, 10500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Marowak - Giga Impact - TM68
  (105, 10500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Marowak - Stone Edge - TM71
  (105, 10500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Marowak - Swords Dance - TM75
  (105, 10500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Marowak - Stealth Rock - TM76
  (105, 10500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 42),
  -- Marowak - Rock Slide - TM80
  (105, 10500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Marowak - Sleep Talk - TM82
  (105, 10500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Marowak - Bulldoze - TM83
  (105, 10500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Marowak - Swagger - TM87
  (105, 10500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Marowak - Substitute - TM90
  (105, 10500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Marowak - Strength - TM96
  (105, 10500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Marowak - Rock Smash - TM98
  (105, 10500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Marowak - Rock Climb - TM100
  (105, 10500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Marowak - Ancient Power - Egg
  (105, 10500, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marowak - Belly Drum - Egg
  (105, 10500, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marowak - Curse - Egg
  (105, 10500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marowak - Detect - Egg
  (105, 10500, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marowak - Double Kick - Egg
  (105, 10500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marowak - Iron Head - Egg
  (105, 10500, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marowak - Leer - Egg
  (105, 10500, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marowak - Perish Song - Egg
  (105, 10500, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marowak - Screech - Egg
  (105, 10500, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marowak - Skull Bash - Egg
  (105, 10500, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hitmonlee - Brick Break - Starting Move
  (106, 10600, 280, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hitmonlee - Feint - Starting Move
  (106, 10600, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hitmonlee - Low Sweep - Starting Move
  (106, 10600, 490, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hitmonlee - Tackle - Starting Move
  (106, 10600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hitmonlee - Helping Hand - Starting Move
  (106, 10600, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hitmonlee - Fake Out - Starting Move
  (106, 10600, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Hitmonlee - Focus Energy - Starting Move
  (106, 10600, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Hitmonlee - Brick Break - Evolution
  (106, 10600, 280, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Hitmonlee - Double Kick - Level 4
  (106, 10600, 24, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Hitmonlee - Low Kick - Level 8
  (106, 10600, 67, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Hitmonlee - Endure - Level 12
  (106, 10600, 203, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Hitmonlee - Revenge - Level 16
  (106, 10600, 279, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Hitmonlee - Wide Guard - Level 21
  (106, 10600, 469, 21, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hitmonlee - Blaze Kick - Level 24
  (106, 10600, 299, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Hitmonlee - Mind Reader - Level 28
  (106, 10600, 170, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Hitmonlee - Mega Kick - Level 32
  (106, 10600, 25, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Hitmonlee - Close Combat - Level 36
  (106, 10600, 370, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Hitmonlee - Reversal - Level 40
  (106, 10600, 179, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Hitmonlee - High Jump Kick - Level 44
  (106, 10600, 136, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Hitmonlee - Focus Punch - TM01
  (106, 10600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Hitmonlee - Bulk Up - TM08
  (106, 10600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 21),
  -- Hitmonlee - Work Up - TM10
  (106, 10600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Hitmonlee - Rain Dance - TM18
  (106, 10600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Hitmonlee - Earthquake - TM26
  (106, 10600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Hitmonlee - Low Sweep - TM27
  (106, 10600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 27),
  -- Hitmonlee - Brick Break - TM31
  (106, 10600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Hitmonlee - Rock Tomb - TM39
  (106, 10600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Hitmonlee - Facade - TM42
  (106, 10600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Hitmonlee - Focus Blast - TM52
  (106, 10600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Hitmonlee - Fling - TM56
  (106, 10600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Hitmonlee - Endure - TM58
  (106, 10600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Hitmonlee - Stone Edge - TM71
  (106, 10600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Hitmonlee - Rock Slide - TM80
  (106, 10600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Hitmonlee - Sleep Talk - TM82
  (106, 10600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Hitmonlee - Bulldoze - TM83
  (106, 10600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Hitmonlee - Poison Jab - TM84
  (106, 10600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 42),
  -- Hitmonlee - Swagger - TM87
  (106, 10600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Hitmonlee - Substitute - TM90
  (106, 10600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Hitmonlee - Strength - TM96
  (106, 10600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Hitmonlee - Rock Smash - TM98
  (106, 10600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Hitmonlee - Rock Climb - TM100
  (106, 10600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 47),
  -- Hitmonlee - Bullet Punch - Egg
  (106, 10600, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hitmonlee - Counter - Egg
  (106, 10600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hitmonlee - Feint - Egg
  (106, 10600, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hitmonlee - Helping Hand - Egg
  (106, 10600, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hitmonlee - High Jump Kick - Egg
  (106, 10600, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hitmonlee - Mach Punch - Egg
  (106, 10600, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hitmonlee - Mind Reader - Egg
  (106, 10600, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmonlee - Rapid Spin - Egg
  (106, 10600, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmonlee - Vacuum Wave - Egg
  (106, 10600, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmonchan - Drain Punch - Starting Move
  (107, 10700, 409, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hitmonchan - Feint - Starting Move
  (107, 10700, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hitmonchan - Vacuum Wave - Starting Move
  (107, 10700, 410, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hitmonchan - Bullet Punch - Starting Move
  (107, 10700, 418, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hitmonchan - Tackle - Starting Move
  (107, 10700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hitmonchan - Helping Hand - Starting Move
  (107, 10700, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Hitmonchan - Fake Out - Starting Move
  (107, 10700, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Hitmonchan - Focus Energy - Starting Move
  (107, 10700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Hitmonchan - Drain Punch - Evolution
  (107, 10700, 409, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Hitmonchan - Mach Punch - Level 4
  (107, 10700, 183, 21, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Hitmonchan - Power-Up Punch - Level 8
  (107, 10700, 612, 21, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Hitmonchan - Detect - Level 12
  (107, 10700, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Hitmonchan - Revenge - Level 16
  (107, 10700, 279, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Hitmonchan - Quick Guard - Level 21
  (107, 10700, 501, 21, NULL, 1, 21, NULL, NULL, NULL, 14),
  -- Hitmonchan - Thunder Punch - Level 24
  (107, 10700, 9, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Hitmonchan - Ice Punch - Level 24
  (107, 10700, 8, 21, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Hitmonchan - Fire Punch - Level 24
  (107, 10700, 7, 21, NULL, 1, 24, NULL, NULL, NULL, 17),
  -- Hitmonchan - Agility - Level 28
  (107, 10700, 97, 21, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Hitmonchan - Mega Punch - Level 32
  (107, 10700, 5, 21, NULL, 1, 32, NULL, NULL, NULL, 19),
  -- Hitmonchan - Close Combat - Level 36
  (107, 10700, 370, 21, NULL, 1, 36, NULL, NULL, NULL, 20),
  -- Hitmonchan - Counter - Level 40
  (107, 10700, 68, 21, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Hitmonchan - Focus Punch - Level 44
  (107, 10700, 264, 21, NULL, 1, 44, NULL, NULL, NULL, 22),
  -- Hitmonchan - Focus Punch - TM01
  (107, 10700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Hitmonchan - Bulk Up - TM08
  (107, 10700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 24),
  -- Hitmonchan - Work Up - TM10
  (107, 10700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 25),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Hitmonchan - Rain Dance - TM18
  (107, 10700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Hitmonchan - Earthquake - TM26
  (107, 10700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Hitmonchan - Low Sweep - TM27
  (107, 10700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 30),
  -- Hitmonchan - Brick Break - TM31
  (107, 10700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Hitmonchan - Rock Tomb - TM39
  (107, 10700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Hitmonchan - Facade - TM42
  (107, 10700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Hitmonchan - Focus Blast - TM52
  (107, 10700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Hitmonchan - Fling - TM56
  (107, 10700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Hitmonchan - Endure - TM58
  (107, 10700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Hitmonchan - Drain Punch - TM60
  (107, 10700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Hitmonchan - Stone Edge - TM71
  (107, 10700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Hitmonchan - Rock Slide - TM80
  (107, 10700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Hitmonchan - Sleep Talk - TM82
  (107, 10700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Hitmonchan - Bulldoze - TM83
  (107, 10700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Hitmonchan - Swagger - TM87
  (107, 10700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Hitmonchan - Substitute - TM90
  (107, 10700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Hitmonchan - Strength - TM96
  (107, 10700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Hitmonchan - Rock Smash - TM98
  (107, 10700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Hitmonchan - Rock Climb - TM100
  (107, 10700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Hitmonchan - Bullet Punch - Egg
  (107, 10700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hitmonchan - Counter - Egg
  (107, 10700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hitmonchan - Feint - Egg
  (107, 10700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hitmonchan - Helping Hand - Egg
  (107, 10700, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmonchan - High Jump Kick - Egg
  (107, 10700, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmonchan - Mach Punch - Egg
  (107, 10700, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmonchan - Mind Reader - Egg
  (107, 10700, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hitmonchan - Rapid Spin - Egg
  (107, 10700, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hitmonchan - Vacuum Wave - Egg
  (107, 10700, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lickitung - Lick - Starting Move
  (108, 10800, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lickitung - Defense Curl - Starting Move
  (108, 10800, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lickitung - Rollout - Level 6
  (108, 10800, 205, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lickitung - Supersonic - Level 12
  (108, 10800, 48, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 18
  (108, 10800, 35, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Lickitung - Disable - Level 24
  (108, 10800, 50, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Lickitung - Stomp - Level 30
  (108, 10800, 23, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Lickitung - Knock Off - Level 36
  (108, 10800, 282, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lickitung - Screech - Level 42
  (108, 10800, 103, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Lickitung - Slam - Level 48
  (108, 10800, 21, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Lickitung - Power Whip - Level 54
  (108, 10800, 438, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lickitung - Belly Drum - Level 60
  (108, 10800, 187, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Lickitung - Focus Punch - TM01
  (108, 10800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Lickitung - Water Pulse - TM03
  (108, 10800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Lickitung - Work Up - TM10
  (108, 10800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Lickitung - Solar Beam - TM22
  (108, 10800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Lickitung - Iron Tail - TM23
  (108, 10800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Lickitung - Dig - TM28
  (108, 10800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Lickitung - Brick Break - TM31
  (108, 10800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Lickitung - Shock Wave - TM34
  (108, 10800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Lickitung - Flamethrower - TM35
  (108, 10800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Lickitung - Rock Tomb - TM39
  (108, 10800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Lickitung - Facade - TM42
  (108, 10800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Lickitung - Fling - TM56
  (108, 10800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Lickitung - Endure - TM58
  (108, 10800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Lickitung - Giga Impact - TM68
  (108, 10800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Lickitung - Swords Dance - TM75
  (108, 10800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Lickitung - Psych Up - TM77
  (108, 10800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Lickitung - Rock Slide - TM80
  (108, 10800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Lickitung - Sleep Talk - TM82
  (108, 10800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Lickitung - Bulldoze - TM83
  (108, 10800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Lickitung - Dream Eater - TM85
  (108, 10800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Lickitung - Swagger - TM87
  (108, 10800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Lickitung - Substitute - TM90
  (108, 10800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Lickitung - Cut - TM93
  (108, 10800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Lickitung - Surf - TM95
  (108, 10800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 52),
  -- Lickitung - Strength - TM96
  (108, 10800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Lickitung - Rock Smash - TM98
  (108, 10800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Lickitung - Rock Climb - TM100
  (108, 10800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 55),
  -- Lickitung - Amnesia - Egg
  (108, 10800, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lickitung - Belch - Egg
  (108, 10800, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lickitung - Belly Drum - Egg
  (108, 10800, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lickitung - Body Slam - Egg
  (108, 10800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lickitung - Curse - Egg
  (108, 10800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lickitung - Hammer Arm - Egg
  (108, 10800, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lickitung - Muddy Water - Egg
  (108, 10800, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lickitung - Snore - Egg
  (108, 10800, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lickitung - Thrash - Egg
  (108, 10800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lickitung - Zen Headbutt - Egg
  (108, 10800, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Koffing - Poison Gas - Starting Move
  (109, 10900, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Koffing - Tackle - Starting Move
  (109, 10900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 4
  (109, 10900, 123, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 8
  (109, 10900, 108, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Koffing - Clear Smog - Level 12
  (109, 10900, 499, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Koffing - Assurance - Level 16
  (109, 10900, 372, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 20
  (109, 10900, 124, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Koffing - Haze - Level 24
  (109, 10900, 114, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Koffing - Self-Destruct - Level 28
  (109, 10900, 120, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Koffing - Sludge Bomb - Level 32
  (109, 10900, 188, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Koffing - Toxic - Level 36
  (109, 10900, 92, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Koffing - Belch - Level 40
  (109, 10900, 562, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Koffing - Explosion - Level 44
  (109, 10900, 153, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Koffing - Memento - Level 48
  (109, 10900, 262, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Koffing - Destiny Bond - Level 52
  (109, 10900, 194, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Koffing - Taunt - TM12
  (109, 10900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Koffing - Rain Dance - TM18
  (109, 10900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Koffing - Shadow Ball - TM30
  (109, 10900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Koffing - Shock Wave - TM34
  (109, 10900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Koffing - Flamethrower - TM35
  (109, 10900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 28),
  -- Koffing - Torment - TM41
  (109, 10900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Koffing - Facade - TM42
  (109, 10900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Koffing - Endure - TM58
  (109, 10900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Koffing - Will-O-Wisp - TM61
  (109, 10900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Koffing - Explosion - TM64
  (109, 10900, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 36),
  -- Koffing - Payback - TM66
  (109, 10900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Koffing - Flash - TM70
  (109, 10900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Koffing - Gyro Ball - TM74
  (109, 10900, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Koffing - Dark Pulse - TM79
  (109, 10900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 40),
  -- Koffing - Sleep Talk - TM82
  (109, 10900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Koffing - Swagger - TM87
  (109, 10900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Koffing - Substitute - TM90
  (109, 10900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Koffing - Curse - Egg
  (109, 10900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Koffing - Destiny Bond - Egg
  (109, 10900, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Koffing - Grudge - Egg
  (109, 10900, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Koffing - Pain Split - Egg
  (109, 10900, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Koffing - Psybeam - Egg
  (109, 10900, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Koffing - Screech - Egg
  (109, 10900, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Koffing - Spit Up - Egg
  (109, 10900, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Koffing - Spite - Egg
  (109, 10900, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Stockpile - Egg
  (109, 10900, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Koffing - Swallow - Egg
  (109, 10900, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Toxic Spikes - Egg
  (109, 10900, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Koffing - Venom Drench - Egg
  (109, 10900, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Weezing - Double Hit - Starting Move
  (110, 11000, 458, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Weezing - Heat Wave - Starting Move
  (110, 11000, 257, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Weezing - Poison Gas - Starting Move
  (110, 11000, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Weezing - Tackle - Starting Move
  (110, 11000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Starting Move
  (110, 11000, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Weezing - Smokescreen - Starting Move
  (110, 11000, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Weezing - Double Hit - Evolution
  (110, 11000, 458, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Weezing - Clear Smog - Level 12
  (110, 11000, 499, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Weezing - Assurance - Level 16
  (110, 11000, 372, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Weezing - Sludge - Level 20
  (110, 11000, 124, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Weezing - Haze - Level 24
  (110, 11000, 114, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Weezing - Self-Destruct - Level 28
  (110, 11000, 120, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Weezing - Sludge Bomb - Level 32
  (110, 11000, 188, 21, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Weezing - Toxic - Level 38
  (110, 11000, 92, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Weezing - Belch - Level 44
  (110, 11000, 562, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Weezing - Explosion - Level 50
  (110, 11000, 153, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Weezing - Memento - Level 56
  (110, 11000, 262, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Weezing - Destiny Bond - Level 62
  (110, 11000, 194, 21, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Weezing - Taunt - TM12
  (110, 11000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Weezing - Rain Dance - TM18
  (110, 11000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Weezing - Shadow Ball - TM30
  (110, 11000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Weezing - Shock Wave - TM34
  (110, 11000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Weezing - Flamethrower - TM35
  (110, 11000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 32),
  -- Weezing - Torment - TM41
  (110, 11000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 33),
  -- Weezing - Facade - TM42
  (110, 11000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Weezing - Endure - TM58
  (110, 11000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Weezing - Will-O-Wisp - TM61
  (110, 11000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Weezing - Explosion - TM64
  (110, 11000, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 40),
  -- Weezing - Payback - TM66
  (110, 11000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Weezing - Giga Impact - TM68
  (110, 11000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Weezing - Flash - TM70
  (110, 11000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Weezing - Gyro Ball - TM74
  (110, 11000, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 44),
  -- Weezing - Dark Pulse - TM79
  (110, 11000, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 45),
  -- Weezing - Sleep Talk - TM82
  (110, 11000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Weezing - Swagger - TM87
  (110, 11000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Weezing - Substitute - TM90
  (110, 11000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Weezing - Curse - Egg
  (110, 11000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Weezing - Destiny Bond - Egg
  (110, 11000, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Weezing - Grudge - Egg
  (110, 11000, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Weezing - Pain Split - Egg
  (110, 11000, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Weezing - Psybeam - Egg
  (110, 11000, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Weezing - Screech - Egg
  (110, 11000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Weezing - Spit Up - Egg
  (110, 11000, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Weezing - Spite - Egg
  (110, 11000, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Weezing - Stockpile - Egg
  (110, 11000, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Weezing - Swallow - Egg
  (110, 11000, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Weezing - Toxic Spikes - Egg
  (110, 11000, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Weezing - Venom Drench - Egg
  (110, 11000, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Tackle - Starting Move
  (111, 11100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Starting Move
  (111, 11100, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rhyhorn - Smack Down - Level 5
  (111, 11100, 479, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rhyhorn - Bulldoze - Level 10
  (111, 11100, 523, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rhyhorn - Horn Attack - Level 15
  (111, 11100, 30, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rhyhorn - Scary Face - Level 20
  (111, 11100, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rhyhorn - Stomp - Level 25
  (111, 11100, 23, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rhyhorn - Rock Blast - Level 30
  (111, 11100, 350, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rhyhorn - Drill Run - Level 35
  (111, 11100, 529, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rhyhorn - Take Down - Level 40
  (111, 11100, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rhyhorn - Earthquake - Level 45
  (111, 11100, 89, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rhyhorn - Stone Edge - Level 50
  (111, 11100, 444, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rhyhorn - Megahorn - Level 55
  (111, 11100, 224, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rhyhorn - Horn Drill - Level 60
  (111, 11100, 32, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Rhyhorn - Ice Beam - TM13
  (111, 11100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Rhyhorn - Rain Dance - TM18
  (111, 11100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Rhyhorn - Iron Tail - TM23
  (111, 11100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Rhyhorn - Shock Wave - TM34
  (111, 11100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Rhyhorn - Flamethrower - TM35
  (111, 11100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Rhyhorn - Rock Tomb - TM39
  (111, 11100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Rhyhorn - Facade - TM42
  (111, 11100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Rhyhorn - Thief - TM46
  (111, 11100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Rhyhorn - Endure - TM58
  (111, 11100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Rhyhorn - Dragon Pulse - TM59
  (111, 11100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 37),
  -- Rhyhorn - Payback - TM66
  (111, 11100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Rhyhorn - Rock Polish - TM69
  (111, 11100, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Rhyhorn - Stone Edge - TM71
  (111, 11100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Rhyhorn - Swords Dance - TM75
  (111, 11100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Rhyhorn - Stealth Rock - TM76
  (111, 11100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 42),
  -- Rhyhorn - Rock Slide - TM80
  (111, 11100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Rhyhorn - Sleep Talk - TM82
  (111, 11100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Rhyhorn - Bulldoze - TM83
  (111, 11100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Rhyhorn - Poison Jab - TM84
  (111, 11100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 46),
  -- Rhyhorn - Swagger - TM87
  (111, 11100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Rhyhorn - Substitute - TM90
  (111, 11100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Rhyhorn - Strength - TM96
  (111, 11100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Rhyhorn - Rock Smash - TM98
  (111, 11100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Rhyhorn - Rock Climb - TM100
  (111, 11100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 51),
  -- Rhyhorn - Counter - Egg
  (111, 11100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rhyhorn - Crunch - Egg
  (111, 11100, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Rhyhorn - Crush Claw - Egg
  (111, 11100, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Rhyhorn - Curse - Egg
  (111, 11100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Rhyhorn - Dragon Rush - Egg
  (111, 11100, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rhyhorn - Fire Fang - Egg
  (111, 11100, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Rhyhorn - Guard Split - Egg
  (111, 11100, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Rhyhorn - Ice Fang - Egg
  (111, 11100, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Rhyhorn - Metal Burst - Egg
  (111, 11100, 368, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Reversal - Egg
  (111, 11100, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rhyhorn - Skull Bash - Egg
  (111, 11100, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rhyhorn - Thunder Fang - Egg
  (111, 11100, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rhydon - Hammer Arm - Starting Move
  (112, 11200, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rhydon - Tackle - Starting Move
  (112, 11200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rhydon - Tail Whip - Starting Move
  (112, 11200, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Rhydon - Smack Down - Starting Move
  (112, 11200, 479, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Rhydon - Bulldoze - Starting Move
  (112, 11200, 523, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Rhydon - Hammer Arm - Evolution
  (112, 11200, 359, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Rhydon - Horn Attack - Level 15
  (112, 11200, 30, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rhydon - Scary Face - Level 20
  (112, 11200, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rhydon - Stomp - Level 25
  (112, 11200, 23, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rhydon - Rock Blast - Level 30
  (112, 11200, 350, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Rhydon - Drill Run - Level 35
  (112, 11200, 529, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Rhydon - Take Down - Level 40
  (112, 11200, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rhydon - Earthquake - Level 47
  (112, 11200, 89, 21, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Rhydon - Stone Edge - Level 54
  (112, 11200, 444, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Rhydon - Megahorn - Level 61
  (112, 11200, 224, 21, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Rhydon - Horn Drill - Level 68
  (112, 11200, 32, 21, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Rhydon - Focus Punch - TM01
  (112, 11200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Rhydon - Rain Dance - TM18
  (112, 11200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Rhydon - Iron Tail - TM23
  (112, 11200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Rhydon - Brick Break - TM31
  (112, 11200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Rhydon - Shock Wave - TM34
  (112, 11200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Rhydon - Flamethrower - TM35
  (112, 11200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 35),
  -- Rhydon - Rock Tomb - TM39
  (112, 11200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Rhydon - Facade - TM42
  (112, 11200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Rhydon - Thief - TM46
  (112, 11200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Rhydon - Focus Blast - TM52
  (112, 11200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Rhydon - Fling - TM56
  (112, 11200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Rhydon - Endure - TM58
  (112, 11200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Rhydon - Dragon Pulse - TM59
  (112, 11200, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 44),
  -- Rhydon - Shadow Claw - TM65
  (112, 11200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 45),
  -- Rhydon - Payback - TM66
  (112, 11200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 46),
  -- Rhydon - Giga Impact - TM68
  (112, 11200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Rhydon - Rock Polish - TM69
  (112, 11200, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 48),
  -- Rhydon - Stone Edge - TM71
  (112, 11200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 49),
  -- Rhydon - Avalanche - TM72
  (112, 11200, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 50),
  -- Rhydon - Swords Dance - TM75
  (112, 11200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 51),
  -- Rhydon - Stealth Rock - TM76
  (112, 11200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 52),
  -- Rhydon - Rock Slide - TM80
  (112, 11200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Rhydon - Sleep Talk - TM82
  (112, 11200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Rhydon - Bulldoze - TM83
  (112, 11200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Rhydon - Poison Jab - TM84
  (112, 11200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 56),
  -- Rhydon - Swagger - TM87
  (112, 11200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Rhydon - Substitute - TM90
  (112, 11200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Rhydon - Cut - TM93
  (112, 11200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 59),
  -- Rhydon - Surf - TM95
  (112, 11200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 60),
  -- Rhydon - Strength - TM96
  (112, 11200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 61),
  -- Rhydon - Rock Smash - TM98
  (112, 11200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 62),
  -- Rhydon - Rock Climb - TM100
  (112, 11200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 63),
  -- Rhydon - Counter - Egg
  (112, 11200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rhydon - Crunch - Egg
  (112, 11200, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhydon - Crush Claw - Egg
  (112, 11200, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rhydon - Curse - Egg
  (112, 11200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rhydon - Dragon Rush - Egg
  (112, 11200, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rhydon - Fire Fang - Egg
  (112, 11200, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rhydon - Guard Split - Egg
  (112, 11200, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Rhydon - Ice Fang - Egg
  (112, 11200, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Rhydon - Metal Burst - Egg
  (112, 11200, 368, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Rhydon - Reversal - Egg
  (112, 11200, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Rhydon - Skull Bash - Egg
  (112, 11200, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Rhydon - Thunder Fang - Egg
  (112, 11200, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Chansey - Sweet Kiss - Starting Move
  (113, 11300, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chansey - Disarming Voice - Starting Move
  (113, 11300, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chansey - Covet - Starting Move
  (113, 11300, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Chansey - Charm - Starting Move
  (113, 11300, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Chansey - Minimize - Starting Move
  (113, 11300, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Chansey - Pound - Starting Move
  (113, 11300, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Chansey - Copycat - Starting Move
  (113, 11300, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Chansey - Defense Curl - Starting Move
  (113, 11300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Chansey - Tail Whip - Level 4
  (113, 11300, 39, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Chansey - Echoed Voice - Level 8
  (113, 11300, 497, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Chansey - Life Dew - Level 12
  (113, 11300, 791, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Chansey - Sing - Level 16
  (113, 11300, 47, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Chansey - Fling - Level 20
  (113, 11300, 374, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Chansey - Take Down - Level 24
  (113, 11300, 36, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Chansey - Heal Pulse - Level 28
  (113, 11300, 505, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Chansey - Helping Hand - Level 32
  (113, 11300, 270, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Chansey - Light Screen - Level 36
  (113, 11300, 113, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Chansey - Double-Edge - Level 40
  (113, 11300, 38, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Chansey - Soft-Boiled - Level 44
  (113, 11300, 135, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Chansey - Last Resort - Level 48
  (113, 11300, 387, 21, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Chansey - Healing Wish - Level 52
  (113, 11300, 361, 21, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Chansey - Focus Punch - TM01
  (113, 11300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Chansey - Water Pulse - TM03
  (113, 11300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Chansey - Calm Mind - TM04
  (113, 11300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 24),
  -- Chansey - Hail - TM07
  (113, 11300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 25),
  -- Chansey - Work Up - TM10
  (113, 11300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Chansey - Light Screen - TM16
  (113, 11300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 31),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 32),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 33),
  -- Chansey - Safeguard - TM20
  (113, 11300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 34),
  -- Chansey - Dazzling Gleam - TM21
  (113, 11300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 35),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 36),
  -- Chansey - Iron Tail - TM23
  (113, 11300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 37),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 38),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 39),
  -- Chansey - Earthquake - TM26
  (113, 11300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 40),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 41),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 42),
  -- Chansey - Brick Break - TM31
  (113, 11300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 43),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 44),
  -- Chansey - Shock Wave - TM34
  (113, 11300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 45),
  -- Chansey - Flamethrower - TM35
  (113, 11300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 46),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 47),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 48),
  -- Chansey - Rock Tomb - TM39
  (113, 11300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 49),
  -- Chansey - Facade - TM42
  (113, 11300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 50),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 51),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 52),
  -- Chansey - Skill Swap - TM48
  (113, 11300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 53),
  -- Chansey - Fling - TM56
  (113, 11300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 54),
  -- Chansey - Charge Beam - TM57
  (113, 11300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 55),
  -- Chansey - Endure - TM58
  (113, 11300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 56),
  -- Chansey - Drain Punch - TM60
  (113, 11300, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 57),
  -- Chansey - Recycle - TM67
  (113, 11300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 58),
  -- Chansey - Giga Impact - TM68
  (113, 11300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 59),
  -- Chansey - Flash - TM70
  (113, 11300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 60),
  -- Chansey - Thunder Wave - TM73
  (113, 11300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 61),
  -- Chansey - Stealth Rock - TM76
  (113, 11300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 62),
  -- Chansey - Psych Up - TM77
  (113, 11300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 63),
  -- Chansey - Rock Slide - TM80
  (113, 11300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 64),
  -- Chansey - Sleep Talk - TM82
  (113, 11300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 65),
  -- Chansey - Bulldoze - TM83
  (113, 11300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 66),
  -- Chansey - Dream Eater - TM85
  (113, 11300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 67),
  -- Chansey - Grass Knot - TM86
  (113, 11300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 68),
  -- Chansey - Swagger - TM87
  (113, 11300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 69),
  -- Chansey - Substitute - TM90
  (113, 11300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 70),
  -- Chansey - Strength - TM96
  (113, 11300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 71),
  -- Chansey - Rock Smash - TM98
  (113, 11300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 72),
  -- Chansey - Rock Climb - TM100
  (113, 11300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 73),
  -- Chansey - Aromatherapy - Egg
  (113, 11300, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Chansey - Counter - Egg
  (113, 11300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Chansey - Gravity - Egg
  (113, 11300, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Chansey - Heal Bell - Egg
  (113, 11300, 215, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Chansey - Helping Hand - Egg
  (113, 11300, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Chansey - Last Resort - Egg
  (113, 11300, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Chansey - Metronome - Egg
  (113, 11300, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Chansey - Present - Egg
  (113, 11300, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Chansey - Seismic Toss - Egg
  (113, 11300, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Tangela - Absorb - Starting Move
  (114, 11400, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tangela - Bind - Starting Move
  (114, 11400, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tangela - Stun Spore - Level 4
  (114, 11400, 78, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangela - Growth - Level 8
  (114, 11400, 74, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tangela - Mega Drain - Level 12
  (114, 11400, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tangela - Vine Whip - Level 16
  (114, 11400, 22, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tangela - Poison Powder - Level 20
  (114, 11400, 77, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tangela - Ancient Power - Level 24
  (114, 11400, 246, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tangela - Knock Off - Level 28
  (114, 11400, 282, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tangela - Giga Drain - Level 32
  (114, 11400, 202, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tangela - Sleep Powder - Level 36
  (114, 11400, 79, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tangela - Slam - Level 40
  (114, 11400, 21, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tangela - Tickle - Level 44
  (114, 11400, 321, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tangela - Power Whip - Level 48
  (114, 11400, 438, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tangela - Ingrain - Level 52
  (114, 11400, 275, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Tangela - Grassy Terrain - Level 56
  (114, 11400, 580, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Tangela - Bullet Seed - TM09
  (114, 11400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Tangela - Giga Drain - TM19
  (114, 11400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Tangela - Reflect - TM33
  (114, 11400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 24),
  -- Tangela - Shock Wave - TM34
  (114, 11400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Tangela - Facade - TM42
  (114, 11400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Tangela - Energy Ball - TM53
  (114, 11400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 31),
  -- Tangela - Endure - TM58
  (114, 11400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Tangela - Giga Impact - TM68
  (114, 11400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Tangela - Flash - TM70
  (114, 11400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 34),
  -- Tangela - Swords Dance - TM75
  (114, 11400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 35),
  -- Tangela - Psych Up - TM77
  (114, 11400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 36),
  -- Tangela - Sleep Talk - TM82
  (114, 11400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Tangela - Grass Knot - TM86
  (114, 11400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 38),
  -- Tangela - Swagger - TM87
  (114, 11400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Tangela - Substitute - TM90
  (114, 11400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Tangela - Cut - TM93
  (114, 11400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Tangela - Rock Smash - TM98
  (114, 11400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Tangela - Amnesia - Egg
  (114, 11400, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tangela - Confusion - Egg
  (114, 11400, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Tangela - Endeavor - Egg
  (114, 11400, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tangela - Flail - Egg
  (114, 11400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tangela - Leaf Storm - Egg
  (114, 11400, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tangela - Leech Seed - Egg
  (114, 11400, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tangela - Mega Drain - Egg
  (114, 11400, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tangela - Nature Power - Egg
  (114, 11400, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tangela - Power Swap - Egg
  (114, 11400, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tangela - Rage Powder - Egg
  (114, 11400, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kangaskhan - Pound - Starting Move
  (115, 11500, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kangaskhan - Tail Whip - Starting Move
  (115, 11500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kangaskhan - Growl - Level 4
  (115, 11500, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kangaskhan - Fake Out - Level 8
  (115, 11500, 252, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 12
  (115, 11500, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kangaskhan - Stomp - Level 16
  (115, 11500, 23, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kangaskhan - Focus Energy - Level 20
  (115, 11500, 116, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kangaskhan - Headbutt - Level 24
  (115, 11500, 29, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kangaskhan - Sucker Punch - Level 28
  (115, 11500, 389, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kangaskhan - Double Hit - Level 32
  (115, 11500, 458, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kangaskhan - Crunch - Level 36
  (115, 11500, 242, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kangaskhan - Endure - Level 40
  (115, 11500, 203, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kangaskhan - Reversal - Level 44
  (115, 11500, 179, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kangaskhan - Outrage - Level 48
  (115, 11500, 200, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kangaskhan - Last Resort - Level 52
  (115, 11500, 387, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Kangaskhan - Focus Punch - TM01
  (115, 11500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Kangaskhan - Water Pulse - TM03
  (115, 11500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Kangaskhan - Hail - TM07
  (115, 11500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Kangaskhan - Work Up - TM10
  (115, 11500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Kangaskhan - Safeguard - TM20
  (115, 11500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Kangaskhan - Solar Beam - TM22
  (115, 11500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Kangaskhan - Iron Tail - TM23
  (115, 11500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Kangaskhan - Dig - TM28
  (115, 11500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Kangaskhan - Brick Break - TM31
  (115, 11500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 35),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Kangaskhan - Shock Wave - TM34
  (115, 11500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Kangaskhan - Flamethrower - TM35
  (115, 11500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 38),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 39),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 40),
  -- Kangaskhan - Rock Tomb - TM39
  (115, 11500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 41),
  -- Kangaskhan - Aerial Ace - TM40
  (115, 11500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 42),
  -- Kangaskhan - Facade - TM42
  (115, 11500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Kangaskhan - Thief - TM46
  (115, 11500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 46),
  -- Kangaskhan - Focus Blast - TM52
  (115, 11500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 47),
  -- Kangaskhan - Fling - TM56
  (115, 11500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Kangaskhan - Endure - TM58
  (115, 11500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 49),
  -- Kangaskhan - Drain Punch - TM60
  (115, 11500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 50),
  -- Kangaskhan - Shadow Claw - TM65
  (115, 11500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 51),
  -- Kangaskhan - Giga Impact - TM68
  (115, 11500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 52),
  -- Kangaskhan - Avalanche - TM72
  (115, 11500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 53),
  -- Kangaskhan - Rock Slide - TM80
  (115, 11500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 54),
  -- Kangaskhan - Sleep Talk - TM82
  (115, 11500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 55),
  -- Kangaskhan - Bulldoze - TM83
  (115, 11500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 56),
  -- Kangaskhan - Swagger - TM87
  (115, 11500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Kangaskhan - Substitute - TM90
  (115, 11500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Kangaskhan - Cut - TM93
  (115, 11500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 59),
  -- Kangaskhan - Surf - TM95
  (115, 11500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 60),
  -- Kangaskhan - Strength - TM96
  (115, 11500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 61),
  -- Kangaskhan - Rock Smash - TM98
  (115, 11500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 62),
  -- Kangaskhan - Rock Climb - TM100
  (115, 11500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 63),
  -- Kangaskhan - Circle Throw - Egg
  (115, 11500, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Kangaskhan - Counter - Egg
  (115, 11500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kangaskhan - Crush Claw - Egg
  (115, 11500, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kangaskhan - Disable - Egg
  (115, 11500, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kangaskhan - Double-Edge - Egg
  (115, 11500, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kangaskhan - Endeavor - Egg
  (115, 11500, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kangaskhan - Focus Energy - Egg
  (115, 11500, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kangaskhan - Hammer Arm - Egg
  (115, 11500, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kangaskhan - Stomp - Egg
  (115, 11500, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kangaskhan - Uproar - Egg
  (115, 11500, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Horsea - Water Gun - Starting Move
  (116, 11600, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Horsea - Leer - Starting Move
  (116, 11600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Horsea - Smokescreen - Level 5
  (116, 11600, 108, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Horsea - Twister - Level 10
  (116, 11600, 239, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Horsea - Focus Energy - Level 15
  (116, 11600, 116, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Horsea - Dragon Breath - Level 20
  (116, 11600, 225, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Horsea - Bubble Beam - Level 25
  (116, 11600, 61, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Horsea - Agility - Level 30
  (116, 11600, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Horsea - Laser Focus - Level 35
  (116, 11600, 673, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Horsea - Dragon Pulse - Level 40
  (116, 11600, 406, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Horsea - Hydro Pump - Level 45
  (116, 11600, 56, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Horsea - Dragon Dance - Level 50
  (116, 11600, 349, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Horsea - Rain Dance - Level 55
  (116, 11600, 240, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Horsea - Water Pulse - TM03
  (116, 11600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Horsea - Hail - TM07
  (116, 11600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Horsea - Facade - TM42
  (116, 11600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Horsea - Scald - TM49
  (116, 11600, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 24),
  -- Horsea - Brine - TM55
  (116, 11600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 25),
  -- Horsea - Endure - TM58
  (116, 11600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Horsea - Dragon Pulse - TM59
  (116, 11600, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 27),
  -- Horsea - Sleep Talk - TM82
  (116, 11600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 28),
  -- Horsea - Swagger - TM87
  (116, 11600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Horsea - Substitute - TM90
  (116, 11600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Horsea - Flash Cannon - TM91
  (116, 11600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 31),
  -- Horsea - Surf - TM95
  (116, 11600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 32),
  -- Horsea - Waterfall - TM99
  (116, 11600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 33),
  -- Horsea - Aurora Beam - Egg
  (116, 11600, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Horsea - Clear Smog - Egg
  (116, 11600, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Horsea - Disable - Egg
  (116, 11600, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Horsea - Dragon Breath - Egg
  (116, 11600, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Horsea - Flail - Egg
  (116, 11600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Horsea - Muddy Water - Egg
  (116, 11600, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Horsea - Octazooka - Egg
  (116, 11600, 190, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Horsea - Outrage - Egg
  (116, 11600, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Horsea - Splash - Egg
  (116, 11600, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seadra - Water Gun - Starting Move
  (117, 11700, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Seadra - Leer - Starting Move
  (117, 11700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Seadra - Smokescreen - Starting Move
  (117, 11700, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Seadra - Twister - Starting Move
  (117, 11700, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Seadra - Focus Energy - Level 15
  (117, 11700, 116, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Seadra - Dragon Breath - Level 20
  (117, 11700, 225, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seadra - Bubble Beam - Level 25
  (117, 11700, 61, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Seadra - Agility - Level 30
  (117, 11700, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Seadra - Laser Focus - Level 37
  (117, 11700, 673, 21, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seadra - Dragon Pulse - Level 44
  (117, 11700, 406, 21, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 21, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Seadra - Dragon Dance - Level 58
  (117, 11700, 349, 21, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Seadra - Rain Dance - Level 65
  (117, 11700, 240, 21, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Seadra - Water Pulse - TM03
  (117, 11700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Seadra - Hail - TM07
  (117, 11700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Seadra - Facade - TM42
  (117, 11700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Seadra - Scald - TM49
  (117, 11700, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 25),
  -- Seadra - Brine - TM55
  (117, 11700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 26),
  -- Seadra - Endure - TM58
  (117, 11700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Seadra - Dragon Pulse - TM59
  (117, 11700, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 28),
  -- Seadra - Giga Impact - TM68
  (117, 11700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 29),
  -- Seadra - Sleep Talk - TM82
  (117, 11700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Seadra - Swagger - TM87
  (117, 11700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Seadra - Substitute - TM90
  (117, 11700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 32),
  -- Seadra - Flash Cannon - TM91
  (117, 11700, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 33),
  -- Seadra - Surf - TM95
  (117, 11700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 34),
  -- Seadra - Waterfall - TM99
  (117, 11700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 35),
  -- Seadra - Aurora Beam - Egg
  (117, 11700, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seadra - Clear Smog - Egg
  (117, 11700, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seadra - Disable - Egg
  (117, 11700, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seadra - Dragon Breath - Egg
  (117, 11700, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seadra - Flail - Egg
  (117, 11700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seadra - Muddy Water - Egg
  (117, 11700, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seadra - Octazooka - Egg
  (117, 11700, 190, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seadra - Outrage - Egg
  (117, 11700, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seadra - Splash - Egg
  (117, 11700, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Goldeen - Peck - Starting Move
  (118, 11800, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Starting Move
  (118, 11800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Goldeen - Supersonic - Level 5
  (118, 11800, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goldeen - Water Pulse - Level 10
  (118, 11800, 352, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 15
  (118, 11800, 30, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Goldeen - Agility - Level 20
  (118, 11800, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Goldeen - Aqua Ring - Level 25
  (118, 11800, 392, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Goldeen - Flail - Level 30
  (118, 11800, 175, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Goldeen - Waterfall - Level 35
  (118, 11800, 127, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Goldeen - Soak - Level 40
  (118, 11800, 487, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Goldeen - Megahorn - Level 45
  (118, 11800, 224, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Goldeen - Horn Drill - Level 50
  (118, 11800, 32, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Goldeen - Water Pulse - TM03
  (118, 11800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Goldeen - Hail - TM07
  (118, 11800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 14),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 16),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Goldeen - Facade - TM42
  (118, 11800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 22),
  -- Goldeen - Scald - TM49
  (118, 11800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 23),
  -- Goldeen - Endure - TM58
  (118, 11800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 24),
  -- Goldeen - Swords Dance - TM75
  (118, 11800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 25),
  -- Goldeen - Sleep Talk - TM82
  (118, 11800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 26),
  -- Goldeen - Poison Jab - TM84
  (118, 11800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 27),
  -- Goldeen - Swagger - TM87
  (118, 11800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Goldeen - Substitute - TM90
  (118, 11800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 29),
  -- Goldeen - Surf - TM95
  (118, 11800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 30),
  -- Goldeen - Waterfall - TM99
  (118, 11800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 31),
  -- Goldeen - Acupressure - Egg
  (118, 11800, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Goldeen - Aqua Tail - Egg
  (118, 11800, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Goldeen - Body Slam - Egg
  (118, 11800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Goldeen - Haze - Egg
  (118, 11800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Goldeen - Hydro Pump - Egg
  (118, 11800, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Goldeen - Mud Shot - Egg
  (118, 11800, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Goldeen - Mud-Slap - Egg
  (118, 11800, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Goldeen - Psybeam - Egg
  (118, 11800, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Goldeen - Skull Bash - Egg
  (118, 11800, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seaking - Peck - Starting Move
  (119, 11900, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Seaking - Tail Whip - Starting Move
  (119, 11900, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Seaking - Supersonic - Starting Move
  (119, 11900, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Seaking - Water Pulse - Starting Move
  (119, 11900, 352, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Seaking - Horn Attack - Level 15
  (119, 11900, 30, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Seaking - Agility - Level 20
  (119, 11900, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seaking - Aqua Ring - Level 25
  (119, 11900, 392, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Seaking - Flail - Level 30
  (119, 11900, 175, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Seaking - Waterfall - Level 37
  (119, 11900, 127, 21, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seaking - Soak - Level 44
  (119, 11900, 487, 21, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seaking - Megahorn - Level 51
  (119, 11900, 224, 21, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Seaking - Horn Drill - Level 58
  (119, 11900, 32, 21, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Seaking - Water Pulse - TM03
  (119, 11900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Seaking - Hail - TM07
  (119, 11900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 14),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 16),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Seaking - Facade - TM42
  (119, 11900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Seaking - Scald - TM49
  (119, 11900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 24),
  -- Seaking - Endure - TM58
  (119, 11900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 25),
  -- Seaking - Giga Impact - TM68
  (119, 11900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 26),
  -- Seaking - Swords Dance - TM75
  (119, 11900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 27),
  -- Seaking - Sleep Talk - TM82
  (119, 11900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 28),
  -- Seaking - Poison Jab - TM84
  (119, 11900, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 29),
  -- Seaking - Swagger - TM87
  (119, 11900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 30),
  -- Seaking - Substitute - TM90
  (119, 11900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Seaking - Surf - TM95
  (119, 11900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 32),
  -- Seaking - Waterfall - TM99
  (119, 11900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 33),
  -- Seaking - Acupressure - Egg
  (119, 11900, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Seaking - Aqua Tail - Egg
  (119, 11900, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seaking - Body Slam - Egg
  (119, 11900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seaking - Haze - Egg
  (119, 11900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seaking - Hydro Pump - Egg
  (119, 11900, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seaking - Mud Shot - Egg
  (119, 11900, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seaking - Mud-Slap - Egg
  (119, 11900, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seaking - Psybeam - Egg
  (119, 11900, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seaking - Skull Bash - Egg
  (119, 11900, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Staryu - Tackle - Starting Move
  (120, 12000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Starting Move
  (120, 12000, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 4
  (120, 12000, 55, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Staryu - Confuse Ray - Level 8
  (120, 12000, 109, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Staryu - Rapid Spin - Level 12
  (120, 12000, 229, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Staryu - Minimize - Level 16
  (120, 12000, 107, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 20
  (120, 12000, 129, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Staryu - Psybeam - Level 24
  (120, 12000, 60, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Staryu - Brine - Level 28
  (120, 12000, 362, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staryu - Light Screen - Level 32
  (120, 12000, 113, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Staryu - Power Gem - Level 36
  (120, 12000, 408, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Staryu - Psychic - Level 40
  (120, 12000, 94, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Staryu - Surf - Level 44
  (120, 12000, 57, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Staryu - Recover - Level 48
  (120, 12000, 105, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Staryu - Cosmic Power - Level 52
  (120, 12000, 322, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Staryu - Hydro Pump - Level 56
  (120, 12000, 56, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Staryu - Water Pulse - TM03
  (120, 12000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Staryu - Hail - TM07
  (120, 12000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Staryu - Light Screen - TM16
  (120, 12000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Staryu - Dazzling Gleam - TM21
  (120, 12000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Staryu - Facade - TM42
  (120, 12000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Staryu - Scald - TM49
  (120, 12000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 32),
  -- Staryu - Brine - TM55
  (120, 12000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Staryu - Endure - TM58
  (120, 12000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Staryu - Recycle - TM67
  (120, 12000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 35),
  -- Staryu - Flash - TM70
  (120, 12000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Staryu - Thunder Wave - TM73
  (120, 12000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 37),
  -- Staryu - Gyro Ball - TM74
  (120, 12000, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 38),
  -- Staryu - Psych Up - TM77
  (120, 12000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Staryu - Sleep Talk - TM82
  (120, 12000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Staryu - Swagger - TM87
  (120, 12000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Staryu - Substitute - TM90
  (120, 12000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Staryu - Flash Cannon - TM91
  (120, 12000, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 43),
  -- Staryu - Surf - TM95
  (120, 12000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Staryu - Waterfall - TM99
  (120, 12000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Starmie - Rapid Spin - Starting Move
  (121, 12100, 229, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Starmie - Minimize - Starting Move
  (121, 12100, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Starmie - Swift - Starting Move
  (121, 12100, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Starmie - Psybeam - Starting Move
  (121, 12100, 60, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Starmie - Brine - Starting Move
  (121, 12100, 362, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Starmie - Light Screen - Starting Move
  (121, 12100, 113, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Starmie - Power Gem - Starting Move
  (121, 12100, 408, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Starmie - Psychic - Starting Move
  (121, 12100, 94, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Starmie - Surf - Starting Move
  (121, 12100, 57, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Starmie - Recover - Starting Move
  (121, 12100, 105, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Starmie - Cosmic Power - Starting Move
  (121, 12100, 322, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Starmie - Hydro Pump - Starting Move
  (121, 12100, 56, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Starmie - Tackle - Starting Move
  (121, 12100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Starmie - Harden - Starting Move
  (121, 12100, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Starmie - Water Gun - Starting Move
  (121, 12100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Starmie - Confuse Ray - Starting Move
  (121, 12100, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Starmie - Water Pulse - TM03
  (121, 12100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Starmie - Hail - TM07
  (121, 12100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Starmie - Light Screen - TM16
  (121, 12100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Starmie - Dazzling Gleam - TM21
  (121, 12100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 30),
  -- Starmie - Facade - TM42
  (121, 12100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Starmie - Skill Swap - TM48
  (121, 12100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 33),
  -- Starmie - Scald - TM49
  (121, 12100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 34),
  -- Starmie - Brine - TM55
  (121, 12100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 35),
  -- Starmie - Endure - TM58
  (121, 12100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Starmie - Recycle - TM67
  (121, 12100, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 37),
  -- Starmie - Giga Impact - TM68
  (121, 12100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Starmie - Flash - TM70
  (121, 12100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Starmie - Avalanche - TM72
  (121, 12100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Starmie - Thunder Wave - TM73
  (121, 12100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Starmie - Gyro Ball - TM74
  (121, 12100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 42),
  -- Starmie - Psych Up - TM77
  (121, 12100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Starmie - Sleep Talk - TM82
  (121, 12100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Starmie - Dream Eater - TM85
  (121, 12100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 45),
  -- Starmie - Grass Knot - TM86
  (121, 12100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 46),
  -- Starmie - Swagger - TM87
  (121, 12100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Starmie - Substitute - TM90
  (121, 12100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Starmie - Flash Cannon - TM91
  (121, 12100, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 49),
  -- Starmie - Trick Room - TM92
  (121, 12100, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 50),
  -- Starmie - Surf - TM95
  (121, 12100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 51),
  -- Starmie - Waterfall - TM99
  (121, 12100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 52),
  -- Mr. Mime - Quick Guard - Starting Move
  (122, 12200, 501, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mr. Mime - Wide Guard - Starting Move
  (122, 12200, 469, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mr. Mime - Power Swap - Starting Move
  (122, 12200, 384, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mr. Mime - Guard Swap - Starting Move
  (122, 12200, 385, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mr. Mime - Pound - Starting Move
  (122, 12200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mr. Mime - Copycat - Starting Move
  (122, 12200, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Mr. Mime - Baton Pass - Starting Move
  (122, 12200, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Mr. Mime - Encore - Starting Move
  (122, 12200, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Mr. Mime - Confusion - Level 12
  (122, 12200, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Mr. Mime - Role Play - Level 16
  (122, 12200, 272, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Mr. Mime - Protect - Level 20
  (122, 12200, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Mr. Mime - Recycle - Level 24
  (122, 12200, 278, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psybeam - Level 28
  (122, 12200, 60, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Mr. Mime - Mimic - Level 32
  (122, 12200, 102, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Mr. Mime - Light Screen - Level 36
  (122, 12200, 113, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mr. Mime - Reflect - Level 36
  (122, 12200, 115, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Mr. Mime - Safeguard - Level 36
  (122, 12200, 219, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Mr. Mime - Sucker Punch - Level 40
  (122, 12200, 389, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Mr. Mime - Dazzling Gleam - Level 44
  (122, 12200, 605, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Mr. Mime - Psychic - Level 48
  (122, 12200, 94, 21, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Mr. Mime - Teeter Dance - Level 52
  (122, 12200, 298, 21, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Mr. Mime - Focus Punch - TM01
  (122, 12200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Mr. Mime - Calm Mind - TM04
  (122, 12200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 23),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Mr. Mime - Taunt - TM12
  (122, 12200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Mr. Mime - Light Screen - TM16
  (122, 12200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 27),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Mr. Mime - Rain Dance - TM18
  (122, 12200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Mr. Mime - Safeguard - TM20
  (122, 12200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 30),
  -- Mr. Mime - Dazzling Gleam - TM21
  (122, 12200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 31),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 32),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 33),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 34),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 35),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 36),
  -- Mr. Mime - Brick Break - TM31
  (122, 12200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 37),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 38),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 39),
  -- Mr. Mime - Shock Wave - TM34
  (122, 12200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 40),
  -- Mr. Mime - Aerial Ace - TM40
  (122, 12200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 41),
  -- Mr. Mime - Torment - TM41
  (122, 12200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 42),
  -- Mr. Mime - Facade - TM42
  (122, 12200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 46),
  -- Mr. Mime - Skill Swap - TM48
  (122, 12200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 47),
  -- Mr. Mime - Focus Blast - TM52
  (122, 12200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 48),
  -- Mr. Mime - Energy Ball - TM53
  (122, 12200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 49),
  -- Mr. Mime - Fling - TM56
  (122, 12200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 50),
  -- Mr. Mime - Charge Beam - TM57
  (122, 12200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 51),
  -- Mr. Mime - Endure - TM58
  (122, 12200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 52),
  -- Mr. Mime - Drain Punch - TM60
  (122, 12200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 53),
  -- Mr. Mime - Nasty Plot - TM63
  (122, 12200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 54),
  -- Mr. Mime - Payback - TM66
  (122, 12200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 55),
  -- Mr. Mime - Recycle - TM67
  (122, 12200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 56),
  -- Mr. Mime - Giga Impact - TM68
  (122, 12200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 57),
  -- Mr. Mime - Flash - TM70
  (122, 12200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 58),
  -- Mr. Mime - Thunder Wave - TM73
  (122, 12200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 59),
  -- Mr. Mime - Psych Up - TM77
  (122, 12200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 60),
  -- Mr. Mime - Sleep Talk - TM82
  (122, 12200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 61),
  -- Mr. Mime - Dream Eater - TM85
  (122, 12200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 62),
  -- Mr. Mime - Grass Knot - TM86
  (122, 12200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 63),
  -- Mr. Mime - Swagger - TM87
  (122, 12200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 64),
  -- Mr. Mime - Substitute - TM90
  (122, 12200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 65),
  -- Mr. Mime - Trick Room - TM92
  (122, 12200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 66),
  -- Mr. Mime - Charm - Egg
  (122, 12200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mr. Mime - Confuse Ray - Egg
  (122, 12200, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mr. Mime - Fake Out - Egg
  (122, 12200, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mr. Mime - Future Sight - Egg
  (122, 12200, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mr. Mime - Healing Wish - Egg
  (122, 12200, 361, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mr. Mime - Hypnosis - Egg
  (122, 12200, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mr. Mime - Icy Wind - Egg
  (122, 12200, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mr. Mime - Magic Room - Egg
  (122, 12200, 478, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mr. Mime - Mimic - Egg
  (122, 12200, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mr. Mime - Power Split - Egg
  (122, 12200, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mr. Mime - Teeter Dance - Egg
  (122, 12200, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mr. Mime - Tickle - Egg
  (122, 12200, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mr. Mime - Trick - Egg
  (122, 12200, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Scyther - Quick Attack - Starting Move
  (123, 12300, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Scyther - Leer - Starting Move
  (123, 12300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Scyther - Fury Cutter - Level 4
  (123, 12300, 210, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scyther - False Swipe - Level 8
  (123, 12300, 206, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scyther - Wing Attack - Level 12
  (123, 12300, 17, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scyther - Double Team - Level 16
  (123, 12300, 104, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scyther - Double Hit - Level 20
  (123, 12300, 458, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 24
  (123, 12300, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scyther - Focus Energy - Level 28
  (123, 12300, 116, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scyther - Agility - Level 32
  (123, 12300, 97, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scyther - Air Slash - Level 36
  (123, 12300, 403, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scyther - X-Scissor - Level 40
  (123, 12300, 404, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scyther - Laser Focus - Level 44
  (123, 12300, 673, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scyther - Swords Dance - Level 48
  (123, 12300, 14, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 16),
  -- Scyther - Light Screen - TM16
  (123, 12300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Scyther - Rain Dance - TM18
  (123, 12300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Scyther - Safeguard - TM20
  (123, 12300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Scyther - Brick Break - TM31
  (123, 12300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 21),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Scyther - Aerial Ace - TM40
  (123, 12300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Scyther - Facade - TM42
  (123, 12300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Scyther - Steel Wing - TM47
  (123, 12300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 28),
  -- Scyther - Roost - TM51
  (123, 12300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 29),
  -- Scyther - False Swipe - TM54
  (123, 12300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Scyther - Endure - TM58
  (123, 12300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Scyther - Bug Buzz - TM62
  (123, 12300, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 32),
  -- Scyther - Giga Impact - TM68
  (123, 12300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Scyther - Swords Dance - TM75
  (123, 12300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Scyther - X-Scissor - TM81
  (123, 12300, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 35),
  -- Scyther - Sleep Talk - TM82
  (123, 12300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Scyther - Swagger - TM87
  (123, 12300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Scyther - U-turn - TM89
  (123, 12300, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 38),
  -- Scyther - Substitute - TM90
  (123, 12300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Scyther - Cut - TM93
  (123, 12300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 40),
  -- Scyther - Defog - TM97
  (123, 12300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 41),
  -- Scyther - Rock Smash - TM98
  (123, 12300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Scyther - Baton Pass - Egg
  (123, 12300, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Scyther - Counter - Egg
  (123, 12300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Scyther - Feint - Egg
  (123, 12300, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Scyther - Night Slash - Egg
  (123, 12300, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Scyther - Quick Guard - Egg
  (123, 12300, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Scyther - Reversal - Egg
  (123, 12300, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Jynx - Sweet Kiss - Starting Move
  (124, 12400, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Starting Move
  (124, 12400, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Jynx - Pound - Starting Move
  (124, 12400, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Starting Move
  (124, 12400, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Jynx - Copycat - Starting Move
  (124, 12400, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Jynx - Confusion - Level 12
  (124, 12400, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Jynx - Covet - Level 16
  (124, 12400, 343, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Jynx - Sing - Level 20
  (124, 12400, 47, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Jynx - Fake Tears - Level 24
  (124, 12400, 313, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Jynx - Ice Punch - Level 28
  (124, 12400, 8, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Jynx - Psychic - Level 34
  (124, 12400, 94, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Jynx - Lovely Kiss - Level 40
  (124, 12400, 142, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Jynx - Mean Look - Level 46
  (124, 12400, 212, 21, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Jynx - Perish Song - Level 52
  (124, 12400, 195, 21, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Jynx - Blizzard - Level 58
  (124, 12400, 59, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Jynx - Focus Punch - TM01
  (124, 12400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Jynx - Water Pulse - TM03
  (124, 12400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Jynx - Calm Mind - TM04
  (124, 12400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Jynx - Hail - TM07
  (124, 12400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Jynx - Taunt - TM12
  (124, 12400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Jynx - Light Screen - TM16
  (124, 12400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Jynx - Brick Break - TM31
  (124, 12400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Jynx - Torment - TM41
  (124, 12400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Jynx - Facade - TM42
  (124, 12400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Jynx - Skill Swap - TM48
  (124, 12400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Jynx - Focus Blast - TM52
  (124, 12400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Jynx - Energy Ball - TM53
  (124, 12400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Jynx - Fling - TM56
  (124, 12400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Jynx - Endure - TM58
  (124, 12400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Jynx - Drain Punch - TM60
  (124, 12400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Jynx - Nasty Plot - TM63
  (124, 12400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 43),
  -- Jynx - Payback - TM66
  (124, 12400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Jynx - Recycle - TM67
  (124, 12400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 45),
  -- Jynx - Giga Impact - TM68
  (124, 12400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Jynx - Flash - TM70
  (124, 12400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 47),
  -- Jynx - Avalanche - TM72
  (124, 12400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 48),
  -- Jynx - Psych Up - TM77
  (124, 12400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Jynx - Sleep Talk - TM82
  (124, 12400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Jynx - Dream Eater - TM85
  (124, 12400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Jynx - Grass Knot - TM86
  (124, 12400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 52),
  -- Jynx - Swagger - TM87
  (124, 12400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Jynx - Substitute - TM90
  (124, 12400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Jynx - Trick Room - TM92
  (124, 12400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 55),
  -- Jynx - Fake Out - Egg
  (124, 12400, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jynx - Ice Punch - Egg
  (124, 12400, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Jynx - Role Play - Egg
  (124, 12400, 272, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Jynx - Wish - Egg
  (124, 12400, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Electabuzz - Quick Attack - Starting Move
  (125, 12500, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Starting Move
  (125, 12500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Electabuzz - Thunder Shock - Starting Move
  (125, 12500, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Electabuzz - Charge - Starting Move
  (125, 12500, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Electabuzz - Swift - Level 12
  (125, 12500, 129, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electabuzz - Shock Wave - Level 16
  (125, 12500, 351, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electabuzz - Thunder Wave - Level 20
  (125, 12500, 86, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electabuzz - Screech - Level 24
  (125, 12500, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder Punch - Level 28
  (125, 12500, 9, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electabuzz - Discharge - Level 34
  (125, 12500, 435, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Electabuzz - Low Kick - Level 40
  (125, 12500, 67, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Electabuzz - Thunderbolt - Level 46
  (125, 12500, 85, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Electabuzz - Light Screen - Level 52
  (125, 12500, 113, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Electabuzz - Giga Impact - Level 64
  (125, 12500, 416, 21, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Electabuzz - Focus Punch - TM01
  (125, 12500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Electabuzz - Light Screen - TM16
  (125, 12500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Electabuzz - Iron Tail - TM23
  (125, 12500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Electabuzz - Low Sweep - TM27
  (125, 12500, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 24),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Electabuzz - Brick Break - TM31
  (125, 12500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Electabuzz - Shock Wave - TM34
  (125, 12500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Electabuzz - Facade - TM42
  (125, 12500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Electabuzz - Volt Switch - TM43
  (125, 12500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 30),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Electabuzz - Focus Blast - TM52
  (125, 12500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 34),
  -- Electabuzz - Fling - TM56
  (125, 12500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Electabuzz - Charge Beam - TM57
  (125, 12500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 36),
  -- Electabuzz - Endure - TM58
  (125, 12500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Electabuzz - Giga Impact - TM68
  (125, 12500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Electabuzz - Flash - TM70
  (125, 12500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Electabuzz - Thunder Wave - TM73
  (125, 12500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Electabuzz - Sleep Talk - TM82
  (125, 12500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Electabuzz - Swagger - TM87
  (125, 12500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Electabuzz - Substitute - TM90
  (125, 12500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Electabuzz - Strength - TM96
  (125, 12500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Electabuzz - Rock Smash - TM98
  (125, 12500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Electabuzz - Rock Climb - TM100
  (125, 12500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 46),
  -- Electabuzz - Cross Chop - Egg
  (125, 12500, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electabuzz - Dynamic Punch - Egg
  (125, 12500, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electabuzz - Feint - Egg
  (125, 12500, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electabuzz - Fire Punch - Egg
  (125, 12500, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electabuzz - Hammer Arm - Egg
  (125, 12500, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electabuzz - Ice Punch - Egg
  (125, 12500, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmar - Smog - Starting Move
  (126, 12600, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Starting Move
  (126, 12600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magmar - Ember - Starting Move
  (126, 12600, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Magmar - Smokescreen - Starting Move
  (126, 12600, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Magmar - Clear Smog - Level 12
  (126, 12600, 499, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmar - Flame Wheel - Level 16
  (126, 12600, 172, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmar - Confuse Ray - Level 20
  (126, 12600, 109, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmar - Scary Face - Level 24
  (126, 12600, 184, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmar - Fire Punch - Level 28
  (126, 12600, 7, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmar - Lava Plume - Level 34
  (126, 12600, 436, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmar - Low Kick - Level 40
  (126, 12600, 67, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmar - Flamethrower - Level 46
  (126, 12600, 53, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmar - Sunny Day - Level 52
  (126, 12600, 241, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmar - Fire Blast - Level 58
  (126, 12600, 126, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmar - Hyper Beam - Level 64
  (126, 12600, 63, 21, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmar - Focus Punch - TM01
  (126, 12600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Magmar - Iron Tail - TM23
  (126, 12600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Magmar - Low Sweep - TM27
  (126, 12600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 21),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 22),
  -- Magmar - Brick Break - TM31
  (126, 12600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 23),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Magmar - Flamethrower - TM35
  (126, 12600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 26),
  -- Magmar - Facade - TM42
  (126, 12600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Magmar - Overheat - TM50
  (126, 12600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 31),
  -- Magmar - Focus Blast - TM52
  (126, 12600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 32),
  -- Magmar - Fling - TM56
  (126, 12600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Magmar - Endure - TM58
  (126, 12600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Magmar - Will-O-Wisp - TM61
  (126, 12600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Magmar - Giga Impact - TM68
  (126, 12600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Magmar - Sleep Talk - TM82
  (126, 12600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Magmar - Swagger - TM87
  (126, 12600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Magmar - Substitute - TM90
  (126, 12600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Magmar - Strength - TM96
  (126, 12600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Magmar - Rock Smash - TM98
  (126, 12600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Magmar - Rock Climb - TM100
  (126, 12600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 42),
  -- Magmar - Belch - Egg
  (126, 12600, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Magmar - Belly Drum - Egg
  (126, 12600, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magmar - Cross Chop - Egg
  (126, 12600, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magmar - Dynamic Punch - Egg
  (126, 12600, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magmar - Flare Blitz - Egg
  (126, 12600, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magmar - Focus Energy - Egg
  (126, 12600, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magmar - Mach Punch - Egg
  (126, 12600, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magmar - Mega Punch - Egg
  (126, 12600, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magmar - Power Swap - Egg
  (126, 12600, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magmar - Screech - Egg
  (126, 12600, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmar - Thunder Punch - Egg
  (126, 12600, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pinsir - Vise Grip - Starting Move
  (127, 12700, 11, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pinsir - Harden - Starting Move
  (127, 12700, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pinsir - Focus Energy - Level 4
  (127, 12700, 116, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Bind - Level 8
  (127, 12700, 20, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Seismic Toss - Level 12
  (127, 12700, 69, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pinsir - Bug Bite - Level 16
  (127, 12700, 450, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pinsir - Storm Throw - Level 20
  (127, 12700, 480, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pinsir - Double Hit - Level 24
  (127, 12700, 458, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pinsir - Vital Throw - Level 28
  (127, 12700, 233, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pinsir - X-Scissor - Level 32
  (127, 12700, 404, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pinsir - Strength - Level 36
  (127, 12700, 70, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pinsir - Swords Dance - Level 40
  (127, 12700, 14, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pinsir - Submission - Level 44
  (127, 12700, 66, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pinsir - Guillotine - Level 48
  (127, 12700, 12, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Pinsir - Superpower - Level 52
  (127, 12700, 276, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Pinsir - Focus Punch - TM01
  (127, 12700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Pinsir - Bulk Up - TM08
  (127, 12700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Pinsir - Rain Dance - TM18
  (127, 12700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Pinsir - Earthquake - TM26
  (127, 12700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Pinsir - Dig - TM28
  (127, 12700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Pinsir - Brick Break - TM31
  (127, 12700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Pinsir - Rock Tomb - TM39
  (127, 12700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Pinsir - Facade - TM42
  (127, 12700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Pinsir - Focus Blast - TM52
  (127, 12700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 31),
  -- Pinsir - False Swipe - TM54
  (127, 12700, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 32),
  -- Pinsir - Fling - TM56
  (127, 12700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Pinsir - Endure - TM58
  (127, 12700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Pinsir - Giga Impact - TM68
  (127, 12700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Pinsir - Stone Edge - TM71
  (127, 12700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Pinsir - Swords Dance - TM75
  (127, 12700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Pinsir - Stealth Rock - TM76
  (127, 12700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Pinsir - Rock Slide - TM80
  (127, 12700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Pinsir - X-Scissor - TM81
  (127, 12700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 40),
  -- Pinsir - Sleep Talk - TM82
  (127, 12700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Pinsir - Bulldoze - TM83
  (127, 12700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Pinsir - Swagger - TM87
  (127, 12700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Pinsir - Substitute - TM90
  (127, 12700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Pinsir - Cut - TM93
  (127, 12700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Pinsir - Strength - TM96
  (127, 12700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Pinsir - Rock Smash - TM98
  (127, 12700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Pinsir - Rock Climb - TM100
  (127, 12700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 48),
  -- Pinsir - Bug Bite - Egg
  (127, 12700, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pinsir - Close Combat - Egg
  (127, 12700, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pinsir - Feint - Egg
  (127, 12700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pinsir - Flail - Egg
  (127, 12700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pinsir - Fury Attack - Egg
  (127, 12700, 31, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pinsir - Quick Attack - Egg
  (127, 12700, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pinsir - Superpower - Egg
  (127, 12700, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pinsir - Thrash - Egg
  (127, 12700, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tauros - Tackle - Starting Move
  (128, 12800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Starting Move
  (128, 12800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tauros - Work Up - Level 5
  (128, 12800, 526, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Payback - Level 10
  (128, 12800, 371, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros - Assurance - Level 15
  (128, 12800, 372, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros - Horn Attack - Level 20
  (128, 12800, 30, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros - Scary Face - Level 25
  (128, 12800, 184, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros - Zen Headbutt - Level 30
  (128, 12800, 428, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros - Take Down - Level 35
  (128, 12800, 36, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros - Rest - Level 40
  (128, 12800, 156, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros - Swagger - Level 45
  (128, 12800, 207, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros - Thrash - Level 50
  (128, 12800, 37, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros - Double-Edge - Level 55
  (128, 12800, 38, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros - Giga Impact - Level 60
  (128, 12800, 416, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros - Water Pulse - TM03
  (128, 12800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Tauros - Work Up - TM10
  (128, 12800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Tauros - Rain Dance - TM18
  (128, 12800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Tauros - Solar Beam - TM22
  (128, 12800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Tauros - Iron Tail - TM23
  (128, 12800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Tauros - Shock Wave - TM34
  (128, 12800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Tauros - Flamethrower - TM35
  (128, 12800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Tauros - Sandstorm - TM37
  (128, 12800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 32),
  -- Tauros - Rock Tomb - TM39
  (128, 12800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Tauros - Facade - TM42
  (128, 12800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Tauros - Endure - TM58
  (128, 12800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Tauros - Payback - TM66
  (128, 12800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Tauros - Giga Impact - TM68
  (128, 12800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Tauros - Stone Edge - TM71
  (128, 12800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Tauros - Rock Slide - TM80
  (128, 12800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Tauros - Sleep Talk - TM82
  (128, 12800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Tauros - Bulldoze - TM83
  (128, 12800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Tauros - Swagger - TM87
  (128, 12800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Tauros - Substitute - TM90
  (128, 12800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Tauros - Surf - TM95
  (128, 12800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Tauros - Strength - TM96
  (128, 12800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Tauros - Rock Smash - TM98
  (128, 12800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Tauros - Rock Climb - TM100
  (128, 12800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 49),
  -- Magikarp - Splash - Starting Move
  (129, 12900, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 21, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 25
  (129, 12900, 175, 21, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Gyarados - Bite - Starting Move
  (130, 13000, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gyarados - Flail - Starting Move
  (130, 13000, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gyarados - Splash - Starting Move
  (130, 13000, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gyarados - Tackle - Starting Move
  (130, 13000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gyarados - Leer - Starting Move
  (130, 13000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gyarados - Twister - Starting Move
  (130, 13000, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Gyarados - Bite - Evolution
  (130, 13000, 44, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Gyarados - Whirlpool - Level 4
  (130, 13000, 250, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Gyarados - Ice Fang - Level 8
  (130, 13000, 423, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Gyarados - Brine - Level 12
  (130, 13000, 362, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Gyarados - Scary Face - Level 16
  (130, 13000, 184, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Gyarados - Waterfall - Level 21
  (130, 13000, 127, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Gyarados - Crunch - Level 24
  (130, 13000, 242, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Gyarados - Rain Dance - Level 28
  (130, 13000, 240, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Gyarados - Aqua Tail - Level 32
  (130, 13000, 401, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Gyarados - Dragon Dance - Level 36
  (130, 13000, 349, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gyarados - Hydro Pump - Level 40
  (130, 13000, 56, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Gyarados - Hurricane - Level 44
  (130, 13000, 542, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Gyarados - Thrash - Level 48
  (130, 13000, 37, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Gyarados - Hyper Beam - Level 52
  (130, 13000, 63, 21, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Gyarados - Water Pulse - TM03
  (130, 13000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 22),
  -- Gyarados - Hail - TM07
  (130, 13000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 23),
  -- Gyarados - Taunt - TM12
  (130, 13000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Gyarados - Iron Tail - TM23
  (130, 13000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Gyarados - Earthquake - TM26
  (130, 13000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Gyarados - Flamethrower - TM35
  (130, 13000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 35),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 36),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 37),
  -- Gyarados - Torment - TM41
  (130, 13000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Gyarados - Facade - TM42
  (130, 13000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Gyarados - Scald - TM49
  (130, 13000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 42),
  -- Gyarados - Brine - TM55
  (130, 13000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 43),
  -- Gyarados - Endure - TM58
  (130, 13000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Gyarados - Dragon Pulse - TM59
  (130, 13000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 45),
  -- Gyarados - Payback - TM66
  (130, 13000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 46),
  -- Gyarados - Giga Impact - TM68
  (130, 13000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Gyarados - Stone Edge - TM71
  (130, 13000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 48),
  -- Gyarados - Avalanche - TM72
  (130, 13000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 49),
  -- Gyarados - Thunder Wave - TM73
  (130, 13000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 50),
  -- Gyarados - Dark Pulse - TM79
  (130, 13000, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 51),
  -- Gyarados - Sleep Talk - TM82
  (130, 13000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Gyarados - Bulldoze - TM83
  (130, 13000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Gyarados - Swagger - TM87
  (130, 13000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Gyarados - Substitute - TM90
  (130, 13000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Gyarados - Surf - TM95
  (130, 13000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 56),
  -- Gyarados - Strength - TM96
  (130, 13000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Gyarados - Rock Smash - TM98
  (130, 13000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Gyarados - Waterfall - TM99
  (130, 13000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 59),
  -- Lapras - Growl - Starting Move
  (131, 13100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lapras - Water Gun - Starting Move
  (131, 13100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 5
  (131, 13100, 47, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 10
  (131, 13100, 54, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Lapras - Life Dew - Level 15
  (131, 13100, 791, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 20
  (131, 13100, 420, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Lapras - Confuse Ray - Level 25
  (131, 13100, 109, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lapras - Water Pulse - Level 30
  (131, 13100, 352, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Lapras - Brine - Level 35
  (131, 13100, 362, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Lapras - Body Slam - Level 40
  (131, 13100, 34, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 45
  (131, 13100, 58, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lapras - Rain Dance - Level 50
  (131, 13100, 240, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Lapras - Hydro Pump - Level 55
  (131, 13100, 56, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Lapras - Perish Song - Level 60
  (131, 13100, 195, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 65
  (131, 13100, 329, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Lapras - Water Pulse - TM03
  (131, 13100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Lapras - Roar - TM05
  (131, 13100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Lapras - Hail - TM07
  (131, 13100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Lapras - Safeguard - TM20
  (131, 13100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Lapras - Iron Tail - TM23
  (131, 13100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Lapras - Shock Wave - TM34
  (131, 13100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Lapras - Facade - TM42
  (131, 13100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Lapras - Brine - TM55
  (131, 13100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Lapras - Endure - TM58
  (131, 13100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Lapras - Dragon Pulse - TM59
  (131, 13100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Lapras - Giga Impact - TM68
  (131, 13100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Lapras - Avalanche - TM72
  (131, 13100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 38),
  -- Lapras - Sleep Talk - TM82
  (131, 13100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Lapras - Bulldoze - TM83
  (131, 13100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Lapras - Dream Eater - TM85
  (131, 13100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Lapras - Swagger - TM87
  (131, 13100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Lapras - Substitute - TM90
  (131, 13100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Lapras - Surf - TM95
  (131, 13100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Lapras - Strength - TM96
  (131, 13100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Lapras - Rock Smash - TM98
  (131, 13100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Lapras - Waterfall - TM99
  (131, 13100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Lapras - Ancient Power - Egg
  (131, 13100, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lapras - Curse - Egg
  (131, 13100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lapras - Dragon Dance - Egg
  (131, 13100, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lapras - Fissure - Egg
  (131, 13100, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lapras - Freeze-Dry - Egg
  (131, 13100, 573, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lapras - Future Sight - Egg
  (131, 13100, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lapras - Horn Drill - Egg
  (131, 13100, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lapras - Tickle - Egg
  (131, 13100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lapras - Whirlpool - Egg
  (131, 13100, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ditto - Transform - Starting Move
  (132, 13200, 144, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Eevee - Covet - Starting Move
  (133, 13300, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Eevee - Helping Hand - Starting Move
  (133, 13300, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Eevee - Tackle - Starting Move
  (133, 13300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Eevee - Growl - Starting Move
  (133, 13300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Eevee - Tail Whip - Starting Move
  (133, 13300, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Eevee - Sand Attack - Level 5
  (133, 13300, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Eevee - Quick Attack - Level 10
  (133, 13300, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Eevee - Baby-Doll Eyes - Level 15
  (133, 13300, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Eevee - Swift - Level 20
  (133, 13300, 129, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Eevee - Bite - Level 25
  (133, 13300, 44, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Eevee - Copycat - Level 30
  (133, 13300, 383, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Eevee - Baton Pass - Level 35
  (133, 13300, 226, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Eevee - Take Down - Level 40
  (133, 13300, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Eevee - Charm - Level 45
  (133, 13300, 204, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Eevee - Double-Edge - Level 50
  (133, 13300, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Eevee - Last Resort - Level 55
  (133, 13300, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Eevee - Work Up - TM10
  (133, 13300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Eevee - Iron Tail - TM23
  (133, 13300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Eevee - Dig - TM28
  (133, 13300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Eevee - Facade - TM42
  (133, 13300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Eevee - Endure - TM58
  (133, 13300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Eevee - Sleep Talk - TM82
  (133, 13300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 29),
  -- Eevee - Swagger - TM87
  (133, 13300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 30),
  -- Eevee - Substitute - TM90
  (133, 13300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Eevee - Charm - Egg
  (133, 13300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Eevee - Covet - Egg
  (133, 13300, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Eevee - Curse - Egg
  (133, 13300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Eevee - Detect - Egg
  (133, 13300, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Eevee - Double Kick - Egg
  (133, 13300, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Eevee - Fake Tears - Egg
  (133, 13300, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Eevee - Flail - Egg
  (133, 13300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Eevee - Mud-Slap - Egg
  (133, 13300, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Eevee - Stored Power - Egg
  (133, 13300, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eevee - Tickle - Egg
  (133, 13300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Eevee - Wish - Egg
  (133, 13300, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Eevee - Yawn - Egg
  (133, 13300, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vaporeon - Water Gun - Starting Move
  (134, 13400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vaporeon - Covet - Starting Move
  (134, 13400, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vaporeon - Swift - Starting Move
  (134, 13400, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Vaporeon - Bite - Starting Move
  (134, 13400, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Vaporeon - Copycat - Starting Move
  (134, 13400, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Vaporeon - Baton Pass - Starting Move
  (134, 13400, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Vaporeon - Take Down - Starting Move
  (134, 13400, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Vaporeon - Charm - Starting Move
  (134, 13400, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Vaporeon - Double-Edge - Starting Move
  (134, 13400, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Vaporeon - Helping Hand - Starting Move
  (134, 13400, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Vaporeon - Tackle - Starting Move
  (134, 13400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Vaporeon - Growl - Starting Move
  (134, 13400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Vaporeon - Tail Whip - Starting Move
  (134, 13400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Vaporeon - Water Gun - Evolution
  (134, 13400, 55, 21, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Vaporeon - Sand Attack - Level 5
  (134, 13400, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 15),
  -- Vaporeon - Quick Attack - Level 10
  (134, 13400, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 16),
  -- Vaporeon - Baby-Doll Eyes - Level 15
  (134, 13400, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 17),
  -- Vaporeon - Haze - Level 20
  (134, 13400, 114, 21, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Vaporeon - Water Pulse - Level 25
  (134, 13400, 352, 21, NULL, 1, 25, NULL, NULL, NULL, 19),
  -- Vaporeon - Aurora Beam - Level 30
  (134, 13400, 62, 21, NULL, 1, 30, NULL, NULL, NULL, 20),
  -- Vaporeon - Aqua Ring - Level 35
  (134, 13400, 392, 21, NULL, 1, 35, NULL, NULL, NULL, 21),
  -- Vaporeon - Muddy Water - Level 40
  (134, 13400, 330, 21, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Vaporeon - Acid Armor - Level 45
  (134, 13400, 151, 21, NULL, 1, 45, NULL, NULL, NULL, 23),
  -- Vaporeon - Hydro Pump - Level 50
  (134, 13400, 56, 21, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Vaporeon - Last Resort - Level 55
  (134, 13400, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 25),
  -- Vaporeon - Water Pulse - TM03
  (134, 13400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 26),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 27),
  -- Vaporeon - Hail - TM07
  (134, 13400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 28),
  -- Vaporeon - Work Up - TM10
  (134, 13400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 29),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 30),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 31),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 32),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 33),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 34),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 35),
  -- Vaporeon - Iron Tail - TM23
  (134, 13400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 36),
  -- Vaporeon - Dig - TM28
  (134, 13400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 37),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 38),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 39),
  -- Vaporeon - Facade - TM42
  (134, 13400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Vaporeon - Scald - TM49
  (134, 13400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 43),
  -- Vaporeon - Brine - TM55
  (134, 13400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 44),
  -- Vaporeon - Endure - TM58
  (134, 13400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Vaporeon - Giga Impact - TM68
  (134, 13400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Vaporeon - Sleep Talk - TM82
  (134, 13400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Vaporeon - Swagger - TM87
  (134, 13400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Vaporeon - Substitute - TM90
  (134, 13400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Vaporeon - Surf - TM95
  (134, 13400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 50),
  -- Vaporeon - Strength - TM96
  (134, 13400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Vaporeon - Rock Smash - TM98
  (134, 13400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Vaporeon - Waterfall - TM99
  (134, 13400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 53),
  -- Vaporeon - Charm - Egg
  (134, 13400, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vaporeon - Covet - Egg
  (134, 13400, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vaporeon - Curse - Egg
  (134, 13400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vaporeon - Detect - Egg
  (134, 13400, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vaporeon - Double Kick - Egg
  (134, 13400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vaporeon - Fake Tears - Egg
  (134, 13400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vaporeon - Flail - Egg
  (134, 13400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Vaporeon - Mud-Slap - Egg
  (134, 13400, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Vaporeon - Stored Power - Egg
  (134, 13400, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Vaporeon - Tickle - Egg
  (134, 13400, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Vaporeon - Wish - Egg
  (134, 13400, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Vaporeon - Yawn - Egg
  (134, 13400, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jolteon - Thunder Shock - Starting Move
  (135, 13500, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Jolteon - Covet - Starting Move
  (135, 13500, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Jolteon - Swift - Starting Move
  (135, 13500, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Jolteon - Bite - Starting Move
  (135, 13500, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Jolteon - Copycat - Starting Move
  (135, 13500, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Jolteon - Baton Pass - Starting Move
  (135, 13500, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Jolteon - Take Down - Starting Move
  (135, 13500, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Jolteon - Charm - Starting Move
  (135, 13500, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Jolteon - Double-Edge - Starting Move
  (135, 13500, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Jolteon - Helping Hand - Starting Move
  (135, 13500, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Jolteon - Tackle - Starting Move
  (135, 13500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Jolteon - Growl - Starting Move
  (135, 13500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Jolteon - Tail Whip - Starting Move
  (135, 13500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 21, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Jolteon - Sand Attack - Level 5
  (135, 13500, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 15),
  -- Jolteon - Quick Attack - Level 10
  (135, 13500, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 16),
  -- Jolteon - Baby-Doll Eyes - Level 15
  (135, 13500, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 17),
  -- Jolteon - Thunder Wave - Level 20
  (135, 13500, 86, 21, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Jolteon - Double Kick - Level 25
  (135, 13500, 24, 21, NULL, 1, 25, NULL, NULL, NULL, 19),
  -- Jolteon - Thunder Fang - Level 30
  (135, 13500, 422, 21, NULL, 1, 30, NULL, NULL, NULL, 20),
  -- Jolteon - Pin Missile - Level 35
  (135, 13500, 42, 21, NULL, 1, 35, NULL, NULL, NULL, 21),
  -- Jolteon - Discharge - Level 40
  (135, 13500, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Jolteon - Agility - Level 45
  (135, 13500, 97, 21, NULL, 1, 45, NULL, NULL, NULL, 23),
  -- Jolteon - Thunder - Level 50
  (135, 13500, 87, 21, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Jolteon - Last Resort - Level 55
  (135, 13500, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 25),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 26),
  -- Jolteon - Work Up - TM10
  (135, 13500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 27),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 29),
  -- Jolteon - Light Screen - TM16
  (135, 13500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 30),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Jolteon - Iron Tail - TM23
  (135, 13500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 34),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 35),
  -- Jolteon - Dig - TM28
  (135, 13500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 37),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 38),
  -- Jolteon - Shock Wave - TM34
  (135, 13500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 39),
  -- Jolteon - Facade - TM42
  (135, 13500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Jolteon - Volt Switch - TM43
  (135, 13500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 41),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Jolteon - Charge Beam - TM57
  (135, 13500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 44),
  -- Jolteon - Endure - TM58
  (135, 13500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Jolteon - Giga Impact - TM68
  (135, 13500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Jolteon - Flash - TM70
  (135, 13500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 47),
  -- Jolteon - Thunder Wave - TM73
  (135, 13500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 48),
  -- Jolteon - Sleep Talk - TM82
  (135, 13500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Jolteon - Swagger - TM87
  (135, 13500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Jolteon - Substitute - TM90
  (135, 13500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Jolteon - Strength - TM96
  (135, 13500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Jolteon - Rock Smash - TM98
  (135, 13500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Jolteon - Charm - Egg
  (135, 13500, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Jolteon - Covet - Egg
  (135, 13500, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Jolteon - Curse - Egg
  (135, 13500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jolteon - Detect - Egg
  (135, 13500, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Jolteon - Double Kick - Egg
  (135, 13500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Jolteon - Fake Tears - Egg
  (135, 13500, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Jolteon - Flail - Egg
  (135, 13500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Jolteon - Mud-Slap - Egg
  (135, 13500, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Jolteon - Stored Power - Egg
  (135, 13500, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Jolteon - Tickle - Egg
  (135, 13500, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Jolteon - Wish - Egg
  (135, 13500, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Jolteon - Yawn - Egg
  (135, 13500, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Flareon - Ember - Starting Move
  (136, 13600, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Flareon - Covet - Starting Move
  (136, 13600, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Flareon - Swift - Starting Move
  (136, 13600, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Flareon - Copycat - Starting Move
  (136, 13600, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Flareon - Baton Pass - Starting Move
  (136, 13600, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Flareon - Take Down - Starting Move
  (136, 13600, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Flareon - Charm - Starting Move
  (136, 13600, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Flareon - Double-Edge - Starting Move
  (136, 13600, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Flareon - Helping Hand - Starting Move
  (136, 13600, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Flareon - Tackle - Starting Move
  (136, 13600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Flareon - Growl - Starting Move
  (136, 13600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Flareon - Tail Whip - Starting Move
  (136, 13600, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 21, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Flareon - Sand Attack - Level 5
  (136, 13600, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Flareon - Quick Attack - Level 10
  (136, 13600, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Flareon - Baby-Doll Eyes - Level 15
  (136, 13600, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Flareon - Smog - Level 20
  (136, 13600, 123, 21, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Flareon - Bite - Level 25
  (136, 13600, 44, 21, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Flareon - Fire Fang - Level 30
  (136, 13600, 424, 21, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Flareon - Fire Spin - Level 35
  (136, 13600, 83, 21, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Flareon - Lava Plume - Level 40
  (136, 13600, 436, 21, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Flareon - Scary Face - Level 45
  (136, 13600, 184, 21, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Flareon - Flare Blitz - Level 50
  (136, 13600, 394, 21, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Flareon - Last Resort - Level 55
  (136, 13600, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 25),
  -- Flareon - Work Up - TM10
  (136, 13600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Flareon - Iron Tail - TM23
  (136, 13600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Flareon - Dig - TM28
  (136, 13600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Flareon - Flamethrower - TM35
  (136, 13600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 35),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Flareon - Facade - TM42
  (136, 13600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Flareon - Overheat - TM50
  (136, 13600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 40),
  -- Flareon - Endure - TM58
  (136, 13600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Flareon - Will-O-Wisp - TM61
  (136, 13600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 42),
  -- Flareon - Giga Impact - TM68
  (136, 13600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Flareon - Sleep Talk - TM82
  (136, 13600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Flareon - Swagger - TM87
  (136, 13600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Flareon - Substitute - TM90
  (136, 13600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Flareon - Strength - TM96
  (136, 13600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Flareon - Rock Smash - TM98
  (136, 13600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Flareon - Charm - Egg
  (136, 13600, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Flareon - Covet - Egg
  (136, 13600, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Flareon - Curse - Egg
  (136, 13600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Flareon - Detect - Egg
  (136, 13600, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Flareon - Double Kick - Egg
  (136, 13600, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Flareon - Fake Tears - Egg
  (136, 13600, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Flareon - Flail - Egg
  (136, 13600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Flareon - Mud-Slap - Egg
  (136, 13600, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Flareon - Stored Power - Egg
  (136, 13600, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Flareon - Tickle - Egg
  (136, 13600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Flareon - Wish - Egg
  (136, 13600, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Flareon - Yawn - Egg
  (136, 13600, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Porygon - Tackle - Starting Move
  (137, 13700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Porygon - Conversion - Starting Move
  (137, 13700, 160, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Porygon - Recycle - Level 5
  (137, 13700, 278, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Porygon - Magnet Rise - Level 10
  (137, 13700, 393, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Porygon - Thunder Shock - Level 15
  (137, 13700, 84, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Porygon - Psybeam - Level 20
  (137, 13700, 60, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon - Conversion 2 - Level 25
  (137, 13700, 176, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Porygon - Agility - Level 30
  (137, 13700, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Porygon - Recover - Level 35
  (137, 13700, 105, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Porygon - Tri Attack - Level 45
  (137, 13700, 161, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Porygon - Magic Coat - Level 50
  (137, 13700, 277, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Porygon - Lock-On - Level 55
  (137, 13700, 199, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Porygon - Zap Cannon - Level 60
  (137, 13700, 192, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Porygon - Solar Beam - TM22
  (137, 13700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Porygon - Iron Tail - TM23
  (137, 13700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 24),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Porygon - Shadow Ball - TM30
  (137, 13700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Porygon - Shock Wave - TM34
  (137, 13700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Porygon - Aerial Ace - TM40
  (137, 13700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Porygon - Facade - TM42
  (137, 13700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Porygon - Charge Beam - TM57
  (137, 13700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Porygon - Endure - TM58
  (137, 13700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Porygon - Recycle - TM67
  (137, 13700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 35),
  -- Porygon - Giga Impact - TM68
  (137, 13700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Porygon - Flash - TM70
  (137, 13700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Porygon - Thunder Wave - TM73
  (137, 13700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Porygon - Psych Up - TM77
  (137, 13700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Porygon - Sleep Talk - TM82
  (137, 13700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Porygon - Dream Eater - TM85
  (137, 13700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Porygon - Swagger - TM87
  (137, 13700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Porygon - Substitute - TM90
  (137, 13700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Porygon - Trick Room - TM92
  (137, 13700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 44),
  -- Omanyte - Bind - Starting Move
  (138, 13800, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Starting Move
  (138, 13800, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Omanyte - Rollout - Level 5
  (138, 13800, 205, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Omanyte - Sand Attack - Level 10
  (138, 13800, 28, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Omanyte - Water Gun - Level 15
  (138, 13800, 55, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 20
  (138, 13800, 43, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Omanyte - Ancient Power - Level 30
  (138, 13800, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Omanyte - Brine - Level 35
  (138, 13800, 362, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Omanyte - Protect - Level 41
  (138, 13800, 182, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Omanyte - Rock Blast - Level 45
  (138, 13800, 350, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Omanyte - Surf - Level 50
  (138, 13800, 57, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Omanyte - Shell Smash - Level 55
  (138, 13800, 504, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Omanyte - Hydro Pump - Level 60
  (138, 13800, 56, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Omanyte - Water Pulse - TM03
  (138, 13800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Omanyte - Hail - TM07
  (138, 13800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 22),
  -- Omanyte - Rock Tomb - TM39
  (138, 13800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 23),
  -- Omanyte - Facade - TM42
  (138, 13800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Omanyte - Scald - TM49
  (138, 13800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 28),
  -- Omanyte - Brine - TM55
  (138, 13800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 29),
  -- Omanyte - Endure - TM58
  (138, 13800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Omanyte - Rock Polish - TM69
  (138, 13800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 31),
  -- Omanyte - Gyro Ball - TM74
  (138, 13800, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 32),
  -- Omanyte - Stealth Rock - TM76
  (138, 13800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 33),
  -- Omanyte - Rock Slide - TM80
  (138, 13800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 34),
  -- Omanyte - Sleep Talk - TM82
  (138, 13800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Omanyte - Swagger - TM87
  (138, 13800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Omanyte - Substitute - TM90
  (138, 13800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Omanyte - Surf - TM95
  (138, 13800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Omanyte - Rock Smash - TM98
  (138, 13800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Omanyte - Waterfall - TM99
  (138, 13800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 40),
  -- Omanyte - Aurora Beam - Egg
  (138, 13800, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Omanyte - Bite - Egg
  (138, 13800, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Omanyte - Bubble Beam - Egg
  (138, 13800, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Omanyte - Haze - Egg
  (138, 13800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Omanyte - Knock Off - Egg
  (138, 13800, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Omanyte - Muddy Water - Egg
  (138, 13800, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Omanyte - Reflect Type - Egg
  (138, 13800, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Omanyte - Slam - Egg
  (138, 13800, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Omanyte - Spikes - Egg
  (138, 13800, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Omanyte - Supersonic - Egg
  (138, 13800, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omanyte - Tickle - Egg
  (138, 13800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omanyte - Toxic Spikes - Egg
  (138, 13800, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omanyte - Whirlpool - Egg
  (138, 13800, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omastar - Crunch - Starting Move
  (139, 13900, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Omastar - Bind - Starting Move
  (139, 13900, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Omastar - Withdraw - Starting Move
  (139, 13900, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Omastar - Rollout - Starting Move
  (139, 13900, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Omastar - Sand Attack - Starting Move
  (139, 13900, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Omastar - Crunch - Evolution
  (139, 13900, 242, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Omastar - Water Gun - Level 15
  (139, 13900, 55, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Omastar - Leer - Level 20
  (139, 13900, 43, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Omastar - Ancient Power - Level 30
  (139, 13900, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Omastar - Brine - Level 35
  (139, 13900, 362, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Omastar - Protect - Level 43
  (139, 13900, 182, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Omastar - Rock Blast - Level 49
  (139, 13900, 350, 21, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Omastar - Surf - Level 56
  (139, 13900, 57, 21, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Omastar - Shell Smash - Level 63
  (139, 13900, 504, 21, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Omastar - Hydro Pump - Level 70
  (139, 13900, 56, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Omastar - Water Pulse - TM03
  (139, 13900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Omastar - Hail - TM07
  (139, 13900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 25),
  -- Omastar - Rock Tomb - TM39
  (139, 13900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Omastar - Facade - TM42
  (139, 13900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Omastar - Scald - TM49
  (139, 13900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Omastar - Brine - TM55
  (139, 13900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Omastar - Endure - TM58
  (139, 13900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Omastar - Giga Impact - TM68
  (139, 13900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 34),
  -- Omastar - Rock Polish - TM69
  (139, 13900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 35),
  -- Omastar - Stone Edge - TM71
  (139, 13900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Omastar - Gyro Ball - TM74
  (139, 13900, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 37),
  -- Omastar - Stealth Rock - TM76
  (139, 13900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Omastar - Rock Slide - TM80
  (139, 13900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Omastar - Sleep Talk - TM82
  (139, 13900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Omastar - Swagger - TM87
  (139, 13900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Omastar - Substitute - TM90
  (139, 13900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Omastar - Surf - TM95
  (139, 13900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 43),
  -- Omastar - Rock Smash - TM98
  (139, 13900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Omastar - Waterfall - TM99
  (139, 13900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Omastar - Rock Climb - TM100
  (139, 13900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 46),
  -- Omastar - Aurora Beam - Egg
  (139, 13900, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Omastar - Bite - Egg
  (139, 13900, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Omastar - Bubble Beam - Egg
  (139, 13900, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Omastar - Haze - Egg
  (139, 13900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omastar - Knock Off - Egg
  (139, 13900, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omastar - Muddy Water - Egg
  (139, 13900, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omastar - Reflect Type - Egg
  (139, 13900, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omastar - Slam - Egg
  (139, 13900, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Omastar - Spikes - Egg
  (139, 13900, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Omastar - Supersonic - Egg
  (139, 13900, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Omastar - Tickle - Egg
  (139, 13900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Omastar - Toxic Spikes - Egg
  (139, 13900, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Omastar - Whirlpool - Egg
  (139, 13900, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kabuto - Absorb - Starting Move
  (140, 14000, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Starting Move
  (140, 14000, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kabuto - Scratch - Level 5
  (140, 14000, 10, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Kabuto - Sand Attack - Level 10
  (140, 14000, 28, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kabuto - Aqua Jet - Level 15
  (140, 14000, 453, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Kabuto - Leer - Level 20
  (140, 14000, 43, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Kabuto - Mud Shot - Level 25
  (140, 14000, 341, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Kabuto - Ancient Power - Level 30
  (140, 14000, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kabuto - Brine - Level 35
  (140, 14000, 362, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Kabuto - Protect - Level 41
  (140, 14000, 182, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Kabuto - Leech Life - Level 45
  (140, 14000, 141, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Kabuto - Liquidation - Level 50
  (140, 14000, 710, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Kabuto - Metal Sound - Level 55
  (140, 14000, 319, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Kabuto - Stone Edge - Level 60
  (140, 14000, 444, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Kabuto - Water Pulse - TM03
  (140, 14000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Kabuto - Hail - TM07
  (140, 14000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Kabuto - Giga Drain - TM19
  (140, 14000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Kabuto - Dig - TM28
  (140, 14000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 24),
  -- Kabuto - Rock Tomb - TM39
  (140, 14000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Kabuto - Aerial Ace - TM40
  (140, 14000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Kabuto - Facade - TM42
  (140, 14000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Kabuto - Scald - TM49
  (140, 14000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Kabuto - Brine - TM55
  (140, 14000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Kabuto - Endure - TM58
  (140, 14000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Kabuto - Rock Polish - TM69
  (140, 14000, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 34),
  -- Kabuto - Stone Edge - TM71
  (140, 14000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 35),
  -- Kabuto - Stealth Rock - TM76
  (140, 14000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 36),
  -- Kabuto - Rock Slide - TM80
  (140, 14000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 37),
  -- Kabuto - Sleep Talk - TM82
  (140, 14000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Kabuto - Swagger - TM87
  (140, 14000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Kabuto - Substitute - TM90
  (140, 14000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Kabuto - Surf - TM95
  (140, 14000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 41),
  -- Kabuto - Rock Smash - TM98
  (140, 14000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Kabuto - Waterfall - TM99
  (140, 14000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 43),
  -- Kabuto - Aurora Beam - Egg
  (140, 14000, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Kabuto - Bubble Beam - Egg
  (140, 14000, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Kabuto - Confuse Ray - Egg
  (140, 14000, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kabuto - Flail - Egg
  (140, 14000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kabuto - Icy Wind - Egg
  (140, 14000, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kabuto - Knock Off - Egg
  (140, 14000, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kabuto - Mega Drain - Egg
  (140, 14000, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kabuto - Mud Shot - Egg
  (140, 14000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kabuto - Rapid Spin - Egg
  (140, 14000, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kabuto - Screech - Egg
  (140, 14000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kabuto - Take Down - Egg
  (140, 14000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kabutops - Slash - Starting Move
  (141, 14100, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kabutops - Night Slash - Starting Move
  (141, 14100, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kabutops - Feint - Starting Move
  (141, 14100, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kabutops - Absorb - Starting Move
  (141, 14100, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kabutops - Harden - Starting Move
  (141, 14100, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Kabutops - Scratch - Starting Move
  (141, 14100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Kabutops - Sand Attack - Starting Move
  (141, 14100, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Kabutops - Slash - Evolution
  (141, 14100, 163, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Kabutops - Aqua Jet - Level 15
  (141, 14100, 453, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Kabutops - Leer - Level 20
  (141, 14100, 43, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Kabutops - Mud Shot - Level 25
  (141, 14100, 341, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Kabutops - Ancient Power - Level 30
  (141, 14100, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Kabutops - Brine - Level 35
  (141, 14100, 362, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Kabutops - Protect - Level 43
  (141, 14100, 182, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Kabutops - Leech Life - Level 49
  (141, 14100, 141, 21, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Kabutops - Liquidation - Level 56
  (141, 14100, 710, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Kabutops - Metal Sound - Level 63
  (141, 14100, 319, 21, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Kabutops - Stone Edge - Level 70
  (141, 14100, 444, 21, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Kabutops - Water Pulse - TM03
  (141, 14100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Kabutops - Hail - TM07
  (141, 14100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Kabutops - Giga Drain - TM19
  (141, 14100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Kabutops - Dig - TM28
  (141, 14100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Kabutops - Brick Break - TM31
  (141, 14100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Kabutops - Rock Tomb - TM39
  (141, 14100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Kabutops - Aerial Ace - TM40
  (141, 14100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Kabutops - Facade - TM42
  (141, 14100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Kabutops - Scald - TM49
  (141, 14100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 37),
  -- Kabutops - Brine - TM55
  (141, 14100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 38),
  -- Kabutops - Endure - TM58
  (141, 14100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Kabutops - Giga Impact - TM68
  (141, 14100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Kabutops - Rock Polish - TM69
  (141, 14100, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 41),
  -- Kabutops - Stone Edge - TM71
  (141, 14100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Kabutops - Swords Dance - TM75
  (141, 14100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Kabutops - Stealth Rock - TM76
  (141, 14100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 44),
  -- Kabutops - Rock Slide - TM80
  (141, 14100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Kabutops - X-Scissor - TM81
  (141, 14100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 46),
  -- Kabutops - Sleep Talk - TM82
  (141, 14100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Kabutops - Swagger - TM87
  (141, 14100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Kabutops - Substitute - TM90
  (141, 14100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Kabutops - Cut - TM93
  (141, 14100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Kabutops - Surf - TM95
  (141, 14100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 51),
  -- Kabutops - Rock Smash - TM98
  (141, 14100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Kabutops - Waterfall - TM99
  (141, 14100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 53),
  -- Kabutops - Rock Climb - TM100
  (141, 14100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 54),
  -- Kabutops - Aurora Beam - Egg
  (141, 14100, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kabutops - Bubble Beam - Egg
  (141, 14100, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kabutops - Confuse Ray - Egg
  (141, 14100, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kabutops - Flail - Egg
  (141, 14100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kabutops - Icy Wind - Egg
  (141, 14100, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kabutops - Knock Off - Egg
  (141, 14100, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kabutops - Mega Drain - Egg
  (141, 14100, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Kabutops - Mud Shot - Egg
  (141, 14100, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kabutops - Rapid Spin - Egg
  (141, 14100, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Kabutops - Screech - Egg
  (141, 14100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Kabutops - Take Down - Egg
  (141, 14100, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aerodactyl - Bite - Starting Move
  (142, 14200, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Aerodactyl - Ancient Power - Starting Move
  (142, 14200, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 5
  (142, 14200, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Aerodactyl - Wing Attack - Level 10
  (142, 14200, 17, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Aerodactyl - Scary Face - Level 15
  (142, 14200, 184, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Aerodactyl - Rock Slide - Level 20
  (142, 14200, 157, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Aerodactyl - Roar - Level 25
  (142, 14200, 46, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Aerodactyl - Crunch - Level 30
  (142, 14200, 242, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Aerodactyl - Iron Head - Level 35
  (142, 14200, 442, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Aerodactyl - Take Down - Level 40
  (142, 14200, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Aerodactyl - Stone Edge - Level 45
  (142, 14200, 444, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Aerodactyl - Agility - Level 50
  (142, 14200, 97, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Aerodactyl - Hyper Beam - Level 55
  (142, 14200, 63, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Aerodactyl - Giga Impact - Level 60
  (142, 14200, 416, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Aerodactyl - Dragon Claw - TM02
  (142, 14200, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 15),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Aerodactyl - Sunny Day - TM11
  (142, 14200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Aerodactyl - Taunt - TM12
  (142, 14200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Aerodactyl - Iron Tail - TM23
  (142, 14200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Aerodactyl - Flamethrower - TM35
  (142, 14200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Aerodactyl - Rock Tomb - TM39
  (142, 14200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Aerodactyl - Aerial Ace - TM40
  (142, 14200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Aerodactyl - Torment - TM41
  (142, 14200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 30),
  -- Aerodactyl - Facade - TM42
  (142, 14200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Aerodactyl - Thief - TM46
  (142, 14200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Aerodactyl - Steel Wing - TM47
  (142, 14200, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 35),
  -- Aerodactyl - Roost - TM51
  (142, 14200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Aerodactyl - Endure - TM58
  (142, 14200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Aerodactyl - Dragon Pulse - TM59
  (142, 14200, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Aerodactyl - Payback - TM66
  (142, 14200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Aerodactyl - Giga Impact - TM68
  (142, 14200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Aerodactyl - Rock Polish - TM69
  (142, 14200, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 41),
  -- Aerodactyl - Stone Edge - TM71
  (142, 14200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Aerodactyl - Stealth Rock - TM76
  (142, 14200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 43),
  -- Aerodactyl - Rock Slide - TM80
  (142, 14200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 44),
  -- Aerodactyl - Sleep Talk - TM82
  (142, 14200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Aerodactyl - Bulldoze - TM83
  (142, 14200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Aerodactyl - Swagger - TM87
  (142, 14200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Aerodactyl - Substitute - TM90
  (142, 14200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Aerodactyl - Fly - TM94
  (142, 14200, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 49),
  -- Aerodactyl - Strength - TM96
  (142, 14200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Aerodactyl - Defog - TM97
  (142, 14200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 51),
  -- Aerodactyl - Rock Smash - TM98
  (142, 14200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Aerodactyl - Assurance - Egg
  (142, 14200, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aerodactyl - Curse - Egg
  (142, 14200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aerodactyl - Dragon Breath - Egg
  (142, 14200, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aerodactyl - Tailwind - Egg
  (142, 14200, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aerodactyl - Whirlwind - Egg
  (142, 14200, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aerodactyl - Wide Guard - Egg
  (142, 14200, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snorlax - Recycle - Starting Move
  (143, 14300, 278, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Snorlax - Covet - Starting Move
  (143, 14300, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Snorlax - Stockpile - Starting Move
  (143, 14300, 254, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Snorlax - Swallow - Starting Move
  (143, 14300, 256, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Snorlax - Screech - Starting Move
  (143, 14300, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Snorlax - Fling - Starting Move
  (143, 14300, 374, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Snorlax - Metronome - Starting Move
  (143, 14300, 118, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Snorlax - Flail - Starting Move
  (143, 14300, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Snorlax - Last Resort - Starting Move
  (143, 14300, 387, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Snorlax - Lick - Starting Move
  (143, 14300, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Snorlax - Tackle - Starting Move
  (143, 14300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Snorlax - Defense Curl - Starting Move
  (143, 14300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Snorlax - Block - Starting Move
  (143, 14300, 335, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Snorlax - Yawn - Level 12
  (143, 14300, 281, 21, NULL, 1, 12, NULL, NULL, NULL, 14),
  -- Snorlax - Bite - Level 16
  (143, 14300, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 15),
  -- Snorlax - Rest - Level 20
  (143, 14300, 156, 21, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Snorlax - Snore - Level 20
  (143, 14300, 173, 21, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Snorlax - Sleep Talk - Level 20
  (143, 14300, 214, 21, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Snorlax - Crunch - Level 24
  (143, 14300, 242, 21, NULL, 1, 24, NULL, NULL, NULL, 19),
  -- Snorlax - Body Slam - Level 28
  (143, 14300, 34, 21, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Snorlax - Heavy Slam - Level 32
  (143, 14300, 484, 21, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Snorlax - Amnesia - Level 36
  (143, 14300, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 22),
  -- Snorlax - High Horsepower - Level 40
  (143, 14300, 667, 21, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Snorlax - Hammer Arm - Level 44
  (143, 14300, 359, 21, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Snorlax - Belly Drum - Level 48
  (143, 14300, 187, 21, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Snorlax - Belch - Level 52
  (143, 14300, 562, 21, NULL, 1, 52, NULL, NULL, NULL, 26),
  -- Snorlax - Giga Impact - Level 56
  (143, 14300, 416, 21, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Snorlax - Focus Punch - TM01
  (143, 14300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 28),
  -- Snorlax - Water Pulse - TM03
  (143, 14300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 29),
  -- Snorlax - Work Up - TM10
  (143, 14300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 30),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 31),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 32),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 33),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 34),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 35),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 36),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 37),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 38),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 39),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 40),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 41),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 42),
  -- Snorlax - Brick Break - TM31
  (143, 14300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 43),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 44),
  -- Snorlax - Shock Wave - TM34
  (143, 14300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 45),
  -- Snorlax - Flamethrower - TM35
  (143, 14300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 46),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 47),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 48),
  -- Snorlax - Rock Tomb - TM39
  (143, 14300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 49),
  -- Snorlax - Facade - TM42
  (143, 14300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 50),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 51),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 52),
  -- Snorlax - Focus Blast - TM52
  (143, 14300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 53),
  -- Snorlax - Fling - TM56
  (143, 14300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 54),
  -- Snorlax - Endure - TM58
  (143, 14300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 55),
  -- Snorlax - Recycle - TM67
  (143, 14300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 56),
  -- Snorlax - Giga Impact - TM68
  (143, 14300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 57),
  -- Snorlax - Rock Slide - TM80
  (143, 14300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 58),
  -- Snorlax - Sleep Talk - TM82
  (143, 14300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 59),
  -- Snorlax - Bulldoze - TM83
  (143, 14300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 60),
  -- Snorlax - Swagger - TM87
  (143, 14300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 61),
  -- Snorlax - Substitute - TM90
  (143, 14300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 62),
  -- Snorlax - Surf - TM95
  (143, 14300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 63),
  -- Snorlax - Strength - TM96
  (143, 14300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 64),
  -- Snorlax - Rock Smash - TM98
  (143, 14300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 65),
  -- Snorlax - Rock Climb - TM100
  (143, 14300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 66),
  -- Snorlax - After You - Egg
  (143, 14300, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snorlax - Belch - Egg
  (143, 14300, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snorlax - Charm - Egg
  (143, 14300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snorlax - Counter - Egg
  (143, 14300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Snorlax - Curse - Egg
  (143, 14300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Snorlax - Double-Edge - Egg
  (143, 14300, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Snorlax - Fissure - Egg
  (143, 14300, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Snorlax - Gastro Acid - Egg
  (143, 14300, 380, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Snorlax - Lick - Egg
  (143, 14300, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Snorlax - Power-Up Punch - Egg
  (143, 14300, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Snorlax - Self-Destruct - Egg
  (143, 14300, 120, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Snorlax - Whirlwind - Egg
  (143, 14300, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Snorlax - Zen Headbutt - Egg
  (143, 14300, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Articuno - Gust - Starting Move
  (144, 14400, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Articuno - Mist - Starting Move
  (144, 14400, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Articuno - Powder Snow - Level 5
  (144, 14400, 181, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Articuno - Reflect - Level 10
  (144, 14400, 115, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Articuno - Agility - Level 20
  (144, 14400, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Articuno - Ancient Power - Level 25
  (144, 14400, 246, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Articuno - Tailwind - Level 30
  (144, 14400, 366, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Articuno - Freeze-Dry - Level 35
  (144, 14400, 573, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Articuno - Roost - Level 40
  (144, 14400, 355, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Articuno - Ice Beam - Level 45
  (144, 14400, 58, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Articuno - Hail - Level 50
  (144, 14400, 258, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Articuno - Hurricane - Level 55
  (144, 14400, 542, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Articuno - Mind Reader - Level 60
  (144, 14400, 170, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Articuno - Blizzard - Level 65
  (144, 14400, 59, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Articuno - Sheer Cold - Level 70
  (144, 14400, 329, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Articuno - Water Pulse - TM03
  (144, 14400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Articuno - Hail - TM07
  (144, 14400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Articuno - Aerial Ace - TM40
  (144, 14400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Articuno - Facade - TM42
  (144, 14400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Articuno - Steel Wing - TM47
  (144, 14400, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 32),
  -- Articuno - Roost - TM51
  (144, 14400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Articuno - Endure - TM58
  (144, 14400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Articuno - Giga Impact - TM68
  (144, 14400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Articuno - Avalanche - TM72
  (144, 14400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 36),
  -- Articuno - Sleep Talk - TM82
  (144, 14400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Articuno - Swagger - TM87
  (144, 14400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Articuno - Pluck - TM88
  (144, 14400, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 39),
  -- Articuno - U-turn - TM89
  (144, 14400, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 40),
  -- Articuno - Substitute - TM90
  (144, 14400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Articuno - Fly - TM94
  (144, 14400, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 42),
  -- Articuno - Defog - TM97
  (144, 14400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 43),
  -- Articuno - Rock Smash - TM98
  (144, 14400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Zapdos - Peck - Starting Move
  (145, 14500, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Wave - Starting Move
  (145, 14500, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Shock - Level 5
  (145, 14500, 84, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zapdos - Light Screen - Level 10
  (145, 14500, 113, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zapdos - Pluck - Level 15
  (145, 14500, 365, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zapdos - Agility - Level 20
  (145, 14500, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zapdos - Ancient Power - Level 25
  (145, 14500, 246, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zapdos - Charge - Level 30
  (145, 14500, 268, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zapdos - Drill Peck - Level 35
  (145, 14500, 65, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zapdos - Roost - Level 40
  (145, 14500, 355, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zapdos - Discharge - Level 45
  (145, 14500, 435, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zapdos - Rain Dance - Level 50
  (145, 14500, 240, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos - Thunder - Level 55
  (145, 14500, 87, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zapdos - Detect - Level 60
  (145, 14500, 197, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Zapdos - Magnetic Flux - Level 65
  (145, 14500, 602, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Zapdos - Zap Cannon - Level 70
  (145, 14500, 192, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Zapdos - Hail - TM07
  (145, 14500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Zapdos - Light Screen - TM16
  (145, 14500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Zapdos - Shock Wave - TM34
  (145, 14500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Zapdos - Aerial Ace - TM40
  (145, 14500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Zapdos - Facade - TM42
  (145, 14500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Zapdos - Volt Switch - TM43
  (145, 14500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Zapdos - Steel Wing - TM47
  (145, 14500, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 33),
  -- Zapdos - Roost - TM51
  (145, 14500, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 34),
  -- Zapdos - Charge Beam - TM57
  (145, 14500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Zapdos - Endure - TM58
  (145, 14500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Zapdos - Giga Impact - TM68
  (145, 14500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Zapdos - Flash - TM70
  (145, 14500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Zapdos - Thunder Wave - TM73
  (145, 14500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Zapdos - Sleep Talk - TM82
  (145, 14500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Zapdos - Swagger - TM87
  (145, 14500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Zapdos - Pluck - TM88
  (145, 14500, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 42),
  -- Zapdos - U-turn - TM89
  (145, 14500, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 43),
  -- Zapdos - Substitute - TM90
  (145, 14500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Zapdos - Fly - TM94
  (145, 14500, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 45),
  -- Zapdos - Defog - TM97
  (145, 14500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 46),
  -- Zapdos - Rock Smash - TM98
  (145, 14500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Moltres - Gust - Starting Move
  (146, 14600, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Moltres - Leer - Starting Move
  (146, 14600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Moltres - Ember - Level 5
  (146, 14600, 52, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Moltres - Safeguard - Level 10
  (146, 14600, 219, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Moltres - Wing Attack - Level 15
  (146, 14600, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Moltres - Agility - Level 20
  (146, 14600, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Moltres - Ancient Power - Level 25
  (146, 14600, 246, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Moltres - Incinerate - Level 30
  (146, 14600, 510, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Moltres - Air Slash - Level 35
  (146, 14600, 403, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Moltres - Roost - Level 40
  (146, 14600, 355, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Moltres - Heat Wave - Level 45
  (146, 14600, 257, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Moltres - Sunny Day - Level 50
  (146, 14600, 241, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Moltres - Hurricane - Level 55
  (146, 14600, 542, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Moltres - Endure - Level 60
  (146, 14600, 203, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Moltres - Burn Up - Level 65
  (146, 14600, 682, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Moltres - Sky Attack - Level 70
  (146, 14600, 143, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Moltres - Safeguard - TM20
  (146, 14600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Moltres - Solar Beam - TM22
  (146, 14600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Moltres - Flamethrower - TM35
  (146, 14600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Moltres - Aerial Ace - TM40
  (146, 14600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Moltres - Facade - TM42
  (146, 14600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Moltres - Steel Wing - TM47
  (146, 14600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 31),
  -- Moltres - Overheat - TM50
  (146, 14600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 32),
  -- Moltres - Roost - TM51
  (146, 14600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Moltres - Endure - TM58
  (146, 14600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Moltres - Will-O-Wisp - TM61
  (146, 14600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Moltres - Giga Impact - TM68
  (146, 14600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Moltres - Sleep Talk - TM82
  (146, 14600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Moltres - Swagger - TM87
  (146, 14600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Moltres - Pluck - TM88
  (146, 14600, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 39),
  -- Moltres - U-turn - TM89
  (146, 14600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 40),
  -- Moltres - Substitute - TM90
  (146, 14600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Moltres - Fly - TM94
  (146, 14600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 42),
  -- Moltres - Defog - TM97
  (146, 14600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 43),
  -- Moltres - Rock Smash - TM98
  (146, 14600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Dratini - Wrap - Starting Move
  (147, 14700, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Starting Move
  (147, 14700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dratini - Twister - Level 5
  (147, 14700, 239, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Thunder Wave - Level 10
  (147, 14700, 86, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Tail - Level 15
  (147, 14700, 525, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Agility - Level 20
  (147, 14700, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dratini - Slam - Level 25
  (147, 14700, 21, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Aqua Tail - Level 31
  (147, 14700, 401, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Dragon Rush - Level 35
  (147, 14700, 407, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Safeguard - Level 40
  (147, 14700, 219, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dratini - Rain Dance - Level 45
  (147, 14700, 240, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Dragon Dance - Level 50
  (147, 14700, 349, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Hyper Beam - Level 60
  (147, 14700, 63, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Dratini - Water Pulse - TM03
  (147, 14700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Dratini - Hail - TM07
  (147, 14700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Dratini - Sunny Day - TM11
  (147, 14700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Dratini - Hyper Beam - TM15
  (147, 14700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Dratini - Light Screen - TM16
  (147, 14700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Dratini - Safeguard - TM20
  (147, 14700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Dratini - Iron Tail - TM23
  (147, 14700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Dratini - Shock Wave - TM34
  (147, 14700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Dratini - Flamethrower - TM35
  (147, 14700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Dratini - Facade - TM42
  (147, 14700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Dratini - Endure - TM58
  (147, 14700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Dratini - Dragon Pulse - TM59
  (147, 14700, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Dratini - Giga Impact - TM68
  (147, 14700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Dratini - Thunder Wave - TM73
  (147, 14700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Dratini - Sleep Talk - TM82
  (147, 14700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Dratini - Swagger - TM87
  (147, 14700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Dratini - Substitute - TM90
  (147, 14700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Dratini - Surf - TM95
  (147, 14700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Dratini - Waterfall - TM99
  (147, 14700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 43),
  -- Dratini - Aqua Jet - Egg
  (147, 14700, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dratini - Dragon Breath - Egg
  (147, 14700, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dratini - Dragon Dance - Egg
  (147, 14700, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dratini - Dragon Rush - Egg
  (147, 14700, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dratini - Extreme Speed - Egg
  (147, 14700, 245, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dratini - Haze - Egg
  (147, 14700, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dratini - Mist - Egg
  (147, 14700, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dratini - Supersonic - Egg
  (147, 14700, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dragonair - Wrap - Starting Move
  (148, 14800, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Starting Move
  (148, 14800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dragonair - Twister - Starting Move
  (148, 14800, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dragonair - Thunder Wave - Starting Move
  (148, 14800, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dragonair - Dragon Tail - Level 15
  (148, 14800, 525, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragonair - Agility - Level 20
  (148, 14800, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragonair - Slam - Level 25
  (148, 14800, 21, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragonair - Aqua Tail - Level 33
  (148, 14800, 401, 21, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Dragonair - Dragon Rush - Level 39
  (148, 14800, 407, 21, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Dragonair - Safeguard - Level 46
  (148, 14800, 219, 21, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Dragonair - Rain Dance - Level 53
  (148, 14800, 240, 21, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Dragonair - Dragon Dance - Level 60
  (148, 14800, 349, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Dragonair - Outrage - Level 67
  (148, 14800, 200, 21, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Dragonair - Hyper Beam - Level 74
  (148, 14800, 63, 21, NULL, 1, 74, NULL, NULL, NULL, 14),
  -- Dragonair - Water Pulse - TM03
  (148, 14800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Dragonair - Hail - TM07
  (148, 14800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Dragonair - Sunny Day - TM11
  (148, 14800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Dragonair - Hyper Beam - TM15
  (148, 14800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Dragonair - Light Screen - TM16
  (148, 14800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Dragonair - Safeguard - TM20
  (148, 14800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Dragonair - Iron Tail - TM23
  (148, 14800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Dragonair - Shock Wave - TM34
  (148, 14800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Dragonair - Flamethrower - TM35
  (148, 14800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Dragonair - Facade - TM42
  (148, 14800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Dragonair - Endure - TM58
  (148, 14800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Dragonair - Dragon Pulse - TM59
  (148, 14800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Dragonair - Giga Impact - TM68
  (148, 14800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Dragonair - Thunder Wave - TM73
  (148, 14800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Dragonair - Sleep Talk - TM82
  (148, 14800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Dragonair - Swagger - TM87
  (148, 14800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Dragonair - Substitute - TM90
  (148, 14800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Dragonair - Surf - TM95
  (148, 14800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Dragonair - Waterfall - TM99
  (148, 14800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 43),
  -- Dragonair - Aqua Jet - Egg
  (148, 14800, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dragonair - Dragon Breath - Egg
  (148, 14800, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dragonair - Dragon Dance - Egg
  (148, 14800, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dragonair - Dragon Rush - Egg
  (148, 14800, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dragonair - Extreme Speed - Egg
  (148, 14800, 245, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dragonair - Haze - Egg
  (148, 14800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dragonair - Mist - Egg
  (148, 14800, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dragonair - Supersonic - Egg
  (148, 14800, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dragonite - Hurricane - Starting Move
  (149, 14900, 542, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dragonite - Wing Attack - Starting Move
  (149, 14900, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dragonite - Roost - Starting Move
  (149, 14900, 355, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dragonite - Extreme Speed - Starting Move
  (149, 14900, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dragonite - Fire Punch - Starting Move
  (149, 14900, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dragonite - Thunder Punch - Starting Move
  (149, 14900, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dragonite - Wrap - Starting Move
  (149, 14900, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Dragonite - Leer - Starting Move
  (149, 14900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Dragonite - Twister - Starting Move
  (149, 14900, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Dragonite - Thunder Wave - Starting Move
  (149, 14900, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Dragonite - Hurricane - Evolution
  (149, 14900, 542, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Dragonite - Dragon Tail - Level 15
  (149, 14900, 525, 21, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Dragonite - Agility - Level 20
  (149, 14900, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Dragonite - Slam - Level 25
  (149, 14900, 21, 21, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dragonite - Aqua Tail - Level 33
  (149, 14900, 401, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Dragonite - Dragon Rush - Level 39
  (149, 14900, 407, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Dragonite - Safeguard - Level 46
  (149, 14900, 219, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Dragonite - Rain Dance - Level 53
  (149, 14900, 240, 21, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Dragonite - Dragon Dance - Level 62
  (149, 14900, 349, 21, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Dragonite - Outrage - Level 41
  (149, 14900, 200, 21, NULL, 1, 41, NULL, NULL, NULL, 20),
  -- Dragonite - Hyper Beam - Level 80
  (149, 14900, 63, 21, NULL, 1, 80, NULL, NULL, NULL, 21),
  -- Dragonite - Focus Punch - TM01
  (149, 14900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Dragonite - Dragon Claw - TM02
  (149, 14900, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 23),
  -- Dragonite - Water Pulse - TM03
  (149, 14900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Dragonite - Roar - TM05
  (149, 14900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 25),
  -- Dragonite - Hail - TM07
  (149, 14900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 26),
  -- Dragonite - Sunny Day - TM11
  (149, 14900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Dragonite - Light Screen - TM16
  (149, 14900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 31),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 32),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 33),
  -- Dragonite - Safeguard - TM20
  (149, 14900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 34),
  -- Dragonite - Iron Tail - TM23
  (149, 14900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 35),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 36),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 37),
  -- Dragonite - Earthquake - TM26
  (149, 14900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 38),
  -- Dragonite - Brick Break - TM31
  (149, 14900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 39),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 40),
  -- Dragonite - Shock Wave - TM34
  (149, 14900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 41),
  -- Dragonite - Flamethrower - TM35
  (149, 14900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 42),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 43),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 44),
  -- Dragonite - Rock Tomb - TM39
  (149, 14900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 45),
  -- Dragonite - Aerial Ace - TM40
  (149, 14900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 46),
  -- Dragonite - Facade - TM42
  (149, 14900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 47),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 48),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 49),
  -- Dragonite - Steel Wing - TM47
  (149, 14900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 50),
  -- Dragonite - Roost - TM51
  (149, 14900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 51),
  -- Dragonite - Focus Blast - TM52
  (149, 14900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 52),
  -- Dragonite - Fling - TM56
  (149, 14900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 53),
  -- Dragonite - Endure - TM58
  (149, 14900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 54),
  -- Dragonite - Dragon Pulse - TM59
  (149, 14900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 55),
  -- Dragonite - Giga Impact - TM68
  (149, 14900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 56),
  -- Dragonite - Stone Edge - TM71
  (149, 14900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 57),
  -- Dragonite - Thunder Wave - TM73
  (149, 14900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 58),
  -- Dragonite - Rock Slide - TM80
  (149, 14900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 59),
  -- Dragonite - Sleep Talk - TM82
  (149, 14900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 60),
  -- Dragonite - Bulldoze - TM83
  (149, 14900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 61),
  -- Dragonite - Swagger - TM87
  (149, 14900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Dragonite - Substitute - TM90
  (149, 14900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Dragonite - Cut - TM93
  (149, 14900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 64),
  -- Dragonite - Fly - TM94
  (149, 14900, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 65),
  -- Dragonite - Surf - TM95
  (149, 14900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 66),
  -- Dragonite - Strength - TM96
  (149, 14900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Dragonite - Defog - TM97
  (149, 14900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 68),
  -- Dragonite - Rock Smash - TM98
  (149, 14900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 69),
  -- Dragonite - Waterfall - TM99
  (149, 14900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 70),
  -- Dragonite - Aqua Jet - Egg
  (149, 14900, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dragonite - Dragon Breath - Egg
  (149, 14900, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Dragonite - Dragon Dance - Egg
  (149, 14900, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Dragonite - Dragon Rush - Egg
  (149, 14900, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Dragonite - Extreme Speed - Egg
  (149, 14900, 245, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Dragonite - Haze - Egg
  (149, 14900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Dragonite - Mist - Egg
  (149, 14900, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Dragonite - Supersonic - Egg
  (149, 14900, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mewtwo - Life Dew - Starting Move
  (150, 15000, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mewtwo - Laser Focus - Starting Move
  (150, 15000, 673, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mewtwo - Disable - Starting Move
  (150, 15000, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mewtwo - Confusion - Starting Move
  (150, 15000, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mewtwo - Swift - Starting Move
  (150, 15000, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mewtwo - Ancient Power - Level 8
  (150, 15000, 246, 21, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Mewtwo - Psycho Cut - Level 16
  (150, 15000, 427, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mewtwo - Safeguard - Level 24
  (150, 15000, 219, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 32
  (150, 15000, 133, 21, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Mewtwo - Aura Sphere - Level 40
  (150, 15000, 396, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mewtwo - Psychic - Level 48
  (150, 15000, 94, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Mewtwo - Power Swap - Level 56
  (150, 15000, 384, 21, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Mewtwo - Guard Swap - Level 56
  (150, 15000, 385, 21, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Mewtwo - Mist - Level 64
  (150, 15000, 54, 21, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Mewtwo - Psystrike - Level 72
  (150, 15000, 540, 21, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Mewtwo - Recover - Level 80
  (150, 15000, 105, 21, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Mewtwo - Future Sight - Level 88
  (150, 15000, 248, 21, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Mewtwo - Focus Punch - TM01
  (150, 15000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Mewtwo - Water Pulse - TM03
  (150, 15000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Mewtwo - Calm Mind - TM04
  (150, 15000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Mewtwo - Hail - TM07
  (150, 15000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Mewtwo - Bulk Up - TM08
  (150, 15000, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 22),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Mewtwo - Taunt - TM12
  (150, 15000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Mewtwo - Light Screen - TM16
  (150, 15000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Mewtwo - Safeguard - TM20
  (150, 15000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 32),
  -- Mewtwo - Iron Tail - TM23
  (150, 15000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 34),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 35),
  -- Mewtwo - Earthquake - TM26
  (150, 15000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 36),
  -- Mewtwo - Low Sweep - TM27
  (150, 15000, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 37),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 38),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 39),
  -- Mewtwo - Brick Break - TM31
  (150, 15000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 40),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 41),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 42),
  -- Mewtwo - Shock Wave - TM34
  (150, 15000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 43),
  -- Mewtwo - Flamethrower - TM35
  (150, 15000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 44),
  -- Mewtwo - Sandstorm - TM37
  (150, 15000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 45),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 46),
  -- Mewtwo - Rock Tomb - TM39
  (150, 15000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 47),
  -- Mewtwo - Aerial Ace - TM40
  (150, 15000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 48),
  -- Mewtwo - Torment - TM41
  (150, 15000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 49),
  -- Mewtwo - Facade - TM42
  (150, 15000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 50),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 51),
  -- Mewtwo - Skill Swap - TM48
  (150, 15000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 52),
  -- Mewtwo - Focus Blast - TM52
  (150, 15000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 53),
  -- Mewtwo - Energy Ball - TM53
  (150, 15000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 54),
  -- Mewtwo - Fling - TM56
  (150, 15000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 55),
  -- Mewtwo - Charge Beam - TM57
  (150, 15000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 56),
  -- Mewtwo - Endure - TM58
  (150, 15000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 57),
  -- Mewtwo - Drain Punch - TM60
  (150, 15000, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 58),
  -- Mewtwo - Will-O-Wisp - TM61
  (150, 15000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 59),
  -- Mewtwo - Nasty Plot - TM63
  (150, 15000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 60),
  -- Mewtwo - Recycle - TM67
  (150, 15000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 61),
  -- Mewtwo - Giga Impact - TM68
  (150, 15000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 62),
  -- Mewtwo - Flash - TM70
  (150, 15000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 63),
  -- Mewtwo - Stone Edge - TM71
  (150, 15000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 64),
  -- Mewtwo - Avalanche - TM72
  (150, 15000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 65),
  -- Mewtwo - Thunder Wave - TM73
  (150, 15000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 66),
  -- Mewtwo - Psych Up - TM77
  (150, 15000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 67),
  -- Mewtwo - Rock Slide - TM80
  (150, 15000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 68),
  -- Mewtwo - Sleep Talk - TM82
  (150, 15000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 69),
  -- Mewtwo - Bulldoze - TM83
  (150, 15000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 70),
  -- Mewtwo - Poison Jab - TM84
  (150, 15000, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 71),
  -- Mewtwo - Dream Eater - TM85
  (150, 15000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 72),
  -- Mewtwo - Grass Knot - TM86
  (150, 15000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 73),
  -- Mewtwo - Swagger - TM87
  (150, 15000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 74),
  -- Mewtwo - Substitute - TM90
  (150, 15000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 75),
  -- Mewtwo - Trick Room - TM92
  (150, 15000, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 76),
  -- Mewtwo - Strength - TM96
  (150, 15000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 77),
  -- Mewtwo - Rock Smash - TM98
  (150, 15000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 78),
  -- Mewtwo - Rock Climb - TM100
  (150, 15000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 79),
  -- Mew - Pound - Starting Move
  (151, 15100, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mew - Reflect Type - Starting Move
  (151, 15100, 513, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mew - Amnesia - Level 10
  (151, 15100, 133, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mew - Baton Pass - Level 20
  (151, 15100, 226, 21, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mew - Ancient Power - Level 30
  (151, 15100, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Mew - Life Dew - Level 40
  (151, 15100, 791, 21, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Mew - Nasty Plot - Level 50
  (151, 15100, 417, 21, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Mew - Metronome - Level 60
  (151, 15100, 118, 21, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Mew - Imprison - Level 70
  (151, 15100, 286, 21, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Mew - Transform - Level 80
  (151, 15100, 144, 21, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Mew - Aura Sphere - Level 90
  (151, 15100, 396, 21, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Mew - Psychic - Level 100
  (151, 15100, 94, 21, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Mew - Focus Punch - TM01
  (151, 15100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Mew - Dragon Claw - TM02
  (151, 15100, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Mew - Water Pulse - TM03
  (151, 15100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Mew - Calm Mind - TM04
  (151, 15100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Mew - Roar - TM05
  (151, 15100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 18),
  -- Mew - Hail - TM07
  (151, 15100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Mew - Bulk Up - TM08
  (151, 15100, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 20),
  -- Mew - Bullet Seed - TM09
  (151, 15100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Mew - Work Up - TM10
  (151, 15100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Mew - Taunt - TM12
  (151, 15100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Mew - Light Screen - TM16
  (151, 15100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Mew - Protect - TM17
  (151, 15100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Mew - Giga Drain - TM19
  (151, 15100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 31),
  -- Mew - Safeguard - TM20
  (151, 15100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 32),
  -- Mew - Dazzling Gleam - TM21
  (151, 15100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 33),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 34),
  -- Mew - Iron Tail - TM23
  (151, 15100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 35),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 36),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 37),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 38),
  -- Mew - Low Sweep - TM27
  (151, 15100, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 39),
  -- Mew - Dig - TM28
  (151, 15100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 40),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 41),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 42),
  -- Mew - Brick Break - TM31
  (151, 15100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 43),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 44),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 45),
  -- Mew - Shock Wave - TM34
  (151, 15100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 46),
  -- Mew - Flamethrower - TM35
  (151, 15100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 47),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 48),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 49),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 50),
  -- Mew - Rock Tomb - TM39
  (151, 15100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 51),
  -- Mew - Aerial Ace - TM40
  (151, 15100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 52),
  -- Mew - Torment - TM41
  (151, 15100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 53),
  -- Mew - Facade - TM42
  (151, 15100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 54),
  -- Mew - Volt Switch - TM43
  (151, 15100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 55),
  -- Mew - Rest - TM44
  (151, 15100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 56),
  -- Mew - Attract - TM45
  (151, 15100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 57),
  -- Mew - Thief - TM46
  (151, 15100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 58),
  -- Mew - Steel Wing - TM47
  (151, 15100, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 59),
  -- Mew - Skill Swap - TM48
  (151, 15100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 60),
  -- Mew - Scald - TM49
  (151, 15100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 61),
  -- Mew - Overheat - TM50
  (151, 15100, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 62),
  -- Mew - Roost - TM51
  (151, 15100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 63),
  -- Mew - Focus Blast - TM52
  (151, 15100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 64),
  -- Mew - Energy Ball - TM53
  (151, 15100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 65),
  -- Mew - False Swipe - TM54
  (151, 15100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 66),
  -- Mew - Brine - TM55
  (151, 15100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 67),
  -- Mew - Fling - TM56
  (151, 15100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 68),
  -- Mew - Charge Beam - TM57
  (151, 15100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 69),
  -- Mew - Endure - TM58
  (151, 15100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 70),
  -- Mew - Dragon Pulse - TM59
  (151, 15100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 71),
  -- Mew - Drain Punch - TM60
  (151, 15100, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 72),
  -- Mew - Will-O-Wisp - TM61
  (151, 15100, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 73),
  -- Mew - Bug Buzz - TM62
  (151, 15100, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 74),
  -- Mew - Nasty Plot - TM63
  (151, 15100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 75),
  -- Mew - Explosion - TM64
  (151, 15100, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 76),
  -- Mew - Shadow Claw - TM65
  (151, 15100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 77),
  -- Mew - Payback - TM66
  (151, 15100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 78),
  -- Mew - Recycle - TM67
  (151, 15100, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 79),
  -- Mew - Giga Impact - TM68
  (151, 15100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 80),
  -- Mew - Rock Polish - TM69
  (151, 15100, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 81),
  -- Mew - Flash - TM70
  (151, 15100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 82),
  -- Mew - Stone Edge - TM71
  (151, 15100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 83),
  -- Mew - Avalanche - TM72
  (151, 15100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 84),
  -- Mew - Thunder Wave - TM73
  (151, 15100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 85),
  -- Mew - Gyro Ball - TM74
  (151, 15100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 86),
  -- Mew - Swords Dance - TM75
  (151, 15100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 87),
  -- Mew - Stealth Rock - TM76
  (151, 15100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 88),
  -- Mew - Psych Up - TM77
  (151, 15100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 89),
  -- Mew - Snarl - TM78
  (151, 15100, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 90),
  -- Mew - Dark Pulse - TM79
  (151, 15100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 91),
  -- Mew - Rock Slide - TM80
  (151, 15100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 92),
  -- Mew - X-Scissor - TM81
  (151, 15100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 93),
  -- Mew - Sleep Talk - TM82
  (151, 15100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 94),
  -- Mew - Bulldoze - TM83
  (151, 15100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 95),
  -- Mew - Poison Jab - TM84
  (151, 15100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 96),
  -- Mew - Dream Eater - TM85
  (151, 15100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 97),
  -- Mew - Grass Knot - TM86
  (151, 15100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 98),
  -- Mew - Swagger - TM87
  (151, 15100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 99),
  -- Mew - Pluck - TM88
  (151, 15100, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 100),
  -- Mew - U-turn - TM89
  (151, 15100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 101),
  -- Mew - Substitute - TM90
  (151, 15100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 102),
  -- Mew - Flash Cannon - TM91
  (151, 15100, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 103),
  -- Mew - Trick Room - TM92
  (151, 15100, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 104),
  -- Mew - Cut - TM93
  (151, 15100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 105),
  -- Mew - Fly - TM94
  (151, 15100, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 106),
  -- Mew - Surf - TM95
  (151, 15100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 107),
  -- Mew - Strength - TM96
  (151, 15100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 108),
  -- Mew - Defog - TM97
  (151, 15100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 109),
  -- Mew - Rock Smash - TM98
  (151, 15100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 110),
  -- Mew - Waterfall - TM99
  (151, 15100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 111),
  -- Mew - Rock Climb - TM100
  (151, 15100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 112);
