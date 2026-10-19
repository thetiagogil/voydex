-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and inherited ZA TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope.
-- Delta note: Rows exclude Pokémon/forms already seeded in base ZA; base ZA TM machine rows are inherited through the parent content scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension learnset delta rows for species 951-1000.
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
  -- Capsakid - Leer - Level 1
  (951, 95100, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Capsakid - Leafage - Level 1
  (951, 95100, 670, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Capsakid - Bite - Level 4
  (951, 95100, 44, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Capsakid - Rollout - Level 8
  (951, 95100, 205, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Capsakid - Growth - Level 10
  (951, 95100, 74, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Capsakid - Razor Leaf - Level 13
  (951, 95100, 75, 27, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Capsakid - Leech Seed - Level 16
  (951, 95100, 73, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Capsakid - Bullet Seed - Level 21
  (951, 95100, 331, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Capsakid - Headbutt - Level 24
  (951, 95100, 29, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Capsakid - Zen Headbutt - Level 28
  (951, 95100, 428, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Capsakid - Magical Leaf - Level 32
  (951, 95100, 345, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Capsakid - Super Fang - Level 35
  (951, 95100, 162, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Capsakid - Crunch - Level 38
  (951, 95100, 242, 27, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Capsakid - Seed Bomb - Level 44
  (951, 95100, 402, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Capsakid - Solar Beam - Level 48
  (951, 95100, 76, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Capsakid - Headbutt - TM001
  (951, 95100, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Capsakid - Protect - TM017
  (951, 95100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Capsakid - Crunch - TM025
  (951, 95100, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Capsakid - Energy Ball - TM026
  (951, 95100, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Capsakid - Endure - TM035
  (951, 95100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Capsakid - Bullet Seed - TM040
  (951, 95100, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 21),
  -- Capsakid - Giga Drain - TM042
  (951, 95100, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Capsakid - Zen Headbutt - TM059
  (951, 95100, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 23),
  -- Capsakid - Solar Beam - TM064
  (951, 95100, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 24),
  -- Capsakid - Substitute - TM085
  (951, 95100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Capsakid - Facade - TM109
  (951, 95100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 26),
  -- Capsakid - Trailblaze - TM115
  (951, 95100, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 27),
  -- Capsakid - Seed Bomb - TM128
  (951, 95100, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 28),
  -- Scovillain - Leer - Level 1
  (952, 95200, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scovillain - Leafage - Level 1
  (952, 95200, 670, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scovillain - Bite - Level 4
  (952, 95200, 44, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scovillain - Rollout - Level 8
  (952, 95200, 205, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scovillain - Growth - Level 10
  (952, 95200, 74, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Scovillain - Razor Leaf - Level 13
  (952, 95200, 75, 27, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scovillain - Leech Seed - Level 16
  (952, 95200, 73, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Scovillain - Bullet Seed - Level 21
  (952, 95200, 331, 27, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scovillain - Headbutt - Level 24
  (952, 95200, 29, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Scovillain - Zen Headbutt - Level 28
  (952, 95200, 428, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Scovillain - Magical Leaf - Level 32
  (952, 95200, 345, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Scovillain - Super Fang - Level 35
  (952, 95200, 162, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Scovillain - Crunch - Level 38
  (952, 95200, 242, 27, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Scovillain - Seed Bomb - Level 44
  (952, 95200, 402, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Scovillain - Solar Beam - Level 48
  (952, 95200, 76, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Scovillain - Overheat - Level 48
  (952, 95200, 315, 27, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Scovillain - Flamethrower - Evolution
  (952, 95200, 53, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Scovillain - Spicy Extract - Evolution
  (952, 95200, 858, 27, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Scovillain - Headbutt - TM001
  (952, 95200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 19),
  -- Scovillain - Fire Fang - TM014
  (952, 95200, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 20),
  -- Scovillain - Protect - TM017
  (952, 95200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Scovillain - Thunder Fang - TM021
  (952, 95200, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 22),
  -- Scovillain - Crunch - TM025
  (952, 95200, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Scovillain - Energy Ball - TM026
  (952, 95200, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Scovillain - Endure - TM035
  (952, 95200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Scovillain - Fire Blast - TM038
  (952, 95200, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Scovillain - Bullet Seed - TM040
  (952, 95200, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 27),
  -- Scovillain - Giga Drain - TM042
  (952, 95200, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 28),
  -- Scovillain - Hyper Beam - TM044
  (952, 95200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Scovillain - Overheat - TM050
  (952, 95200, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 30),
  -- Scovillain - Giga Impact - TM055
  (952, 95200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Scovillain - Will-O-Wisp - TM057
  (952, 95200, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 32),
  -- Scovillain - Zen Headbutt - TM059
  (952, 95200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Scovillain - Flamethrower - TM062
  (952, 95200, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Scovillain - Solar Beam - TM064
  (952, 95200, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Scovillain - Fire Spin - TM072
  (952, 95200, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 36),
  -- Scovillain - Nasty Plot - TM083
  (952, 95200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Scovillain - Substitute - TM085
  (952, 95200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Scovillain - Outrage - TM093
  (952, 95200, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 39),
  -- Scovillain - Flare Blitz - TM104
  (952, 95200, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 40),
  -- Scovillain - Facade - TM109
  (952, 95200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Scovillain - Trailblaze - TM115
  (952, 95200, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Scovillain - Seed Bomb - TM128
  (952, 95200, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 43),
  -- Scovillain - Double Hit - TM132
  (952, 95200, 458, 27, NULL, 2, NULL, NULL, 26002132, NULL, 44),
  -- Scovillain - Swagger - TM139
  (952, 95200, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 45),
  -- Tinkatink - Tackle - Level 1
  (957, 95700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkatink - Fairy Wind - Level 1
  (957, 95700, 584, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkatink - Metal Claw - Level 8
  (957, 95700, 232, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tinkatink - Rock Throw - Level 10
  (957, 95700, 88, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tinkatink - Rock Smash - Level 14
  (957, 95700, 249, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Tinkatink - Draining Kiss - Level 17
  (957, 95700, 577, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Tinkatink - Screech - Level 20
  (957, 95700, 103, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tinkatink - Brutal Swing - Level 24
  (957, 95700, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tinkatink - Fake Tears - Level 25
  (957, 95700, 313, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tinkatink - Flash Cannon - Level 31
  (957, 95700, 430, 27, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Tinkatink - Play Rough - Level 35
  (957, 95700, 583, 27, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Tinkatink - Knock Off - Level 40
  (957, 95700, 282, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tinkatink - Rock Smash - TM004
  (957, 95700, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Tinkatink - Thunder Wave - TM008
  (957, 95700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Tinkatink - Brick Break - TM010
  (957, 95700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Tinkatink - Rock Slide - TM012
  (957, 95700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Tinkatink - Light Screen - TM016
  (957, 95700, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Tinkatink - Protect - TM017
  (957, 95700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Tinkatink - Power-Up Punch - TM018
  (957, 95700, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 19),
  -- Tinkatink - Play Rough - TM020
  (957, 95700, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 20),
  -- Tinkatink - Swords Dance - TM030
  (957, 95700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Tinkatink - Reflect - TM031
  (957, 95700, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Tinkatink - Endure - TM035
  (957, 95700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Tinkatink - Rock Tomb - TM036
  (957, 95700, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Tinkatink - Stealth Rock - TM037
  (957, 95700, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 25),
  -- Tinkatink - Knock Off - TM045
  (957, 95700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Tinkatink - Stone Edge - TM065
  (957, 95700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 27),
  -- Tinkatink - Bulldoze - TM078
  (957, 95700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 28),
  -- Tinkatink - Flash Cannon - TM084
  (957, 95700, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 29),
  -- Tinkatink - Substitute - TM085
  (957, 95700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Tinkatink - Metronome - TM099
  (957, 95700, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 31),
  -- Tinkatink - Facade - TM109
  (957, 95700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 32),
  -- Tinkatink - False Swipe - TM122
  (957, 95700, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 33),
  -- Tinkatink - Fake Out - TM141
  (957, 95700, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 34),
  -- Tinkatink - Steel Beam - TM157
  (957, 95700, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 35),
  -- Tinkatuff - Tackle - Level 1
  (958, 95800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkatuff - Fairy Wind - Level 1
  (958, 95800, 584, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkatuff - Metal Claw - Level 8
  (958, 95800, 232, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tinkatuff - Rock Throw - Level 10
  (958, 95800, 88, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tinkatuff - Rock Smash - Level 14
  (958, 95800, 249, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Tinkatuff - Draining Kiss - Level 17
  (958, 95800, 577, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Tinkatuff - Screech - Level 20
  (958, 95800, 103, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tinkatuff - Brutal Swing - Level 24
  (958, 95800, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tinkatuff - Fake Tears - Level 25
  (958, 95800, 313, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tinkatuff - Flash Cannon - Level 31
  (958, 95800, 430, 27, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Tinkatuff - Play Rough - Level 35
  (958, 95800, 583, 27, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Tinkatuff - Knock Off - Level 40
  (958, 95800, 282, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tinkatuff - Rock Smash - TM004
  (958, 95800, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Tinkatuff - Thunder Wave - TM008
  (958, 95800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Tinkatuff - Brick Break - TM010
  (958, 95800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Tinkatuff - Bulk Up - TM011
  (958, 95800, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Tinkatuff - Rock Slide - TM012
  (958, 95800, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Tinkatuff - Light Screen - TM016
  (958, 95800, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Tinkatuff - Protect - TM017
  (958, 95800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Tinkatuff - Power-Up Punch - TM018
  (958, 95800, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Tinkatuff - Play Rough - TM020
  (958, 95800, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Tinkatuff - Swords Dance - TM030
  (958, 95800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Tinkatuff - Reflect - TM031
  (958, 95800, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Tinkatuff - Endure - TM035
  (958, 95800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Tinkatuff - Rock Tomb - TM036
  (958, 95800, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Tinkatuff - Stealth Rock - TM037
  (958, 95800, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Tinkatuff - Knock Off - TM045
  (958, 95800, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Tinkatuff - Stone Edge - TM065
  (958, 95800, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Tinkatuff - Bulldoze - TM078
  (958, 95800, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Tinkatuff - Flash Cannon - TM084
  (958, 95800, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 30),
  -- Tinkatuff - Substitute - TM085
  (958, 95800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Tinkatuff - Metronome - TM099
  (958, 95800, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 32),
  -- Tinkatuff - Facade - TM109
  (958, 95800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Tinkatuff - False Swipe - TM122
  (958, 95800, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 34),
  -- Tinkatuff - Fake Out - TM141
  (958, 95800, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 35),
  -- Tinkatuff - Steel Beam - TM157
  (958, 95800, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 36),
  -- Tinkaton - Tackle - Level 1
  (959, 95900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkaton - Fairy Wind - Level 1
  (959, 95900, 584, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkaton - Metal Claw - Level 8
  (959, 95900, 232, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tinkaton - Rock Throw - Level 10
  (959, 95900, 88, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tinkaton - Rock Smash - Level 14
  (959, 95900, 249, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Tinkaton - Draining Kiss - Level 17
  (959, 95900, 577, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Tinkaton - Screech - Level 20
  (959, 95900, 103, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tinkaton - Brutal Swing - Level 24
  (959, 95900, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tinkaton - Fake Tears - Level 25
  (959, 95900, 313, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tinkaton - Flash Cannon - Level 31
  (959, 95900, 430, 27, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Tinkaton - Play Rough - Level 35
  (959, 95900, 583, 27, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Tinkaton - Knock Off - Level 40
  (959, 95900, 282, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tinkaton - Heavy Slam - Level 44
  (959, 95900, 484, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tinkaton - Wood Hammer - Evolution
  (959, 95900, 452, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Tinkaton - Ice Hammer - Evolution
  (959, 95900, 665, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Tinkaton - Gigaton Hammer - Evolution
  (959, 95900, 893, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Tinkaton - Rock Smash - TM004
  (959, 95900, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Tinkaton - Thunder Wave - TM008
  (959, 95900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Tinkaton - Brick Break - TM010
  (959, 95900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Tinkaton - Bulk Up - TM011
  (959, 95900, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Tinkaton - Rock Slide - TM012
  (959, 95900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Tinkaton - Light Screen - TM016
  (959, 95900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Tinkaton - Protect - TM017
  (959, 95900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Tinkaton - Power-Up Punch - TM018
  (959, 95900, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 24),
  -- Tinkaton - Play Rough - TM020
  (959, 95900, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 25),
  -- Tinkaton - Swords Dance - TM030
  (959, 95900, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Tinkaton - Reflect - TM031
  (959, 95900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 27),
  -- Tinkaton - Endure - TM035
  (959, 95900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Tinkaton - Rock Tomb - TM036
  (959, 95900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Tinkaton - Stealth Rock - TM037
  (959, 95900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 30),
  -- Tinkaton - Hyper Beam - TM044
  (959, 95900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Tinkaton - Knock Off - TM045
  (959, 95900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 32),
  -- Tinkaton - Stone Edge - TM065
  (959, 95900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Tinkaton - Bulldoze - TM078
  (959, 95900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Tinkaton - Flash Cannon - TM084
  (959, 95900, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 35),
  -- Tinkaton - Substitute - TM085
  (959, 95900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Tinkaton - Metronome - TM099
  (959, 95900, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 37),
  -- Tinkaton - Facade - TM109
  (959, 95900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Tinkaton - False Swipe - TM122
  (959, 95900, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 39),
  -- Tinkaton - Fake Out - TM141
  (959, 95900, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 40),
  -- Tinkaton - Steel Beam - TM157
  (959, 95900, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 41),
  -- Cyclizar - Tackle - Level 1
  (967, 96700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyclizar - Growl - Level 1
  (967, 96700, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyclizar - Taunt - Level 11
  (967, 96700, 269, 27, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Cyclizar - Breaking Swipe - Level 14
  (967, 96700, 784, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Cyclizar - Quick Attack - Level 18
  (967, 96700, 98, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cyclizar - Bite - Level 23
  (967, 96700, 44, 27, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Cyclizar - Take Down - Level 25
  (967, 96700, 36, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cyclizar - U-turn - Level 27
  (967, 96700, 369, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Cyclizar - Shed Tail - Level 31
  (967, 96700, 880, 27, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyclizar - Dragon Claw - Level 36
  (967, 96700, 337, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Cyclizar - Iron Tail - Level 40
  (967, 96700, 231, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyclizar - Dragon Pulse - Level 45
  (967, 96700, 406, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Cyclizar - Double-Edge - Level 51
  (967, 96700, 38, 27, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Cyclizar - Power Whip - Level 55
  (967, 96700, 438, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cyclizar - Dragon Rush - Level 57
  (967, 96700, 407, 27, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Cyclizar - Headbutt - TM001
  (967, 96700, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Cyclizar - Dragon Claw - TM002
  (967, 96700, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Cyclizar - Fire Fang - TM014
  (967, 96700, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Cyclizar - Protect - TM017
  (967, 96700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Cyclizar - Thunder Fang - TM021
  (967, 96700, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Cyclizar - Aerial Ace - TM022
  (967, 96700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Cyclizar - Crunch - TM025
  (967, 96700, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Cyclizar - Body Slam - TM033
  (967, 96700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Cyclizar - Endure - TM035
  (967, 96700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Cyclizar - Hyper Beam - TM044
  (967, 96700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Cyclizar - Knock Off - TM045
  (967, 96700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Cyclizar - Mud Shot - TM046
  (967, 96700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Cyclizar - Agility - TM047
  (967, 96700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Cyclizar - Overheat - TM050
  (967, 96700, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 29),
  -- Cyclizar - Draco Meteor - TM054
  (967, 96700, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 30),
  -- Cyclizar - Giga Impact - TM055
  (967, 96700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Cyclizar - Double-Edge - TM056
  (967, 96700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Cyclizar - Iron Head - TM058
  (967, 96700, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Cyclizar - Thunderbolt - TM067
  (967, 96700, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Cyclizar - Hyper Voice - TM071
  (967, 96700, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Cyclizar - Dragon Pulse - TM075
  (967, 96700, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 36),
  -- Cyclizar - U-turn - TM082
  (967, 96700, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 37),
  -- Cyclizar - Substitute - TM085
  (967, 96700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Cyclizar - Wild Charge - TM086
  (967, 96700, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Cyclizar - Iron Tail - TM087
  (967, 96700, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Cyclizar - Outrage - TM093
  (967, 96700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 41),
  -- Cyclizar - Taunt - TM095
  (967, 96700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Cyclizar - Facade - TM109
  (967, 96700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Cyclizar - Flame Charge - TM114
  (967, 96700, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 44),
  -- Cyclizar - Trailblaze - TM115
  (967, 96700, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 45),
  -- Cyclizar - Scale Shot - TM143
  (967, 96700, 799, 27, NULL, 2, NULL, NULL, 26002143, NULL, 46),
  -- Cyclizar - Skull Bash - TM146
  (967, 96700, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 47),
  -- Glimmet - Rock Throw - Level 1
  (969, 96900, 88, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glimmet - Harden - Level 1
  (969, 96900, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glimmet - Acid Spray - Level 7
  (969, 96900, 491, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Glimmet - Ancient Power - Level 11
  (969, 96900, 246, 27, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Glimmet - Confuse Ray - Level 14
  (969, 96900, 109, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Glimmet - Stealth Rock - Level 18
  (969, 96900, 446, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Glimmet - Rock Blast - Level 25
  (969, 96900, 350, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glimmet - Self-Destruct - Level 29
  (969, 96900, 120, 27, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glimmet - Rock Slide - Level 33
  (969, 96900, 157, 27, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Glimmet - Power Gem - Level 37
  (969, 96900, 408, 27, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glimmet - Acid Armor - Level 41
  (969, 96900, 151, 27, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glimmet - Sludge Wave - Level 46
  (969, 96900, 482, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Glimmet - Explosion - Level 55
  (969, 96900, 153, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Glimmet - Toxic - TM007
  (969, 96900, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 14),
  -- Glimmet - Rock Slide - TM012
  (969, 96900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Glimmet - Light Screen - TM016
  (969, 96900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Glimmet - Protect - TM017
  (969, 96900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Glimmet - Power Gem - TM019
  (969, 96900, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 18),
  -- Glimmet - Reflect - TM031
  (969, 96900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Glimmet - Endure - TM035
  (969, 96900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Glimmet - Rock Tomb - TM036
  (969, 96900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Glimmet - Stealth Rock - TM037
  (969, 96900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 22),
  -- Glimmet - Mud Shot - TM046
  (969, 96900, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Glimmet - Self-Destruct - TM048
  (969, 96900, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 24),
  -- Glimmet - Sludge Bomb - TM053
  (969, 96900, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 25),
  -- Glimmet - Stone Edge - TM065
  (969, 96900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 26),
  -- Glimmet - Iron Defense - TM080
  (969, 96900, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 27),
  -- Glimmet - Substitute - TM085
  (969, 96900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Glimmet - Spikes - TM088
  (969, 96900, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 29),
  -- Glimmet - Toxic Spikes - TM089
  (969, 96900, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 30),
  -- Glimmet - Dazzling Gleam - TM092
  (969, 96900, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Glimmet - Gunk Shot - TM100
  (969, 96900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 32),
  -- Glimmet - Facade - TM109
  (969, 96900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Glimmet - Acid Spray - TM112
  (969, 96900, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 34),
  -- Glimmet - Ancient Power - TM120
  (969, 96900, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 35),
  -- Glimmet - Magnet Bomb - TM126
  (969, 96900, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 36),
  -- Glimmet - Meteor Beam - TM156
  (969, 96900, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 37),
  -- Glimmora - Rock Throw - Level 1
  (970, 97000, 88, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glimmora - Harden - Level 1
  (970, 97000, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glimmora - Spiky Shield - Level 1
  (970, 97000, 596, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glimmora - Acid Spray - Level 7
  (970, 97000, 491, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Glimmora - Ancient Power - Level 11
  (970, 97000, 246, 27, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Glimmora - Confuse Ray - Level 14
  (970, 97000, 109, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Glimmora - Stealth Rock - Level 18
  (970, 97000, 446, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Glimmora - Rock Blast - Level 25
  (970, 97000, 350, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Glimmora - Self-Destruct - Level 29
  (970, 97000, 120, 27, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Glimmora - Rock Slide - Level 33
  (970, 97000, 157, 27, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Glimmora - Power Gem - Level 37
  (970, 97000, 408, 27, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Glimmora - Acid Armor - Level 41
  (970, 97000, 151, 27, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Glimmora - Sludge Wave - Level 46
  (970, 97000, 482, 27, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Glimmora - Explosion - Level 55
  (970, 97000, 153, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Glimmora - Toxic Spikes - Evolution
  (970, 97000, 390, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Glimmora - Meteor Beam - Evolution
  (970, 97000, 800, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Glimmora - Mortal Spin - Evolution
  (970, 97000, 866, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Glimmora - Toxic - TM007
  (970, 97000, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 18),
  -- Glimmora - Rock Slide - TM012
  (970, 97000, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Glimmora - Light Screen - TM016
  (970, 97000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Glimmora - Protect - TM017
  (970, 97000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Glimmora - Power Gem - TM019
  (970, 97000, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 22),
  -- Glimmora - Energy Ball - TM026
  (970, 97000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 23),
  -- Glimmora - Reflect - TM031
  (970, 97000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 24),
  -- Glimmora - Endure - TM035
  (970, 97000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Glimmora - Rock Tomb - TM036
  (970, 97000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Glimmora - Stealth Rock - TM037
  (970, 97000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Glimmora - Hyper Beam - TM044
  (970, 97000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Glimmora - Mud Shot - TM046
  (970, 97000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Glimmora - Self-Destruct - TM048
  (970, 97000, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Glimmora - Earth Power - TM052
  (970, 97000, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Glimmora - Sludge Bomb - TM053
  (970, 97000, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 32),
  -- Glimmora - Giga Impact - TM055
  (970, 97000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Glimmora - Solar Beam - TM064
  (970, 97000, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 34),
  -- Glimmora - Stone Edge - TM065
  (970, 97000, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Glimmora - Iron Defense - TM080
  (970, 97000, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Glimmora - Flash Cannon - TM084
  (970, 97000, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 37),
  -- Glimmora - Substitute - TM085
  (970, 97000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Glimmora - Spikes - TM088
  (970, 97000, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 39),
  -- Glimmora - Toxic Spikes - TM089
  (970, 97000, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 40),
  -- Glimmora - Dazzling Gleam - TM092
  (970, 97000, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 41),
  -- Glimmora - Gunk Shot - TM100
  (970, 97000, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Glimmora - Facade - TM109
  (970, 97000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Glimmora - Acid Spray - TM112
  (970, 97000, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 44),
  -- Glimmora - Ancient Power - TM120
  (970, 97000, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 45),
  -- Glimmora - Magnet Bomb - TM126
  (970, 97000, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 46),
  -- Glimmora - Meteor Beam - TM156
  (970, 97000, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 47),
  -- Greavard - Tackle - Level 1
  (971, 97100, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greavard - Growl - Level 1
  (971, 97100, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greavard - Smokescreen - Level 1
  (971, 97100, 108, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Greavard - Shadow Sneak - Level 1
  (971, 97100, 425, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Greavard - Lick - Level 3
  (971, 97100, 122, 27, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Greavard - Tail Whip - Level 6
  (971, 97100, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Greavard - Bite - Level 6
  (971, 97100, 44, 27, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Greavard - Roar - Level 9
  (971, 97100, 46, 27, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Greavard - Headbutt - Level 12
  (971, 97100, 29, 27, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Greavard - Dig - Level 16
  (971, 97100, 91, 27, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Greavard - Snarl - Level 20
  (971, 97100, 555, 27, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Greavard - Crunch - Level 28
  (971, 97100, 242, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Greavard - Play Rough - Level 32
  (971, 97100, 583, 27, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Greavard - Phantom Force - Level 41
  (971, 97100, 566, 27, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Greavard - Charm - Level 46
  (971, 97100, 204, 27, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Greavard - Double-Edge - Level 52
  (971, 97100, 38, 27, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Greavard - Headbutt - TM001
  (971, 97100, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Greavard - Roar - TM005
  (971, 97100, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Greavard - Fire Fang - TM014
  (971, 97100, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Greavard - Ice Fang - TM015
  (971, 97100, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Greavard - Protect - TM017
  (971, 97100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Greavard - Play Rough - TM020
  (971, 97100, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Greavard - Thunder Fang - TM021
  (971, 97100, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Greavard - Crunch - TM025
  (971, 97100, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Greavard - Dig - TM028
  (971, 97100, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Greavard - Endure - TM035
  (971, 97100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Greavard - Mud Shot - TM046
  (971, 97100, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Greavard - Double-Edge - TM056
  (971, 97100, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Greavard - Will-O-Wisp - TM057
  (971, 97100, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Greavard - Zen Headbutt - TM059
  (971, 97100, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Greavard - Shadow Ball - TM074
  (971, 97100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 31),
  -- Greavard - Bulldoze - TM078
  (971, 97100, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 32),
  -- Greavard - Substitute - TM085
  (971, 97100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Greavard - Facade - TM109
  (971, 97100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 34),
  -- Greavard - Ominous Wind - TM119
  (971, 97100, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 35),
  -- Greavard - Psychic Fangs - TM124
  (971, 97100, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 36),
  -- Greavard - Dream Eater - TM127
  (971, 97100, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 37),
  -- Greavard - Swagger - TM139
  (971, 97100, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 38),
  -- Houndstone - Tackle - Level 1
  (972, 97200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndstone - Growl - Level 1
  (972, 97200, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndstone - Smokescreen - Level 1
  (972, 97200, 108, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndstone - Shadow Sneak - Level 1
  (972, 97200, 425, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Houndstone - Lick - Level 3
  (972, 97200, 122, 27, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Houndstone - Tail Whip - Level 6
  (972, 97200, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Houndstone - Bite - Level 6
  (972, 97200, 44, 27, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Houndstone - Roar - Level 9
  (972, 97200, 46, 27, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Houndstone - Headbutt - Level 12
  (972, 97200, 29, 27, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Houndstone - Dig - Level 16
  (972, 97200, 91, 27, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Houndstone - Snarl - Level 20
  (972, 97200, 555, 27, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Houndstone - Crunch - Level 28
  (972, 97200, 242, 27, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Houndstone - Play Rough - Level 32
  (972, 97200, 583, 27, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Houndstone - Phantom Force - Level 41
  (972, 97200, 566, 27, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Houndstone - Charm - Level 46
  (972, 97200, 204, 27, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Houndstone - Double-Edge - Level 52
  (972, 97200, 38, 27, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Houndstone - Last Respects - Evolution
  (972, 97200, 854, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Houndstone - Headbutt - TM001
  (972, 97200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Houndstone - Roar - TM005
  (972, 97200, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Houndstone - Fire Fang - TM014
  (972, 97200, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 20),
  -- Houndstone - Ice Fang - TM015
  (972, 97200, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 21),
  -- Houndstone - Protect - TM017
  (972, 97200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Houndstone - Play Rough - TM020
  (972, 97200, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Houndstone - Thunder Fang - TM021
  (972, 97200, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 24),
  -- Houndstone - Crunch - TM025
  (972, 97200, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Houndstone - Dig - TM028
  (972, 97200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Houndstone - Endure - TM035
  (972, 97200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Houndstone - Hyper Beam - TM044
  (972, 97200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Houndstone - Mud Shot - TM046
  (972, 97200, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Houndstone - Giga Impact - TM055
  (972, 97200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Houndstone - Double-Edge - TM056
  (972, 97200, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Houndstone - Will-O-Wisp - TM057
  (972, 97200, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 32),
  -- Houndstone - Zen Headbutt - TM059
  (972, 97200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Houndstone - Shadow Claw - TM061
  (972, 97200, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 34),
  -- Houndstone - Shadow Ball - TM074
  (972, 97200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Houndstone - Bulldoze - TM078
  (972, 97200, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Houndstone - Substitute - TM085
  (972, 97200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Houndstone - Work Up - TM103
  (972, 97200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 38),
  -- Houndstone - Facade - TM109
  (972, 97200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Houndstone - Ominous Wind - TM119
  (972, 97200, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 40),
  -- Houndstone - Psychic Fangs - TM124
  (972, 97200, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 41),
  -- Houndstone - Dream Eater - TM127
  (972, 97200, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 42),
  -- Houndstone - Seed Bomb - TM128
  (972, 97200, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 43),
  -- Houndstone - Swagger - TM139
  (972, 97200, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 44),
  -- Flamigo - Peck - Level 1
  (973, 97300, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flamigo - Mimic - Level 1
  (973, 97300, 102, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flamigo - Detect - Level 9
  (973, 97300, 197, 27, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Flamigo - Wing Attack - Level 12
  (973, 97300, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Flamigo - Focus Energy - Level 15
  (973, 97300, 116, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flamigo - Lunge - Level 18
  (973, 97300, 679, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Flamigo - Brutal Swing - Level 21
  (973, 97300, 693, 27, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Flamigo - Dual Wingbeat - Level 26
  (973, 97300, 814, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Flamigo - Feather Dance - Level 30
  (973, 97300, 297, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Flamigo - Air Slash - Level 35
  (973, 97300, 403, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Flamigo - Brick Break - Level 42
  (973, 97300, 280, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Flamigo - Fly - Level 47
  (973, 97300, 19, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Flamigo - Brave Bird - Level 54
  (973, 97300, 413, 27, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Flamigo - Rock Smash - TM004
  (973, 97300, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Flamigo - Brick Break - TM010
  (973, 97300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Flamigo - Bulk Up - TM011
  (973, 97300, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Flamigo - Protect - TM017
  (973, 97300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Flamigo - Aerial Ace - TM022
  (973, 97300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Flamigo - Swords Dance - TM030
  (973, 97300, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Flamigo - Double Team - TM032
  (973, 97300, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Flamigo - Endure - TM035
  (973, 97300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Flamigo - Water Pulse - TM041
  (973, 97300, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 22),
  -- Flamigo - Fly - TM043
  (973, 97300, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 23),
  -- Flamigo - Hyper Beam - TM044
  (973, 97300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Flamigo - Knock Off - TM045
  (973, 97300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Flamigo - Agility - TM047
  (973, 97300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Flamigo - Giga Impact - TM055
  (973, 97300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Flamigo - Liquidation - TM076
  (973, 97300, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 28),
  -- Flamigo - Hurricane - TM079
  (973, 97300, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 29),
  -- Flamigo - U-turn - TM082
  (973, 97300, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 30),
  -- Flamigo - Substitute - TM085
  (973, 97300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Flamigo - Whirlwind - TM094
  (973, 97300, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 32),
  -- Flamigo - Taunt - TM095
  (973, 97300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 33),
  -- Flamigo - Waterfall - TM098
  (973, 97300, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Flamigo - Close Combat - TM107
  (973, 97300, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 35),
  -- Flamigo - Facade - TM109
  (973, 97300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Flamigo - Chilling Water - TM110
  (973, 97300, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 37),
  -- Flamigo - Low Sweep - TM113
  (973, 97300, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 38),
  -- Flamigo - Mimic - TM125
  (973, 97300, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 39),
  -- Flamigo - Dual Wingbeat - TM134
  (973, 97300, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 40),
  -- Flamigo - Triple Axel - TM144
  (973, 97300, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 41),
  -- Flamigo - Sky Attack - TM153
  (973, 97300, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 42),
  -- Dondozo - Tackle - Level 1
  (977, 97700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dondozo - Supersonic - Level 1
  (977, 97700, 48, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dondozo - Water Gun - Level 1
  (977, 97700, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dondozo - Lick - Level 8
  (977, 97700, 122, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dondozo - Curse - Level 12
  (977, 97700, 174, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dondozo - Take Down - Level 18
  (977, 97700, 36, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Dondozo - Body Slam - Level 24
  (977, 97700, 34, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Dondozo - Liquidation - Level 32
  (977, 97700, 710, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Dondozo - Double-Edge - Level 38
  (977, 97700, 38, 27, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dondozo - Heavy Slam - Level 44
  (977, 97700, 484, 27, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Dondozo - Order Up - Level 50
  (977, 97700, 856, 27, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Dondozo - Earthquake - Level 56
  (977, 97700, 89, 27, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Dondozo - Fissure - Level 67
  (977, 97700, 90, 27, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Dondozo - Rock Slide - TM012
  (977, 97700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Dondozo - Ice Fang - TM015
  (977, 97700, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 15),
  -- Dondozo - Protect - TM017
  (977, 97700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Dondozo - Crunch - TM025
  (977, 97700, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 17),
  -- Dondozo - Body Slam - TM033
  (977, 97700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 18),
  -- Dondozo - Endure - TM035
  (977, 97700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Dondozo - Water Pulse - TM041
  (977, 97700, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Dondozo - Hyper Beam - TM044
  (977, 97700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Dondozo - Mud Shot - TM046
  (977, 97700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Dondozo - Giga Impact - TM055
  (977, 97700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Dondozo - Double-Edge - TM056
  (977, 97700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 24),
  -- Dondozo - Zen Headbutt - TM059
  (977, 97700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 25),
  -- Dondozo - Earthquake - TM069
  (977, 97700, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 26),
  -- Dondozo - Whirlpool - TM070
  (977, 97700, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 27),
  -- Dondozo - Surf - TM073
  (977, 97700, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Dondozo - Liquidation - TM076
  (977, 97700, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 29),
  -- Dondozo - Bulldoze - TM078
  (977, 97700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 30),
  -- Dondozo - Substitute - TM085
  (977, 97700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Dondozo - Iron Tail - TM087
  (977, 97700, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 32),
  -- Dondozo - Curse - TM091
  (977, 97700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Dondozo - Outrage - TM093
  (977, 97700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 34),
  -- Dondozo - Hydro Pump - TM096
  (977, 97700, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 35),
  -- Dondozo - Waterfall - TM098
  (977, 97700, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 36),
  -- Dondozo - Facade - TM109
  (977, 97700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 37),
  -- Dondozo - Chilling Water - TM110
  (977, 97700, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 38),
  -- Dondozo - Muddy Water - TM140
  (977, 97700, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 39),
  -- Dondozo - Fissure - TM154
  (977, 97700, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 40),
  -- Tatsugiri - Water Gun - Level 1
  (978, 97800, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tatsugiri - Splash - Level 1
  (978, 97800, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tatsugiri - Harden - Level 6
  (978, 97800, 106, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tatsugiri - Razor Wind - Level 12
  (978, 97800, 13, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tatsugiri - Water Pulse - Level 17
  (978, 97800, 352, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tatsugiri - Whirlpool - Level 21
  (978, 97800, 250, 27, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tatsugiri - Mud Shot - Level 25
  (978, 97800, 341, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tatsugiri - Taunt - Level 28
  (978, 97800, 269, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Tatsugiri - Mimic - Level 34
  (978, 97800, 102, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Tatsugiri - Muddy Water - Level 39
  (978, 97800, 330, 27, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Tatsugiri - Nasty Plot - Level 43
  (978, 97800, 417, 27, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Tatsugiri - Dragon Rush - Level 47
  (978, 97800, 407, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Tatsugiri - Dragon Pulse - Level 52
  (978, 97800, 406, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Tatsugiri - Calm Mind - TM006
  (978, 97800, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Tatsugiri - Flip Turn - TM009
  (978, 97800, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Tatsugiri - Ice Beam - TM013
  (978, 97800, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Tatsugiri - Protect - TM017
  (978, 97800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Tatsugiri - Endure - TM035
  (978, 97800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Tatsugiri - Water Pulse - TM041
  (978, 97800, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 19),
  -- Tatsugiri - Hyper Beam - TM044
  (978, 97800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Tatsugiri - Mud Shot - TM046
  (978, 97800, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Tatsugiri - Icy Wind - TM049
  (978, 97800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Tatsugiri - Draco Meteor - TM054
  (978, 97800, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 23),
  -- Tatsugiri - Giga Impact - TM055
  (978, 97800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Tatsugiri - Whirlpool - TM070
  (978, 97800, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 25),
  -- Tatsugiri - Surf - TM073
  (978, 97800, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Tatsugiri - Dragon Pulse - TM075
  (978, 97800, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Tatsugiri - Nasty Plot - TM083
  (978, 97800, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Tatsugiri - Substitute - TM085
  (978, 97800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Tatsugiri - Dark Pulse - TM090
  (978, 97800, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Tatsugiri - Outrage - TM093
  (978, 97800, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 31),
  -- Tatsugiri - Taunt - TM095
  (978, 97800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Tatsugiri - Hydro Pump - TM096
  (978, 97800, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 33),
  -- Tatsugiri - Waterfall - TM098
  (978, 97800, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Tatsugiri - Facade - TM109
  (978, 97800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Tatsugiri - Chilling Water - TM110
  (978, 97800, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 36),
  -- Tatsugiri - Ancient Power - TM120
  (978, 97800, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 37),
  -- Tatsugiri - Mimic - TM125
  (978, 97800, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 38),
  -- Tatsugiri - Muddy Water - TM140
  (978, 97800, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 39),
  -- Tatsugiri - Triple Axel - TM144
  (978, 97800, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 40),
  -- Tatsugiri - Razor Wind - TM145
  (978, 97800, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 41),
  -- Tatsugiri - Scald - TM148
  (978, 97800, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 42),
  -- Tatsugiri (Droopy) - Water Gun - Level 1
  (978, 97801, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tatsugiri (Droopy) - Splash - Level 1
  (978, 97801, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tatsugiri (Droopy) - Harden - Level 6
  (978, 97801, 106, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tatsugiri (Droopy) - Razor Wind - Level 12
  (978, 97801, 13, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tatsugiri (Droopy) - Water Pulse - Level 17
  (978, 97801, 352, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tatsugiri (Droopy) - Whirlpool - Level 21
  (978, 97801, 250, 27, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tatsugiri (Droopy) - Mud Shot - Level 25
  (978, 97801, 341, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tatsugiri (Droopy) - Taunt - Level 28
  (978, 97801, 269, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Tatsugiri (Droopy) - Mimic - Level 34
  (978, 97801, 102, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Tatsugiri (Droopy) - Muddy Water - Level 39
  (978, 97801, 330, 27, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Tatsugiri (Droopy) - Nasty Plot - Level 43
  (978, 97801, 417, 27, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Tatsugiri (Droopy) - Dragon Rush - Level 47
  (978, 97801, 407, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Tatsugiri (Droopy) - Dragon Pulse - Level 52
  (978, 97801, 406, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Tatsugiri (Droopy) - Calm Mind - TM006
  (978, 97801, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Tatsugiri (Droopy) - Flip Turn - TM009
  (978, 97801, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Tatsugiri (Droopy) - Ice Beam - TM013
  (978, 97801, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Tatsugiri (Droopy) - Protect - TM017
  (978, 97801, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Tatsugiri (Droopy) - Endure - TM035
  (978, 97801, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Tatsugiri (Droopy) - Water Pulse - TM041
  (978, 97801, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 19),
  -- Tatsugiri (Droopy) - Hyper Beam - TM044
  (978, 97801, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Tatsugiri (Droopy) - Mud Shot - TM046
  (978, 97801, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Tatsugiri (Droopy) - Icy Wind - TM049
  (978, 97801, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Tatsugiri (Droopy) - Draco Meteor - TM054
  (978, 97801, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 23),
  -- Tatsugiri (Droopy) - Giga Impact - TM055
  (978, 97801, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Tatsugiri (Droopy) - Whirlpool - TM070
  (978, 97801, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 25),
  -- Tatsugiri (Droopy) - Surf - TM073
  (978, 97801, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Tatsugiri (Droopy) - Dragon Pulse - TM075
  (978, 97801, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Tatsugiri (Droopy) - Nasty Plot - TM083
  (978, 97801, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Tatsugiri (Droopy) - Substitute - TM085
  (978, 97801, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Tatsugiri (Droopy) - Dark Pulse - TM090
  (978, 97801, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Tatsugiri (Droopy) - Outrage - TM093
  (978, 97801, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 31),
  -- Tatsugiri (Droopy) - Taunt - TM095
  (978, 97801, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Tatsugiri (Droopy) - Hydro Pump - TM096
  (978, 97801, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 33),
  -- Tatsugiri (Droopy) - Waterfall - TM098
  (978, 97801, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Tatsugiri (Droopy) - Facade - TM109
  (978, 97801, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Tatsugiri (Droopy) - Chilling Water - TM110
  (978, 97801, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 36),
  -- Tatsugiri (Droopy) - Ancient Power - TM120
  (978, 97801, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 37),
  -- Tatsugiri (Droopy) - Mimic - TM125
  (978, 97801, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 38),
  -- Tatsugiri (Droopy) - Muddy Water - TM140
  (978, 97801, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 39),
  -- Tatsugiri (Droopy) - Triple Axel - TM144
  (978, 97801, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 40),
  -- Tatsugiri (Droopy) - Razor Wind - TM145
  (978, 97801, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 41),
  -- Tatsugiri (Droopy) - Scald - TM148
  (978, 97801, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 42),
  -- Tatsugiri (Stretchy) - Water Gun - Level 1
  (978, 97802, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tatsugiri (Stretchy) - Splash - Level 1
  (978, 97802, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tatsugiri (Stretchy) - Harden - Level 6
  (978, 97802, 106, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tatsugiri (Stretchy) - Razor Wind - Level 12
  (978, 97802, 13, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tatsugiri (Stretchy) - Water Pulse - Level 17
  (978, 97802, 352, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tatsugiri (Stretchy) - Whirlpool - Level 21
  (978, 97802, 250, 27, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tatsugiri (Stretchy) - Mud Shot - Level 25
  (978, 97802, 341, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tatsugiri (Stretchy) - Taunt - Level 28
  (978, 97802, 269, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Tatsugiri (Stretchy) - Mimic - Level 34
  (978, 97802, 102, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Tatsugiri (Stretchy) - Muddy Water - Level 39
  (978, 97802, 330, 27, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Tatsugiri (Stretchy) - Nasty Plot - Level 43
  (978, 97802, 417, 27, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Tatsugiri (Stretchy) - Dragon Rush - Level 47
  (978, 97802, 407, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Tatsugiri (Stretchy) - Dragon Pulse - Level 52
  (978, 97802, 406, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Tatsugiri (Stretchy) - Calm Mind - TM006
  (978, 97802, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Tatsugiri (Stretchy) - Flip Turn - TM009
  (978, 97802, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Tatsugiri (Stretchy) - Ice Beam - TM013
  (978, 97802, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Tatsugiri (Stretchy) - Protect - TM017
  (978, 97802, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Tatsugiri (Stretchy) - Endure - TM035
  (978, 97802, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Tatsugiri (Stretchy) - Water Pulse - TM041
  (978, 97802, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 19),
  -- Tatsugiri (Stretchy) - Hyper Beam - TM044
  (978, 97802, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Tatsugiri (Stretchy) - Mud Shot - TM046
  (978, 97802, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Tatsugiri (Stretchy) - Icy Wind - TM049
  (978, 97802, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Tatsugiri (Stretchy) - Draco Meteor - TM054
  (978, 97802, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 23),
  -- Tatsugiri (Stretchy) - Giga Impact - TM055
  (978, 97802, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Tatsugiri (Stretchy) - Whirlpool - TM070
  (978, 97802, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 25),
  -- Tatsugiri (Stretchy) - Surf - TM073
  (978, 97802, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Tatsugiri (Stretchy) - Dragon Pulse - TM075
  (978, 97802, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 27),
  -- Tatsugiri (Stretchy) - Nasty Plot - TM083
  (978, 97802, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Tatsugiri (Stretchy) - Substitute - TM085
  (978, 97802, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Tatsugiri (Stretchy) - Dark Pulse - TM090
  (978, 97802, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Tatsugiri (Stretchy) - Outrage - TM093
  (978, 97802, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 31),
  -- Tatsugiri (Stretchy) - Taunt - TM095
  (978, 97802, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Tatsugiri (Stretchy) - Hydro Pump - TM096
  (978, 97802, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 33),
  -- Tatsugiri (Stretchy) - Waterfall - TM098
  (978, 97802, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Tatsugiri (Stretchy) - Facade - TM109
  (978, 97802, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Tatsugiri (Stretchy) - Chilling Water - TM110
  (978, 97802, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 36),
  -- Tatsugiri (Stretchy) - Ancient Power - TM120
  (978, 97802, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 37),
  -- Tatsugiri (Stretchy) - Mimic - TM125
  (978, 97802, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 38),
  -- Tatsugiri (Stretchy) - Muddy Water - TM140
  (978, 97802, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 39),
  -- Tatsugiri (Stretchy) - Triple Axel - TM144
  (978, 97802, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 40),
  -- Tatsugiri (Stretchy) - Razor Wind - TM145
  (978, 97802, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 41),
  -- Tatsugiri (Stretchy) - Scald - TM148
  (978, 97802, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 42),
  -- Annihilape - Tackle - Level 1
  (979, 97900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Annihilape - Leer - Level 1
  (979, 97900, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Annihilape - Focus Energy - Level 1
  (979, 97900, 116, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Annihilape - Rock Throw - Level 8
  (979, 97900, 88, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Annihilape - Rock Smash - Level 10
  (979, 97900, 249, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Annihilape - Take Down - Level 13
  (979, 97900, 36, 27, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Annihilape - Low Sweep - Level 16
  (979, 97900, 490, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Annihilape - Knock Off - Level 18
  (979, 97900, 282, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Annihilape - Bulldoze - Level 22
  (979, 97900, 523, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Annihilape - Brick Break - Level 25
  (979, 97900, 280, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Annihilape - Facade - Level 28
  (979, 97900, 263, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Annihilape - Rage Fist - Level 35
  (979, 97900, 889, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Annihilape - Screech - Level 40
  (979, 97900, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Annihilape - Close Combat - Level 44
  (979, 97900, 370, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Annihilape - Outrage - Level 50
  (979, 97900, 200, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Annihilape - Dynamic Punch - Level 54
  (979, 97900, 223, 27, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Annihilape - Shadow Punch - Evolution
  (979, 97900, 325, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Annihilape - Phantom Force - Evolution
  (979, 97900, 566, 27, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Annihilape - Headbutt - TM001
  (979, 97900, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 19),
  -- Annihilape - Rock Smash - TM004
  (979, 97900, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 20),
  -- Annihilape - Roar - TM005
  (979, 97900, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 21),
  -- Annihilape - Brick Break - TM010
  (979, 97900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Annihilape - Bulk Up - TM011
  (979, 97900, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 23),
  -- Annihilape - Rock Slide - TM012
  (979, 97900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 24),
  -- Annihilape - Protect - TM017
  (979, 97900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Annihilape - Power-Up Punch - TM018
  (979, 97900, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 26),
  -- Annihilape - Thunder Punch - TM023
  (979, 97900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 27),
  -- Annihilape - Ice Punch - TM024
  (979, 97900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 28),
  -- Annihilape - Swift - TM027
  (979, 97900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 29),
  -- Annihilape - Dig - TM028
  (979, 97900, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 30),
  -- Annihilape - Fire Punch - TM029
  (979, 97900, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 31),
  -- Annihilape - Body Slam - TM033
  (979, 97900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 32),
  -- Annihilape - Night Slash - TM034
  (979, 97900, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 33),
  -- Annihilape - Endure - TM035
  (979, 97900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 34),
  -- Annihilape - Rock Tomb - TM036
  (979, 97900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 35),
  -- Annihilape - Stealth Rock - TM037
  (979, 97900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Annihilape - Hyper Beam - TM044
  (979, 97900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 37),
  -- Annihilape - Knock Off - TM045
  (979, 97900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 38),
  -- Annihilape - Overheat - TM050
  (979, 97900, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 39),
  -- Annihilape - Giga Impact - TM055
  (979, 97900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Annihilape - Double-Edge - TM056
  (979, 97900, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 41),
  -- Annihilape - Shadow Claw - TM061
  (979, 97900, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 42),
  -- Annihilape - Stone Edge - TM065
  (979, 97900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 43),
  -- Annihilape - Thunderbolt - TM067
  (979, 97900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 44),
  -- Annihilape - Earthquake - TM069
  (979, 97900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 45),
  -- Annihilape - Shadow Ball - TM074
  (979, 97900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 46),
  -- Annihilape - Poison Jab - TM077
  (979, 97900, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 47),
  -- Annihilape - Bulldoze - TM078
  (979, 97900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 48),
  -- Annihilape - U-turn - TM082
  (979, 97900, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 49),
  -- Annihilape - Substitute - TM085
  (979, 97900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 50),
  -- Annihilape - Curse - TM091
  (979, 97900, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 51),
  -- Annihilape - Outrage - TM093
  (979, 97900, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 52),
  -- Annihilape - Taunt - TM095
  (979, 97900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 53),
  -- Annihilape - Metronome - TM099
  (979, 97900, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 54),
  -- Annihilape - Gunk Shot - TM100
  (979, 97900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 55),
  -- Annihilape - Focus Blast - TM102
  (979, 97900, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 56),
  -- Annihilape - Work Up - TM103
  (979, 97900, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 57),
  -- Annihilape - Thunder - TM106
  (979, 97900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 58),
  -- Annihilape - Close Combat - TM107
  (979, 97900, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 59),
  -- Annihilape - Comet Punch - TM108
  (979, 97900, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 60),
  -- Annihilape - Facade - TM109
  (979, 97900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 61),
  -- Annihilape - Low Sweep - TM113
  (979, 97900, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 62),
  -- Annihilape - Pay Day - TM116
  (979, 97900, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 63),
  -- Annihilape - Shadow Punch - TM118
  (979, 97900, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 64),
  -- Annihilape - Torment - TM121
  (979, 97900, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 65),
  -- Annihilape - Seed Bomb - TM128
  (979, 97900, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 66),
  -- Annihilape - Circle Throw - TM129
  (979, 97900, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 67),
  -- Annihilape - Drain Punch - TM131
  (979, 97900, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 68),
  -- Annihilape - Dual Chop - TM135
  (979, 97900, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 69),
  -- Annihilape - Storm Throw - TM137
  (979, 97900, 480, 27, NULL, 2, NULL, NULL, 26002137, NULL, 70),
  -- Annihilape - Swagger - TM139
  (979, 97900, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 71),
  -- Annihilape - Vacuum Wave - TM150
  (979, 97900, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 72),
  -- Frigibax - Tackle - Level 1
  (996, 99600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frigibax - Leer - Level 1
  (996, 99600, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frigibax - Icy Wind - Level 6
  (996, 99600, 196, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Frigibax - Dragon Breath - Level 12
  (996, 99600, 225, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Frigibax - Focus Energy - Level 18
  (996, 99600, 116, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Frigibax - Bite - Level 24
  (996, 99600, 44, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Frigibax - Ice Fang - Level 29
  (996, 99600, 423, 27, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Frigibax - Dragon Claw - Level 32
  (996, 99600, 337, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Frigibax - Take Down - Level 36
  (996, 99600, 36, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Frigibax - Ice Beam - Level 40
  (996, 99600, 58, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Frigibax - Crunch - Level 44
  (996, 99600, 242, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Frigibax - Freeze-Dry - Level 50
  (996, 99600, 573, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Frigibax - Icicle Crash - Level 54
  (996, 99600, 556, 27, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Frigibax - Dragon Rush - Level 60
  (996, 99600, 407, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Frigibax - Dragon Claw - TM002
  (996, 99600, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Frigibax - Ice Beam - TM013
  (996, 99600, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Frigibax - Ice Fang - TM015
  (996, 99600, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Frigibax - Protect - TM017
  (996, 99600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Frigibax - Crunch - TM025
  (996, 99600, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Frigibax - Dig - TM028
  (996, 99600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Frigibax - Swords Dance - TM030
  (996, 99600, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Frigibax - Body Slam - TM033
  (996, 99600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Frigibax - Endure - TM035
  (996, 99600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Frigibax - Icy Wind - TM049
  (996, 99600, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 24),
  -- Frigibax - Draco Meteor - TM054
  (996, 99600, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 25),
  -- Frigibax - Dragon Pulse - TM075
  (996, 99600, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 26),
  -- Frigibax - Substitute - TM085
  (996, 99600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 27),
  -- Frigibax - Outrage - TM093
  (996, 99600, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 28),
  -- Frigibax - Blizzard - TM105
  (996, 99600, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 29),
  -- Frigibax - Facade - TM109
  (996, 99600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 30),
  -- Frigibax - Icicle Spear - TM149
  (996, 99600, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 31),
  -- Arctibax - Tackle - Level 1
  (997, 99700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arctibax - Leer - Level 1
  (997, 99700, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arctibax - Icy Wind - Level 6
  (997, 99700, 196, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Arctibax - Dragon Breath - Level 12
  (997, 99700, 225, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Arctibax - Focus Energy - Level 18
  (997, 99700, 116, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Arctibax - Bite - Level 24
  (997, 99700, 44, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Arctibax - Ice Fang - Level 29
  (997, 99700, 423, 27, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Arctibax - Dragon Claw - Level 32
  (997, 99700, 337, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Arctibax - Take Down - Level 36
  (997, 99700, 36, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Arctibax - Ice Beam - Level 40
  (997, 99700, 58, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Arctibax - Crunch - Level 44
  (997, 99700, 242, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Arctibax - Freeze-Dry - Level 50
  (997, 99700, 573, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Arctibax - Icicle Crash - Level 54
  (997, 99700, 556, 27, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Arctibax - Dragon Rush - Level 60
  (997, 99700, 407, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Arctibax - Dragon Claw - TM002
  (997, 99700, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Arctibax - Brick Break - TM010
  (997, 99700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Arctibax - Ice Beam - TM013
  (997, 99700, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Arctibax - Ice Fang - TM015
  (997, 99700, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Arctibax - Protect - TM017
  (997, 99700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Arctibax - Aerial Ace - TM022
  (997, 99700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 20),
  -- Arctibax - Crunch - TM025
  (997, 99700, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Arctibax - Dig - TM028
  (997, 99700, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Arctibax - Swords Dance - TM030
  (997, 99700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Arctibax - Body Slam - TM033
  (997, 99700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Arctibax - Endure - TM035
  (997, 99700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Arctibax - Icy Wind - TM049
  (997, 99700, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Arctibax - Draco Meteor - TM054
  (997, 99700, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 27),
  -- Arctibax - Iron Head - TM058
  (997, 99700, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Arctibax - Dragon Pulse - TM075
  (997, 99700, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 29),
  -- Arctibax - Substitute - TM085
  (997, 99700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Arctibax - Outrage - TM093
  (997, 99700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 31),
  -- Arctibax - Blizzard - TM105
  (997, 99700, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 32),
  -- Arctibax - Facade - TM109
  (997, 99700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Arctibax - Frost Breath - TM138
  (997, 99700, 524, 27, NULL, 2, NULL, NULL, 26002138, NULL, 34),
  -- Arctibax - Icicle Spear - TM149
  (997, 99700, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 35),
  -- Baxcalibur - Tackle - Level 1
  (998, 99800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baxcalibur - Leer - Level 1
  (998, 99800, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baxcalibur - Breaking Swipe - Level 1
  (998, 99800, 784, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Baxcalibur - Icy Wind - Level 6
  (998, 99800, 196, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Baxcalibur - Dragon Breath - Level 12
  (998, 99800, 225, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Baxcalibur - Focus Energy - Level 18
  (998, 99800, 116, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Baxcalibur - Bite - Level 24
  (998, 99800, 44, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Baxcalibur - Ice Fang - Level 29
  (998, 99800, 423, 27, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Baxcalibur - Dragon Claw - Level 32
  (998, 99800, 337, 27, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Baxcalibur - Take Down - Level 36
  (998, 99800, 36, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Baxcalibur - Ice Beam - Level 40
  (998, 99800, 58, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Baxcalibur - Crunch - Level 44
  (998, 99800, 242, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Baxcalibur - Freeze-Dry - Level 50
  (998, 99800, 573, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Baxcalibur - Icicle Crash - Level 54
  (998, 99800, 556, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Baxcalibur - Dragon Rush - Level 60
  (998, 99800, 407, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Baxcalibur - Ice Hammer - Level 65
  (998, 99800, 665, 27, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Baxcalibur - Glaive Rush - Evolution
  (998, 99800, 862, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Baxcalibur - Dragon Claw - TM002
  (998, 99800, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 18),
  -- Baxcalibur - Brick Break - TM010
  (998, 99800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Baxcalibur - Ice Beam - TM013
  (998, 99800, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Baxcalibur - Ice Fang - TM015
  (998, 99800, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 21),
  -- Baxcalibur - Protect - TM017
  (998, 99800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Baxcalibur - Thunder Fang - TM021
  (998, 99800, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Baxcalibur - Aerial Ace - TM022
  (998, 99800, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Baxcalibur - Crunch - TM025
  (998, 99800, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Baxcalibur - Dig - TM028
  (998, 99800, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Baxcalibur - Swords Dance - TM030
  (998, 99800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Baxcalibur - Body Slam - TM033
  (998, 99800, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Baxcalibur - Endure - TM035
  (998, 99800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Baxcalibur - Hyper Beam - TM044
  (998, 99800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Baxcalibur - Icy Wind - TM049
  (998, 99800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Baxcalibur - Draco Meteor - TM054
  (998, 99800, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 32),
  -- Baxcalibur - Giga Impact - TM055
  (998, 99800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Baxcalibur - Double-Edge - TM056
  (998, 99800, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Baxcalibur - Iron Head - TM058
  (998, 99800, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 35),
  -- Baxcalibur - Zen Headbutt - TM059
  (998, 99800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Baxcalibur - Earthquake - TM069
  (998, 99800, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Baxcalibur - Dragon Pulse - TM075
  (998, 99800, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 38),
  -- Baxcalibur - Bulldoze - TM078
  (998, 99800, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Baxcalibur - Substitute - TM085
  (998, 99800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Baxcalibur - Outrage - TM093
  (998, 99800, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 41),
  -- Baxcalibur - Blizzard - TM105
  (998, 99800, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Baxcalibur - Facade - TM109
  (998, 99800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Baxcalibur - False Swipe - TM122
  (998, 99800, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 44),
  -- Baxcalibur - Psychic Fangs - TM124
  (998, 99800, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 45),
  -- Baxcalibur - Frost Breath - TM138
  (998, 99800, 524, 27, NULL, 2, NULL, NULL, 26002138, NULL, 46),
  -- Baxcalibur - Scale Shot - TM143
  (998, 99800, 799, 27, NULL, 2, NULL, NULL, 26002143, NULL, 47),
  -- Baxcalibur - Icicle Spear - TM149
  (998, 99800, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 48),
  -- Baxcalibur - Sheer Cold - TM155
  (998, 99800, 329, 27, NULL, 2, NULL, NULL, 26002155, NULL, 49),
  -- Gimmighoul - Tackle - Level 1
  (999, 99900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gimmighoul - Confuse Ray - Level 1
  (999, 99900, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gimmighoul - Light Screen - TM016
  (999, 99900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 3),
  -- Gimmighoul - Protect - TM017
  (999, 99900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 4),
  -- Gimmighoul - Power Gem - TM019
  (999, 99900, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 5),
  -- Gimmighoul - Reflect - TM031
  (999, 99900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 6),
  -- Gimmighoul - Endure - TM035
  (999, 99900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 7),
  -- Gimmighoul - Shadow Ball - TM074
  (999, 99900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 8),
  -- Gimmighoul - Nasty Plot - TM083
  (999, 99900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 9),
  -- Gimmighoul - Substitute - TM085
  (999, 99900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 10),
  -- Gimmighoul - Facade - TM109
  (999, 99900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 11),
  -- Gholdengo - Tackle - Level 1
  (1000, 100000, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gholdengo - Confuse Ray - Level 1
  (1000, 100000, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gholdengo - Shadow Punch - Level 12
  (1000, 100000, 325, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Gholdengo - Substitute - Level 15
  (1000, 100000, 164, 27, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gholdengo - Metal Sound - Level 23
  (1000, 100000, 319, 27, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Gholdengo - Ominous Wind - Level 27
  (1000, 100000, 466, 27, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Gholdengo - Shadow Ball - Level 33
  (1000, 100000, 247, 27, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Gholdengo - Flash Cannon - Level 38
  (1000, 100000, 430, 27, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Gholdengo - Recover - Level 42
  (1000, 100000, 105, 27, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gholdengo - Power Gem - Level 49
  (1000, 100000, 408, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Gholdengo - Make It Rain - Level 56
  (1000, 100000, 874, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Gholdengo - Nasty Plot - Level 63
  (1000, 100000, 417, 27, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Gholdengo - Psyshock - TM003
  (1000, 100000, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Gholdengo - Thunder Wave - TM008
  (1000, 100000, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Gholdengo - Light Screen - TM016
  (1000, 100000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Gholdengo - Protect - TM017
  (1000, 100000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Gholdengo - Power Gem - TM019
  (1000, 100000, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 17),
  -- Gholdengo - Thunder Punch - TM023
  (1000, 100000, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Gholdengo - Reflect - TM031
  (1000, 100000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Gholdengo - Endure - TM035
  (1000, 100000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Gholdengo - Hyper Beam - TM044
  (1000, 100000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Gholdengo - Giga Impact - TM055
  (1000, 100000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 22),
  -- Gholdengo - Iron Head - TM058
  (1000, 100000, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 23),
  -- Gholdengo - Psychic - TM063
  (1000, 100000, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Gholdengo - Thunderbolt - TM067
  (1000, 100000, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Gholdengo - Surf - TM073
  (1000, 100000, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 26),
  -- Gholdengo - Shadow Ball - TM074
  (1000, 100000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 27),
  -- Gholdengo - Nasty Plot - TM083
  (1000, 100000, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Gholdengo - Flash Cannon - TM084
  (1000, 100000, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 29),
  -- Gholdengo - Substitute - TM085
  (1000, 100000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Gholdengo - Dazzling Gleam - TM092
  (1000, 100000, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Gholdengo - Metronome - TM099
  (1000, 100000, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 32),
  -- Gholdengo - Focus Blast - TM102
  (1000, 100000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 33),
  -- Gholdengo - Thunder - TM106
  (1000, 100000, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 34),
  -- Gholdengo - Comet Punch - TM108
  (1000, 100000, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 35),
  -- Gholdengo - Facade - TM109
  (1000, 100000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Gholdengo - Low Sweep - TM113
  (1000, 100000, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 37),
  -- Gholdengo - Shadow Punch - TM118
  (1000, 100000, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 38),
  -- Gholdengo - Ominous Wind - TM119
  (1000, 100000, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 39),
  -- Gholdengo - Magnet Bomb - TM126
  (1000, 100000, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 40),
  -- Gholdengo - Charge Beam - TM130
  (1000, 100000, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 41),
  -- Gholdengo - Steel Beam - TM157
  (1000, 100000, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 42);
