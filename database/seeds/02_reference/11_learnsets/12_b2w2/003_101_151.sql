-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black 2 / White 2
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black 2 / White 2 Pokedex learnset pages, Serebii Black 2 / White 2
-- Move Tutor pages, and PokemonDB Generation 5 Black 2 / White 2 learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black 2 / White 2
-- Pokémon: #101-#151
-- Rows: 3323
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black 2 / White 2 seed.
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
  -- Electrode - Charge - Level 1
  (101, 10100, 268, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Spark - Level 1
  (101, 10100, 209, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Tackle - Level 5
  (101, 10100, 33, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 8
  (101, 10100, 49, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Electrode - Spark - Level 12
  (101, 10100, 209, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Electrode - Rollout - Level 15
  (101, 10100, 205, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Electrode - Screech - Level 19
  (101, 10100, 103, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Electrode - Charge Beam - Level 22
  (101, 10100, 451, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Electrode - Light Screen - Level 26
  (101, 10100, 113, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Electrode - Electro Ball - Level 29
  (101, 10100, 486, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Electrode - Self-Destruct - Level 35
  (101, 10100, 120, 12, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Electrode - Swift - Level 40
  (101, 10100, 129, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Electrode - Magnet Rise - Level 46
  (101, 10100, 393, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Electrode - Gyro Ball - Level 51
  (101, 10100, 360, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Electrode - Explosion - Level 57
  (101, 10100, 153, 12, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Electrode - Mirror Coat - Level 62
  (101, 10100, 243, 12, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Electrode - Hidden Power - TM10
  (101, 10100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Electrode - Taunt - TM12
  (101, 10100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Electrode - Light Screen - TM16
  (101, 10100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Electrode - Frustration - TM21
  (101, 10100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Electrode - Return - TM27
  (101, 10100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Electrode - Torment - TM41
  (101, 10100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Electrode - Facade - TM42
  (101, 10100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Electrode - Thief - TM46
  (101, 10100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Electrode - Round - TM48
  (101, 10100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Electrode - Charge Beam - TM57
  (101, 10100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 36),
  -- Electrode - Explosion - TM64
  (101, 10100, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 37),
  -- Electrode - Giga Impact - TM68
  (101, 10100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Electrode - Flash - TM70
  (101, 10100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Electrode - Volt Switch - TM72
  (101, 10100, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 40),
  -- Electrode - Thunder Wave - TM73
  (101, 10100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 41),
  -- Electrode - Gyro Ball - TM74
  (101, 10100, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 42),
  -- Electrode - Swagger - TM87
  (101, 10100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Electrode - Substitute - TM90
  (101, 10100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Electrode - Wild Charge - TM93
  (101, 10100, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 45),
  -- Electrode - Foul Play - Move Tutor
  (101, 10100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Electrode - Magic Coat - Move Tutor
  (101, 10100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Electrode - Magnet Rise - Move Tutor
  (101, 10100, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Electrode - Signal Beam - Move Tutor
  (101, 10100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Electrode - Sleep Talk - Move Tutor
  (101, 10100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Electrode - Snore - Move Tutor
  (101, 10100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Uproar - Level 1
  (102, 10200, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggcute - Reflect - Level 7
  (102, 10200, 115, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Exeggcute - Leech Seed - Level 11
  (102, 10200, 73, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Exeggcute - Bullet Seed - Level 17
  (102, 10200, 331, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggcute - Stun Spore - Level 19
  (102, 10200, 78, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Exeggcute - Poison Powder - Level 21
  (102, 10200, 77, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Exeggcute - Sleep Powder - Level 23
  (102, 10200, 79, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Exeggcute - Confusion - Level 27
  (102, 10200, 93, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Exeggcute - Worry Seed - Level 33
  (102, 10200, 388, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Exeggcute - Natural Gift - Level 37
  (102, 10200, 363, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 43
  (102, 10200, 76, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Exeggcute - Extrasensory - Level 47
  (102, 10200, 326, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Exeggcute - Bestow - Level 53
  (102, 10200, 516, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Exeggcute - Hidden Power - TM10
  (102, 10200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Exeggcute - Light Screen - TM16
  (102, 10200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Exeggcute - Telekinesis - TM19
  (102, 10200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Exeggcute - Frustration - TM21
  (102, 10200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Exeggcute - Return - TM27
  (102, 10200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 25),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 27),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 28),
  -- Exeggcute - Facade - TM42
  (102, 10200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Exeggcute - Round - TM48
  (102, 10200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Exeggcute - Energy Ball - TM53
  (102, 10200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 34),
  -- Exeggcute - Explosion - TM64
  (102, 10200, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 35),
  -- Exeggcute - Flash - TM70
  (102, 10200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Exeggcute - Swords Dance - TM75
  (102, 10200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 37),
  -- Exeggcute - Psych Up - TM77
  (102, 10200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Exeggcute - Dream Eater - TM85
  (102, 10200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Exeggcute - Grass Knot - TM86
  (102, 10200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 40),
  -- Exeggcute - Swagger - TM87
  (102, 10200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Exeggcute - Substitute - TM90
  (102, 10200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Exeggcute - Trick Room - TM92
  (102, 10200, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 43),
  -- Exeggcute - Strength - HM04
  (102, 10200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Exeggcute - Ancient Power - Egg Move
  (102, 10200, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Exeggcute - Block - Egg Move
  (102, 10200, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Exeggcute - Curse - Egg Move
  (102, 10200, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Exeggcute - Giga Drain - Egg Move
  (102, 10200, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Exeggcute - Ingrain - Egg Move
  (102, 10200, 275, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Exeggcute - Leaf Storm - Egg Move
  (102, 10200, 437, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggcute - Lucky Chant - Egg Move
  (102, 10200, 381, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Exeggcute - Moonlight - Egg Move
  (102, 10200, 236, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Exeggcute - Natural Gift - Egg Move
  (102, 10200, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Exeggcute - Nature Power - Egg Move
  (102, 10200, 267, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Exeggcute - Power Swap - Egg Move
  (102, 10200, 384, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Exeggcute - Skill Swap - Egg Move
  (102, 10200, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Exeggcute - Synthesis - Egg Move
  (102, 10200, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Exeggcute - Block - Move Tutor
  (102, 10200, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Exeggcute - Giga Drain - Move Tutor
  (102, 10200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Exeggcute - Gravity - Move Tutor
  (102, 10200, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Exeggcute - Seed Bomb - Move Tutor
  (102, 10200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Exeggcute - Skill Swap - Move Tutor
  (102, 10200, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Exeggcute - Sleep Talk - Move Tutor
  (102, 10200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Exeggcute - Snore - Move Tutor
  (102, 10200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Exeggcute - Synthesis - Move Tutor
  (102, 10200, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Exeggcute - Uproar - Move Tutor
  (102, 10200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Exeggcute - Worry Seed - Move Tutor
  (102, 10200, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Exeggutor - Seed Bomb - Level 1
  (103, 10300, 402, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Stomp - Level 1
  (103, 10300, 23, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Psyshock - Level 17
  (103, 10300, 473, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Exeggutor - Egg Bomb - Level 27
  (103, 10300, 121, 12, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Exeggutor - Wood Hammer - Level 37
  (103, 10300, 452, 12, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Exeggutor - Leaf Storm - Level 47
  (103, 10300, 437, 12, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Exeggutor - Psyshock - TM03
  (103, 10300, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 10),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 11),
  -- Exeggutor - Hidden Power - TM10
  (103, 10300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 12),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 13),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 14),
  -- Exeggutor - Light Screen - TM16
  (103, 10300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 15),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Exeggutor - Telekinesis - TM19
  (103, 10300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 17),
  -- Exeggutor - Frustration - TM21
  (103, 10300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 19),
  -- Exeggutor - Return - TM27
  (103, 10300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 21),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 23),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 24),
  -- Exeggutor - Facade - TM42
  (103, 10300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Exeggutor - Round - TM48
  (103, 10300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Exeggutor - Energy Ball - TM53
  (103, 10300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Exeggutor - Explosion - TM64
  (103, 10300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 31),
  -- Exeggutor - Giga Impact - TM68
  (103, 10300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 32),
  -- Exeggutor - Flash - TM70
  (103, 10300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Exeggutor - Swords Dance - TM75
  (103, 10300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 34),
  -- Exeggutor - Psych Up - TM77
  (103, 10300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 35),
  -- Exeggutor - Dream Eater - TM85
  (103, 10300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 36),
  -- Exeggutor - Grass Knot - TM86
  (103, 10300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 37),
  -- Exeggutor - Swagger - TM87
  (103, 10300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Exeggutor - Substitute - TM90
  (103, 10300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Exeggutor - Trick Room - TM92
  (103, 10300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 40),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Exeggutor - Block - Move Tutor
  (103, 10300, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Exeggutor - Giga Drain - Move Tutor
  (103, 10300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Exeggutor - Gravity - Move Tutor
  (103, 10300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Exeggutor - Low Kick - Move Tutor
  (103, 10300, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Exeggutor - Seed Bomb - Move Tutor
  (103, 10300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Exeggutor - Skill Swap - Move Tutor
  (103, 10300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Exeggutor - Sleep Talk - Move Tutor
  (103, 10300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Exeggutor - Snore - Move Tutor
  (103, 10300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Exeggutor - Synthesis - Move Tutor
  (103, 10300, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Exeggutor - Worry Seed - Move Tutor
  (103, 10300, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Exeggutor - Zen Headbutt - Move Tutor
  (103, 10300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 3
  (104, 10400, 39, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Cubone - Bone Club - Level 7
  (104, 10400, 125, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cubone - Headbutt - Level 11
  (104, 10400, 29, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Cubone - Leer - Level 13
  (104, 10400, 43, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cubone - Focus Energy - Level 17
  (104, 10400, 116, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cubone - Bonemerang - Level 21
  (104, 10400, 155, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cubone - Rage - Level 23
  (104, 10400, 99, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Cubone - False Swipe - Level 27
  (104, 10400, 206, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Cubone - Thrash - Level 31
  (104, 10400, 37, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Cubone - Fling - Level 33
  (104, 10400, 374, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Cubone - Bone Rush - Level 37
  (104, 10400, 198, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Cubone - Endeavor - Level 41
  (104, 10400, 283, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Cubone - Double-Edge - Level 43
  (104, 10400, 38, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Cubone - Retaliate - Level 47
  (104, 10400, 514, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Cubone - Hidden Power - TM10
  (104, 10400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Cubone - Frustration - TM21
  (104, 10400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Cubone - Smack Down - TM23
  (104, 10400, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Cubone - Return - TM27
  (104, 10400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Cubone - Brick Break - TM31
  (104, 10400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Cubone - Flamethrower - TM35
  (104, 10400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 30),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 31),
  -- Cubone - Rock Tomb - TM39
  (104, 10400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Cubone - Aerial Ace - TM40
  (104, 10400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Cubone - Facade - TM42
  (104, 10400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Cubone - Round - TM48
  (104, 10400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Cubone - Echoed Voice - TM49
  (104, 10400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 39),
  -- Cubone - False Swipe - TM54
  (104, 10400, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 40),
  -- Cubone - Fling - TM56
  (104, 10400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Cubone - Incinerate - TM59
  (104, 10400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Cubone - Retaliate - TM67
  (104, 10400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 43),
  -- Cubone - Swords Dance - TM75
  (104, 10400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 44),
  -- Cubone - Bulldoze - TM78
  (104, 10400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 45),
  -- Cubone - Rock Slide - TM80
  (104, 10400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 46),
  -- Cubone - Swagger - TM87
  (104, 10400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Cubone - Substitute - TM90
  (104, 10400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Cubone - Rock Smash - TM94
  (104, 10400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Cubone - Ancient Power - Egg Move
  (104, 10400, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cubone - Belly Drum - Egg Move
  (104, 10400, 187, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cubone - Chip Away - Egg Move
  (104, 10400, 498, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cubone - Detect - Egg Move
  (104, 10400, 197, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cubone - Double Kick - Egg Move
  (104, 10400, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cubone - Endure - Egg Move
  (104, 10400, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cubone - Iron Head - Egg Move
  (104, 10400, 442, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cubone - Perish Song - Egg Move
  (104, 10400, 195, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cubone - Screech - Egg Move
  (104, 10400, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cubone - Skull Bash - Egg Move
  (104, 10400, 130, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cubone - Earth Power - Move Tutor
  (104, 10400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Cubone - Endeavor - Move Tutor
  (104, 10400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Cubone - Fire Punch - Move Tutor
  (104, 10400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Cubone - Icy Wind - Move Tutor
  (104, 10400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Cubone - Iron Defense - Move Tutor
  (104, 10400, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Cubone - Iron Head - Move Tutor
  (104, 10400, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Cubone - Iron Tail - Move Tutor
  (104, 10400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Cubone - Knock Off - Move Tutor
  (104, 10400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Cubone - Low Kick - Move Tutor
  (104, 10400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Cubone - Sleep Talk - Move Tutor
  (104, 10400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Cubone - Snore - Move Tutor
  (104, 10400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Cubone - Stealth Rock - Move Tutor
  (104, 10400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Cubone - Thunder Punch - Move Tutor
  (104, 10400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Cubone - Uproar - Move Tutor
  (104, 10400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Headbutt - Level 1
  (105, 10500, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 3
  (105, 10500, 39, 12, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Marowak - Bone Club - Level 7
  (105, 10500, 125, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Marowak - Headbutt - Level 11
  (105, 10500, 29, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 13
  (105, 10500, 43, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 17
  (105, 10500, 116, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Marowak - Bonemerang - Level 21
  (105, 10500, 155, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Marowak - Rage - Level 23
  (105, 10500, 99, 12, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Marowak - False Swipe - Level 27
  (105, 10500, 206, 12, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 33
  (105, 10500, 37, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Marowak - Fling - Level 37
  (105, 10500, 374, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Marowak - Bone Rush - Level 43
  (105, 10500, 198, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Marowak - Endeavor - Level 49
  (105, 10500, 283, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Marowak - Double-Edge - Level 53
  (105, 10500, 38, 12, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Marowak - Retaliate - Level 59
  (105, 10500, 514, 12, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Marowak - Hidden Power - TM10
  (105, 10500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Marowak - Frustration - TM21
  (105, 10500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Marowak - Smack Down - TM23
  (105, 10500, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 27),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Marowak - Return - TM27
  (105, 10500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Marowak - Brick Break - TM31
  (105, 10500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Marowak - Flamethrower - TM35
  (105, 10500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Marowak - Rock Tomb - TM39
  (105, 10500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Marowak - Aerial Ace - TM40
  (105, 10500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Marowak - Facade - TM42
  (105, 10500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Marowak - Round - TM48
  (105, 10500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Marowak - Echoed Voice - TM49
  (105, 10500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 43),
  -- Marowak - Focus Blast - TM52
  (105, 10500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Marowak - False Swipe - TM54
  (105, 10500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 45),
  -- Marowak - Fling - TM56
  (105, 10500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Marowak - Incinerate - TM59
  (105, 10500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 47),
  -- Marowak - Retaliate - TM67
  (105, 10500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 48),
  -- Marowak - Giga Impact - TM68
  (105, 10500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Marowak - Stone Edge - TM71
  (105, 10500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 50),
  -- Marowak - Swords Dance - TM75
  (105, 10500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 51),
  -- Marowak - Bulldoze - TM78
  (105, 10500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Marowak - Rock Slide - TM80
  (105, 10500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Marowak - Swagger - TM87
  (105, 10500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 54),
  -- Marowak - Substitute - TM90
  (105, 10500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Marowak - Rock Smash - TM94
  (105, 10500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 56),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 57),
  -- Marowak - Earth Power - Move Tutor
  (105, 10500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Marowak - Endeavor - Move Tutor
  (105, 10500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Marowak - Fire Punch - Move Tutor
  (105, 10500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Marowak - Icy Wind - Move Tutor
  (105, 10500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Marowak - Iron Defense - Move Tutor
  (105, 10500, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Marowak - Iron Head - Move Tutor
  (105, 10500, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Marowak - Iron Tail - Move Tutor
  (105, 10500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Marowak - Knock Off - Move Tutor
  (105, 10500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Marowak - Low Kick - Move Tutor
  (105, 10500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Marowak - Outrage - Move Tutor
  (105, 10500, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Marowak - Sleep Talk - Move Tutor
  (105, 10500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Marowak - Snore - Move Tutor
  (105, 10500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Marowak - Stealth Rock - Move Tutor
  (105, 10500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Marowak - Thunder Punch - Move Tutor
  (105, 10500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Marowak - Uproar - Move Tutor
  (105, 10500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Hitmonlee - Revenge - Level 1
  (106, 10600, 279, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Meditate - Level 5
  (106, 10600, 96, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hitmonlee - Rolling Kick - Level 9
  (106, 10600, 27, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Hitmonlee - Jump Kick - Level 13
  (106, 10600, 26, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Hitmonlee - Brick Break - Level 17
  (106, 10600, 280, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Hitmonlee - Focus Energy - Level 21
  (106, 10600, 116, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hitmonlee - Feint - Level 25
  (106, 10600, 364, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hitmonlee - High Jump Kick - Level 29
  (106, 10600, 136, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Hitmonlee - Mind Reader - Level 33
  (106, 10600, 170, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Hitmonlee - Foresight - Level 37
  (106, 10600, 193, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Hitmonlee - Wide Guard - Level 41
  (106, 10600, 469, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Hitmonlee - Blaze Kick - Level 45
  (106, 10600, 299, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Hitmonlee - Endure - Level 49
  (106, 10600, 203, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Hitmonlee - Mega Kick - Level 53
  (106, 10600, 25, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Hitmonlee - Close Combat - Level 57
  (106, 10600, 370, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Hitmonlee - Reversal - Level 61
  (106, 10600, 179, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Hitmonlee - Bulk Up - TM08
  (106, 10600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Hitmonlee - Hidden Power - TM10
  (106, 10600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Hitmonlee - Rain Dance - TM18
  (106, 10600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Hitmonlee - Frustration - TM21
  (106, 10600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Hitmonlee - Earthquake - TM26
  (106, 10600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Hitmonlee - Return - TM27
  (106, 10600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Hitmonlee - Brick Break - TM31
  (106, 10600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Hitmonlee - Rock Tomb - TM39
  (106, 10600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Hitmonlee - Facade - TM42
  (106, 10600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Hitmonlee - Low Sweep - TM47
  (106, 10600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 34),
  -- Hitmonlee - Round - TM48
  (106, 10600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Hitmonlee - Focus Blast - TM52
  (106, 10600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 36),
  -- Hitmonlee - Fling - TM56
  (106, 10600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 37),
  -- Hitmonlee - Retaliate - TM67
  (106, 10600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Hitmonlee - Stone Edge - TM71
  (106, 10600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 39),
  -- Hitmonlee - Bulldoze - TM78
  (106, 10600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 40),
  -- Hitmonlee - Rock Slide - TM80
  (106, 10600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 41),
  -- Hitmonlee - Work Up - TM83
  (106, 10600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 42),
  -- Hitmonlee - Poison Jab - TM84
  (106, 10600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 43),
  -- Hitmonlee - Swagger - TM87
  (106, 10600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Hitmonlee - Substitute - TM90
  (106, 10600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Hitmonlee - Rock Smash - TM94
  (106, 10600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Hitmonlee - Bullet Punch - Egg Move
  (106, 10600, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hitmonlee - Counter - Egg Move
  (106, 10600, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hitmonlee - Endure - Egg Move
  (106, 10600, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hitmonlee - Feint - Egg Move
  (106, 10600, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hitmonlee - Helping Hand - Egg Move
  (106, 10600, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hitmonlee - High Jump Kick - Egg Move
  (106, 10600, 136, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hitmonlee - Mach Punch - Egg Move
  (106, 10600, 183, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmonlee - Mind Reader - Egg Move
  (106, 10600, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmonlee - Pursuit - Egg Move
  (106, 10600, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmonlee - Rapid Spin - Egg Move
  (106, 10600, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hitmonlee - Vacuum Wave - Egg Move
  (106, 10600, 410, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hitmonlee - Bounce - Move Tutor
  (106, 10600, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Hitmonlee - Covet - Move Tutor
  (106, 10600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Hitmonlee - Helping Hand - Move Tutor
  (106, 10600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Hitmonlee - Knock Off - Move Tutor
  (106, 10600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Hitmonlee - Low Kick - Move Tutor
  (106, 10600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Hitmonlee - Role Play - Move Tutor
  (106, 10600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Hitmonlee - Sleep Talk - Move Tutor
  (106, 10600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Hitmonlee - Snore - Move Tutor
  (106, 10600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Hitmonlee - Superpower - Move Tutor
  (106, 10600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Hitmonchan - Revenge - Level 1
  (107, 10700, 279, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Agility - Level 6
  (107, 10700, 97, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hitmonchan - Pursuit - Level 11
  (107, 10700, 228, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Hitmonchan - Mach Punch - Level 16
  (107, 10700, 183, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hitmonchan - Bullet Punch - Level 16
  (107, 10700, 418, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hitmonchan - Feint - Level 21
  (107, 10700, 364, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hitmonchan - Vacuum Wave - Level 26
  (107, 10700, 410, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Hitmonchan - Quick Guard - Level 31
  (107, 10700, 501, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Hitmonchan - Thunder Punch - Level 36
  (107, 10700, 9, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Hitmonchan - Ice Punch - Level 36
  (107, 10700, 8, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hitmonchan - Fire Punch - Level 36
  (107, 10700, 7, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Hitmonchan - Sky Uppercut - Level 41
  (107, 10700, 327, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Hitmonchan - Mega Punch - Level 46
  (107, 10700, 5, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Hitmonchan - Detect - Level 51
  (107, 10700, 197, 12, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Hitmonchan - Focus Punch - Level 56
  (107, 10700, 264, 12, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Hitmonchan - Counter - Level 61
  (107, 10700, 68, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Hitmonchan - Close Combat - Level 66
  (107, 10700, 370, 12, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Hitmonchan - Bulk Up - TM08
  (107, 10700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 20),
  -- Hitmonchan - Hidden Power - TM10
  (107, 10700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Hitmonchan - Rain Dance - TM18
  (107, 10700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Hitmonchan - Frustration - TM21
  (107, 10700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Hitmonchan - Earthquake - TM26
  (107, 10700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Hitmonchan - Return - TM27
  (107, 10700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Hitmonchan - Brick Break - TM31
  (107, 10700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 28),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Hitmonchan - Rock Tomb - TM39
  (107, 10700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Hitmonchan - Facade - TM42
  (107, 10700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Hitmonchan - Low Sweep - TM47
  (107, 10700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 35),
  -- Hitmonchan - Round - TM48
  (107, 10700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Hitmonchan - Focus Blast - TM52
  (107, 10700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 37),
  -- Hitmonchan - Fling - TM56
  (107, 10700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Hitmonchan - Retaliate - TM67
  (107, 10700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 39),
  -- Hitmonchan - Stone Edge - TM71
  (107, 10700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 40),
  -- Hitmonchan - Bulldoze - TM78
  (107, 10700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Hitmonchan - Rock Slide - TM80
  (107, 10700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Hitmonchan - Work Up - TM83
  (107, 10700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 43),
  -- Hitmonchan - Swagger - TM87
  (107, 10700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Hitmonchan - Substitute - TM90
  (107, 10700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Hitmonchan - Rock Smash - TM94
  (107, 10700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Hitmonchan - Covet - Move Tutor
  (107, 10700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Hitmonchan - Drain Punch - Move Tutor
  (107, 10700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Hitmonchan - Fire Punch - Move Tutor
  (107, 10700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Hitmonchan - Helping Hand - Move Tutor
  (107, 10700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Hitmonchan - Ice Punch - Move Tutor
  (107, 10700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Hitmonchan - Low Kick - Move Tutor
  (107, 10700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Hitmonchan - Role Play - Move Tutor
  (107, 10700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Hitmonchan - Sleep Talk - Move Tutor
  (107, 10700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Hitmonchan - Snore - Move Tutor
  (107, 10700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Hitmonchan - Thunder Punch - Move Tutor
  (107, 10700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 5
  (108, 10800, 48, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickitung - Defense Curl - Level 9
  (108, 10800, 111, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickitung - Knock Off - Level 13
  (108, 10800, 282, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 17
  (108, 10800, 35, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickitung - Stomp - Level 21
  (108, 10800, 23, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickitung - Disable - Level 25
  (108, 10800, 50, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickitung - Slam - Level 29
  (108, 10800, 21, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickitung - Rollout - Level 33
  (108, 10800, 205, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickitung - Chip Away - Level 37
  (108, 10800, 498, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickitung - Me First - Level 41
  (108, 10800, 382, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickitung - Refresh - Level 45
  (108, 10800, 287, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickitung - Screech - Level 49
  (108, 10800, 103, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickitung - Power Whip - Level 53
  (108, 10800, 438, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickitung - Wring Out - Level 57
  (108, 10800, 378, 12, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Lickitung - Hidden Power - TM10
  (108, 10800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Lickitung - Frustration - TM21
  (108, 10800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Lickitung - Solar Beam - TM22
  (108, 10800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 25),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 26),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 27),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Lickitung - Return - TM27
  (108, 10800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Lickitung - Dig - TM28
  (108, 10800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Lickitung - Brick Break - TM31
  (108, 10800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Lickitung - Flamethrower - TM35
  (108, 10800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 35),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 36),
  -- Lickitung - Rock Tomb - TM39
  (108, 10800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Lickitung - Facade - TM42
  (108, 10800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Lickitung - Round - TM48
  (108, 10800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Lickitung - Fling - TM56
  (108, 10800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Lickitung - Incinerate - TM59
  (108, 10800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 44),
  -- Lickitung - Retaliate - TM67
  (108, 10800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 45),
  -- Lickitung - Giga Impact - TM68
  (108, 10800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Lickitung - Swords Dance - TM75
  (108, 10800, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 47),
  -- Lickitung - Psych Up - TM77
  (108, 10800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 48),
  -- Lickitung - Bulldoze - TM78
  (108, 10800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Lickitung - Rock Slide - TM80
  (108, 10800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Lickitung - Dragon Tail - TM82
  (108, 10800, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 51),
  -- Lickitung - Work Up - TM83
  (108, 10800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 52),
  -- Lickitung - Dream Eater - TM85
  (108, 10800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 53),
  -- Lickitung - Swagger - TM87
  (108, 10800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 54),
  -- Lickitung - Substitute - TM90
  (108, 10800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Lickitung - Rock Smash - TM94
  (108, 10800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 56),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 57),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 58),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 59),
  -- Lickitung - Amnesia - Egg Move
  (108, 10800, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lickitung - Belly Drum - Egg Move
  (108, 10800, 187, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lickitung - Body Slam - Egg Move
  (108, 10800, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lickitung - Curse - Egg Move
  (108, 10800, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lickitung - Hammer Arm - Egg Move
  (108, 10800, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lickitung - Magnitude - Egg Move
  (108, 10800, 222, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lickitung - Muddy Water - Egg Move
  (108, 10800, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lickitung - Sleep Talk - Egg Move
  (108, 10800, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lickitung - Smelling Salts - Egg Move
  (108, 10800, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lickitung - Snore - Egg Move
  (108, 10800, 173, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lickitung - Zen Headbutt - Egg Move
  (108, 10800, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lickitung - Aqua Tail - Move Tutor
  (108, 10800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Lickitung - Bind - Move Tutor
  (108, 10800, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lickitung - Fire Punch - Move Tutor
  (108, 10800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Lickitung - Ice Punch - Move Tutor
  (108, 10800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Lickitung - Icy Wind - Move Tutor
  (108, 10800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Lickitung - Iron Tail - Move Tutor
  (108, 10800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Lickitung - Knock Off - Move Tutor
  (108, 10800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Lickitung - Sleep Talk - Move Tutor
  (108, 10800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Lickitung - Snore - Move Tutor
  (108, 10800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Lickitung - Thunder Punch - Move Tutor
  (108, 10800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Lickitung - Zen Headbutt - Move Tutor
  (108, 10800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 4
  (109, 10900, 123, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 7
  (109, 10900, 108, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Koffing - Assurance - Level 12
  (109, 10900, 372, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Koffing - Clear Smog - Level 15
  (109, 10900, 499, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 18
  (109, 10900, 124, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Koffing - Self-Destruct - Level 23
  (109, 10900, 120, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Koffing - Haze - Level 26
  (109, 10900, 114, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Koffing - Gyro Ball - Level 29
  (109, 10900, 360, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Koffing - Sludge Bomb - Level 34
  (109, 10900, 188, 12, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Koffing - Explosion - Level 37
  (109, 10900, 153, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Koffing - Destiny Bond - Level 40
  (109, 10900, 194, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Koffing - Memento - Level 45
  (109, 10900, 262, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Koffing - Venoshock - TM09
  (109, 10900, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 16),
  -- Koffing - Hidden Power - TM10
  (109, 10900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Koffing - Taunt - TM12
  (109, 10900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 19),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Koffing - Rain Dance - TM18
  (109, 10900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Koffing - Frustration - TM21
  (109, 10900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Koffing - Return - TM27
  (109, 10900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Koffing - Shadow Ball - TM30
  (109, 10900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Koffing - Flamethrower - TM35
  (109, 10900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Koffing - Torment - TM41
  (109, 10900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Koffing - Facade - TM42
  (109, 10900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Koffing - Round - TM48
  (109, 10900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Koffing - Incinerate - TM59
  (109, 10900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Koffing - Will-O-Wisp - TM61
  (109, 10900, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 38),
  -- Koffing - Explosion - TM64
  (109, 10900, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 39),
  -- Koffing - Payback - TM66
  (109, 10900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Koffing - Flash - TM70
  (109, 10900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 41),
  -- Koffing - Gyro Ball - TM74
  (109, 10900, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 42),
  -- Koffing - Swagger - TM87
  (109, 10900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Koffing - Substitute - TM90
  (109, 10900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Koffing - Curse - Egg Move
  (109, 10900, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Koffing - Destiny Bond - Egg Move
  (109, 10900, 194, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Koffing - Grudge - Egg Move
  (109, 10900, 288, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Koffing - Pain Split - Egg Move
  (109, 10900, 220, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Koffing - Psybeam - Egg Move
  (109, 10900, 60, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Koffing - Psywave - Egg Move
  (109, 10900, 149, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Koffing - Screech - Egg Move
  (109, 10900, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Spite - Egg Move
  (109, 10900, 180, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Koffing - Spit Up - Egg Move
  (109, 10900, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Stockpile - Egg Move
  (109, 10900, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Koffing - Swallow - Egg Move
  (109, 10900, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Koffing - Dark Pulse - Move Tutor
  (109, 10900, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Koffing - Pain Split - Move Tutor
  (109, 10900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Koffing - Sleep Talk - Move Tutor
  (109, 10900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Koffing - Snore - Move Tutor
  (109, 10900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Koffing - Spite - Move Tutor
  (109, 10900, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Koffing - Uproar - Move Tutor
  (109, 10900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Smokescreen - Level 1
  (110, 11000, 108, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 4
  (110, 11000, 123, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Weezing - Smokescreen - Level 7
  (110, 11000, 108, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Weezing - Assurance - Level 12
  (110, 11000, 372, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Weezing - Clear Smog - Level 15
  (110, 11000, 499, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Weezing - Sludge - Level 18
  (110, 11000, 124, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Weezing - Self-Destruct - Level 23
  (110, 11000, 120, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Weezing - Haze - Level 26
  (110, 11000, 114, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Weezing - Double Hit - Level 29
  (110, 11000, 458, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Weezing - Sludge Bomb - Level 34
  (110, 11000, 188, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Weezing - Explosion - Level 40
  (110, 11000, 153, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Weezing - Destiny Bond - Level 46
  (110, 11000, 194, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Weezing - Memento - Level 54
  (110, 11000, 262, 12, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Weezing - Venoshock - TM09
  (110, 11000, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 18),
  -- Weezing - Hidden Power - TM10
  (110, 11000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Weezing - Taunt - TM12
  (110, 11000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Weezing - Rain Dance - TM18
  (110, 11000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Weezing - Frustration - TM21
  (110, 11000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 26),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 27),
  -- Weezing - Return - TM27
  (110, 11000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Weezing - Shadow Ball - TM30
  (110, 11000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Weezing - Flamethrower - TM35
  (110, 11000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 33),
  -- Weezing - Torment - TM41
  (110, 11000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Weezing - Facade - TM42
  (110, 11000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Weezing - Round - TM48
  (110, 11000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Weezing - Incinerate - TM59
  (110, 11000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 40),
  -- Weezing - Will-O-Wisp - TM61
  (110, 11000, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 41),
  -- Weezing - Explosion - TM64
  (110, 11000, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 42),
  -- Weezing - Payback - TM66
  (110, 11000, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Weezing - Giga Impact - TM68
  (110, 11000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Weezing - Flash - TM70
  (110, 11000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Weezing - Gyro Ball - TM74
  (110, 11000, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 46),
  -- Weezing - Swagger - TM87
  (110, 11000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Weezing - Substitute - TM90
  (110, 11000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Weezing - Dark Pulse - Move Tutor
  (110, 11000, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Weezing - Pain Split - Move Tutor
  (110, 11000, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Weezing - Sleep Talk - Move Tutor
  (110, 11000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Weezing - Snore - Move Tutor
  (110, 11000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Weezing - Spite - Move Tutor
  (110, 11000, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Weezing - Uproar - Move Tutor
  (110, 11000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Stomp - Level 8
  (111, 11100, 23, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 12
  (111, 11100, 31, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Rhyhorn - Scary Face - Level 19
  (111, 11100, 184, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Rhyhorn - Rock Blast - Level 23
  (111, 11100, 350, 12, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Rhyhorn - Bulldoze - Level 30
  (111, 11100, 523, 12, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Rhyhorn - Chip Away - Level 34
  (111, 11100, 498, 12, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Rhyhorn - Take Down - Level 41
  (111, 11100, 36, 12, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Rhyhorn - Drill Run - Level 45
  (111, 11100, 529, 12, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Rhyhorn - Stone Edge - Level 52
  (111, 11100, 444, 12, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Rhyhorn - Earthquake - Level 56
  (111, 11100, 89, 12, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Rhyhorn - Horn Drill - Level 63
  (111, 11100, 32, 12, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Rhyhorn - Megahorn - Level 67
  (111, 11100, 224, 12, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Rhyhorn - Hidden Power - TM10
  (111, 11100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Rhyhorn - Ice Beam - TM13
  (111, 11100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Rhyhorn - Rain Dance - TM18
  (111, 11100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Rhyhorn - Frustration - TM21
  (111, 11100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Rhyhorn - Return - TM27
  (111, 11100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Rhyhorn - Flamethrower - TM35
  (111, 11100, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 30),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Rhyhorn - Rock Tomb - TM39
  (111, 11100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Rhyhorn - Facade - TM42
  (111, 11100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Rhyhorn - Thief - TM46
  (111, 11100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Rhyhorn - Round - TM48
  (111, 11100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Rhyhorn - Incinerate - TM59
  (111, 11100, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Rhyhorn - Payback - TM66
  (111, 11100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Rhyhorn - Rock Polish - TM69
  (111, 11100, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 41),
  -- Rhyhorn - Stone Edge - TM71
  (111, 11100, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Rhyhorn - Swords Dance - TM75
  (111, 11100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 43),
  -- Rhyhorn - Bulldoze - TM78
  (111, 11100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Rhyhorn - Rock Slide - TM80
  (111, 11100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Rhyhorn - Poison Jab - TM84
  (111, 11100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 46),
  -- Rhyhorn - Swagger - TM87
  (111, 11100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Rhyhorn - Substitute - TM90
  (111, 11100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Rhyhorn - Rock Smash - TM94
  (111, 11100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Rhyhorn - Counter - Egg Move
  (111, 11100, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rhyhorn - Crunch - Egg Move
  (111, 11100, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rhyhorn - Crush Claw - Egg Move
  (111, 11100, 306, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Rhyhorn - Curse - Egg Move
  (111, 11100, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Rhyhorn - Dragon Rush - Egg Move
  (111, 11100, 407, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Rhyhorn - Fire Fang - Egg Move
  (111, 11100, 424, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rhyhorn - Ice Fang - Egg Move
  (111, 11100, 423, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Rhyhorn - Iron Tail - Egg Move
  (111, 11100, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Rhyhorn - Magnitude - Egg Move
  (111, 11100, 222, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Rhyhorn - Reversal - Egg Move
  (111, 11100, 179, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Rock Climb - Egg Move
  (111, 11100, 431, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rhyhorn - Skull Bash - Egg Move
  (111, 11100, 130, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rhyhorn - Thunder Fang - Egg Move
  (111, 11100, 422, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rhyhorn - Aqua Tail - Move Tutor
  (111, 11100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Rhyhorn - Dragon Pulse - Move Tutor
  (111, 11100, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Rhyhorn - Drill Run - Move Tutor
  (111, 11100, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Rhyhorn - Earth Power - Move Tutor
  (111, 11100, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Rhyhorn - Endeavor - Move Tutor
  (111, 11100, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Rhyhorn - Icy Wind - Move Tutor
  (111, 11100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Rhyhorn - Iron Tail - Move Tutor
  (111, 11100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Rhyhorn - Sleep Talk - Move Tutor
  (111, 11100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Rhyhorn - Snore - Move Tutor
  (111, 11100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Rhyhorn - Spite - Move Tutor
  (111, 11100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Rhyhorn - Stealth Rock - Move Tutor
  (111, 11100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Rhyhorn - Superpower - Move Tutor
  (111, 11100, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Rhyhorn - Uproar - Move Tutor
  (111, 11100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Stomp - Level 1
  (112, 11200, 23, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Stomp - Level 9
  (112, 11200, 23, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 12
  (112, 11200, 31, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 19
  (112, 11200, 184, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Rhydon - Rock Blast - Level 23
  (112, 11200, 350, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Rhydon - Bulldoze - Level 30
  (112, 11200, 523, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rhydon - Chip Away - Level 34
  (112, 11200, 498, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Rhydon - Take Down - Level 41
  (112, 11200, 36, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Rhydon - Hammer Arm - Level 42
  (112, 11200, 359, 12, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Rhydon - Drill Run - Level 47
  (112, 11200, 529, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Rhydon - Stone Edge - Level 56
  (112, 11200, 444, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Rhydon - Earthquake - Level 62
  (112, 11200, 89, 12, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Rhydon - Horn Drill - Level 71
  (112, 11200, 32, 12, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Rhydon - Megahorn - Level 77
  (112, 11200, 224, 12, NULL, 1, 77, NULL, NULL, NULL, 17),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Rhydon - Hidden Power - TM10
  (112, 11200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Rhydon - Rain Dance - TM18
  (112, 11200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Rhydon - Frustration - TM21
  (112, 11200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Rhydon - Smack Down - TM23
  (112, 11200, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 28),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Rhydon - Return - TM27
  (112, 11200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Rhydon - Brick Break - TM31
  (112, 11200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Rhydon - Flamethrower - TM35
  (112, 11200, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 36),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 37),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 38),
  -- Rhydon - Rock Tomb - TM39
  (112, 11200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 39),
  -- Rhydon - Facade - TM42
  (112, 11200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Rhydon - Thief - TM46
  (112, 11200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 43),
  -- Rhydon - Round - TM48
  (112, 11200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Rhydon - Focus Blast - TM52
  (112, 11200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 45),
  -- Rhydon - Fling - TM56
  (112, 11200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Rhydon - Incinerate - TM59
  (112, 11200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 47),
  -- Rhydon - Shadow Claw - TM65
  (112, 11200, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 48),
  -- Rhydon - Payback - TM66
  (112, 11200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 49),
  -- Rhydon - Giga Impact - TM68
  (112, 11200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Rhydon - Rock Polish - TM69
  (112, 11200, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 51),
  -- Rhydon - Stone Edge - TM71
  (112, 11200, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 52),
  -- Rhydon - Swords Dance - TM75
  (112, 11200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 53),
  -- Rhydon - Bulldoze - TM78
  (112, 11200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 54),
  -- Rhydon - Rock Slide - TM80
  (112, 11200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 55),
  -- Rhydon - Dragon Tail - TM82
  (112, 11200, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 56),
  -- Rhydon - Poison Jab - TM84
  (112, 11200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 57),
  -- Rhydon - Swagger - TM87
  (112, 11200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Rhydon - Substitute - TM90
  (112, 11200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Rhydon - Rock Smash - TM94
  (112, 11200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 60),
  -- Rhydon - Cut - HM01
  (112, 11200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 61),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 62),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 63),
  -- Rhydon - Aqua Tail - Move Tutor
  (112, 11200, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Rhydon - Block - Move Tutor
  (112, 11200, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Rhydon - Dragon Pulse - Move Tutor
  (112, 11200, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Rhydon - Drill Run - Move Tutor
  (112, 11200, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Rhydon - Earth Power - Move Tutor
  (112, 11200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Rhydon - Endeavor - Move Tutor
  (112, 11200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Rhydon - Fire Punch - Move Tutor
  (112, 11200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Rhydon - Ice Punch - Move Tutor
  (112, 11200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Rhydon - Icy Wind - Move Tutor
  (112, 11200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Rhydon - Iron Tail - Move Tutor
  (112, 11200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Rhydon - Outrage - Move Tutor
  (112, 11200, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Rhydon - Sleep Talk - Move Tutor
  (112, 11200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Rhydon - Snore - Move Tutor
  (112, 11200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Rhydon - Spite - Move Tutor
  (112, 11200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Rhydon - Stealth Rock - Move Tutor
  (112, 11200, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Rhydon - Superpower - Move Tutor
  (112, 11200, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Rhydon - Thunder Punch - Move Tutor
  (112, 11200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Rhydon - Uproar - Move Tutor
  (112, 11200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Chansey - Defense Curl - Level 1
  (113, 11300, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Growl - Level 1
  (113, 11300, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chansey - Tail Whip - Level 5
  (113, 11300, 39, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Chansey - Refresh - Level 9
  (113, 11300, 287, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Chansey - Double Slap - Level 12
  (113, 11300, 3, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Chansey - Soft-Boiled - Level 16
  (113, 11300, 135, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Chansey - Bestow - Level 20
  (113, 11300, 516, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Chansey - Minimize - Level 23
  (113, 11300, 107, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Chansey - Take Down - Level 27
  (113, 11300, 36, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Chansey - Sing - Level 31
  (113, 11300, 47, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Chansey - Fling - Level 34
  (113, 11300, 374, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Chansey - Heal Pulse - Level 38
  (113, 11300, 505, 12, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Chansey - Egg Bomb - Level 42
  (113, 11300, 121, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Chansey - Light Screen - Level 46
  (113, 11300, 113, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Chansey - Healing Wish - Level 50
  (113, 11300, 361, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Chansey - Double-Edge - Level 54
  (113, 11300, 38, 12, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Chansey - Calm Mind - TM04
  (113, 11300, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Chansey - Hail - TM07
  (113, 11300, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Chansey - Hidden Power - TM10
  (113, 11300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Chansey - Light Screen - TM16
  (113, 11300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 26),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Chansey - Safeguard - TM20
  (113, 11300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 29),
  -- Chansey - Frustration - TM21
  (113, 11300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 31),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 32),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 33),
  -- Chansey - Earthquake - TM26
  (113, 11300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 34),
  -- Chansey - Return - TM27
  (113, 11300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 36),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 37),
  -- Chansey - Brick Break - TM31
  (113, 11300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 38),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Chansey - Flamethrower - TM35
  (113, 11300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 40),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 41),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 42),
  -- Chansey - Rock Tomb - TM39
  (113, 11300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 43),
  -- Chansey - Facade - TM42
  (113, 11300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 44),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 45),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 46),
  -- Chansey - Round - TM48
  (113, 11300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Chansey - Echoed Voice - TM49
  (113, 11300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 48),
  -- Chansey - Fling - TM56
  (113, 11300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 49),
  -- Chansey - Charge Beam - TM57
  (113, 11300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 50),
  -- Chansey - Incinerate - TM59
  (113, 11300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 51),
  -- Chansey - Retaliate - TM67
  (113, 11300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 52),
  -- Chansey - Giga Impact - TM68
  (113, 11300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 53),
  -- Chansey - Flash - TM70
  (113, 11300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 54),
  -- Chansey - Thunder Wave - TM73
  (113, 11300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 55),
  -- Chansey - Psych Up - TM77
  (113, 11300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 56),
  -- Chansey - Bulldoze - TM78
  (113, 11300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 57),
  -- Chansey - Rock Slide - TM80
  (113, 11300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 58),
  -- Chansey - Work Up - TM83
  (113, 11300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 59),
  -- Chansey - Dream Eater - TM85
  (113, 11300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 60),
  -- Chansey - Grass Knot - TM86
  (113, 11300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 61),
  -- Chansey - Swagger - TM87
  (113, 11300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 62),
  -- Chansey - Substitute - TM90
  (113, 11300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 63),
  -- Chansey - Wild Charge - TM93
  (113, 11300, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 64),
  -- Chansey - Rock Smash - TM94
  (113, 11300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 65),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 66),
  -- Chansey - Aromatherapy - Egg Move
  (113, 11300, 312, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Chansey - Counter - Egg Move
  (113, 11300, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Chansey - Endure - Egg Move
  (113, 11300, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Chansey - Gravity - Egg Move
  (113, 11300, 356, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Chansey - Heal Bell - Egg Move
  (113, 11300, 215, 12, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Chansey - Helping Hand - Egg Move
  (113, 11300, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Chansey - Last Resort - Egg Move
  (113, 11300, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Chansey - Metronome - Egg Move
  (113, 11300, 118, 12, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Chansey - Mud Bomb - Egg Move
  (113, 11300, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Chansey - Natural Gift - Egg Move
  (113, 11300, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Chansey - Present - Egg Move
  (113, 11300, 217, 12, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Chansey - Covet - Move Tutor
  (113, 11300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Chansey - Drain Punch - Move Tutor
  (113, 11300, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Chansey - Endeavor - Move Tutor
  (113, 11300, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Chansey - Fire Punch - Move Tutor
  (113, 11300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Chansey - Gravity - Move Tutor
  (113, 11300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Chansey - Heal Bell - Move Tutor
  (113, 11300, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Chansey - Helping Hand - Move Tutor
  (113, 11300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Chansey - Hyper Voice - Move Tutor
  (113, 11300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Chansey - Ice Punch - Move Tutor
  (113, 11300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Chansey - Icy Wind - Move Tutor
  (113, 11300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Chansey - Iron Tail - Move Tutor
  (113, 11300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Chansey - Last Resort - Move Tutor
  (113, 11300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Chansey - Recycle - Move Tutor
  (113, 11300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Chansey - Skill Swap - Move Tutor
  (113, 11300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Chansey - Sleep Talk - Move Tutor
  (113, 11300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 92),
  -- Chansey - Snatch - Move Tutor
  (113, 11300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 93),
  -- Chansey - Snore - Move Tutor
  (113, 11300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 94),
  -- Chansey - Stealth Rock - Move Tutor
  (113, 11300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 95),
  -- Chansey - Thunder Punch - Move Tutor
  (113, 11300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 96),
  -- Chansey - Zen Headbutt - Move Tutor
  (113, 11300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 97),
  -- Tangela - Ingrain - Level 1
  (114, 11400, 275, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Sleep Powder - Level 4
  (114, 11400, 79, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangela - Vine Whip - Level 7
  (114, 11400, 22, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tangela - Absorb - Level 10
  (114, 11400, 71, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Tangela - Poison Powder - Level 14
  (114, 11400, 77, 12, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tangela - Bind - Level 17
  (114, 11400, 20, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tangela - Growth - Level 20
  (114, 11400, 74, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tangela - Mega Drain - Level 23
  (114, 11400, 72, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Tangela - Knock Off - Level 27
  (114, 11400, 282, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tangela - Stun Spore - Level 30
  (114, 11400, 78, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tangela - Natural Gift - Level 33
  (114, 11400, 363, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tangela - Giga Drain - Level 36
  (114, 11400, 202, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tangela - Ancient Power - Level 40
  (114, 11400, 246, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Tangela - Slam - Level 43
  (114, 11400, 21, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tangela - Tickle - Level 46
  (114, 11400, 321, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Tangela - Wring Out - Level 49
  (114, 11400, 378, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Tangela - Power Whip - Level 53
  (114, 11400, 438, 12, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Tangela - Hidden Power - TM10
  (114, 11400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Tangela - Frustration - TM21
  (114, 11400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 25),
  -- Tangela - Return - TM27
  (114, 11400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Tangela - Reflect - TM33
  (114, 11400, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Tangela - Facade - TM42
  (114, 11400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Tangela - Round - TM48
  (114, 11400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Tangela - Energy Ball - TM53
  (114, 11400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 35),
  -- Tangela - Giga Impact - TM68
  (114, 11400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Tangela - Flash - TM70
  (114, 11400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Tangela - Swords Dance - TM75
  (114, 11400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 38),
  -- Tangela - Psych Up - TM77
  (114, 11400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Tangela - Grass Knot - TM86
  (114, 11400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 40),
  -- Tangela - Swagger - TM87
  (114, 11400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Tangela - Substitute - TM90
  (114, 11400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Tangela - Rock Smash - TM94
  (114, 11400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 44),
  -- Tangela - Amnesia - Egg Move
  (114, 11400, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tangela - Confusion - Egg Move
  (114, 11400, 93, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tangela - Endeavor - Egg Move
  (114, 11400, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tangela - Flail - Egg Move
  (114, 11400, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tangela - Giga Drain - Egg Move
  (114, 11400, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tangela - Leaf Storm - Egg Move
  (114, 11400, 437, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tangela - Leech Seed - Egg Move
  (114, 11400, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tangela - Mega Drain - Egg Move
  (114, 11400, 72, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tangela - Natural Gift - Egg Move
  (114, 11400, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tangela - Nature Power - Egg Move
  (114, 11400, 267, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tangela - Power Swap - Egg Move
  (114, 11400, 384, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tangela - Rage Powder - Egg Move
  (114, 11400, 476, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tangela - Bind - Move Tutor
  (114, 11400, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Tangela - Endeavor - Move Tutor
  (114, 11400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Tangela - Giga Drain - Move Tutor
  (114, 11400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Tangela - Knock Off - Move Tutor
  (114, 11400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Tangela - Pain Split - Move Tutor
  (114, 11400, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Tangela - Seed Bomb - Move Tutor
  (114, 11400, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Tangela - Sleep Talk - Move Tutor
  (114, 11400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Tangela - Snore - Move Tutor
  (114, 11400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Tangela - Synthesis - Move Tutor
  (114, 11400, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Tangela - Worry Seed - Move Tutor
  (114, 11400, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 1
  (115, 11500, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Fake Out - Level 7
  (115, 11500, 252, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 10
  (115, 11500, 39, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 13
  (115, 11500, 44, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Kangaskhan - Double Hit - Level 19
  (115, 11500, 458, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Kangaskhan - Rage - Level 22
  (115, 11500, 99, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Kangaskhan - Mega Punch - Level 25
  (115, 11500, 5, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kangaskhan - Chip Away - Level 31
  (115, 11500, 498, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Kangaskhan - Dizzy Punch - Level 34
  (115, 11500, 146, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kangaskhan - Crunch - Level 37
  (115, 11500, 242, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kangaskhan - Endure - Level 43
  (115, 11500, 203, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Kangaskhan - Outrage - Level 46
  (115, 11500, 200, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Kangaskhan - Sucker Punch - Level 49
  (115, 11500, 389, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Kangaskhan - Reversal - Level 55
  (115, 11500, 179, 12, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Kangaskhan - Hail - TM07
  (115, 11500, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Kangaskhan - Hidden Power - TM10
  (115, 11500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Kangaskhan - Safeguard - TM20
  (115, 11500, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Kangaskhan - Frustration - TM21
  (115, 11500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Kangaskhan - Solar Beam - TM22
  (115, 11500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Kangaskhan - Return - TM27
  (115, 11500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Kangaskhan - Dig - TM28
  (115, 11500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Kangaskhan - Brick Break - TM31
  (115, 11500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 35),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 36),
  -- Kangaskhan - Flamethrower - TM35
  (115, 11500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 37),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 38),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 39),
  -- Kangaskhan - Rock Tomb - TM39
  (115, 11500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 40),
  -- Kangaskhan - Aerial Ace - TM40
  (115, 11500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 41),
  -- Kangaskhan - Facade - TM42
  (115, 11500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Kangaskhan - Thief - TM46
  (115, 11500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Kangaskhan - Round - TM48
  (115, 11500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 46),
  -- Kangaskhan - Focus Blast - TM52
  (115, 11500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 47),
  -- Kangaskhan - Fling - TM56
  (115, 11500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Kangaskhan - Incinerate - TM59
  (115, 11500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 49),
  -- Kangaskhan - Shadow Claw - TM65
  (115, 11500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 50),
  -- Kangaskhan - Retaliate - TM67
  (115, 11500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 51),
  -- Kangaskhan - Giga Impact - TM68
  (115, 11500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 52),
  -- Kangaskhan - Bulldoze - TM78
  (115, 11500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 53),
  -- Kangaskhan - Rock Slide - TM80
  (115, 11500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 54),
  -- Kangaskhan - Work Up - TM83
  (115, 11500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 55),
  -- Kangaskhan - Swagger - TM87
  (115, 11500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Kangaskhan - Substitute - TM90
  (115, 11500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Kangaskhan - Rock Smash - TM94
  (115, 11500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 58),
  -- Kangaskhan - Cut - HM01
  (115, 11500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 59),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 60),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 61),
  -- Kangaskhan - Circle Throw - Egg Move
  (115, 11500, 509, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kangaskhan - Counter - Egg Move
  (115, 11500, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Kangaskhan - Crush Claw - Egg Move
  (115, 11500, 306, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Kangaskhan - Disable - Egg Move
  (115, 11500, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kangaskhan - Double-Edge - Egg Move
  (115, 11500, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kangaskhan - Endeavor - Egg Move
  (115, 11500, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kangaskhan - Focus Energy - Egg Move
  (115, 11500, 116, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kangaskhan - Focus Punch - Egg Move
  (115, 11500, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kangaskhan - Foresight - Egg Move
  (115, 11500, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kangaskhan - Hammer Arm - Egg Move
  (115, 11500, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kangaskhan - Stomp - Egg Move
  (115, 11500, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kangaskhan - Trump Card - Egg Move
  (115, 11500, 376, 12, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kangaskhan - Uproar - Egg Move
  (115, 11500, 253, 12, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kangaskhan - Aqua Tail - Move Tutor
  (115, 11500, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Kangaskhan - Covet - Move Tutor
  (115, 11500, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Kangaskhan - Drain Punch - Move Tutor
  (115, 11500, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Kangaskhan - Endeavor - Move Tutor
  (115, 11500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Kangaskhan - Fire Punch - Move Tutor
  (115, 11500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Kangaskhan - Helping Hand - Move Tutor
  (115, 11500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Kangaskhan - Ice Punch - Move Tutor
  (115, 11500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Kangaskhan - Icy Wind - Move Tutor
  (115, 11500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Kangaskhan - Iron Tail - Move Tutor
  (115, 11500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Kangaskhan - Low Kick - Move Tutor
  (115, 11500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Kangaskhan - Outrage - Move Tutor
  (115, 11500, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Kangaskhan - Sleep Talk - Move Tutor
  (115, 11500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Kangaskhan - Snore - Move Tutor
  (115, 11500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Kangaskhan - Spite - Move Tutor
  (115, 11500, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Kangaskhan - Thunder Punch - Move Tutor
  (115, 11500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Kangaskhan - Uproar - Move Tutor
  (115, 11500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 4
  (116, 11600, 108, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 8
  (116, 11600, 43, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 11
  (116, 11600, 55, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Horsea - Focus Energy - Level 14
  (116, 11600, 116, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Horsea - Bubble Beam - Level 18
  (116, 11600, 61, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Horsea - Agility - Level 23
  (116, 11600, 97, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Horsea - Twister - Level 26
  (116, 11600, 239, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Horsea - Brine - Level 30
  (116, 11600, 362, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Horsea - Hydro Pump - Level 35
  (116, 11600, 56, 12, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Horsea - Dragon Dance - Level 38
  (116, 11600, 349, 12, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Horsea - Dragon Pulse - Level 42
  (116, 11600, 406, 12, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Horsea - Hail - TM07
  (116, 11600, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 14),
  -- Horsea - Hidden Power - TM10
  (116, 11600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 16),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 17),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Horsea - Frustration - TM21
  (116, 11600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Horsea - Return - TM27
  (116, 11600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Horsea - Facade - TM42
  (116, 11600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 23),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 24),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 25),
  -- Horsea - Round - TM48
  (116, 11600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Horsea - Scald - TM55
  (116, 11600, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 27),
  -- Horsea - Swagger - TM87
  (116, 11600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 28),
  -- Horsea - Substitute - TM90
  (116, 11600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 29),
  -- Horsea - Flash Cannon - TM91
  (116, 11600, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 30),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 31),
  -- Horsea - Waterfall - HM05
  (116, 11600, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 32),
  -- Horsea - Dive - HM06
  (116, 11600, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 33),
  -- Horsea - Aurora Beam - Egg Move
  (116, 11600, 62, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Horsea - Clear Smog - Egg Move
  (116, 11600, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Horsea - Disable - Egg Move
  (116, 11600, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Horsea - Dragon Breath - Egg Move
  (116, 11600, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Horsea - Dragon Rage - Egg Move
  (116, 11600, 82, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Horsea - Flail - Egg Move
  (116, 11600, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Horsea - Muddy Water - Egg Move
  (116, 11600, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Horsea - Octazooka - Egg Move
  (116, 11600, 190, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Horsea - Outrage - Egg Move
  (116, 11600, 200, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Horsea - Razor Wind - Egg Move
  (116, 11600, 13, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Horsea - Signal Beam - Egg Move
  (116, 11600, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Horsea - Splash - Egg Move
  (116, 11600, 150, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Horsea - Water Pulse - Egg Move
  (116, 11600, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Horsea - Bounce - Move Tutor
  (116, 11600, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Horsea - Dragon Pulse - Move Tutor
  (116, 11600, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Horsea - Icy Wind - Move Tutor
  (116, 11600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Horsea - Outrage - Move Tutor
  (116, 11600, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Horsea - Signal Beam - Move Tutor
  (116, 11600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Horsea - Sleep Talk - Move Tutor
  (116, 11600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Horsea - Snore - Move Tutor
  (116, 11600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Smokescreen - Level 4
  (117, 11700, 108, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Seadra - Leer - Level 8
  (117, 11700, 43, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Seadra - Water Gun - Level 11
  (117, 11700, 55, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Seadra - Focus Energy - Level 14
  (117, 11700, 116, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Seadra - Bubble Beam - Level 18
  (117, 11700, 61, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Seadra - Agility - Level 23
  (117, 11700, 97, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Seadra - Twister - Level 26
  (117, 11700, 239, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Seadra - Brine - Level 30
  (117, 11700, 362, 12, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seadra - Hydro Pump - Level 40
  (117, 11700, 56, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Seadra - Dragon Dance - Level 48
  (117, 11700, 349, 12, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Seadra - Dragon Pulse - Level 57
  (117, 11700, 406, 12, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Seadra - Hail - TM07
  (117, 11700, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Seadra - Hidden Power - TM10
  (117, 11700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Seadra - Frustration - TM21
  (117, 11700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Seadra - Return - TM27
  (117, 11700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Seadra - Facade - TM42
  (117, 11700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Seadra - Round - TM48
  (117, 11700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Seadra - Scald - TM55
  (117, 11700, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Seadra - Giga Impact - TM68
  (117, 11700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 32),
  -- Seadra - Swagger - TM87
  (117, 11700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Seadra - Substitute - TM90
  (117, 11700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Seadra - Flash Cannon - TM91
  (117, 11700, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 35),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 36),
  -- Seadra - Waterfall - HM05
  (117, 11700, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 37),
  -- Seadra - Dive - HM06
  (117, 11700, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 38),
  -- Seadra - Bounce - Move Tutor
  (117, 11700, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Seadra - Dragon Pulse - Move Tutor
  (117, 11700, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Seadra - Icy Wind - Move Tutor
  (117, 11700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Seadra - Outrage - Move Tutor
  (117, 11700, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Seadra - Signal Beam - Move Tutor
  (117, 11700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Seadra - Sleep Talk - Move Tutor
  (117, 11700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Seadra - Snore - Move Tutor
  (117, 11700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Water Sport - Level 1
  (118, 11800, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goldeen - Supersonic - Level 7
  (118, 11800, 48, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 11
  (118, 11800, 30, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Goldeen - Water Pulse - Level 17
  (118, 11800, 352, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Goldeen - Flail - Level 21
  (118, 11800, 175, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Goldeen - Aqua Ring - Level 27
  (118, 11800, 392, 12, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Goldeen - Fury Attack - Level 31
  (118, 11800, 31, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Goldeen - Waterfall - Level 37
  (118, 11800, 127, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Goldeen - Horn Drill - Level 41
  (118, 11800, 32, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Goldeen - Agility - Level 47
  (118, 11800, 97, 12, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Goldeen - Soak - Level 51
  (118, 11800, 487, 12, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Goldeen - Megahorn - Level 57
  (118, 11800, 224, 12, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Goldeen - Hail - TM07
  (118, 11800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Goldeen - Hidden Power - TM10
  (118, 11800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Goldeen - Frustration - TM21
  (118, 11800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Goldeen - Return - TM27
  (118, 11800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Goldeen - Facade - TM42
  (118, 11800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Goldeen - Round - TM48
  (118, 11800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 28),
  -- Goldeen - Scald - TM55
  (118, 11800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 29),
  -- Goldeen - Poison Jab - TM84
  (118, 11800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 30),
  -- Goldeen - Swagger - TM87
  (118, 11800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 31),
  -- Goldeen - Substitute - TM90
  (118, 11800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 32),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 33),
  -- Goldeen - Waterfall - HM05
  (118, 11800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 34),
  -- Goldeen - Dive - HM06
  (118, 11800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 35),
  -- Goldeen - Aqua Tail - Egg Move
  (118, 11800, 401, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Goldeen - Body Slam - Egg Move
  (118, 11800, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Goldeen - Haze - Egg Move
  (118, 11800, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Goldeen - Hydro Pump - Egg Move
  (118, 11800, 56, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Goldeen - Mud Shot - Egg Move
  (118, 11800, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Goldeen - Mud-Slap - Egg Move
  (118, 11800, 189, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Goldeen - Mud Sport - Egg Move
  (118, 11800, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Goldeen - Psybeam - Egg Move
  (118, 11800, 60, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Goldeen - Signal Beam - Egg Move
  (118, 11800, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Goldeen - Skull Bash - Egg Move
  (118, 11800, 130, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Goldeen - Sleep Talk - Egg Move
  (118, 11800, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Goldeen - Aqua Tail - Move Tutor
  (118, 11800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Goldeen - Bounce - Move Tutor
  (118, 11800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Goldeen - Drill Run - Move Tutor
  (118, 11800, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Goldeen - Icy Wind - Move Tutor
  (118, 11800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Goldeen - Knock Off - Move Tutor
  (118, 11800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Goldeen - Signal Beam - Move Tutor
  (118, 11800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Goldeen - Sleep Talk - Move Tutor
  (118, 11800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Goldeen - Snore - Move Tutor
  (118, 11800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Seaking - Poison Jab - Level 1
  (119, 11900, 398, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Water Sport - Level 1
  (119, 11900, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seaking - Supersonic - Level 7
  (119, 11900, 48, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Seaking - Horn Attack - Level 11
  (119, 11900, 30, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Seaking - Water Pulse - Level 17
  (119, 11900, 352, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Seaking - Flail - Level 21
  (119, 11900, 175, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seaking - Aqua Ring - Level 27
  (119, 11900, 392, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Seaking - Fury Attack - Level 31
  (119, 11900, 31, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Seaking - Waterfall - Level 40
  (119, 11900, 127, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Seaking - Horn Drill - Level 47
  (119, 11900, 32, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Seaking - Agility - Level 56
  (119, 11900, 97, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Seaking - Soak - Level 63
  (119, 11900, 487, 12, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Seaking - Megahorn - Level 72
  (119, 11900, 224, 12, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Seaking - Hail - TM07
  (119, 11900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Seaking - Hidden Power - TM10
  (119, 11900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Seaking - Frustration - TM21
  (119, 11900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Seaking - Return - TM27
  (119, 11900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Seaking - Facade - TM42
  (119, 11900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Seaking - Round - TM48
  (119, 11900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Seaking - Scald - TM55
  (119, 11900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Seaking - Giga Impact - TM68
  (119, 11900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 33),
  -- Seaking - Poison Jab - TM84
  (119, 11900, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 34),
  -- Seaking - Swagger - TM87
  (119, 11900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Seaking - Substitute - TM90
  (119, 11900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 37),
  -- Seaking - Waterfall - HM05
  (119, 11900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 38),
  -- Seaking - Dive - HM06
  (119, 11900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 39),
  -- Seaking - Aqua Tail - Move Tutor
  (119, 11900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Seaking - Bounce - Move Tutor
  (119, 11900, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Seaking - Drill Run - Move Tutor
  (119, 11900, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Seaking - Icy Wind - Move Tutor
  (119, 11900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Seaking - Knock Off - Move Tutor
  (119, 11900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Seaking - Signal Beam - Move Tutor
  (119, 11900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Seaking - Sleep Talk - Move Tutor
  (119, 11900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Seaking - Snore - Move Tutor
  (119, 11900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 6
  (120, 12000, 55, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Staryu - Rapid Spin - Level 10
  (120, 12000, 229, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Staryu - Recover - Level 12
  (120, 12000, 105, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Staryu - Camouflage - Level 15
  (120, 12000, 293, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 18
  (120, 12000, 129, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Staryu - Bubble Beam - Level 22
  (120, 12000, 61, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Staryu - Minimize - Level 25
  (120, 12000, 107, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Staryu - Gyro Ball - Level 30
  (120, 12000, 360, 12, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Staryu - Light Screen - Level 33
  (120, 12000, 113, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Staryu - Brine - Level 36
  (120, 12000, 362, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Staryu - Reflect Type - Level 40
  (120, 12000, 513, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Staryu - Power Gem - Level 43
  (120, 12000, 408, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Staryu - Cosmic Power - Level 48
  (120, 12000, 322, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Staryu - Hydro Pump - Level 52
  (120, 12000, 56, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Staryu - Hail - TM07
  (120, 12000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Staryu - Hidden Power - TM10
  (120, 12000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Staryu - Light Screen - TM16
  (120, 12000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Staryu - Frustration - TM21
  (120, 12000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 26),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 27),
  -- Staryu - Return - TM27
  (120, 12000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 31),
  -- Staryu - Facade - TM42
  (120, 12000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Staryu - Round - TM48
  (120, 12000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Staryu - Scald - TM55
  (120, 12000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Staryu - Flash - TM70
  (120, 12000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Staryu - Thunder Wave - TM73
  (120, 12000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Staryu - Gyro Ball - TM74
  (120, 12000, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 38),
  -- Staryu - Psych Up - TM77
  (120, 12000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Staryu - Swagger - TM87
  (120, 12000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Staryu - Substitute - TM90
  (120, 12000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Staryu - Flash Cannon - TM91
  (120, 12000, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 42),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 43),
  -- Staryu - Waterfall - HM05
  (120, 12000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 44),
  -- Staryu - Dive - HM06
  (120, 12000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 45),
  -- Staryu - Gravity - Move Tutor
  (120, 12000, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Staryu - Icy Wind - Move Tutor
  (120, 12000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Staryu - Magic Coat - Move Tutor
  (120, 12000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Staryu - Pain Split - Move Tutor
  (120, 12000, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Staryu - Recycle - Move Tutor
  (120, 12000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Staryu - Signal Beam - Move Tutor
  (120, 12000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Staryu - Sleep Talk - Move Tutor
  (120, 12000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Staryu - Snore - Move Tutor
  (120, 12000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Swift - Level 1
  (121, 12100, 129, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Confuse Ray - Level 22
  (121, 12100, 109, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Starmie - Psyshock - TM03
  (121, 12100, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 6),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 7),
  -- Starmie - Hail - TM07
  (121, 12100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 8),
  -- Starmie - Hidden Power - TM10
  (121, 12100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 9),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 10),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 11),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 12),
  -- Starmie - Light Screen - TM16
  (121, 12100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 13),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 14),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 15),
  -- Starmie - Telekinesis - TM19
  (121, 12100, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 16),
  -- Starmie - Frustration - TM21
  (121, 12100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 18),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 19),
  -- Starmie - Return - TM27
  (121, 12100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 21),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 23),
  -- Starmie - Facade - TM42
  (121, 12100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Starmie - Round - TM48
  (121, 12100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Starmie - Scald - TM55
  (121, 12100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 27),
  -- Starmie - Giga Impact - TM68
  (121, 12100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 28),
  -- Starmie - Flash - TM70
  (121, 12100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 29),
  -- Starmie - Thunder Wave - TM73
  (121, 12100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 30),
  -- Starmie - Gyro Ball - TM74
  (121, 12100, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 31),
  -- Starmie - Psych Up - TM77
  (121, 12100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 32),
  -- Starmie - Dream Eater - TM85
  (121, 12100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 33),
  -- Starmie - Grass Knot - TM86
  (121, 12100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 34),
  -- Starmie - Swagger - TM87
  (121, 12100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Starmie - Substitute - TM90
  (121, 12100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Starmie - Flash Cannon - TM91
  (121, 12100, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 37),
  -- Starmie - Trick Room - TM92
  (121, 12100, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 38),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 39),
  -- Starmie - Waterfall - HM05
  (121, 12100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 40),
  -- Starmie - Dive - HM06
  (121, 12100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 41),
  -- Starmie - Gravity - Move Tutor
  (121, 12100, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Starmie - Icy Wind - Move Tutor
  (121, 12100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Starmie - Magic Coat - Move Tutor
  (121, 12100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Starmie - Pain Split - Move Tutor
  (121, 12100, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Starmie - Recycle - Move Tutor
  (121, 12100, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Starmie - Signal Beam - Move Tutor
  (121, 12100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Starmie - Skill Swap - Move Tutor
  (121, 12100, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Starmie - Sleep Talk - Move Tutor
  (121, 12100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Starmie - Snore - Move Tutor
  (121, 12100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Starmie - Trick - Move Tutor
  (121, 12100, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Starmie - Wonder Room - Move Tutor
  (121, 12100, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mr. Mime - Magical Leaf - Level 1
  (122, 12200, 345, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Quick Guard - Level 1
  (122, 12200, 501, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Wide Guard - Level 1
  (122, 12200, 469, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Power Swap - Level 1
  (122, 12200, 384, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime - Guard Swap - Level 1
  (122, 12200, 385, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mr. Mime - Copycat - Level 4
  (122, 12200, 383, 12, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Mr. Mime - Meditate - Level 8
  (122, 12200, 96, 12, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Mr. Mime - Double Slap - Level 11
  (122, 12200, 3, 12, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Mr. Mime - Mimic - Level 15
  (122, 12200, 102, 12, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Mr. Mime - Psywave - Level 15
  (122, 12200, 149, 12, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Mr. Mime - Encore - Level 18
  (122, 12200, 227, 12, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Mr. Mime - Light Screen - Level 22
  (122, 12200, 113, 12, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Mr. Mime - Reflect - Level 22
  (122, 12200, 115, 12, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Mr. Mime - Psybeam - Level 25
  (122, 12200, 60, 12, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Mr. Mime - Substitute - Level 29
  (122, 12200, 164, 12, NULL, 1, 29, NULL, NULL, NULL, 17),
  -- Mr. Mime - Recycle - Level 32
  (122, 12200, 278, 12, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Mr. Mime - Trick - Level 36
  (122, 12200, 271, 12, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Mr. Mime - Psychic - Level 39
  (122, 12200, 94, 12, NULL, 1, 39, NULL, NULL, NULL, 20),
  -- Mr. Mime - Role Play - Level 43
  (122, 12200, 272, 12, NULL, 1, 43, NULL, NULL, NULL, 21),
  -- Mr. Mime - Baton Pass - Level 46
  (122, 12200, 226, 12, NULL, 1, 46, NULL, NULL, NULL, 22),
  -- Mr. Mime - Safeguard - Level 50
  (122, 12200, 219, 12, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Mr. Mime - Psyshock - TM03
  (122, 12200, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 24),
  -- Mr. Mime - Calm Mind - TM04
  (122, 12200, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 25),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 26),
  -- Mr. Mime - Hidden Power - TM10
  (122, 12200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 27),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 28),
  -- Mr. Mime - Taunt - TM12
  (122, 12200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 29),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 30),
  -- Mr. Mime - Light Screen - TM16
  (122, 12200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 31),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 32),
  -- Mr. Mime - Rain Dance - TM18
  (122, 12200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 33),
  -- Mr. Mime - Telekinesis - TM19
  (122, 12200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 34),
  -- Mr. Mime - Safeguard - TM20
  (122, 12200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 35),
  -- Mr. Mime - Frustration - TM21
  (122, 12200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 36),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 37),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 38),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 39),
  -- Mr. Mime - Return - TM27
  (122, 12200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 40),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 41),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 42),
  -- Mr. Mime - Brick Break - TM31
  (122, 12200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 43),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 44),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 45),
  -- Mr. Mime - Aerial Ace - TM40
  (122, 12200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 46),
  -- Mr. Mime - Torment - TM41
  (122, 12200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 47),
  -- Mr. Mime - Facade - TM42
  (122, 12200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 48),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 49),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 50),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 51),
  -- Mr. Mime - Round - TM48
  (122, 12200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 52),
  -- Mr. Mime - Focus Blast - TM52
  (122, 12200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 53),
  -- Mr. Mime - Energy Ball - TM53
  (122, 12200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 54),
  -- Mr. Mime - Fling - TM56
  (122, 12200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 55),
  -- Mr. Mime - Charge Beam - TM57
  (122, 12200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 56),
  -- Mr. Mime - Payback - TM66
  (122, 12200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 57),
  -- Mr. Mime - Giga Impact - TM68
  (122, 12200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 58),
  -- Mr. Mime - Flash - TM70
  (122, 12200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 59),
  -- Mr. Mime - Thunder Wave - TM73
  (122, 12200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 60),
  -- Mr. Mime - Psych Up - TM77
  (122, 12200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 61),
  -- Mr. Mime - Dream Eater - TM85
  (122, 12200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 62),
  -- Mr. Mime - Grass Knot - TM86
  (122, 12200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 63),
  -- Mr. Mime - Swagger - TM87
  (122, 12200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 64),
  -- Mr. Mime - Substitute - TM90
  (122, 12200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 65),
  -- Mr. Mime - Trick Room - TM92
  (122, 12200, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 66),
  -- Mr. Mime - Charm - Egg Move
  (122, 12200, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mr. Mime - Confuse Ray - Egg Move
  (122, 12200, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mr. Mime - Fake Out - Egg Move
  (122, 12200, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mr. Mime - Future Sight - Egg Move
  (122, 12200, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mr. Mime - Healing Wish - Egg Move
  (122, 12200, 361, 12, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mr. Mime - Hypnosis - Egg Move
  (122, 12200, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mr. Mime - Icy Wind - Egg Move
  (122, 12200, 196, 12, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mr. Mime - Magic Room - Egg Move
  (122, 12200, 478, 12, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mr. Mime - Mimic - Egg Move
  (122, 12200, 102, 12, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mr. Mime - Nasty Plot - Egg Move
  (122, 12200, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mr. Mime - Power Split - Egg Move
  (122, 12200, 471, 12, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mr. Mime - Teeter Dance - Egg Move
  (122, 12200, 298, 12, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mr. Mime - Trick - Egg Move
  (122, 12200, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Mr. Mime - Wake-Up Slap - Egg Move
  (122, 12200, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Mr. Mime - Covet - Move Tutor
  (122, 12200, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Mr. Mime - Drain Punch - Move Tutor
  (122, 12200, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Mr. Mime - Fire Punch - Move Tutor
  (122, 12200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Mr. Mime - Foul Play - Move Tutor
  (122, 12200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Mr. Mime - Helping Hand - Move Tutor
  (122, 12200, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Mr. Mime - Ice Punch - Move Tutor
  (122, 12200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Mr. Mime - Icy Wind - Move Tutor
  (122, 12200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Mr. Mime - Iron Defense - Move Tutor
  (122, 12200, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Mr. Mime - Magic Coat - Move Tutor
  (122, 12200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Mr. Mime - Magic Room - Move Tutor
  (122, 12200, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Mr. Mime - Recycle - Move Tutor
  (122, 12200, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Mr. Mime - Role Play - Move Tutor
  (122, 12200, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 92),
  -- Mr. Mime - Signal Beam - Move Tutor
  (122, 12200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 93),
  -- Mr. Mime - Skill Swap - Move Tutor
  (122, 12200, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 94),
  -- Mr. Mime - Sleep Talk - Move Tutor
  (122, 12200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 95),
  -- Mr. Mime - Snatch - Move Tutor
  (122, 12200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 96),
  -- Mr. Mime - Snore - Move Tutor
  (122, 12200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 97),
  -- Mr. Mime - Thunder Punch - Move Tutor
  (122, 12200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 98),
  -- Mr. Mime - Trick - Move Tutor
  (122, 12200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 99),
  -- Mr. Mime - Wonder Room - Move Tutor
  (122, 12200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 100),
  -- Mr. Mime - Zen Headbutt - Move Tutor
  (122, 12200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 101),
  -- Scyther - Vacuum Wave - Level 1
  (123, 12300, 410, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scyther - Focus Energy - Level 5
  (123, 12300, 116, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Scyther - Pursuit - Level 9
  (123, 12300, 228, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Scyther - False Swipe - Level 13
  (123, 12300, 206, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scyther - Agility - Level 17
  (123, 12300, 97, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scyther - Wing Attack - Level 21
  (123, 12300, 17, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scyther - Fury Cutter - Level 25
  (123, 12300, 210, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Scyther - Slash - Level 29
  (123, 12300, 163, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Scyther - Razor Wind - Level 33
  (123, 12300, 13, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scyther - Double Team - Level 37
  (123, 12300, 104, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Scyther - X-Scissor - Level 41
  (123, 12300, 404, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Scyther - Night Slash - Level 45
  (123, 12300, 400, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scyther - Double Hit - Level 49
  (123, 12300, 458, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scyther - Air Slash - Level 53
  (123, 12300, 403, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Scyther - Swords Dance - Level 57
  (123, 12300, 14, 12, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Scyther - Feint - Level 61
  (123, 12300, 364, 12, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Scyther - Hidden Power - TM10
  (123, 12300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Scyther - Light Screen - TM16
  (123, 12300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Scyther - Rain Dance - TM18
  (123, 12300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Scyther - Safeguard - TM20
  (123, 12300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Scyther - Frustration - TM21
  (123, 12300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Scyther - Return - TM27
  (123, 12300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Scyther - Brick Break - TM31
  (123, 12300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Scyther - Aerial Ace - TM40
  (123, 12300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Scyther - Facade - TM42
  (123, 12300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Scyther - Round - TM48
  (123, 12300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Scyther - False Swipe - TM54
  (123, 12300, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 37),
  -- Scyther - Giga Impact - TM68
  (123, 12300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Scyther - Swords Dance - TM75
  (123, 12300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 39),
  -- Scyther - Struggle Bug - TM76
  (123, 12300, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 40),
  -- Scyther - X-Scissor - TM81
  (123, 12300, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 41),
  -- Scyther - Swagger - TM87
  (123, 12300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Scyther - U-turn - TM89
  (123, 12300, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 43),
  -- Scyther - Substitute - TM90
  (123, 12300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Scyther - Rock Smash - TM94
  (123, 12300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Scyther - Baton Pass - Egg Move
  (123, 12300, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Scyther - Bug Buzz - Egg Move
  (123, 12300, 405, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Scyther - Counter - Egg Move
  (123, 12300, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Scyther - Defog - Egg Move
  (123, 12300, 432, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Scyther - Endure - Egg Move
  (123, 12300, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Scyther - Night Slash - Egg Move
  (123, 12300, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Razor Wind - Egg Move
  (123, 12300, 13, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Scyther - Reversal - Egg Move
  (123, 12300, 179, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Scyther - Silver Wind - Egg Move
  (123, 12300, 318, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scyther - Steel Wing - Egg Move
  (123, 12300, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scyther - Bug Bite - Move Tutor
  (123, 12300, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Scyther - Knock Off - Move Tutor
  (123, 12300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Scyther - Roost - Move Tutor
  (123, 12300, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Scyther - Sleep Talk - Move Tutor
  (123, 12300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Scyther - Snore - Move Tutor
  (123, 12300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Scyther - Tailwind - Move Tutor
  (123, 12300, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Lick - Level 5
  (124, 12400, 122, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Jynx - Lovely Kiss - Level 8
  (124, 12400, 142, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Jynx - Powder Snow - Level 11
  (124, 12400, 181, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Jynx - Double Slap - Level 15
  (124, 12400, 3, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Jynx - Ice Punch - Level 18
  (124, 12400, 8, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Jynx - Heart Stamp - Level 21
  (124, 12400, 531, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Jynx - Mean Look - Level 25
  (124, 12400, 212, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Jynx - Fake Tears - Level 28
  (124, 12400, 313, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Jynx - Wake-Up Slap - Level 33
  (124, 12400, 358, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Jynx - Avalanche - Level 39
  (124, 12400, 419, 12, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Jynx - Body Slam - Level 44
  (124, 12400, 34, 12, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Jynx - Wring Out - Level 49
  (124, 12400, 378, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Jynx - Perish Song - Level 55
  (124, 12400, 195, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Jynx - Blizzard - Level 60
  (124, 12400, 59, 12, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Jynx - Psyshock - TM03
  (124, 12400, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Jynx - Calm Mind - TM04
  (124, 12400, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Jynx - Hail - TM07
  (124, 12400, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Jynx - Hidden Power - TM10
  (124, 12400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Jynx - Taunt - TM12
  (124, 12400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 25),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 26),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Jynx - Light Screen - TM16
  (124, 12400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 28),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Jynx - Telekinesis - TM19
  (124, 12400, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 31),
  -- Jynx - Frustration - TM21
  (124, 12400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Jynx - Return - TM27
  (124, 12400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 34),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 35),
  -- Jynx - Brick Break - TM31
  (124, 12400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 36),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 37),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 38),
  -- Jynx - Torment - TM41
  (124, 12400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 39),
  -- Jynx - Facade - TM42
  (124, 12400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 43),
  -- Jynx - Round - TM48
  (124, 12400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Jynx - Echoed Voice - TM49
  (124, 12400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 45),
  -- Jynx - Focus Blast - TM52
  (124, 12400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 46),
  -- Jynx - Energy Ball - TM53
  (124, 12400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 47),
  -- Jynx - Fling - TM56
  (124, 12400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Jynx - Payback - TM66
  (124, 12400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 49),
  -- Jynx - Giga Impact - TM68
  (124, 12400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Jynx - Flash - TM70
  (124, 12400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 51),
  -- Jynx - Psych Up - TM77
  (124, 12400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 52),
  -- Jynx - Frost Breath - TM79
  (124, 12400, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 53),
  -- Jynx - Dream Eater - TM85
  (124, 12400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 54),
  -- Jynx - Grass Knot - TM86
  (124, 12400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 55),
  -- Jynx - Swagger - TM87
  (124, 12400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Jynx - Substitute - TM90
  (124, 12400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Jynx - Trick Room - TM92
  (124, 12400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 58),
  -- Jynx - Captivate - Egg Move
  (124, 12400, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Jynx - Fake Out - Egg Move
  (124, 12400, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Jynx - Ice Punch - Egg Move
  (124, 12400, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Jynx - Meditate - Egg Move
  (124, 12400, 96, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Jynx - Miracle Eye - Egg Move
  (124, 12400, 357, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Jynx - Nasty Plot - Egg Move
  (124, 12400, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Jynx - Wake-Up Slap - Egg Move
  (124, 12400, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jynx - Wish - Egg Move
  (124, 12400, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Jynx - Covet - Move Tutor
  (124, 12400, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Jynx - Drain Punch - Move Tutor
  (124, 12400, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Jynx - Heal Bell - Move Tutor
  (124, 12400, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Jynx - Helping Hand - Move Tutor
  (124, 12400, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Jynx - Hyper Voice - Move Tutor
  (124, 12400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Jynx - Ice Punch - Move Tutor
  (124, 12400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Jynx - Icy Wind - Move Tutor
  (124, 12400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Jynx - Magic Coat - Move Tutor
  (124, 12400, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Jynx - Magic Room - Move Tutor
  (124, 12400, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Jynx - Recycle - Move Tutor
  (124, 12400, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Jynx - Role Play - Move Tutor
  (124, 12400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Jynx - Signal Beam - Move Tutor
  (124, 12400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Jynx - Skill Swap - Move Tutor
  (124, 12400, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Jynx - Sleep Talk - Move Tutor
  (124, 12400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Jynx - Snore - Move Tutor
  (124, 12400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Jynx - Trick - Move Tutor
  (124, 12400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Jynx - Zen Headbutt - Move Tutor
  (124, 12400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Shock - Level 5
  (125, 12500, 84, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Electabuzz - Low Kick - Level 8
  (125, 12500, 67, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Electabuzz - Swift - Level 12
  (125, 12500, 129, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Electabuzz - Shock Wave - Level 15
  (125, 12500, 351, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Electabuzz - Thunder Wave - Level 19
  (125, 12500, 86, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Electabuzz - Electro Ball - Level 22
  (125, 12500, 486, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Electabuzz - Light Screen - Level 26
  (125, 12500, 113, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Electabuzz - Thunder Punch - Level 29
  (125, 12500, 9, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Electabuzz - Discharge - Level 36
  (125, 12500, 435, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Electabuzz - Screech - Level 42
  (125, 12500, 103, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Electabuzz - Thunderbolt - Level 49
  (125, 12500, 85, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Electabuzz - Thunder - Level 55
  (125, 12500, 87, 12, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Electabuzz - Hidden Power - TM10
  (125, 12500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Electabuzz - Light Screen - TM16
  (125, 12500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Electabuzz - Frustration - TM21
  (125, 12500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Electabuzz - Return - TM27
  (125, 12500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 26),
  -- Electabuzz - Brick Break - TM31
  (125, 12500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Electabuzz - Facade - TM42
  (125, 12500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Electabuzz - Low Sweep - TM47
  (125, 12500, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 33),
  -- Electabuzz - Round - TM48
  (125, 12500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Electabuzz - Focus Blast - TM52
  (125, 12500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 35),
  -- Electabuzz - Fling - TM56
  (125, 12500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Electabuzz - Charge Beam - TM57
  (125, 12500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 37),
  -- Electabuzz - Giga Impact - TM68
  (125, 12500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Electabuzz - Flash - TM70
  (125, 12500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Electabuzz - Volt Switch - TM72
  (125, 12500, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 40),
  -- Electabuzz - Thunder Wave - TM73
  (125, 12500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 41),
  -- Electabuzz - Swagger - TM87
  (125, 12500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Electabuzz - Substitute - TM90
  (125, 12500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Electabuzz - Wild Charge - TM93
  (125, 12500, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Electabuzz - Rock Smash - TM94
  (125, 12500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Electabuzz - Barrier - Egg Move
  (125, 12500, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electabuzz - Cross Chop - Egg Move
  (125, 12500, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electabuzz - Dynamic Punch - Egg Move
  (125, 12500, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electabuzz - Feint - Egg Move
  (125, 12500, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electabuzz - Fire Punch - Egg Move
  (125, 12500, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electabuzz - Focus Punch - Egg Move
  (125, 12500, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electabuzz - Hammer Arm - Egg Move
  (125, 12500, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electabuzz - Ice Punch - Egg Move
  (125, 12500, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electabuzz - Karate Chop - Egg Move
  (125, 12500, 2, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Electabuzz - Meditate - Egg Move
  (125, 12500, 96, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Electabuzz - Rolling Kick - Egg Move
  (125, 12500, 27, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Electabuzz - Covet - Move Tutor
  (125, 12500, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Electabuzz - Dual Chop - Move Tutor
  (125, 12500, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Electabuzz - Electroweb - Move Tutor
  (125, 12500, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Electabuzz - Fire Punch - Move Tutor
  (125, 12500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Electabuzz - Helping Hand - Move Tutor
  (125, 12500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Electabuzz - Ice Punch - Move Tutor
  (125, 12500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Electabuzz - Iron Tail - Move Tutor
  (125, 12500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Electabuzz - Low Kick - Move Tutor
  (125, 12500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Electabuzz - Magnet Rise - Move Tutor
  (125, 12500, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Electabuzz - Signal Beam - Move Tutor
  (125, 12500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Electabuzz - Sleep Talk - Move Tutor
  (125, 12500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Electabuzz - Snore - Move Tutor
  (125, 12500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Electabuzz - Thunder Punch - Move Tutor
  (125, 12500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Ember - Level 5
  (126, 12600, 52, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Magmar - Smokescreen - Level 8
  (126, 12600, 108, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Magmar - Feint Attack - Level 12
  (126, 12600, 185, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Magmar - Fire Spin - Level 15
  (126, 12600, 83, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Magmar - Clear Smog - Level 19
  (126, 12600, 499, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Magmar - Flame Burst - Level 22
  (126, 12600, 481, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Magmar - Confuse Ray - Level 26
  (126, 12600, 109, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Magmar - Fire Punch - Level 29
  (126, 12600, 7, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Magmar - Lava Plume - Level 36
  (126, 12600, 436, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Magmar - Sunny Day - Level 42
  (126, 12600, 241, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Magmar - Flamethrower - Level 49
  (126, 12600, 53, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Magmar - Fire Blast - Level 55
  (126, 12600, 126, 12, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Magmar - Hidden Power - TM10
  (126, 12600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Magmar - Frustration - TM21
  (126, 12600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Magmar - Return - TM27
  (126, 12600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 23),
  -- Magmar - Brick Break - TM31
  (126, 12600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 24),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Magmar - Flamethrower - TM35
  (126, 12600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 26),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 27),
  -- Magmar - Facade - TM42
  (126, 12600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Magmar - Flame Charge - TM43
  (126, 12600, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 29),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Magmar - Low Sweep - TM47
  (126, 12600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 33),
  -- Magmar - Round - TM48
  (126, 12600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Magmar - Overheat - TM50
  (126, 12600, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 35),
  -- Magmar - Focus Blast - TM52
  (126, 12600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 36),
  -- Magmar - Fling - TM56
  (126, 12600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 37),
  -- Magmar - Incinerate - TM59
  (126, 12600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 38),
  -- Magmar - Will-O-Wisp - TM61
  (126, 12600, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 39),
  -- Magmar - Giga Impact - TM68
  (126, 12600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 40),
  -- Magmar - Swagger - TM87
  (126, 12600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Magmar - Substitute - TM90
  (126, 12600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Magmar - Rock Smash - TM94
  (126, 12600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Magmar - Barrier - Egg Move
  (126, 12600, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magmar - Belly Drum - Egg Move
  (126, 12600, 187, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magmar - Cross Chop - Egg Move
  (126, 12600, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magmar - Dynamic Punch - Egg Move
  (126, 12600, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magmar - Flare Blitz - Egg Move
  (126, 12600, 394, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magmar - Focus Energy - Egg Move
  (126, 12600, 116, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magmar - Iron Tail - Egg Move
  (126, 12600, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magmar - Karate Chop - Egg Move
  (126, 12600, 2, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmar - Mach Punch - Egg Move
  (126, 12600, 183, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magmar - Mega Punch - Egg Move
  (126, 12600, 5, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magmar - Screech - Egg Move
  (126, 12600, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magmar - Thunder Punch - Egg Move
  (126, 12600, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magmar - Covet - Move Tutor
  (126, 12600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Magmar - Dual Chop - Move Tutor
  (126, 12600, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Magmar - Fire Punch - Move Tutor
  (126, 12600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Magmar - Heat Wave - Move Tutor
  (126, 12600, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Magmar - Helping Hand - Move Tutor
  (126, 12600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Magmar - Iron Tail - Move Tutor
  (126, 12600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Magmar - Low Kick - Move Tutor
  (126, 12600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Magmar - Sleep Talk - Move Tutor
  (126, 12600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Magmar - Snore - Move Tutor
  (126, 12600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Magmar - Thunder Punch - Move Tutor
  (126, 12600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 1
  (127, 12700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 4
  (127, 12700, 20, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 8
  (127, 12700, 69, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 11
  (127, 12700, 106, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pinsir - Revenge - Level 15
  (127, 12700, 279, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pinsir - Brick Break - Level 18
  (127, 12700, 280, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Pinsir - Vital Throw - Level 22
  (127, 12700, 233, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Pinsir - Submission - Level 26
  (127, 12700, 66, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Pinsir - X-Scissor - Level 29
  (127, 12700, 404, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pinsir - Storm Throw - Level 33
  (127, 12700, 480, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pinsir - Thrash - Level 36
  (127, 12700, 37, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Pinsir - Swords Dance - Level 40
  (127, 12700, 14, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pinsir - Superpower - Level 43
  (127, 12700, 276, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Pinsir - Guillotine - Level 47
  (127, 12700, 12, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Pinsir - Bulk Up - TM08
  (127, 12700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 17),
  -- Pinsir - Hidden Power - TM10
  (127, 12700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Pinsir - Rain Dance - TM18
  (127, 12700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Pinsir - Frustration - TM21
  (127, 12700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Pinsir - Smack Down - TM23
  (127, 12700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 24),
  -- Pinsir - Earthquake - TM26
  (127, 12700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Pinsir - Return - TM27
  (127, 12700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Pinsir - Dig - TM28
  (127, 12700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Pinsir - Brick Break - TM31
  (127, 12700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 28),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Pinsir - Rock Tomb - TM39
  (127, 12700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Pinsir - Facade - TM42
  (127, 12700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Pinsir - Round - TM48
  (127, 12700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Pinsir - Focus Blast - TM52
  (127, 12700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 36),
  -- Pinsir - False Swipe - TM54
  (127, 12700, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 37),
  -- Pinsir - Fling - TM56
  (127, 12700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Pinsir - Giga Impact - TM68
  (127, 12700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Pinsir - Stone Edge - TM71
  (127, 12700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 40),
  -- Pinsir - Swords Dance - TM75
  (127, 12700, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 41),
  -- Pinsir - Struggle Bug - TM76
  (127, 12700, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 42),
  -- Pinsir - Bulldoze - TM78
  (127, 12700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 43),
  -- Pinsir - Rock Slide - TM80
  (127, 12700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 44),
  -- Pinsir - X-Scissor - TM81
  (127, 12700, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 45),
  -- Pinsir - Swagger - TM87
  (127, 12700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Pinsir - Substitute - TM90
  (127, 12700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Pinsir - Rock Smash - TM94
  (127, 12700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 49),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Pinsir - Bug Bite - Egg Move
  (127, 12700, 450, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pinsir - Close Combat - Egg Move
  (127, 12700, 370, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pinsir - Feint Attack - Egg Move
  (127, 12700, 185, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pinsir - Feint - Egg Move
  (127, 12700, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pinsir - Flail - Egg Move
  (127, 12700, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pinsir - Fury Attack - Egg Move
  (127, 12700, 31, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pinsir - Me First - Egg Move
  (127, 12700, 382, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pinsir - Quick Attack - Egg Move
  (127, 12700, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pinsir - Superpower - Egg Move
  (127, 12700, 276, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pinsir - Bind - Move Tutor
  (127, 12700, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Pinsir - Bug Bite - Move Tutor
  (127, 12700, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Pinsir - Iron Defense - Move Tutor
  (127, 12700, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Pinsir - Knock Off - Move Tutor
  (127, 12700, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Pinsir - Sleep Talk - Move Tutor
  (127, 12700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Pinsir - Snore - Move Tutor
  (127, 12700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Pinsir - Stealth Rock - Move Tutor
  (127, 12700, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Pinsir - Superpower - Move Tutor
  (127, 12700, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 3
  (128, 12800, 39, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 5
  (128, 12800, 99, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 8
  (128, 12800, 30, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tauros - Scary Face - Level 11
  (128, 12800, 184, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tauros - Pursuit - Level 15
  (128, 12800, 228, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tauros - Rest - Level 19
  (128, 12800, 156, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tauros - Payback - Level 24
  (128, 12800, 371, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tauros - Work Up - Level 29
  (128, 12800, 526, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tauros - Zen Headbutt - Level 35
  (128, 12800, 428, 12, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Tauros - Take Down - Level 41
  (128, 12800, 36, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Tauros - Swagger - Level 48
  (128, 12800, 207, 12, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Tauros - Thrash - Level 55
  (128, 12800, 37, 12, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros - Giga Impact - Level 63
  (128, 12800, 416, 12, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Tauros - Hidden Power - TM10
  (128, 12800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Tauros - Rain Dance - TM18
  (128, 12800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Tauros - Frustration - TM21
  (128, 12800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Tauros - Solar Beam - TM22
  (128, 12800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Tauros - Return - TM27
  (128, 12800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Tauros - Flamethrower - TM35
  (128, 12800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 30),
  -- Tauros - Sandstorm - TM37
  (128, 12800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Tauros - Rock Tomb - TM39
  (128, 12800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Tauros - Facade - TM42
  (128, 12800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Tauros - Round - TM48
  (128, 12800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Tauros - Incinerate - TM59
  (128, 12800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 38),
  -- Tauros - Payback - TM66
  (128, 12800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 39),
  -- Tauros - Retaliate - TM67
  (128, 12800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 40),
  -- Tauros - Giga Impact - TM68
  (128, 12800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Tauros - Stone Edge - TM71
  (128, 12800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Tauros - Bulldoze - TM78
  (128, 12800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 43),
  -- Tauros - Rock Slide - TM80
  (128, 12800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 44),
  -- Tauros - Work Up - TM83
  (128, 12800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 45),
  -- Tauros - Swagger - TM87
  (128, 12800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Tauros - Substitute - TM90
  (128, 12800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Tauros - Wild Charge - TM93
  (128, 12800, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 48),
  -- Tauros - Rock Smash - TM94
  (128, 12800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Tauros - Surf - HM03
  (128, 12800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 50),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 51),
  -- Tauros - Endeavor - Move Tutor
  (128, 12800, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Tauros - Helping Hand - Move Tutor
  (128, 12800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Tauros - Icy Wind - Move Tutor
  (128, 12800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Tauros - Iron Head - Move Tutor
  (128, 12800, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Tauros - Iron Tail - Move Tutor
  (128, 12800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Tauros - Outrage - Move Tutor
  (128, 12800, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Tauros - Role Play - Move Tutor
  (128, 12800, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Tauros - Sleep Talk - Move Tutor
  (128, 12800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Tauros - Snore - Move Tutor
  (128, 12800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Tauros - Spite - Move Tutor
  (128, 12800, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Tauros - Uproar - Move Tutor
  (128, 12800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Tauros - Zen Headbutt - Move Tutor
  (128, 12800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 12, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 30
  (129, 12900, 175, 12, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Magikarp - Bounce - Move Tutor
  (129, 12900, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 4),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 12, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Gyarados - Dragon Rage - Level 23
  (130, 13000, 82, 12, NULL, 1, 23, NULL, NULL, NULL, 3),
  -- Gyarados - Leer - Level 26
  (130, 13000, 43, 12, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 29
  (130, 13000, 239, 12, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Gyarados - Ice Fang - Level 32
  (130, 13000, 423, 12, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Gyarados - Aqua Tail - Level 35
  (130, 13000, 401, 12, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Gyarados - Rain Dance - Level 38
  (130, 13000, 240, 12, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Gyarados - Hydro Pump - Level 41
  (130, 13000, 56, 12, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Gyarados - Dragon Dance - Level 44
  (130, 13000, 349, 12, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Gyarados - Hyper Beam - Level 47
  (130, 13000, 63, 12, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 12),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Gyarados - Hail - TM07
  (130, 13000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 14),
  -- Gyarados - Hidden Power - TM10
  (130, 13000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Gyarados - Taunt - TM12
  (130, 13000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 16),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Gyarados - Frustration - TM21
  (130, 13000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Gyarados - Earthquake - TM26
  (130, 13000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Gyarados - Return - TM27
  (130, 13000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Gyarados - Flamethrower - TM35
  (130, 13000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Gyarados - Torment - TM41
  (130, 13000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Gyarados - Facade - TM42
  (130, 13000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Gyarados - Round - TM48
  (130, 13000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Gyarados - Scald - TM55
  (130, 13000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Gyarados - Incinerate - TM59
  (130, 13000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Gyarados - Payback - TM66
  (130, 13000, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 38),
  -- Gyarados - Giga Impact - TM68
  (130, 13000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Gyarados - Stone Edge - TM71
  (130, 13000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 40),
  -- Gyarados - Thunder Wave - TM73
  (130, 13000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 41),
  -- Gyarados - Bulldoze - TM78
  (130, 13000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 42),
  -- Gyarados - Dragon Tail - TM82
  (130, 13000, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 43),
  -- Gyarados - Swagger - TM87
  (130, 13000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Gyarados - Substitute - TM90
  (130, 13000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Gyarados - Rock Smash - TM94
  (130, 13000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 47),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 48),
  -- Gyarados - Waterfall - HM05
  (130, 13000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 49),
  -- Gyarados - Dive - HM06
  (130, 13000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 50),
  -- Gyarados - Aqua Tail - Move Tutor
  (130, 13000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Gyarados - Bounce - Move Tutor
  (130, 13000, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Gyarados - Dark Pulse - Move Tutor
  (130, 13000, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Gyarados - Dragon Pulse - Move Tutor
  (130, 13000, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Gyarados - Icy Wind - Move Tutor
  (130, 13000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Gyarados - Iron Head - Move Tutor
  (130, 13000, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Gyarados - Iron Tail - Move Tutor
  (130, 13000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Gyarados - Outrage - Move Tutor
  (130, 13000, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Gyarados - Sleep Talk - Move Tutor
  (130, 13000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Gyarados - Snore - Move Tutor
  (130, 13000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Gyarados - Spite - Move Tutor
  (130, 13000, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gyarados - Uproar - Move Tutor
  (130, 13000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 4
  (131, 13100, 54, 12, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Lapras - Confuse Ray - Level 7
  (131, 13100, 109, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 10
  (131, 13100, 420, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Lapras - Water Pulse - Level 14
  (131, 13100, 352, 12, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Lapras - Body Slam - Level 18
  (131, 13100, 34, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Lapras - Rain Dance - Level 22
  (131, 13100, 240, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Lapras - Perish Song - Level 27
  (131, 13100, 195, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 32
  (131, 13100, 58, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Lapras - Brine - Level 37
  (131, 13100, 362, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lapras - Safeguard - Level 43
  (131, 13100, 219, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lapras - Hydro Pump - Level 49
  (131, 13100, 56, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 55
  (131, 13100, 329, 12, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Lapras - Roar - TM05
  (131, 13100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Lapras - Hail - TM07
  (131, 13100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Lapras - Hidden Power - TM10
  (131, 13100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Lapras - Safeguard - TM20
  (131, 13100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Lapras - Frustration - TM21
  (131, 13100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Lapras - Return - TM27
  (131, 13100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Lapras - Facade - TM42
  (131, 13100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Lapras - Round - TM48
  (131, 13100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Lapras - Echoed Voice - TM49
  (131, 13100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 36),
  -- Lapras - Giga Impact - TM68
  (131, 13100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Lapras - Bulldoze - TM78
  (131, 13100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 38),
  -- Lapras - Frost Breath - TM79
  (131, 13100, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 39),
  -- Lapras - Dream Eater - TM85
  (131, 13100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 40),
  -- Lapras - Swagger - TM87
  (131, 13100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Lapras - Substitute - TM90
  (131, 13100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Lapras - Rock Smash - TM94
  (131, 13100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 44),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 45),
  -- Lapras - Waterfall - HM05
  (131, 13100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 46),
  -- Lapras - Dive - HM06
  (131, 13100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 47),
  -- Lapras - Ancient Power - Egg Move
  (131, 13100, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lapras - Avalanche - Egg Move
  (131, 13100, 419, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lapras - Curse - Egg Move
  (131, 13100, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lapras - Dragon Dance - Egg Move
  (131, 13100, 349, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lapras - Dragon Pulse - Egg Move
  (131, 13100, 406, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lapras - Fissure - Egg Move
  (131, 13100, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lapras - Foresight - Egg Move
  (131, 13100, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lapras - Future Sight - Egg Move
  (131, 13100, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lapras - Horn Drill - Egg Move
  (131, 13100, 32, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lapras - Refresh - Egg Move
  (131, 13100, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lapras - Sleep Talk - Egg Move
  (131, 13100, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lapras - Tickle - Egg Move
  (131, 13100, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lapras - Whirlpool - Egg Move
  (131, 13100, 250, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lapras - Aqua Tail - Move Tutor
  (131, 13100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Lapras - Block - Move Tutor
  (131, 13100, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Lapras - Dragon Pulse - Move Tutor
  (131, 13100, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Lapras - Drill Run - Move Tutor
  (131, 13100, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Lapras - Heal Bell - Move Tutor
  (131, 13100, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Lapras - Hyper Voice - Move Tutor
  (131, 13100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Lapras - Icy Wind - Move Tutor
  (131, 13100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lapras - Iron Head - Move Tutor
  (131, 13100, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lapras - Iron Tail - Move Tutor
  (131, 13100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Lapras - Outrage - Move Tutor
  (131, 13100, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Lapras - Signal Beam - Move Tutor
  (131, 13100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Lapras - Sleep Talk - Move Tutor
  (131, 13100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lapras - Snore - Move Tutor
  (131, 13100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Lapras - Zen Headbutt - Move Tutor
  (131, 13100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Sand Attack - Level 5
  (133, 13300, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Eevee - Growl - Level 9
  (133, 13300, 45, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Eevee - Quick Attack - Level 13
  (133, 13300, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Eevee - Bite - Level 17
  (133, 13300, 44, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Eevee - Covet - Level 21
  (133, 13300, 343, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Eevee - Take Down - Level 25
  (133, 13300, 36, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Eevee - Charm - Level 29
  (133, 13300, 204, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Eevee - Baton Pass - Level 33
  (133, 13300, 226, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Eevee - Double-Edge - Level 37
  (133, 13300, 38, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Eevee - Last Resort - Level 41
  (133, 13300, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Eevee - Trump Card - Level 45
  (133, 13300, 376, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Eevee - Hidden Power - TM10
  (133, 13300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Eevee - Frustration - TM21
  (133, 13300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Eevee - Return - TM27
  (133, 13300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Eevee - Dig - TM28
  (133, 13300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 22),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 23),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Eevee - Facade - TM42
  (133, 13300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Eevee - Round - TM48
  (133, 13300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 28),
  -- Eevee - Echoed Voice - TM49
  (133, 13300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 29),
  -- Eevee - Retaliate - TM67
  (133, 13300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 30),
  -- Eevee - Work Up - TM83
  (133, 13300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 31),
  -- Eevee - Swagger - TM87
  (133, 13300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 32),
  -- Eevee - Substitute - TM90
  (133, 13300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 33),
  -- Eevee - Charm - Egg Move
  (133, 13300, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Eevee - Covet - Egg Move
  (133, 13300, 343, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Eevee - Curse - Egg Move
  (133, 13300, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Eevee - Detect - Egg Move
  (133, 13300, 197, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Eevee - Endure - Egg Move
  (133, 13300, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Eevee - Fake Tears - Egg Move
  (133, 13300, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Eevee - Flail - Egg Move
  (133, 13300, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eevee - Natural Gift - Egg Move
  (133, 13300, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Eevee - Stored Power - Egg Move
  (133, 13300, 500, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Eevee - Synchronoise - Egg Move
  (133, 13300, 485, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Eevee - Tickle - Egg Move
  (133, 13300, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eevee - Wish - Egg Move
  (133, 13300, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eevee - Yawn - Egg Move
  (133, 13300, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eevee - Covet - Move Tutor
  (133, 13300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Eevee - Heal Bell - Move Tutor
  (133, 13300, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Eevee - Helping Hand - Move Tutor
  (133, 13300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Eevee - Hyper Voice - Move Tutor
  (133, 13300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Eevee - Iron Tail - Move Tutor
  (133, 13300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Eevee - Last Resort - Move Tutor
  (133, 13300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Eevee - Sleep Talk - Move Tutor
  (133, 13300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Eevee - Snore - Move Tutor
  (133, 13300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Sand Attack - Level 5
  (134, 13400, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Vaporeon - Water Gun - Level 9
  (134, 13400, 55, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Vaporeon - Quick Attack - Level 13
  (134, 13400, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vaporeon - Water Pulse - Level 17
  (134, 13400, 352, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Vaporeon - Aurora Beam - Level 21
  (134, 13400, 62, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Vaporeon - Aqua Ring - Level 25
  (134, 13400, 392, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Vaporeon - Acid Armor - Level 29
  (134, 13400, 151, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Vaporeon - Haze - Level 33
  (134, 13400, 114, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Vaporeon - Muddy Water - Level 37
  (134, 13400, 330, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Vaporeon - Last Resort - Level 41
  (134, 13400, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Vaporeon - Hydro Pump - Level 45
  (134, 13400, 56, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Vaporeon - Hail - TM07
  (134, 13400, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Vaporeon - Hidden Power - TM10
  (134, 13400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Vaporeon - Frustration - TM21
  (134, 13400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Vaporeon - Return - TM27
  (134, 13400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Vaporeon - Dig - TM28
  (134, 13400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Vaporeon - Facade - TM42
  (134, 13400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Vaporeon - Round - TM48
  (134, 13400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Vaporeon - Echoed Voice - TM49
  (134, 13400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Vaporeon - Scald - TM55
  (134, 13400, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Vaporeon - Retaliate - TM67
  (134, 13400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 36),
  -- Vaporeon - Giga Impact - TM68
  (134, 13400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Vaporeon - Work Up - TM83
  (134, 13400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 38),
  -- Vaporeon - Swagger - TM87
  (134, 13400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 39),
  -- Vaporeon - Substitute - TM90
  (134, 13400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Vaporeon - Rock Smash - TM94
  (134, 13400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 41),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 42),
  -- Vaporeon - Strength - HM04
  (134, 13400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 43),
  -- Vaporeon - Waterfall - HM05
  (134, 13400, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 44),
  -- Vaporeon - Dive - HM06
  (134, 13400, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 45),
  -- Vaporeon - Aqua Tail - Move Tutor
  (134, 13400, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Vaporeon - Covet - Move Tutor
  (134, 13400, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Vaporeon - Heal Bell - Move Tutor
  (134, 13400, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Vaporeon - Helping Hand - Move Tutor
  (134, 13400, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Vaporeon - Hyper Voice - Move Tutor
  (134, 13400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Vaporeon - Icy Wind - Move Tutor
  (134, 13400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Vaporeon - Iron Tail - Move Tutor
  (134, 13400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Vaporeon - Last Resort - Move Tutor
  (134, 13400, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Vaporeon - Signal Beam - Move Tutor
  (134, 13400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Vaporeon - Sleep Talk - Move Tutor
  (134, 13400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Vaporeon - Snore - Move Tutor
  (134, 13400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Sand Attack - Level 5
  (135, 13500, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Jolteon - Thunder Shock - Level 9
  (135, 13500, 84, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Jolteon - Quick Attack - Level 13
  (135, 13500, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Jolteon - Double Kick - Level 17
  (135, 13500, 24, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Jolteon - Thunder Fang - Level 21
  (135, 13500, 422, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Jolteon - Pin Missile - Level 25
  (135, 13500, 42, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Jolteon - Agility - Level 29
  (135, 13500, 97, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Jolteon - Thunder Wave - Level 33
  (135, 13500, 86, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Jolteon - Discharge - Level 37
  (135, 13500, 435, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Jolteon - Last Resort - Level 41
  (135, 13500, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Jolteon - Thunder - Level 45
  (135, 13500, 87, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Jolteon - Hidden Power - TM10
  (135, 13500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Jolteon - Light Screen - TM16
  (135, 13500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 20),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Jolteon - Frustration - TM21
  (135, 13500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Jolteon - Return - TM27
  (135, 13500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Jolteon - Dig - TM28
  (135, 13500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Jolteon - Facade - TM42
  (135, 13500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Jolteon - Round - TM48
  (135, 13500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Jolteon - Echoed Voice - TM49
  (135, 13500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Jolteon - Charge Beam - TM57
  (135, 13500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Jolteon - Retaliate - TM67
  (135, 13500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 36),
  -- Jolteon - Giga Impact - TM68
  (135, 13500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Jolteon - Flash - TM70
  (135, 13500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 38),
  -- Jolteon - Volt Switch - TM72
  (135, 13500, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 39),
  -- Jolteon - Thunder Wave - TM73
  (135, 13500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 40),
  -- Jolteon - Work Up - TM83
  (135, 13500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 41),
  -- Jolteon - Swagger - TM87
  (135, 13500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Jolteon - Substitute - TM90
  (135, 13500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Jolteon - Wild Charge - TM93
  (135, 13500, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Jolteon - Rock Smash - TM94
  (135, 13500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Jolteon - Strength - HM04
  (135, 13500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Jolteon - Covet - Move Tutor
  (135, 13500, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Jolteon - Heal Bell - Move Tutor
  (135, 13500, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Jolteon - Helping Hand - Move Tutor
  (135, 13500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Jolteon - Hyper Voice - Move Tutor
  (135, 13500, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Jolteon - Iron Tail - Move Tutor
  (135, 13500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Jolteon - Last Resort - Move Tutor
  (135, 13500, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Jolteon - Magnet Rise - Move Tutor
  (135, 13500, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Jolteon - Signal Beam - Move Tutor
  (135, 13500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Jolteon - Sleep Talk - Move Tutor
  (135, 13500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Jolteon - Snore - Move Tutor
  (135, 13500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Sand Attack - Level 5
  (136, 13600, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Flareon - Ember - Level 9
  (136, 13600, 52, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Flareon - Quick Attack - Level 13
  (136, 13600, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Flareon - Bite - Level 17
  (136, 13600, 44, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Flareon - Fire Fang - Level 21
  (136, 13600, 424, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Flareon - Fire Spin - Level 25
  (136, 13600, 83, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Flareon - Scary Face - Level 29
  (136, 13600, 184, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Flareon - Smog - Level 33
  (136, 13600, 123, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Flareon - Lava Plume - Level 37
  (136, 13600, 436, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Flareon - Last Resort - Level 41
  (136, 13600, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Flareon - Fire Blast - Level 45
  (136, 13600, 126, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Flareon - Hidden Power - TM10
  (136, 13600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Flareon - Frustration - TM21
  (136, 13600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Flareon - Return - TM27
  (136, 13600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Flareon - Dig - TM28
  (136, 13600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Flareon - Flamethrower - TM35
  (136, 13600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 27),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 28),
  -- Flareon - Facade - TM42
  (136, 13600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Flareon - Flame Charge - TM43
  (136, 13600, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 30),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Flareon - Round - TM48
  (136, 13600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Flareon - Echoed Voice - TM49
  (136, 13600, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Flareon - Overheat - TM50
  (136, 13600, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 35),
  -- Flareon - Incinerate - TM59
  (136, 13600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 36),
  -- Flareon - Will-O-Wisp - TM61
  (136, 13600, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 37),
  -- Flareon - Retaliate - TM67
  (136, 13600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Flareon - Giga Impact - TM68
  (136, 13600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Flareon - Work Up - TM83
  (136, 13600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 40),
  -- Flareon - Swagger - TM87
  (136, 13600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Flareon - Substitute - TM90
  (136, 13600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Flareon - Rock Smash - TM94
  (136, 13600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Flareon - Strength - HM04
  (136, 13600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Flareon - Covet - Move Tutor
  (136, 13600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Flareon - Heat Wave - Move Tutor
  (136, 13600, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Flareon - Heal Bell - Move Tutor
  (136, 13600, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Flareon - Helping Hand - Move Tutor
  (136, 13600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Flareon - Hyper Voice - Move Tutor
  (136, 13600, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Flareon - Iron Tail - Move Tutor
  (136, 13600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Flareon - Last Resort - Move Tutor
  (136, 13600, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Flareon - Sleep Talk - Move Tutor
  (136, 13600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Flareon - Snore - Move Tutor
  (136, 13600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Flareon - Superpower - Move Tutor
  (136, 13600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Porygon - Conversion 2 - Level 1
  (137, 13700, 176, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Sharpen - Level 1
  (137, 13700, 159, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon - Psybeam - Level 7
  (137, 13700, 60, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Porygon - Agility - Level 12
  (137, 13700, 97, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Porygon - Recover - Level 18
  (137, 13700, 105, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Porygon - Magnet Rise - Level 23
  (137, 13700, 393, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Porygon - Signal Beam - Level 29
  (137, 13700, 324, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Porygon - Recycle - Level 34
  (137, 13700, 278, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 12, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon - Lock-On - Level 45
  (137, 13700, 199, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon - Tri Attack - Level 51
  (137, 13700, 161, 12, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Porygon - Magic Coat - Level 56
  (137, 13700, 277, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Porygon - Zap Cannon - Level 62
  (137, 13700, 192, 12, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Porygon - Psyshock - TM03
  (137, 13700, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 16),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Porygon - Hidden Power - TM10
  (137, 13700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Porygon - Frustration - TM21
  (137, 13700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Porygon - Solar Beam - TM22
  (137, 13700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Porygon - Return - TM27
  (137, 13700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Porygon - Shadow Ball - TM30
  (137, 13700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Porygon - Aerial Ace - TM40
  (137, 13700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Porygon - Facade - TM42
  (137, 13700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Porygon - Round - TM48
  (137, 13700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Porygon - Charge Beam - TM57
  (137, 13700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 38),
  -- Porygon - Giga Impact - TM68
  (137, 13700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Porygon - Flash - TM70
  (137, 13700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 40),
  -- Porygon - Thunder Wave - TM73
  (137, 13700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 41),
  -- Porygon - Psych Up - TM77
  (137, 13700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 42),
  -- Porygon - Dream Eater - TM85
  (137, 13700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 43),
  -- Porygon - Swagger - TM87
  (137, 13700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Porygon - Substitute - TM90
  (137, 13700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Porygon - Trick Room - TM92
  (137, 13700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 46),
  -- Porygon - Electroweb - Move Tutor
  (137, 13700, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Porygon - Foul Play - Move Tutor
  (137, 13700, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Porygon - Gravity - Move Tutor
  (137, 13700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Porygon - Icy Wind - Move Tutor
  (137, 13700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Porygon - Iron Tail - Move Tutor
  (137, 13700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Porygon - Last Resort - Move Tutor
  (137, 13700, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Porygon - Magic Coat - Move Tutor
  (137, 13700, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Porygon - Magnet Rise - Move Tutor
  (137, 13700, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Porygon - Pain Split - Move Tutor
  (137, 13700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Porygon - Recycle - Move Tutor
  (137, 13700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Porygon - Signal Beam - Move Tutor
  (137, 13700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Porygon - Sleep Talk - Move Tutor
  (137, 13700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Porygon - Snore - Move Tutor
  (137, 13700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Porygon - Trick - Move Tutor
  (137, 13700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Porygon - Wonder Room - Move Tutor
  (137, 13700, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Porygon - Zen Headbutt - Move Tutor
  (137, 13700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Bite - Level 7
  (138, 13800, 44, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 10
  (138, 13800, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Omanyte - Rollout - Level 16
  (138, 13800, 205, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 19
  (138, 13800, 43, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Omanyte - Brine - Level 28
  (138, 13800, 362, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Omanyte - Protect - Level 34
  (138, 13800, 182, 12, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Omanyte - Ancient Power - Level 37
  (138, 13800, 246, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Omanyte - Tickle - Level 43
  (138, 13800, 321, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Omanyte - Rock Blast - Level 46
  (138, 13800, 350, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Omanyte - Shell Smash - Level 52
  (138, 13800, 504, 12, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Omanyte - Hydro Pump - Level 55
  (138, 13800, 56, 12, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Omanyte - Hail - TM07
  (138, 13800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Omanyte - Hidden Power - TM10
  (138, 13800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Omanyte - Frustration - TM21
  (138, 13800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Omanyte - Smack Down - TM23
  (138, 13800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Omanyte - Return - TM27
  (138, 13800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 26),
  -- Omanyte - Rock Tomb - TM39
  (138, 13800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 27),
  -- Omanyte - Facade - TM42
  (138, 13800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Omanyte - Round - TM48
  (138, 13800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Omanyte - Scald - TM55
  (138, 13800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 33),
  -- Omanyte - Rock Polish - TM69
  (138, 13800, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 34),
  -- Omanyte - Gyro Ball - TM74
  (138, 13800, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 35),
  -- Omanyte - Rock Slide - TM80
  (138, 13800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 36),
  -- Omanyte - Swagger - TM87
  (138, 13800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Omanyte - Substitute - TM90
  (138, 13800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Omanyte - Rock Smash - TM94
  (138, 13800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 40),
  -- Omanyte - Waterfall - HM05
  (138, 13800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 41),
  -- Omanyte - Dive - HM06
  (138, 13800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 42),
  -- Omanyte - Aurora Beam - Egg Move
  (138, 13800, 62, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Omanyte - Bide - Egg Move
  (138, 13800, 117, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Omanyte - Bubble Beam - Egg Move
  (138, 13800, 61, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Omanyte - Haze - Egg Move
  (138, 13800, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Omanyte - Knock Off - Egg Move
  (138, 13800, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Omanyte - Muddy Water - Egg Move
  (138, 13800, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Omanyte - Slam - Egg Move
  (138, 13800, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Omanyte - Spikes - Egg Move
  (138, 13800, 191, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omanyte - Supersonic - Egg Move
  (138, 13800, 48, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omanyte - Toxic Spikes - Egg Move
  (138, 13800, 390, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omanyte - Water Pulse - Egg Move
  (138, 13800, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omanyte - Whirlpool - Egg Move
  (138, 13800, 250, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Omanyte - Wring Out - Egg Move
  (138, 13800, 378, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Omanyte - Bind - Move Tutor
  (138, 13800, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Omanyte - Earth Power - Move Tutor
  (138, 13800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Omanyte - Icy Wind - Move Tutor
  (138, 13800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Omanyte - Iron Defense - Move Tutor
  (138, 13800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Omanyte - Knock Off - Move Tutor
  (138, 13800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Omanyte - Sleep Talk - Move Tutor
  (138, 13800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Omanyte - Snore - Move Tutor
  (138, 13800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Omanyte - Stealth Rock - Move Tutor
  (138, 13800, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Bite - Level 1
  (139, 13900, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Bite - Level 7
  (139, 13900, 44, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Omastar - Water Gun - Level 10
  (139, 13900, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Omastar - Rollout - Level 16
  (139, 13900, 205, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Omastar - Leer - Level 19
  (139, 13900, 43, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Omastar - Brine - Level 28
  (139, 13900, 362, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Omastar - Protect - Level 34
  (139, 13900, 182, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Omastar - Ancient Power - Level 37
  (139, 13900, 246, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Omastar - Spike Cannon - Level 40
  (139, 13900, 131, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Omastar - Tickle - Level 48
  (139, 13900, 321, 12, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Omastar - Rock Blast - Level 56
  (139, 13900, 350, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Omastar - Shell Smash - Level 67
  (139, 13900, 504, 12, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Omastar - Hydro Pump - Level 75
  (139, 13900, 56, 12, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Omastar - Hail - TM07
  (139, 13900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Omastar - Hidden Power - TM10
  (139, 13900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Omastar - Frustration - TM21
  (139, 13900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Omastar - Smack Down - TM23
  (139, 13900, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 26),
  -- Omastar - Return - TM27
  (139, 13900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Omastar - Rock Tomb - TM39
  (139, 13900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Omastar - Facade - TM42
  (139, 13900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Omastar - Round - TM48
  (139, 13900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Omastar - Scald - TM55
  (139, 13900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Omastar - Giga Impact - TM68
  (139, 13900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Omastar - Rock Polish - TM69
  (139, 13900, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 38),
  -- Omastar - Stone Edge - TM71
  (139, 13900, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 39),
  -- Omastar - Gyro Ball - TM74
  (139, 13900, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 40),
  -- Omastar - Rock Slide - TM80
  (139, 13900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 41),
  -- Omastar - Swagger - TM87
  (139, 13900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Omastar - Substitute - TM90
  (139, 13900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Omastar - Rock Smash - TM94
  (139, 13900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 45),
  -- Omastar - Waterfall - HM05
  (139, 13900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 46),
  -- Omastar - Dive - HM06
  (139, 13900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 47),
  -- Omastar - Bind - Move Tutor
  (139, 13900, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Omastar - Earth Power - Move Tutor
  (139, 13900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Omastar - Icy Wind - Move Tutor
  (139, 13900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Omastar - Iron Defense - Move Tutor
  (139, 13900, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Omastar - Knock Off - Move Tutor
  (139, 13900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Omastar - Sleep Talk - Move Tutor
  (139, 13900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Omastar - Snore - Move Tutor
  (139, 13900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Omastar - Stealth Rock - Move Tutor
  (139, 13900, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 6
  (140, 14000, 71, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kabuto - Leer - Level 11
  (140, 14000, 43, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Kabuto - Mud Shot - Level 16
  (140, 14000, 341, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Kabuto - Sand Attack - Level 21
  (140, 14000, 28, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kabuto - Endure - Level 26
  (140, 14000, 203, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kabuto - Aqua Jet - Level 31
  (140, 14000, 453, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Kabuto - Mega Drain - Level 36
  (140, 14000, 72, 12, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Kabuto - Metal Sound - Level 41
  (140, 14000, 319, 12, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Kabuto - Ancient Power - Level 46
  (140, 14000, 246, 12, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Kabuto - Wring Out - Level 51
  (140, 14000, 378, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Kabuto - Hone Claws - TM01
  (140, 14000, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 13),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Kabuto - Hail - TM07
  (140, 14000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 15),
  -- Kabuto - Hidden Power - TM10
  (140, 14000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Kabuto - Frustration - TM21
  (140, 14000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Kabuto - Smack Down - TM23
  (140, 14000, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 22),
  -- Kabuto - Return - TM27
  (140, 14000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Kabuto - Dig - TM28
  (140, 14000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 26),
  -- Kabuto - Rock Tomb - TM39
  (140, 14000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 27),
  -- Kabuto - Facade - TM42
  (140, 14000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Kabuto - Round - TM48
  (140, 14000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Kabuto - Scald - TM55
  (140, 14000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 33),
  -- Kabuto - Rock Polish - TM69
  (140, 14000, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 34),
  -- Kabuto - Rock Slide - TM80
  (140, 14000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 35),
  -- Kabuto - Swagger - TM87
  (140, 14000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Kabuto - Substitute - TM90
  (140, 14000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Kabuto - Rock Smash - TM94
  (140, 14000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 38),
  -- Kabuto - Surf - HM03
  (140, 14000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 39),
  -- Kabuto - Waterfall - HM05
  (140, 14000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 40),
  -- Kabuto - Aurora Beam - Egg Move
  (140, 14000, 62, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Kabuto - Bubble Beam - Egg Move
  (140, 14000, 61, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Kabuto - Confuse Ray - Egg Move
  (140, 14000, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Kabuto - Flail - Egg Move
  (140, 14000, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Kabuto - Foresight - Egg Move
  (140, 14000, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Kabuto - Giga Drain - Egg Move
  (140, 14000, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kabuto - Icy Wind - Egg Move
  (140, 14000, 196, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kabuto - Knock Off - Egg Move
  (140, 14000, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kabuto - Mud Shot - Egg Move
  (140, 14000, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kabuto - Rapid Spin - Egg Move
  (140, 14000, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kabuto - Screech - Egg Move
  (140, 14000, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kabuto - Earth Power - Move Tutor
  (140, 14000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Kabuto - Giga Drain - Move Tutor
  (140, 14000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Kabuto - Icy Wind - Move Tutor
  (140, 14000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Kabuto - Iron Defense - Move Tutor
  (140, 14000, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Kabuto - Knock Off - Move Tutor
  (140, 14000, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Kabuto - Sleep Talk - Move Tutor
  (140, 14000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kabuto - Snore - Move Tutor
  (140, 14000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kabuto - Stealth Rock - Move Tutor
  (140, 14000, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kabutops - Feint - Level 1
  (141, 14100, 364, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kabutops - Leer - Level 1
  (141, 14100, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kabutops - Absorb - Level 6
  (141, 14100, 71, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Kabutops - Leer - Level 11
  (141, 14100, 43, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Kabutops - Mud Shot - Level 16
  (141, 14100, 341, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kabutops - Sand Attack - Level 21
  (141, 14100, 28, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Kabutops - Endure - Level 26
  (141, 14100, 203, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Kabutops - Aqua Jet - Level 31
  (141, 14100, 453, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kabutops - Mega Drain - Level 36
  (141, 14100, 72, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kabutops - Slash - Level 40
  (141, 14100, 163, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Kabutops - Metal Sound - Level 45
  (141, 14100, 319, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kabutops - Ancient Power - Level 54
  (141, 14100, 246, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Kabutops - Wring Out - Level 63
  (141, 14100, 378, 12, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Kabutops - Night Slash - Level 72
  (141, 14100, 400, 12, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Kabutops - Hone Claws - TM01
  (141, 14100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Kabutops - Hail - TM07
  (141, 14100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Kabutops - Hidden Power - TM10
  (141, 14100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Kabutops - Frustration - TM21
  (141, 14100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Kabutops - Smack Down - TM23
  (141, 14100, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 28),
  -- Kabutops - Return - TM27
  (141, 14100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Kabutops - Dig - TM28
  (141, 14100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Kabutops - Brick Break - TM31
  (141, 14100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 33),
  -- Kabutops - Rock Tomb - TM39
  (141, 14100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 34),
  -- Kabutops - Aerial Ace - TM40
  (141, 14100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 35),
  -- Kabutops - Facade - TM42
  (141, 14100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Kabutops - Round - TM48
  (141, 14100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Kabutops - Scald - TM55
  (141, 14100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 41),
  -- Kabutops - Giga Impact - TM68
  (141, 14100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Kabutops - Rock Polish - TM69
  (141, 14100, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 43),
  -- Kabutops - Stone Edge - TM71
  (141, 14100, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 44),
  -- Kabutops - Swords Dance - TM75
  (141, 14100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 45),
  -- Kabutops - Rock Slide - TM80
  (141, 14100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 46),
  -- Kabutops - X-Scissor - TM81
  (141, 14100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 47),
  -- Kabutops - Swagger - TM87
  (141, 14100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Kabutops - Substitute - TM90
  (141, 14100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Kabutops - Rock Smash - TM94
  (141, 14100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 50),
  -- Kabutops - Cut - HM01
  (141, 14100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 51),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 52),
  -- Kabutops - Waterfall - HM05
  (141, 14100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 53),
  -- Kabutops - Dive - HM06
  (141, 14100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 54),
  -- Kabutops - Aqua Tail - Move Tutor
  (141, 14100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Kabutops - Earth Power - Move Tutor
  (141, 14100, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Kabutops - Giga Drain - Move Tutor
  (141, 14100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kabutops - Icy Wind - Move Tutor
  (141, 14100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kabutops - Iron Defense - Move Tutor
  (141, 14100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kabutops - Knock Off - Move Tutor
  (141, 14100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Kabutops - Low Kick - Move Tutor
  (141, 14100, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Kabutops - Sleep Talk - Move Tutor
  (141, 14100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Kabutops - Snore - Move Tutor
  (141, 14100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Kabutops - Stealth Rock - Move Tutor
  (141, 14100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kabutops - Superpower - Move Tutor
  (141, 14100, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Aerodactyl - Ice Fang - Level 1
  (142, 14200, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Fire Fang - Level 1
  (142, 14200, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Thunder Fang - Level 1
  (142, 14200, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aerodactyl - Supersonic - Level 1
  (142, 14200, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aerodactyl - Scary Face - Level 1
  (142, 14200, 184, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Aerodactyl - Roar - Level 9
  (142, 14200, 46, 12, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Aerodactyl - Agility - Level 17
  (142, 14200, 97, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Aerodactyl - Ancient Power - Level 25
  (142, 14200, 246, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Aerodactyl - Crunch - Level 33
  (142, 14200, 242, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Aerodactyl - Take Down - Level 41
  (142, 14200, 36, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Aerodactyl - Sky Drop - Level 49
  (142, 14200, 507, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Aerodactyl - Iron Head - Level 57
  (142, 14200, 442, 12, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Aerodactyl - Hyper Beam - Level 65
  (142, 14200, 63, 12, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Aerodactyl - Rock Slide - Level 73
  (142, 14200, 157, 12, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Aerodactyl - Giga Impact - Level 81
  (142, 14200, 416, 12, NULL, 1, 81, NULL, NULL, NULL, 17),
  -- Aerodactyl - Hone Claws - TM01
  (142, 14200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Aerodactyl - Dragon Claw - TM02
  (142, 14200, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 19),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Aerodactyl - Hidden Power - TM10
  (142, 14200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Aerodactyl - Sunny Day - TM11
  (142, 14200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Aerodactyl - Taunt - TM12
  (142, 14200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Aerodactyl - Frustration - TM21
  (142, 14200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Aerodactyl - Smack Down - TM23
  (142, 14200, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Aerodactyl - Return - TM27
  (142, 14200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Aerodactyl - Flamethrower - TM35
  (142, 14200, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Aerodactyl - Rock Tomb - TM39
  (142, 14200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Aerodactyl - Aerial Ace - TM40
  (142, 14200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Aerodactyl - Torment - TM41
  (142, 14200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 38),
  -- Aerodactyl - Facade - TM42
  (142, 14200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Aerodactyl - Thief - TM46
  (142, 14200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 42),
  -- Aerodactyl - Round - TM48
  (142, 14200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Aerodactyl - Sky Drop - TM58
  (142, 14200, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 44),
  -- Aerodactyl - Incinerate - TM59
  (142, 14200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Aerodactyl - Payback - TM66
  (142, 14200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Aerodactyl - Giga Impact - TM68
  (142, 14200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Aerodactyl - Rock Polish - TM69
  (142, 14200, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 48),
  -- Aerodactyl - Stone Edge - TM71
  (142, 14200, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 49),
  -- Aerodactyl - Bulldoze - TM78
  (142, 14200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 50),
  -- Aerodactyl - Rock Slide - TM80
  (142, 14200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 51),
  -- Aerodactyl - Swagger - TM87
  (142, 14200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Aerodactyl - Substitute - TM90
  (142, 14200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Aerodactyl - Rock Smash - TM94
  (142, 14200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Aerodactyl - Strength - HM04
  (142, 14200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Aerodactyl - Assurance - Egg Move
  (142, 14200, 372, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aerodactyl - Curse - Egg Move
  (142, 14200, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aerodactyl - Dragon Breath - Egg Move
  (142, 14200, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aerodactyl - Foresight - Egg Move
  (142, 14200, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aerodactyl - Pursuit - Egg Move
  (142, 14200, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aerodactyl - Roost - Egg Move
  (142, 14200, 355, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aerodactyl - Steel Wing - Egg Move
  (142, 14200, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aerodactyl - Tailwind - Egg Move
  (142, 14200, 366, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aerodactyl - Whirlwind - Egg Move
  (142, 14200, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aerodactyl - Aqua Tail - Move Tutor
  (142, 14200, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Aerodactyl - Dragon Pulse - Move Tutor
  (142, 14200, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Aerodactyl - Earth Power - Move Tutor
  (142, 14200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Aerodactyl - Heat Wave - Move Tutor
  (142, 14200, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Aerodactyl - Iron Head - Move Tutor
  (142, 14200, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Aerodactyl - Iron Tail - Move Tutor
  (142, 14200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Aerodactyl - Roost - Move Tutor
  (142, 14200, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Aerodactyl - Sky Attack - Move Tutor
  (142, 14200, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Aerodactyl - Sleep Talk - Move Tutor
  (142, 14200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Aerodactyl - Snore - Move Tutor
  (142, 14200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Aerodactyl - Stealth Rock - Move Tutor
  (142, 14200, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Aerodactyl - Tailwind - Move Tutor
  (142, 14200, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Defense Curl - Level 4
  (143, 14300, 111, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snorlax - Amnesia - Level 9
  (143, 14300, 133, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Snorlax - Lick - Level 12
  (143, 14300, 122, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Snorlax - Belly Drum - Level 17
  (143, 14300, 187, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Snorlax - Yawn - Level 20
  (143, 14300, 281, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorlax - Chip Away - Level 25
  (143, 14300, 498, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorlax - Rest - Level 28
  (143, 14300, 156, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorlax - Snore - Level 28
  (143, 14300, 173, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Snorlax - Sleep Talk - Level 33
  (143, 14300, 214, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Snorlax - Body Slam - Level 36
  (143, 14300, 34, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Snorlax - Block - Level 41
  (143, 14300, 335, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Snorlax - Rollout - Level 44
  (143, 14300, 205, 12, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Snorlax - Crunch - Level 49
  (143, 14300, 242, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Snorlax - Heavy Slam - Level 52
  (143, 14300, 484, 12, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Snorlax - Giga Impact - Level 57
  (143, 14300, 416, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Snorlax - Hidden Power - TM10
  (143, 14300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Snorlax - Frustration - TM21
  (143, 14300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Snorlax - Smack Down - TM23
  (143, 14300, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 27),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 29),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Snorlax - Return - TM27
  (143, 14300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Snorlax - Brick Break - TM31
  (143, 14300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Snorlax - Flamethrower - TM35
  (143, 14300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 36),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 37),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 38),
  -- Snorlax - Rock Tomb - TM39
  (143, 14300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 39),
  -- Snorlax - Facade - TM42
  (143, 14300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Snorlax - Round - TM48
  (143, 14300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Snorlax - Focus Blast - TM52
  (143, 14300, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Snorlax - Fling - TM56
  (143, 14300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Snorlax - Incinerate - TM59
  (143, 14300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 46),
  -- Snorlax - Retaliate - TM67
  (143, 14300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 47),
  -- Snorlax - Giga Impact - TM68
  (143, 14300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Snorlax - Bulldoze - TM78
  (143, 14300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Snorlax - Rock Slide - TM80
  (143, 14300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Snorlax - Work Up - TM83
  (143, 14300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 51),
  -- Snorlax - Swagger - TM87
  (143, 14300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Snorlax - Substitute - TM90
  (143, 14300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Snorlax - Wild Charge - TM93
  (143, 14300, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 54),
  -- Snorlax - Rock Smash - TM94
  (143, 14300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 55),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 56),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 57),
  -- Snorlax - After You - Egg Move
  (143, 14300, 495, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snorlax - Charm - Egg Move
  (143, 14300, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Snorlax - Counter - Egg Move
  (143, 14300, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snorlax - Curse - Egg Move
  (143, 14300, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snorlax - Double-Edge - Egg Move
  (143, 14300, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snorlax - Fissure - Egg Move
  (143, 14300, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snorlax - Lick - Egg Move
  (143, 14300, 122, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snorlax - Natural Gift - Egg Move
  (143, 14300, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snorlax - Pursuit - Egg Move
  (143, 14300, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snorlax - Self-Destruct - Egg Move
  (143, 14300, 120, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snorlax - Whirlwind - Egg Move
  (143, 14300, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snorlax - Zen Headbutt - Egg Move
  (143, 14300, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snorlax - After You - Move Tutor
  (143, 14300, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Snorlax - Block - Move Tutor
  (143, 14300, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Snorlax - Covet - Move Tutor
  (143, 14300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Snorlax - Fire Punch - Move Tutor
  (143, 14300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Snorlax - Gunk Shot - Move Tutor
  (143, 14300, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Snorlax - Hyper Voice - Move Tutor
  (143, 14300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Snorlax - Ice Punch - Move Tutor
  (143, 14300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Snorlax - Icy Wind - Move Tutor
  (143, 14300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Snorlax - Iron Head - Move Tutor
  (143, 14300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Snorlax - Last Resort - Move Tutor
  (143, 14300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Snorlax - Outrage - Move Tutor
  (143, 14300, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Snorlax - Recycle - Move Tutor
  (143, 14300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Snorlax - Seed Bomb - Move Tutor
  (143, 14300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Snorlax - Sleep Talk - Move Tutor
  (143, 14300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Snorlax - Snore - Move Tutor
  (143, 14300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Snorlax - Superpower - Move Tutor
  (143, 14300, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Snorlax - Thunder Punch - Move Tutor
  (143, 14300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Snorlax - Zen Headbutt - Move Tutor
  (143, 14300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Powder Snow - Level 1
  (144, 14400, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Mist - Level 8
  (144, 14400, 54, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Articuno - Mind Reader - Level 22
  (144, 14400, 170, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Articuno - Ancient Power - Level 29
  (144, 14400, 246, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Articuno - Agility - Level 36
  (144, 14400, 97, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Articuno - Ice Beam - Level 43
  (144, 14400, 58, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Articuno - Reflect - Level 50
  (144, 14400, 115, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Articuno - Roost - Level 57
  (144, 14400, 355, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Articuno - Tailwind - Level 64
  (144, 14400, 366, 12, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Articuno - Blizzard - Level 71
  (144, 14400, 59, 12, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Articuno - Sheer Cold - Level 78
  (144, 14400, 329, 12, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Articuno - Hail - Level 85
  (144, 14400, 258, 12, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Articuno - Hurricane - Level 92
  (144, 14400, 542, 12, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Articuno - Hail - TM07
  (144, 14400, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Articuno - Hidden Power - TM10
  (144, 14400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Articuno - Frustration - TM21
  (144, 14400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Articuno - Return - TM27
  (144, 14400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 29),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 30),
  -- Articuno - Aerial Ace - TM40
  (144, 14400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Articuno - Facade - TM42
  (144, 14400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Articuno - Round - TM48
  (144, 14400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Articuno - Sky Drop - TM58
  (144, 14400, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 35),
  -- Articuno - Giga Impact - TM68
  (144, 14400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Articuno - Frost Breath - TM79
  (144, 14400, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 37),
  -- Articuno - Swagger - TM87
  (144, 14400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Articuno - Pluck - TM88
  (144, 14400, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 39),
  -- Articuno - U-turn - TM89
  (144, 14400, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 40),
  -- Articuno - Substitute - TM90
  (144, 14400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Articuno - Rock Smash - TM94
  (144, 14400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 43),
  -- Articuno - Icy Wind - Move Tutor
  (144, 14400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Articuno - Roost - Move Tutor
  (144, 14400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Articuno - Signal Beam - Move Tutor
  (144, 14400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Articuno - Sky Attack - Move Tutor
  (144, 14400, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Articuno - Sleep Talk - Move Tutor
  (144, 14400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Articuno - Snore - Move Tutor
  (144, 14400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Articuno - Tailwind - Move Tutor
  (144, 14400, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Wave - Level 8
  (145, 14500, 86, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Zapdos - Detect - Level 15
  (145, 14500, 197, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Zapdos - Pluck - Level 22
  (145, 14500, 365, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Zapdos - Ancient Power - Level 29
  (145, 14500, 246, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Zapdos - Charge - Level 36
  (145, 14500, 268, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Zapdos - Agility - Level 43
  (145, 14500, 97, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Zapdos - Discharge - Level 50
  (145, 14500, 435, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Zapdos - Roost - Level 57
  (145, 14500, 355, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Zapdos - Light Screen - Level 64
  (145, 14500, 113, 12, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Zapdos - Drill Peck - Level 71
  (145, 14500, 65, 12, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Zapdos - Thunder - Level 78
  (145, 14500, 87, 12, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Zapdos - Rain Dance - Level 85
  (145, 14500, 240, 12, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Zapdos - Zap Cannon - Level 92
  (145, 14500, 192, 12, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Zapdos - Hidden Power - TM10
  (145, 14500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Zapdos - Light Screen - TM16
  (145, 14500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Zapdos - Frustration - TM21
  (145, 14500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Zapdos - Return - TM27
  (145, 14500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Zapdos - Aerial Ace - TM40
  (145, 14500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Zapdos - Facade - TM42
  (145, 14500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Zapdos - Round - TM48
  (145, 14500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Zapdos - Charge Beam - TM57
  (145, 14500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 34),
  -- Zapdos - Sky Drop - TM58
  (145, 14500, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 35),
  -- Zapdos - Giga Impact - TM68
  (145, 14500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Zapdos - Flash - TM70
  (145, 14500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Zapdos - Volt Switch - TM72
  (145, 14500, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 38),
  -- Zapdos - Thunder Wave - TM73
  (145, 14500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 39),
  -- Zapdos - Swagger - TM87
  (145, 14500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Zapdos - Pluck - TM88
  (145, 14500, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 41),
  -- Zapdos - U-turn - TM89
  (145, 14500, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 42),
  -- Zapdos - Substitute - TM90
  (145, 14500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Zapdos - Wild Charge - TM93
  (145, 14500, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Zapdos - Rock Smash - TM94
  (145, 14500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 46),
  -- Zapdos - Heat Wave - Move Tutor
  (145, 14500, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Zapdos - Roost - Move Tutor
  (145, 14500, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Zapdos - Signal Beam - Move Tutor
  (145, 14500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Zapdos - Sky Attack - Move Tutor
  (145, 14500, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Zapdos - Sleep Talk - Move Tutor
  (145, 14500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Zapdos - Snore - Move Tutor
  (145, 14500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Zapdos - Tailwind - Move Tutor
  (145, 14500, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Fire Spin - Level 8
  (146, 14600, 83, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Moltres - Agility - Level 15
  (146, 14600, 97, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Moltres - Endure - Level 22
  (146, 14600, 203, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Moltres - Ancient Power - Level 29
  (146, 14600, 246, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Moltres - Flamethrower - Level 36
  (146, 14600, 53, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Moltres - Safeguard - Level 43
  (146, 14600, 219, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Moltres - Air Slash - Level 50
  (146, 14600, 403, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Moltres - Roost - Level 57
  (146, 14600, 355, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Moltres - Heat Wave - Level 64
  (146, 14600, 257, 12, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Moltres - Solar Beam - Level 71
  (146, 14600, 76, 12, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Moltres - Sky Attack - Level 78
  (146, 14600, 143, 12, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Moltres - Sunny Day - Level 85
  (146, 14600, 241, 12, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Moltres - Hurricane - Level 92
  (146, 14600, 542, 12, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Moltres - Hidden Power - TM10
  (146, 14600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Moltres - Safeguard - TM20
  (146, 14600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 23),
  -- Moltres - Frustration - TM21
  (146, 14600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Moltres - Solar Beam - TM22
  (146, 14600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 25),
  -- Moltres - Return - TM27
  (146, 14600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Moltres - Flamethrower - TM35
  (146, 14600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Moltres - Aerial Ace - TM40
  (146, 14600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Moltres - Facade - TM42
  (146, 14600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Moltres - Flame Charge - TM43
  (146, 14600, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 33),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Moltres - Round - TM48
  (146, 14600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Moltres - Overheat - TM50
  (146, 14600, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 36),
  -- Moltres - Sky Drop - TM58
  (146, 14600, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 37),
  -- Moltres - Incinerate - TM59
  (146, 14600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 38),
  -- Moltres - Will-O-Wisp - TM61
  (146, 14600, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 39),
  -- Moltres - Giga Impact - TM68
  (146, 14600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 40),
  -- Moltres - Swagger - TM87
  (146, 14600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Moltres - Pluck - TM88
  (146, 14600, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 42),
  -- Moltres - U-turn - TM89
  (146, 14600, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 43),
  -- Moltres - Substitute - TM90
  (146, 14600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Moltres - Rock Smash - TM94
  (146, 14600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 46),
  -- Moltres - Heat Wave - Move Tutor
  (146, 14600, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Moltres - Roost - Move Tutor
  (146, 14600, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Moltres - Sky Attack - Move Tutor
  (146, 14600, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Moltres - Sleep Talk - Move Tutor
  (146, 14600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Moltres - Snore - Move Tutor
  (146, 14600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Moltres - Tailwind - Move Tutor
  (146, 14600, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 5
  (147, 14700, 86, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Twister - Level 11
  (147, 14700, 239, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Rage - Level 15
  (147, 14700, 82, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Slam - Level 21
  (147, 14700, 21, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dratini - Agility - Level 25
  (147, 14700, 97, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Dragon Tail - Level 31
  (147, 14700, 525, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Aqua Tail - Level 35
  (147, 14700, 401, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Dragon Rush - Level 41
  (147, 14700, 407, 12, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Dratini - Safeguard - Level 45
  (147, 14700, 219, 12, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Dragon Dance - Level 51
  (147, 14700, 349, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 12, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Hyper Beam - Level 61
  (147, 14700, 63, 12, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Dratini - Hail - TM07
  (147, 14700, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Dratini - Hidden Power - TM10
  (147, 14700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Dratini - Sunny Day - TM11
  (147, 14700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Dratini - Hyper Beam - TM15
  (147, 14700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Dratini - Light Screen - TM16
  (147, 14700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Dratini - Safeguard - TM20
  (147, 14700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Dratini - Frustration - TM21
  (147, 14700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Dratini - Return - TM27
  (147, 14700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Dratini - Flamethrower - TM35
  (147, 14700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Dratini - Facade - TM42
  (147, 14700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Dratini - Round - TM48
  (147, 14700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Dratini - Incinerate - TM59
  (147, 14700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Dratini - Thunder Wave - TM73
  (147, 14700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 38),
  -- Dratini - Dragon Tail - TM82
  (147, 14700, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 39),
  -- Dratini - Swagger - TM87
  (147, 14700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Dratini - Substitute - TM90
  (147, 14700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 42),
  -- Dratini - Waterfall - HM05
  (147, 14700, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 43),
  -- Dratini - Aqua Jet - Egg Move
  (147, 14700, 453, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dratini - Dragon Breath - Egg Move
  (147, 14700, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dratini - Dragon Dance - Egg Move
  (147, 14700, 349, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dratini - Dragon Pulse - Egg Move
  (147, 14700, 406, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dratini - Dragon Rush - Egg Move
  (147, 14700, 407, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dratini - Extreme Speed - Egg Move
  (147, 14700, 245, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dratini - Haze - Egg Move
  (147, 14700, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dratini - Iron Tail - Egg Move
  (147, 14700, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dratini - Mist - Egg Move
  (147, 14700, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dratini - Supersonic - Egg Move
  (147, 14700, 48, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dratini - Water Pulse - Egg Move
  (147, 14700, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dratini - Aqua Tail - Move Tutor
  (147, 14700, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Dratini - Bind - Move Tutor
  (147, 14700, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Dratini - Draco Meteor - Move Tutor
  (147, 14700, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Dratini - Dragon Pulse - Move Tutor
  (147, 14700, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Dratini - Icy Wind - Move Tutor
  (147, 14700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Dratini - Iron Tail - Move Tutor
  (147, 14700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Dratini - Outrage - Move Tutor
  (147, 14700, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Dratini - Sleep Talk - Move Tutor
  (147, 14700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Dratini - Snore - Move Tutor
  (147, 14700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 5
  (148, 14800, 86, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dragonair - Twister - Level 11
  (148, 14800, 239, 12, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 15
  (148, 14800, 82, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dragonair - Slam - Level 21
  (148, 14800, 21, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Dragonair - Agility - Level 25
  (148, 14800, 97, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dragonair - Dragon Tail - Level 33
  (148, 14800, 525, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Dragonair - Aqua Tail - Level 39
  (148, 14800, 401, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Dragonair - Dragon Rush - Level 47
  (148, 14800, 407, 12, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Dragonair - Safeguard - Level 53
  (148, 14800, 219, 12, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Dragonair - Dragon Dance - Level 61
  (148, 14800, 349, 12, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Dragonair - Outrage - Level 67
  (148, 14800, 200, 12, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Dragonair - Hyper Beam - Level 75
  (148, 14800, 63, 12, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Dragonair - Hail - TM07
  (148, 14800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Dragonair - Hidden Power - TM10
  (148, 14800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Dragonair - Sunny Day - TM11
  (148, 14800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Dragonair - Hyper Beam - TM15
  (148, 14800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Dragonair - Light Screen - TM16
  (148, 14800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 24),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Dragonair - Safeguard - TM20
  (148, 14800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 27),
  -- Dragonair - Frustration - TM21
  (148, 14800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Dragonair - Return - TM27
  (148, 14800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Dragonair - Flamethrower - TM35
  (148, 14800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 34),
  -- Dragonair - Facade - TM42
  (148, 14800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Dragonair - Round - TM48
  (148, 14800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Dragonair - Incinerate - TM59
  (148, 14800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Dragonair - Thunder Wave - TM73
  (148, 14800, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 40),
  -- Dragonair - Dragon Tail - TM82
  (148, 14800, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 41),
  -- Dragonair - Swagger - TM87
  (148, 14800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Dragonair - Substitute - TM90
  (148, 14800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 44),
  -- Dragonair - Waterfall - HM05
  (148, 14800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 45),
  -- Dragonair - Aqua Tail - Move Tutor
  (148, 14800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Dragonair - Bind - Move Tutor
  (148, 14800, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Dragonair - Draco Meteor - Move Tutor
  (148, 14800, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Dragonair - Dragon Pulse - Move Tutor
  (148, 14800, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Dragonair - Icy Wind - Move Tutor
  (148, 14800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Dragonair - Iron Tail - Move Tutor
  (148, 14800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Dragonair - Outrage - Move Tutor
  (148, 14800, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Dragonair - Sleep Talk - Move Tutor
  (148, 14800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Dragonair - Snore - Move Tutor
  (148, 14800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Roost - Level 1
  (149, 14900, 355, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Thunder Wave - Level 5
  (149, 14900, 86, 12, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Dragonite - Twister - Level 11
  (149, 14900, 239, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Dragonite - Dragon Rage - Level 15
  (149, 14900, 82, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Dragonite - Slam - Level 21
  (149, 14900, 21, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Dragonite - Agility - Level 25
  (149, 14900, 97, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Dragonite - Dragon Tail - Level 33
  (149, 14900, 525, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Dragonite - Aqua Tail - Level 39
  (149, 14900, 401, 12, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Dragonite - Dragon Rush - Level 47
  (149, 14900, 407, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Dragonite - Safeguard - Level 53
  (149, 14900, 219, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Dragonite - Wing Attack - Level 55
  (149, 14900, 17, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Dragonite - Dragon Dance - Level 61
  (149, 14900, 349, 12, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Dragonite - Outrage - Level 67
  (149, 14900, 200, 12, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Dragonite - Hyper Beam - Level 75
  (149, 14900, 63, 12, NULL, 1, 75, NULL, NULL, NULL, 20),
  -- Dragonite - Hurricane - Level 81
  (149, 14900, 542, 12, NULL, 1, 81, NULL, NULL, NULL, 21),
  -- Dragonite - Hone Claws - TM01
  (149, 14900, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 22),
  -- Dragonite - Dragon Claw - TM02
  (149, 14900, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 23),
  -- Dragonite - Roar - TM05
  (149, 14900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 24),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 25),
  -- Dragonite - Hail - TM07
  (149, 14900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 26),
  -- Dragonite - Hidden Power - TM10
  (149, 14900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 27),
  -- Dragonite - Sunny Day - TM11
  (149, 14900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 28),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 29),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 30),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 31),
  -- Dragonite - Light Screen - TM16
  (149, 14900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 32),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 33),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 34),
  -- Dragonite - Safeguard - TM20
  (149, 14900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 35),
  -- Dragonite - Frustration - TM21
  (149, 14900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 36),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 37),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 38),
  -- Dragonite - Earthquake - TM26
  (149, 14900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 39),
  -- Dragonite - Return - TM27
  (149, 14900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 40),
  -- Dragonite - Brick Break - TM31
  (149, 14900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 41),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 42),
  -- Dragonite - Flamethrower - TM35
  (149, 14900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 43),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 44),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 45),
  -- Dragonite - Rock Tomb - TM39
  (149, 14900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 46),
  -- Dragonite - Aerial Ace - TM40
  (149, 14900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 47),
  -- Dragonite - Facade - TM42
  (149, 14900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 48),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 49),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 50),
  -- Dragonite - Round - TM48
  (149, 14900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 51),
  -- Dragonite - Focus Blast - TM52
  (149, 14900, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 52),
  -- Dragonite - Fling - TM56
  (149, 14900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 53),
  -- Dragonite - Sky Drop - TM58
  (149, 14900, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 54),
  -- Dragonite - Incinerate - TM59
  (149, 14900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 55),
  -- Dragonite - Giga Impact - TM68
  (149, 14900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 56),
  -- Dragonite - Stone Edge - TM71
  (149, 14900, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 57),
  -- Dragonite - Thunder Wave - TM73
  (149, 14900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 58),
  -- Dragonite - Bulldoze - TM78
  (149, 14900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 59),
  -- Dragonite - Rock Slide - TM80
  (149, 14900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 60),
  -- Dragonite - Dragon Tail - TM82
  (149, 14900, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 61),
  -- Dragonite - Swagger - TM87
  (149, 14900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 62),
  -- Dragonite - Substitute - TM90
  (149, 14900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 63),
  -- Dragonite - Rock Smash - TM94
  (149, 14900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 64),
  -- Dragonite - Cut - HM01
  (149, 14900, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 65),
  -- Dragonite - Fly - HM02
  (149, 14900, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 66),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 67),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 68),
  -- Dragonite - Waterfall - HM05
  (149, 14900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 69),
  -- Dragonite - Dive - HM06
  (149, 14900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 70),
  -- Dragonite - Aqua Tail - Move Tutor
  (149, 14900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Dragonite - Bind - Move Tutor
  (149, 14900, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Dragonite - Draco Meteor - Move Tutor
  (149, 14900, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Dragonite - Dragon Pulse - Move Tutor
  (149, 14900, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Dragonite - Fire Punch - Move Tutor
  (149, 14900, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Dragonite - Heat Wave - Move Tutor
  (149, 14900, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Dragonite - Ice Punch - Move Tutor
  (149, 14900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Dragonite - Icy Wind - Move Tutor
  (149, 14900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Dragonite - Iron Head - Move Tutor
  (149, 14900, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Dragonite - Iron Tail - Move Tutor
  (149, 14900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Dragonite - Outrage - Move Tutor
  (149, 14900, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Dragonite - Roost - Move Tutor
  (149, 14900, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Dragonite - Sleep Talk - Move Tutor
  (149, 14900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Dragonite - Snore - Move Tutor
  (149, 14900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Dragonite - Superpower - Move Tutor
  (149, 14900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Dragonite - Tailwind - Move Tutor
  (149, 14900, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Dragonite - Thunder Punch - Move Tutor
  (149, 14900, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Barrier - Level 1
  (150, 15000, 112, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Swift - Level 8
  (150, 15000, 129, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mewtwo - Future Sight - Level 15
  (150, 15000, 248, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mewtwo - Psych Up - Level 22
  (150, 15000, 244, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Mewtwo - Miracle Eye - Level 29
  (150, 15000, 357, 12, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Mewtwo - Mist - Level 36
  (150, 15000, 54, 12, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Mewtwo - Psycho Cut - Level 43
  (150, 15000, 427, 12, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Mewtwo - Amnesia - Level 50
  (150, 15000, 133, 12, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Mewtwo - Power Swap - Level 57
  (150, 15000, 384, 12, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Mewtwo - Guard Swap - Level 57
  (150, 15000, 385, 12, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Mewtwo - Psychic - Level 64
  (150, 15000, 94, 12, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Mewtwo - Me First - Level 71
  (150, 15000, 382, 12, NULL, 1, 71, NULL, NULL, NULL, 14),
  -- Mewtwo - Recover - Level 79
  (150, 15000, 105, 12, NULL, 1, 79, NULL, NULL, NULL, 15),
  -- Mewtwo - Safeguard - Level 86
  (150, 15000, 219, 12, NULL, 1, 86, NULL, NULL, NULL, 16),
  -- Mewtwo - Aura Sphere - Level 93
  (150, 15000, 396, 12, NULL, 1, 93, NULL, NULL, NULL, 17),
  -- Mewtwo - Psystrike - Level 100
  (150, 15000, 540, 12, NULL, 1, 100, NULL, NULL, NULL, 18),
  -- Mewtwo - Psyshock - TM03
  (150, 15000, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Mewtwo - Calm Mind - TM04
  (150, 15000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Mewtwo - Hail - TM07
  (150, 15000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Mewtwo - Bulk Up - TM08
  (150, 15000, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 23),
  -- Mewtwo - Hidden Power - TM10
  (150, 15000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Mewtwo - Taunt - TM12
  (150, 15000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 26),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 27),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 28),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 29),
  -- Mewtwo - Light Screen - TM16
  (150, 15000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 30),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 31),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 32),
  -- Mewtwo - Telekinesis - TM19
  (150, 15000, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 33),
  -- Mewtwo - Safeguard - TM20
  (150, 15000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 34),
  -- Mewtwo - Frustration - TM21
  (150, 15000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 35),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 36),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 37),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 38),
  -- Mewtwo - Earthquake - TM26
  (150, 15000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 39),
  -- Mewtwo - Return - TM27
  (150, 15000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 40),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 41),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 42),
  -- Mewtwo - Brick Break - TM31
  (150, 15000, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 43),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 44),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 45),
  -- Mewtwo - Flamethrower - TM35
  (150, 15000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 46),
  -- Mewtwo - Sandstorm - TM37
  (150, 15000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 47),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 48),
  -- Mewtwo - Rock Tomb - TM39
  (150, 15000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 49),
  -- Mewtwo - Aerial Ace - TM40
  (150, 15000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 50),
  -- Mewtwo - Torment - TM41
  (150, 15000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 51),
  -- Mewtwo - Facade - TM42
  (150, 15000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 52),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 53),
  -- Mewtwo - Low Sweep - TM47
  (150, 15000, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 54),
  -- Mewtwo - Round - TM48
  (150, 15000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 55),
  -- Mewtwo - Focus Blast - TM52
  (150, 15000, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 56),
  -- Mewtwo - Energy Ball - TM53
  (150, 15000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 57),
  -- Mewtwo - Fling - TM56
  (150, 15000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 58),
  -- Mewtwo - Charge Beam - TM57
  (150, 15000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 59),
  -- Mewtwo - Incinerate - TM59
  (150, 15000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 60),
  -- Mewtwo - Will-O-Wisp - TM61
  (150, 15000, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 61),
  -- Mewtwo - Embargo - TM63
  (150, 15000, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 62),
  -- Mewtwo - Giga Impact - TM68
  (150, 15000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 63),
  -- Mewtwo - Flash - TM70
  (150, 15000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 64),
  -- Mewtwo - Stone Edge - TM71
  (150, 15000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 65),
  -- Mewtwo - Thunder Wave - TM73
  (150, 15000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 66),
  -- Mewtwo - Psych Up - TM77
  (150, 15000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 67),
  -- Mewtwo - Bulldoze - TM78
  (150, 15000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 68),
  -- Mewtwo - Rock Slide - TM80
  (150, 15000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 69),
  -- Mewtwo - Poison Jab - TM84
  (150, 15000, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 70),
  -- Mewtwo - Dream Eater - TM85
  (150, 15000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 71),
  -- Mewtwo - Grass Knot - TM86
  (150, 15000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 72),
  -- Mewtwo - Swagger - TM87
  (150, 15000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 73),
  -- Mewtwo - Substitute - TM90
  (150, 15000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 74),
  -- Mewtwo - Trick Room - TM92
  (150, 15000, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 75),
  -- Mewtwo - Rock Smash - TM94
  (150, 15000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 76),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 77),
  -- Mewtwo - Aqua Tail - Move Tutor
  (150, 15000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Mewtwo - Drain Punch - Move Tutor
  (150, 15000, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Mewtwo - Fire Punch - Move Tutor
  (150, 15000, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Mewtwo - Foul Play - Move Tutor
  (150, 15000, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Mewtwo - Gravity - Move Tutor
  (150, 15000, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Mewtwo - Ice Punch - Move Tutor
  (150, 15000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Mewtwo - Icy Wind - Move Tutor
  (150, 15000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Mewtwo - Iron Tail - Move Tutor
  (150, 15000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Mewtwo - Low Kick - Move Tutor
  (150, 15000, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Mewtwo - Magic Coat - Move Tutor
  (150, 15000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Mewtwo - Magic Room - Move Tutor
  (150, 15000, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Mewtwo - Recycle - Move Tutor
  (150, 15000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Mewtwo - Role Play - Move Tutor
  (150, 15000, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Mewtwo - Signal Beam - Move Tutor
  (150, 15000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Mewtwo - Skill Swap - Move Tutor
  (150, 15000, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 92),
  -- Mewtwo - Sleep Talk - Move Tutor
  (150, 15000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 93),
  -- Mewtwo - Snatch - Move Tutor
  (150, 15000, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 94),
  -- Mewtwo - Snore - Move Tutor
  (150, 15000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 95),
  -- Mewtwo - Thunder Punch - Move Tutor
  (150, 15000, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 96),
  -- Mewtwo - Trick - Move Tutor
  (150, 15000, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 97),
  -- Mewtwo - Wonder Room - Move Tutor
  (150, 15000, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 98),
  -- Mewtwo - Zen Headbutt - Move Tutor
  (150, 15000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 99),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Reflect Type - Level 1
  (151, 15100, 513, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Transform - Level 1
  (151, 15100, 144, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mew - Mega Punch - Level 10
  (151, 15100, 5, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mew - Metronome - Level 20
  (151, 15100, 118, 12, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Mew - Psychic - Level 30
  (151, 15100, 94, 12, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Mew - Barrier - Level 40
  (151, 15100, 112, 12, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Mew - Ancient Power - Level 50
  (151, 15100, 246, 12, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Mew - Amnesia - Level 60
  (151, 15100, 133, 12, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Mew - Me First - Level 70
  (151, 15100, 382, 12, NULL, 1, 70, NULL, NULL, NULL, 10),
  -- Mew - Baton Pass - Level 80
  (151, 15100, 226, 12, NULL, 1, 80, NULL, NULL, NULL, 11),
  -- Mew - Nasty Plot - Level 90
  (151, 15100, 417, 12, NULL, 1, 90, NULL, NULL, NULL, 12),
  -- Mew - Aura Sphere - Level 100
  (151, 15100, 396, 12, NULL, 1, 100, NULL, NULL, NULL, 13),
  -- Mew - Hone Claws - TM01
  (151, 15100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Mew - Dragon Claw - TM02
  (151, 15100, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 15),
  -- Mew - Psyshock - TM03
  (151, 15100, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 16),
  -- Mew - Calm Mind - TM04
  (151, 15100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 17),
  -- Mew - Roar - TM05
  (151, 15100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Mew - Hail - TM07
  (151, 15100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Mew - Bulk Up - TM08
  (151, 15100, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 21),
  -- Mew - Venoshock - TM09
  (151, 15100, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 22),
  -- Mew - Hidden Power - TM10
  (151, 15100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Mew - Taunt - TM12
  (151, 15100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 27),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Mew - Light Screen - TM16
  (151, 15100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 29),
  -- Mew - Protect - TM17
  (151, 15100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Mew - Telekinesis - TM19
  (151, 15100, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Mew - Safeguard - TM20
  (151, 15100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 33),
  -- Mew - Frustration - TM21
  (151, 15100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 34),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 35),
  -- Mew - Smack Down - TM23
  (151, 15100, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 36),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 37),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 38),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 39),
  -- Mew - Return - TM27
  (151, 15100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 40),
  -- Mew - Dig - TM28
  (151, 15100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 41),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 42),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 43),
  -- Mew - Brick Break - TM31
  (151, 15100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 44),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 45),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 46),
  -- Mew - Sludge Wave - TM34
  (151, 15100, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 47),
  -- Mew - Flamethrower - TM35
  (151, 15100, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 48),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 49),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 50),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 51),
  -- Mew - Rock Tomb - TM39
  (151, 15100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 52),
  -- Mew - Aerial Ace - TM40
  (151, 15100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 53),
  -- Mew - Torment - TM41
  (151, 15100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 54),
  -- Mew - Facade - TM42
  (151, 15100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 55),
  -- Mew - Flame Charge - TM43
  (151, 15100, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 56),
  -- Mew - Rest - TM44
  (151, 15100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 57),
  -- Mew - Attract - TM45
  (151, 15100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 58),
  -- Mew - Thief - TM46
  (151, 15100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 59),
  -- Mew - Low Sweep - TM47
  (151, 15100, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 60),
  -- Mew - Round - TM48
  (151, 15100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 61),
  -- Mew - Echoed Voice - TM49
  (151, 15100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 62),
  -- Mew - Overheat - TM50
  (151, 15100, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 63),
  -- Mew - Ally Switch - TM51
  (151, 15100, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 64),
  -- Mew - Focus Blast - TM52
  (151, 15100, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 65),
  -- Mew - Energy Ball - TM53
  (151, 15100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 66),
  -- Mew - False Swipe - TM54
  (151, 15100, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 67),
  -- Mew - Scald - TM55
  (151, 15100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 68),
  -- Mew - Fling - TM56
  (151, 15100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 69),
  -- Mew - Charge Beam - TM57
  (151, 15100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 70),
  -- Mew - Sky Drop - TM58
  (151, 15100, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 71),
  -- Mew - Incinerate - TM59
  (151, 15100, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 72),
  -- Mew - Quash - TM60
  (151, 15100, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 73),
  -- Mew - Will-O-Wisp - TM61
  (151, 15100, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 74),
  -- Mew - Acrobatics - TM62
  (151, 15100, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 75),
  -- Mew - Embargo - TM63
  (151, 15100, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 76),
  -- Mew - Explosion - TM64
  (151, 15100, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 77),
  -- Mew - Shadow Claw - TM65
  (151, 15100, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 78),
  -- Mew - Payback - TM66
  (151, 15100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 79),
  -- Mew - Retaliate - TM67
  (151, 15100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 80),
  -- Mew - Giga Impact - TM68
  (151, 15100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 81),
  -- Mew - Rock Polish - TM69
  (151, 15100, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 82),
  -- Mew - Flash - TM70
  (151, 15100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 83),
  -- Mew - Stone Edge - TM71
  (151, 15100, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 84),
  -- Mew - Volt Switch - TM72
  (151, 15100, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 85),
  -- Mew - Thunder Wave - TM73
  (151, 15100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 86),
  -- Mew - Gyro Ball - TM74
  (151, 15100, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 87),
  -- Mew - Swords Dance - TM75
  (151, 15100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 88),
  -- Mew - Struggle Bug - TM76
  (151, 15100, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 89),
  -- Mew - Psych Up - TM77
  (151, 15100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 90),
  -- Mew - Bulldoze - TM78
  (151, 15100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 91),
  -- Mew - Frost Breath - TM79
  (151, 15100, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 92),
  -- Mew - Rock Slide - TM80
  (151, 15100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 93),
  -- Mew - X-Scissor - TM81
  (151, 15100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 94),
  -- Mew - Dragon Tail - TM82
  (151, 15100, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 95),
  -- Mew - Work Up - TM83
  (151, 15100, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 96),
  -- Mew - Poison Jab - TM84
  (151, 15100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 97),
  -- Mew - Dream Eater - TM85
  (151, 15100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 98),
  -- Mew - Grass Knot - TM86
  (151, 15100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 99),
  -- Mew - Swagger - TM87
  (151, 15100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 100),
  -- Mew - Pluck - TM88
  (151, 15100, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 101),
  -- Mew - U-turn - TM89
  (151, 15100, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 102),
  -- Mew - Substitute - TM90
  (151, 15100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 103),
  -- Mew - Flash Cannon - TM91
  (151, 15100, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 104),
  -- Mew - Trick Room - TM92
  (151, 15100, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 105),
  -- Mew - Wild Charge - TM93
  (151, 15100, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 106),
  -- Mew - Rock Smash - TM94
  (151, 15100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 107),
  -- Mew - Snarl - TM95
  (151, 15100, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 108),
  -- Mew - Cut - HM01
  (151, 15100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 109),
  -- Mew - Fly - HM02
  (151, 15100, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 110),
  -- Mew - Surf - HM03
  (151, 15100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 111),
  -- Mew - Strength - HM04
  (151, 15100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 112),
  -- Mew - Waterfall - HM05
  (151, 15100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 113),
  -- Mew - Dive - HM06
  (151, 15100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 114),
  -- Mew - After You - Move Tutor
  (151, 15100, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 115),
  -- Mew - Aqua Tail - Move Tutor
  (151, 15100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 116),
  -- Mew - Bind - Move Tutor
  (151, 15100, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 117),
  -- Mew - Block - Move Tutor
  (151, 15100, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 118),
  -- Mew - Bounce - Move Tutor
  (151, 15100, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 119),
  -- Mew - Bug Bite - Move Tutor
  (151, 15100, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 120),
  -- Mew - Covet - Move Tutor
  (151, 15100, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 121),
  -- Mew - Dark Pulse - Move Tutor
  (151, 15100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 122),
  -- Mew - Dragon Pulse - Move Tutor
  (151, 15100, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 123),
  -- Mew - Drain Punch - Move Tutor
  (151, 15100, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 124),
  -- Mew - Drill Run - Move Tutor
  (151, 15100, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 125),
  -- Mew - Dual Chop - Move Tutor
  (151, 15100, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 126),
  -- Mew - Earth Power - Move Tutor
  (151, 15100, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 127),
  -- Mew - Electroweb - Move Tutor
  (151, 15100, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 128),
  -- Mew - Endeavor - Move Tutor
  (151, 15100, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 129),
  -- Mew - Fire Punch - Move Tutor
  (151, 15100, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 130),
  -- Mew - Foul Play - Move Tutor
  (151, 15100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 131),
  -- Mew - Gastro Acid - Move Tutor
  (151, 15100, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 132),
  -- Mew - Giga Drain - Move Tutor
  (151, 15100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 133),
  -- Mew - Gravity - Move Tutor
  (151, 15100, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 134),
  -- Mew - Gunk Shot - Move Tutor
  (151, 15100, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 135),
  -- Mew - Heal Bell - Move Tutor
  (151, 15100, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 136),
  -- Mew - Heat Wave - Move Tutor
  (151, 15100, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 137),
  -- Mew - Helping Hand - Move Tutor
  (151, 15100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 138),
  -- Mew - Hyper Voice - Move Tutor
  (151, 15100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 139),
  -- Mew - Ice Punch - Move Tutor
  (151, 15100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 140),
  -- Mew - Icy Wind - Move Tutor
  (151, 15100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 141),
  -- Mew - Iron Defense - Move Tutor
  (151, 15100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 142),
  -- Mew - Iron Head - Move Tutor
  (151, 15100, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 143),
  -- Mew - Iron Tail - Move Tutor
  (151, 15100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 144),
  -- Mew - Knock Off - Move Tutor
  (151, 15100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 145),
  -- Mew - Last Resort - Move Tutor
  (151, 15100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 146),
  -- Mew - Low Kick - Move Tutor
  (151, 15100, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 147),
  -- Mew - Magic Coat - Move Tutor
  (151, 15100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 148),
  -- Mew - Magic Room - Move Tutor
  (151, 15100, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 149),
  -- Mew - Magnet Rise - Move Tutor
  (151, 15100, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 150),
  -- Mew - Outrage - Move Tutor
  (151, 15100, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 151),
  -- Mew - Pain Split - Move Tutor
  (151, 15100, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 152),
  -- Mew - Recycle - Move Tutor
  (151, 15100, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 153),
  -- Mew - Role Play - Move Tutor
  (151, 15100, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 154),
  -- Mew - Roost - Move Tutor
  (151, 15100, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 155),
  -- Mew - Seed Bomb - Move Tutor
  (151, 15100, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 156),
  -- Mew - Signal Beam - Move Tutor
  (151, 15100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 157),
  -- Mew - Skill Swap - Move Tutor
  (151, 15100, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 158),
  -- Mew - Sky Attack - Move Tutor
  (151, 15100, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 159),
  -- Mew - Sleep Talk - Move Tutor
  (151, 15100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 160),
  -- Mew - Snatch - Move Tutor
  (151, 15100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 161),
  -- Mew - Snore - Move Tutor
  (151, 15100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 162),
  -- Mew - Spite - Move Tutor
  (151, 15100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 163),
  -- Mew - Stealth Rock - Move Tutor
  (151, 15100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 164),
  -- Mew - Super Fang - Move Tutor
  (151, 15100, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 165),
  -- Mew - Superpower - Move Tutor
  (151, 15100, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 166),
  -- Mew - Synthesis - Move Tutor
  (151, 15100, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 167),
  -- Mew - Tailwind - Move Tutor
  (151, 15100, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 168),
  -- Mew - Thunder Punch - Move Tutor
  (151, 15100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 169),
  -- Mew - Trick - Move Tutor
  (151, 15100, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 170),
  -- Mew - Uproar - Move Tutor
  (151, 15100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 171),
  -- Mew - Wonder Room - Move Tutor
  (151, 15100, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 172),
  -- Mew - Worry Seed - Move Tutor
  (151, 15100, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 173),
  -- Mew - Zen Headbutt - Move Tutor
  (151, 15100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 174);
