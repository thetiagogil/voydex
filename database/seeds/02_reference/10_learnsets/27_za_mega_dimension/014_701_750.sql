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
-- Mega Dimension learnset delta rows for species 701-750.
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
  -- Hoopa - Confusion - Level 1
  (720, 72000, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa - Light Screen - Level 15
  (720, 72000, 113, 27, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Hoopa - Psybeam - Level 19
  (720, 72000, 60, 27, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Hoopa - Knock Off - Level 22
  (720, 72000, 282, 27, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Hoopa - Phantom Force - Level 35
  (720, 72000, 566, 27, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Hoopa - Zen Headbutt - Level 38
  (720, 72000, 428, 27, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Hoopa - Shadow Ball - Level 42
  (720, 72000, 247, 27, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Hoopa - Nasty Plot - Level 45
  (720, 72000, 417, 27, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Hoopa - Psychic - Level 52
  (720, 72000, 94, 27, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Hoopa - Hyperspace Hole - Level 60
  (720, 72000, 593, 27, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Hoopa - Psyshock - TM003
  (720, 72000, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 11),
  -- Hoopa - Calm Mind - TM006
  (720, 72000, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 12),
  -- Hoopa - Thunder Wave - TM008
  (720, 72000, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Hoopa - Brick Break - TM010
  (720, 72000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Hoopa - Light Screen - TM016
  (720, 72000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Hoopa - Protect - TM017
  (720, 72000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Hoopa - Thunder Punch - TM023
  (720, 72000, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Hoopa - Ice Punch - TM024
  (720, 72000, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Hoopa - Energy Ball - TM026
  (720, 72000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Hoopa - Swift - TM027
  (720, 72000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Hoopa - Fire Punch - TM029
  (720, 72000, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Hoopa - Reflect - TM031
  (720, 72000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Hoopa - Endure - TM035
  (720, 72000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Hoopa - Rock Tomb - TM036
  (720, 72000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Hoopa - Hyper Beam - TM044
  (720, 72000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Hoopa - Knock Off - TM045
  (720, 72000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Hoopa - Giga Impact - TM055
  (720, 72000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Hoopa - Zen Headbutt - TM059
  (720, 72000, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 28),
  -- Hoopa - Future Sight - TM060
  (720, 72000, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 29),
  -- Hoopa - Psychic - TM063
  (720, 72000, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 30),
  -- Hoopa - Thunderbolt - TM067
  (720, 72000, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 31),
  -- Hoopa - Shadow Ball - TM074
  (720, 72000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 32),
  -- Hoopa - Nasty Plot - TM083
  (720, 72000, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 33),
  -- Hoopa - Substitute - TM085
  (720, 72000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Hoopa - Dark Pulse - TM090
  (720, 72000, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Hoopa - Taunt - TM095
  (720, 72000, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Hoopa - Heal Block - TM097
  (720, 72000, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 37),
  -- Hoopa - Gunk Shot - TM100
  (720, 72000, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 38),
  -- Hoopa - Focus Blast - TM102
  (720, 72000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 39),
  -- Hoopa - Facade - TM109
  (720, 72000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Hoopa - Silver Wind - TM117
  (720, 72000, 318, 27, NULL, 2, NULL, NULL, 26002117, NULL, 41),
  -- Hoopa - Shadow Punch - TM118
  (720, 72000, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 42),
  -- Hoopa - Ominous Wind - TM119
  (720, 72000, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 43),
  -- Hoopa - Psychic Fangs - TM124
  (720, 72000, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 44),
  -- Hoopa - Dream Eater - TM127
  (720, 72000, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 45),
  -- Hoopa - Charge Beam - TM130
  (720, 72000, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 46),
  -- Hoopa - Drain Punch - TM131
  (720, 72000, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 47),
  -- Hoopa (Unbound) - Confusion - Level 1
  (720, 72001, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoopa (Unbound) - Light Screen - Level 15
  (720, 72001, 113, 27, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Hoopa (Unbound) - Psybeam - Level 19
  (720, 72001, 60, 27, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Hoopa (Unbound) - Knock Off - Level 22
  (720, 72001, 282, 27, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Hoopa (Unbound) - Phantom Force - Level 35
  (720, 72001, 566, 27, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Hoopa (Unbound) - Zen Headbutt - Level 38
  (720, 72001, 428, 27, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Hoopa (Unbound) - Shadow Ball - Level 42
  (720, 72001, 247, 27, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Hoopa (Unbound) - Nasty Plot - Level 45
  (720, 72001, 417, 27, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Hoopa (Unbound) - Psychic - Level 52
  (720, 72001, 94, 27, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Hoopa (Unbound) - Hyperspace Fury - Level 60
  (720, 72001, 621, 27, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Volcanion - Water Gun - Level 1
  (721, 72100, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcanion - Fire Spin - Level 1
  (721, 72100, 83, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcanion - Steam Eruption - Level 1
  (721, 72100, 592, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcanion - Leer - Level 6
  (721, 72100, 43, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Volcanion - Mud Shot - Level 18
  (721, 72100, 341, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Volcanion - Water Pulse - Level 24
  (721, 72100, 352, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Volcanion - Heat Crash - Level 30
  (721, 72100, 535, 27, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Volcanion - Take Down - Level 33
  (721, 72100, 36, 27, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Volcanion - Mist - Level 40
  (721, 72100, 54, 27, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Volcanion - Haze - Level 40
  (721, 72100, 114, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Volcanion - Heavy Slam - Level 42
  (721, 72100, 484, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Volcanion - Hydro Pump - Level 46
  (721, 72100, 56, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Volcanion - Flare Blitz - Level 50
  (721, 72100, 394, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Volcanion - Overheat - Level 54
  (721, 72100, 315, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Volcanion - Explosion - Level 60
  (721, 72100, 153, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Volcanion - Roar - TM005
  (721, 72100, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Volcanion - Brick Break - TM010
  (721, 72100, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Volcanion - Rock Slide - TM012
  (721, 72100, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Volcanion - Fire Fang - TM014
  (721, 72100, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Volcanion - Protect - TM017
  (721, 72100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Volcanion - Thunder Fang - TM021
  (721, 72100, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Volcanion - Dig - TM028
  (721, 72100, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Volcanion - Body Slam - TM033
  (721, 72100, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Volcanion - Endure - TM035
  (721, 72100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Volcanion - Rock Tomb - TM036
  (721, 72100, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Volcanion - Fire Blast - TM038
  (721, 72100, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Volcanion - Water Pulse - TM041
  (721, 72100, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 27),
  -- Volcanion - Hyper Beam - TM044
  (721, 72100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Volcanion - Mud Shot - TM046
  (721, 72100, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Volcanion - Self-Destruct - TM048
  (721, 72100, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Volcanion - Overheat - TM050
  (721, 72100, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 31),
  -- Volcanion - Earth Power - TM052
  (721, 72100, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 32),
  -- Volcanion - Sludge Bomb - TM053
  (721, 72100, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 33),
  -- Volcanion - Giga Impact - TM055
  (721, 72100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Volcanion - Will-O-Wisp - TM057
  (721, 72100, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 35),
  -- Volcanion - Flamethrower - TM062
  (721, 72100, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 36),
  -- Volcanion - Solar Beam - TM064
  (721, 72100, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 37),
  -- Volcanion - Stone Edge - TM065
  (721, 72100, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 38),
  -- Volcanion - Heat Wave - TM068
  (721, 72100, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 39),
  -- Volcanion - Earthquake - TM069
  (721, 72100, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 40),
  -- Volcanion - Fire Spin - TM072
  (721, 72100, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 41),
  -- Volcanion - Liquidation - TM076
  (721, 72100, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 42),
  -- Volcanion - Flash Cannon - TM084
  (721, 72100, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 43),
  -- Volcanion - Substitute - TM085
  (721, 72100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Volcanion - Wild Charge - TM086
  (721, 72100, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 45),
  -- Volcanion - Taunt - TM095
  (721, 72100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 46),
  -- Volcanion - Hydro Pump - TM096
  (721, 72100, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 47),
  -- Volcanion - Focus Blast - TM102
  (721, 72100, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Volcanion - Flare Blitz - TM104
  (721, 72100, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 49),
  -- Volcanion - Facade - TM109
  (721, 72100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 50),
  -- Volcanion - Flame Charge - TM114
  (721, 72100, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 51),
  -- Volcanion - Scorching Sands - TM136
  (721, 72100, 815, 27, NULL, 2, NULL, NULL, 26002136, NULL, 52),
  -- Volcanion - Scald - TM148
  (721, 72100, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 53),
  -- Crabrawler - Harden - Level 1
  (739, 73900, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabrawler - Rock Smash - Level 1
  (739, 73900, 249, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crabrawler - Leer - Level 9
  (739, 73900, 43, 27, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Crabrawler - Bubble Beam - Level 13
  (739, 73900, 61, 27, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Crabrawler - Protect - Level 17
  (739, 73900, 182, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Crabrawler - Take Down - Level 20
  (739, 73900, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Crabrawler - Brick Break - Level 22
  (739, 73900, 280, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Crabrawler - Bulk Up - Level 25
  (739, 73900, 339, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Crabrawler - Mach Punch - Level 30
  (739, 73900, 183, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Crabrawler - Iron Defense - Level 42
  (739, 73900, 334, 27, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Crabrawler - Dynamic Punch - Level 45
  (739, 73900, 223, 27, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Crabrawler - Close Combat - Level 49
  (739, 73900, 370, 27, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Crabrawler - Rock Smash - TM004
  (739, 73900, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 13),
  -- Crabrawler - Brick Break - TM010
  (739, 73900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Crabrawler - Bulk Up - TM011
  (739, 73900, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 15),
  -- Crabrawler - Rock Slide - TM012
  (739, 73900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Crabrawler - Protect - TM017
  (739, 73900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Crabrawler - Thunder Punch - TM023
  (739, 73900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Crabrawler - Ice Punch - TM024
  (739, 73900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 19),
  -- Crabrawler - Swift - TM027
  (739, 73900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Crabrawler - Dig - TM028
  (739, 73900, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Crabrawler - Body Slam - TM033
  (739, 73900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Crabrawler - Endure - TM035
  (739, 73900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Crabrawler - Rock Tomb - TM036
  (739, 73900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Crabrawler - Knock Off - TM045
  (739, 73900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Crabrawler - Mud Shot - TM046
  (739, 73900, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Crabrawler - Iron Head - TM058
  (739, 73900, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 27),
  -- Crabrawler - Zen Headbutt - TM059
  (739, 73900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 28),
  -- Crabrawler - Earthquake - TM069
  (739, 73900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Crabrawler - Liquidation - TM076
  (739, 73900, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 30),
  -- Crabrawler - Bulldoze - TM078
  (739, 73900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Crabrawler - Iron Defense - TM080
  (739, 73900, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Crabrawler - Substitute - TM085
  (739, 73900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Crabrawler - Taunt - TM095
  (739, 73900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Crabrawler - Gunk Shot - TM100
  (739, 73900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 35),
  -- Crabrawler - Focus Blast - TM102
  (739, 73900, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 36),
  -- Crabrawler - Close Combat - TM107
  (739, 73900, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 37),
  -- Crabrawler - Comet Punch - TM108
  (739, 73900, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 38),
  -- Crabrawler - Facade - TM109
  (739, 73900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Crabrawler - Chilling Water - TM110
  (739, 73900, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 40),
  -- Crabrawler - Torment - TM121
  (739, 73900, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 41),
  -- Crabrawler - Drain Punch - TM131
  (739, 73900, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 42),
  -- Crabrawler - Swagger - TM139
  (739, 73900, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 43),
  -- Crabrawler - First Impression - TM142
  (739, 73900, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 44),
  -- Crabominable - Harden - Level 1
  (740, 74000, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crabominable - Rock Smash - Level 1
  (740, 74000, 249, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crabominable - Leer - Level 9
  (740, 74000, 43, 27, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Crabominable - Bubble Beam - Level 13
  (740, 74000, 61, 27, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Crabominable - Protect - Level 17
  (740, 74000, 182, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Crabominable - Take Down - Level 20
  (740, 74000, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Crabominable - Brick Break - Level 22
  (740, 74000, 280, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Crabominable - Bulk Up - Level 25
  (740, 74000, 339, 27, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Crabominable - Mach Punch - Level 30
  (740, 74000, 183, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Crabominable - Ice Hammer - Level 34
  (740, 74000, 665, 27, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Crabominable - Iron Defense - Level 42
  (740, 74000, 334, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Crabominable - Dynamic Punch - Level 45
  (740, 74000, 223, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Crabominable - Close Combat - Level 49
  (740, 74000, 370, 27, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Crabominable - Ice Punch - Evolution
  (740, 74000, 8, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Crabominable - Rock Smash - TM004
  (740, 74000, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Crabominable - Brick Break - TM010
  (740, 74000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Crabominable - Bulk Up - TM011
  (740, 74000, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Crabominable - Rock Slide - TM012
  (740, 74000, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Crabominable - Ice Beam - TM013
  (740, 74000, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Crabominable - Protect - TM017
  (740, 74000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Crabominable - Thunder Punch - TM023
  (740, 74000, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Crabominable - Ice Punch - TM024
  (740, 74000, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Crabominable - Swift - TM027
  (740, 74000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Crabominable - Dig - TM028
  (740, 74000, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Crabominable - Body Slam - TM033
  (740, 74000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Crabominable - Endure - TM035
  (740, 74000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Crabominable - Rock Tomb - TM036
  (740, 74000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Crabominable - Hyper Beam - TM044
  (740, 74000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Crabominable - Knock Off - TM045
  (740, 74000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Crabominable - Mud Shot - TM046
  (740, 74000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 30),
  -- Crabominable - Icy Wind - TM049
  (740, 74000, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Crabominable - Giga Impact - TM055
  (740, 74000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Crabominable - Iron Head - TM058
  (740, 74000, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Crabominable - Zen Headbutt - TM059
  (740, 74000, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Crabominable - Earthquake - TM069
  (740, 74000, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Crabominable - Liquidation - TM076
  (740, 74000, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 36),
  -- Crabominable - Bulldoze - TM078
  (740, 74000, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 37),
  -- Crabominable - Iron Defense - TM080
  (740, 74000, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Crabominable - Substitute - TM085
  (740, 74000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Crabominable - Taunt - TM095
  (740, 74000, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Crabominable - Gunk Shot - TM100
  (740, 74000, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 41),
  -- Crabominable - Focus Blast - TM102
  (740, 74000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 42),
  -- Crabominable - Blizzard - TM105
  (740, 74000, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 43),
  -- Crabominable - Close Combat - TM107
  (740, 74000, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Crabominable - Comet Punch - TM108
  (740, 74000, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 45),
  -- Crabominable - Facade - TM109
  (740, 74000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Crabominable - Chilling Water - TM110
  (740, 74000, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 47),
  -- Crabominable - Torment - TM121
  (740, 74000, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 48),
  -- Crabominable - Drain Punch - TM131
  (740, 74000, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 49),
  -- Crabominable - Swagger - TM139
  (740, 74000, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 50),
  -- Crabominable - First Impression - TM142
  (740, 74000, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 51),
  -- Crabominable - Icicle Spear - TM149
  (740, 74000, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 52),
  -- Crabominable - Sheer Cold - TM155
  (740, 74000, 329, 27, NULL, 2, NULL, NULL, 26002155, NULL, 53);
