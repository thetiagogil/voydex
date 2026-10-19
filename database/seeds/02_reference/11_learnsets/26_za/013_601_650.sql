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
-- Pokémon Legends: Z-A learnsets for species 601-650.
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
  -- Tynamo - Tackle - Level 1
  (602, 60200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tynamo - Thunder Wave - Level 1
  (602, 60200, 86, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tynamo - Spark - Level 1
  (602, 60200, 209, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tynamo - Thunder Wave - TM008
  (602, 60200, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 4),
  -- Tynamo - Protect - TM017
  (602, 60200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 5),
  -- Eelektrik - Headbutt - Level 1
  (603, 60300, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektrik - Tackle - Level 1
  (603, 60300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektrik - Thunder Wave - Level 1
  (603, 60300, 86, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektrik - Spark - Level 1
  (603, 60300, 209, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektrik - Take Down - Level 18
  (603, 60300, 36, 26, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Eelektrik - Discharge - Level 29
  (603, 60300, 435, 26, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Eelektrik - Eerie Impulse - Level 33
  (603, 60300, 598, 26, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Eelektrik - Charge - Level 39
  (603, 60300, 268, 26, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Eelektrik - Thunderbolt - Level 44
  (603, 60300, 85, 26, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Eelektrik - Wild Charge - Level 46
  (603, 60300, 528, 26, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Eelektrik - Zap Cannon - Level 48
  (603, 60300, 192, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Eelektrik - Super Fang - Level 50
  (603, 60300, 162, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Eelektrik - Crunch - Evolution
  (603, 60300, 242, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Eelektrik - Headbutt - TM001
  (603, 60300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Eelektrik - Thunder Wave - TM008
  (603, 60300, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Eelektrik - Light Screen - TM016
  (603, 60300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Eelektrik - Protect - TM017
  (603, 60300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Eelektrik - Thunder Fang - TM021
  (603, 60300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 18),
  -- Eelektrik - Crunch - TM025
  (603, 60300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Eelektrik - Body Slam - TM033
  (603, 60300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Eelektrik - Endure - TM035
  (603, 60300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Eelektrik - Discharge - TM039
  (603, 60300, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 22),
  -- Eelektrik - Giga Drain - TM042
  (603, 60300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Eelektrik - Volt Switch - TM066
  (603, 60300, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 24),
  -- Eelektrik - Thunderbolt - TM067
  (603, 60300, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Eelektrik - U-turn - TM082
  (603, 60300, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 26),
  -- Eelektrik - Flash Cannon - TM084
  (603, 60300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 27),
  -- Eelektrik - Substitute - TM085
  (603, 60300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Eelektrik - Wild Charge - TM086
  (603, 60300, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 29),
  -- Eelektrik - Thunder - TM106
  (603, 60300, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 30),
  -- Eelektross - Headbutt - Level 1
  (604, 60400, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektross - Tackle - Level 1
  (604, 60400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektross - Spark - Level 1
  (604, 60400, 209, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektross - Crunch - Level 1
  (604, 60400, 242, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektross - Take Down - Level 18
  (604, 60400, 36, 26, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Eelektross - Confuse Ray - Level 21
  (604, 60400, 109, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Eelektross - Discharge - Level 29
  (604, 60400, 435, 26, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Eelektross - Eerie Impulse - Level 33
  (604, 60400, 598, 26, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Eelektross - Liquidation - Level 36
  (604, 60400, 710, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Eelektross - Charge - Level 39
  (604, 60400, 268, 26, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Eelektross - Thunderbolt - Level 44
  (604, 60400, 85, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Eelektross - Wild Charge - Level 46
  (604, 60400, 528, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Eelektross - Zap Cannon - Level 48
  (604, 60400, 192, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Eelektross - Super Fang - Level 50
  (604, 60400, 162, 26, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Eelektross - Headbutt - TM001
  (604, 60400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Eelektross - Dragon Claw - TM002
  (604, 60400, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Eelektross - Thunder Wave - TM008
  (604, 60400, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Eelektross - Bulk Up - TM011
  (604, 60400, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Eelektross - Rock Slide - TM012
  (604, 60400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Eelektross - Light Screen - TM016
  (604, 60400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Eelektross - Protect - TM017
  (604, 60400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Eelektross - Thunder Fang - TM021
  (604, 60400, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 22),
  -- Eelektross - Thunder Punch - TM023
  (604, 60400, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 23),
  -- Eelektross - Crunch - TM025
  (604, 60400, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Eelektross - Fire Punch - TM029
  (604, 60400, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Eelektross - Body Slam - TM033
  (604, 60400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Eelektross - Endure - TM035
  (604, 60400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Eelektross - Rock Tomb - TM036
  (604, 60400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Eelektross - Discharge - TM039
  (604, 60400, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Eelektross - Giga Drain - TM042
  (604, 60400, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 30),
  -- Eelektross - Hyper Beam - TM044
  (604, 60400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Eelektross - Giga Impact - TM055
  (604, 60400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Eelektross - Zen Headbutt - TM059
  (604, 60400, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 33),
  -- Eelektross - Flamethrower - TM062
  (604, 60400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Eelektross - Volt Switch - TM066
  (604, 60400, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 35),
  -- Eelektross - Thunderbolt - TM067
  (604, 60400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Eelektross - Dragon Pulse - TM075
  (604, 60400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Eelektross - Liquidation - TM076
  (604, 60400, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 38),
  -- Eelektross - Bulldoze - TM078
  (604, 60400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Eelektross - U-turn - TM082
  (604, 60400, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 40),
  -- Eelektross - Flash Cannon - TM084
  (604, 60400, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 41),
  -- Eelektross - Substitute - TM085
  (604, 60400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Eelektross - Wild Charge - TM086
  (604, 60400, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 43),
  -- Eelektross - Outrage - TM093
  (604, 60400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 44),
  -- Eelektross - Waterfall - TM098
  (604, 60400, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 45),
  -- Eelektross - Electroweb - TM101
  (604, 60400, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 46),
  -- Eelektross - Thunder - TM106
  (604, 60400, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 47),
  -- Eelektross - Close Combat - TM107
  (604, 60400, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 48),
  -- Litwick - Ember - Level 1
  (607, 60700, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litwick - Smokescreen - Level 1
  (607, 60700, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litwick - Haze - Level 10
  (607, 60700, 114, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Litwick - Confuse Ray - Level 12
  (607, 60700, 109, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Litwick - Acid Armor - Level 16
  (607, 60700, 151, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Litwick - Will-O-Wisp - Level 20
  (607, 60700, 261, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Litwick - Fire Spin - Level 24
  (607, 60700, 83, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Litwick - Flamethrower - Level 28
  (607, 60700, 53, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Litwick - Shadow Ball - Level 32
  (607, 60700, 247, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Litwick - Flame Wheel - Level 38
  (607, 60700, 172, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Litwick - Curse - Level 44
  (607, 60700, 174, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Litwick - Heal Block - Level 48
  (607, 60700, 377, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Litwick - Overheat - Level 52
  (607, 60700, 315, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Litwick - Calm Mind - TM006
  (607, 60700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Litwick - Protect - TM017
  (607, 60700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Litwick - Energy Ball - TM026
  (607, 60700, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Litwick - Double Team - TM032
  (607, 60700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Litwick - Endure - TM035
  (607, 60700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Litwick - Fire Blast - TM038
  (607, 60700, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Litwick - Overheat - TM050
  (607, 60700, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 20),
  -- Litwick - Safeguard - TM051
  (607, 60700, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 21),
  -- Litwick - Will-O-Wisp - TM057
  (607, 60700, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 22),
  -- Litwick - Flamethrower - TM062
  (607, 60700, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 23),
  -- Litwick - Psychic - TM063
  (607, 60700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Litwick - Solar Beam - TM064
  (607, 60700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Litwick - Heat Wave - TM068
  (607, 60700, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 26),
  -- Litwick - Fire Spin - TM072
  (607, 60700, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 27),
  -- Litwick - Shadow Ball - TM074
  (607, 60700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Litwick - Substitute - TM085
  (607, 60700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Litwick - Dark Pulse - TM090
  (607, 60700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Litwick - Curse - TM091
  (607, 60700, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 31),
  -- Litwick - Taunt - TM095
  (607, 60700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Litwick - Heal Block - TM097
  (607, 60700, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 33),
  -- Lampent - Ember - Level 1
  (608, 60800, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lampent - Smokescreen - Level 1
  (608, 60800, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lampent - Haze - Level 10
  (608, 60800, 114, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Lampent - Confuse Ray - Level 12
  (608, 60800, 109, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Lampent - Acid Armor - Level 16
  (608, 60800, 151, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Lampent - Will-O-Wisp - Level 20
  (608, 60800, 261, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Lampent - Fire Spin - Level 24
  (608, 60800, 83, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Lampent - Flamethrower - Level 28
  (608, 60800, 53, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Lampent - Shadow Ball - Level 32
  (608, 60800, 247, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Lampent - Flame Wheel - Level 38
  (608, 60800, 172, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Lampent - Curse - Level 44
  (608, 60800, 174, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Lampent - Heal Block - Level 48
  (608, 60800, 377, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Lampent - Overheat - Level 52
  (608, 60800, 315, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Lampent - Calm Mind - TM006
  (608, 60800, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Lampent - Protect - TM017
  (608, 60800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Lampent - Energy Ball - TM026
  (608, 60800, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Lampent - Double Team - TM032
  (608, 60800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Lampent - Endure - TM035
  (608, 60800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Lampent - Fire Blast - TM038
  (608, 60800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Lampent - Overheat - TM050
  (608, 60800, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 20),
  -- Lampent - Safeguard - TM051
  (608, 60800, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 21),
  -- Lampent - Will-O-Wisp - TM057
  (608, 60800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 22),
  -- Lampent - Flamethrower - TM062
  (608, 60800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 23),
  -- Lampent - Psychic - TM063
  (608, 60800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Lampent - Solar Beam - TM064
  (608, 60800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Lampent - Heat Wave - TM068
  (608, 60800, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 26),
  -- Lampent - Fire Spin - TM072
  (608, 60800, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 27),
  -- Lampent - Shadow Ball - TM074
  (608, 60800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Lampent - Substitute - TM085
  (608, 60800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Lampent - Dark Pulse - TM090
  (608, 60800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 30),
  -- Lampent - Curse - TM091
  (608, 60800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 31),
  -- Lampent - Taunt - TM095
  (608, 60800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Lampent - Heal Block - TM097
  (608, 60800, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 33),
  -- Chandelure - Ember - Level 1
  (609, 60900, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chandelure - Smokescreen - Level 1
  (609, 60900, 108, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chandelure - Haze - Level 10
  (609, 60900, 114, 26, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Chandelure - Confuse Ray - Level 12
  (609, 60900, 109, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Chandelure - Acid Armor - Level 16
  (609, 60900, 151, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Chandelure - Will-O-Wisp - Level 20
  (609, 60900, 261, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Chandelure - Fire Spin - Level 24
  (609, 60900, 83, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Chandelure - Flamethrower - Level 28
  (609, 60900, 53, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Chandelure - Shadow Ball - Level 32
  (609, 60900, 247, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Chandelure - Flame Wheel - Level 38
  (609, 60900, 172, 26, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Chandelure - Curse - Level 44
  (609, 60900, 174, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Chandelure - Heal Block - Level 48
  (609, 60900, 377, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Chandelure - Overheat - Level 52
  (609, 60900, 315, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Chandelure - Calm Mind - TM006
  (609, 60900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Chandelure - Protect - TM017
  (609, 60900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Chandelure - Energy Ball - TM026
  (609, 60900, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 16),
  -- Chandelure - Double Team - TM032
  (609, 60900, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Chandelure - Endure - TM035
  (609, 60900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Chandelure - Fire Blast - TM038
  (609, 60900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 19),
  -- Chandelure - Hyper Beam - TM044
  (609, 60900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Chandelure - Overheat - TM050
  (609, 60900, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 21),
  -- Chandelure - Safeguard - TM051
  (609, 60900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 22),
  -- Chandelure - Giga Impact - TM055
  (609, 60900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Chandelure - Will-O-Wisp - TM057
  (609, 60900, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 24),
  -- Chandelure - Flamethrower - TM062
  (609, 60900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 25),
  -- Chandelure - Psychic - TM063
  (609, 60900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Chandelure - Solar Beam - TM064
  (609, 60900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 27),
  -- Chandelure - Heat Wave - TM068
  (609, 60900, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 28),
  -- Chandelure - Fire Spin - TM072
  (609, 60900, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 29),
  -- Chandelure - Shadow Ball - TM074
  (609, 60900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Chandelure - Substitute - TM085
  (609, 60900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Chandelure - Dark Pulse - TM090
  (609, 60900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Chandelure - Curse - TM091
  (609, 60900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Chandelure - Taunt - TM095
  (609, 60900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Chandelure - Heal Block - TM097
  (609, 60900, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 35),
  -- Chandelure - Flare Blitz - TM104
  (609, 60900, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 36),
  -- Stunfisk - Tackle - Level 1
  (618, 61800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunfisk - Water Gun - Level 1
  (618, 61800, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunfisk - Thunder Shock - Level 1
  (618, 61800, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stunfisk - Endure - Level 5
  (618, 61800, 203, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Stunfisk - Mud Shot - Level 10
  (618, 61800, 341, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Stunfisk - Rock Tomb - Level 15
  (618, 61800, 317, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Stunfisk - Charge - Level 20
  (618, 61800, 268, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Stunfisk - Spark - Level 25
  (618, 61800, 209, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Stunfisk - Earthquake - Level 30
  (618, 61800, 89, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Stunfisk - Discharge - Level 35
  (618, 61800, 435, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Stunfisk - Bounce - Level 40
  (618, 61800, 340, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Stunfisk - Eerie Impulse - Level 45
  (618, 61800, 598, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Stunfisk - Sludge Wave - Level 50
  (618, 61800, 482, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Stunfisk - Thunder Wave - TM008
  (618, 61800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Stunfisk - Rock Slide - TM012
  (618, 61800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Stunfisk - Protect - TM017
  (618, 61800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Stunfisk - Dig - TM028
  (618, 61800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Stunfisk - Endure - TM035
  (618, 61800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Stunfisk - Rock Tomb - TM036
  (618, 61800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 19),
  -- Stunfisk - Stealth Rock - TM037
  (618, 61800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 20),
  -- Stunfisk - Discharge - TM039
  (618, 61800, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 21),
  -- Stunfisk - Mud Shot - TM046
  (618, 61800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Stunfisk - Earth Power - TM052
  (618, 61800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 23),
  -- Stunfisk - Sludge Bomb - TM053
  (618, 61800, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Stunfisk - Stone Edge - TM065
  (618, 61800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 25),
  -- Stunfisk - Thunderbolt - TM067
  (618, 61800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 26),
  -- Stunfisk - Earthquake - TM069
  (618, 61800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 27),
  -- Stunfisk - Surf - TM073
  (618, 61800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 28),
  -- Stunfisk - Bulldoze - TM078
  (618, 61800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Stunfisk - Substitute - TM085
  (618, 61800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Stunfisk - Curse - TM091
  (618, 61800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 31),
  -- Stunfisk - Electroweb - TM101
  (618, 61800, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 32),
  -- Stunfisk - Thunder - TM106
  (618, 61800, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 33),
  -- Galarian Stunfisk - Tackle - Level 1
  (618, 61801, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Stunfisk - Water Gun - Level 1
  (618, 61801, 55, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Stunfisk - Screech - Level 1
  (618, 61801, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galarian Stunfisk - Metal Claw - Level 1
  (618, 61801, 232, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galarian Stunfisk - Endure - Level 5
  (618, 61801, 203, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Galarian Stunfisk - Mud Shot - Level 10
  (618, 61801, 341, 26, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Galarian Stunfisk - Rock Tomb - Level 15
  (618, 61801, 317, 26, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Galarian Stunfisk - Metal Sound - Level 20
  (618, 61801, 319, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Galarian Stunfisk - Iron Defense - Level 25
  (618, 61801, 334, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Galarian Stunfisk - Earthquake - Level 30
  (618, 61801, 89, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Galarian Stunfisk - Bounce - Level 35
  (618, 61801, 340, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Galarian Stunfisk - Sludge Wave - Level 40
  (618, 61801, 482, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Galarian Stunfisk - Crunch - Level 45
  (618, 61801, 242, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Galarian Stunfisk - Stealth Rock - Level 50
  (618, 61801, 446, 26, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Galarian Stunfisk - Toxic - TM007
  (618, 61801, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Galarian Stunfisk - Thunder Wave - TM008
  (618, 61801, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Galarian Stunfisk - Rock Slide - TM012
  (618, 61801, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Galarian Stunfisk - Ice Fang - TM015
  (618, 61801, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Galarian Stunfisk - Protect - TM017
  (618, 61801, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Galarian Stunfisk - Crunch - TM025
  (618, 61801, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Galarian Stunfisk - Dig - TM028
  (618, 61801, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Galarian Stunfisk - Endure - TM035
  (618, 61801, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Galarian Stunfisk - Rock Tomb - TM036
  (618, 61801, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Galarian Stunfisk - Stealth Rock - TM037
  (618, 61801, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Galarian Stunfisk - Mud Shot - TM046
  (618, 61801, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 25),
  -- Galarian Stunfisk - Earth Power - TM052
  (618, 61801, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Galarian Stunfisk - Sludge Bomb - TM053
  (618, 61801, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Galarian Stunfisk - Stone Edge - TM065
  (618, 61801, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Galarian Stunfisk - Earthquake - TM069
  (618, 61801, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Galarian Stunfisk - Surf - TM073
  (618, 61801, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Galarian Stunfisk - Bulldoze - TM078
  (618, 61801, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Galarian Stunfisk - Iron Defense - TM080
  (618, 61801, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Galarian Stunfisk - Flash Cannon - TM084
  (618, 61801, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 33),
  -- Galarian Stunfisk - Substitute - TM085
  (618, 61801, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Galarian Stunfisk - Curse - TM091
  (618, 61801, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Chespin - Vine Whip - Level 1
  (650, 65000, 22, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chespin - Growl - Level 1
  (650, 65000, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chespin - Growth - Level 5
  (650, 65000, 74, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chespin - Rollout - Level 8
  (650, 65000, 205, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chespin - Bite - Level 11
  (650, 65000, 44, 26, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Chespin - Leech Seed - Level 15
  (650, 65000, 73, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chespin - Pin Missile - Level 18
  (650, 65000, 42, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Chespin - Take Down - Level 27
  (650, 65000, 36, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Chespin - Brick Break - Level 35
  (650, 65000, 280, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Chespin - Body Slam - Level 42
  (650, 65000, 34, 26, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Chespin - Wood Hammer - Level 48
  (650, 65000, 452, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Chespin - Headbutt - TM001
  (650, 65000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 12),
  -- Chespin - Roar - TM005
  (650, 65000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 13),
  -- Chespin - Brick Break - TM010
  (650, 65000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Chespin - Rock Slide - TM012
  (650, 65000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Chespin - Protect - TM017
  (650, 65000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Chespin - Aerial Ace - TM022
  (650, 65000, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Chespin - Thunder Punch - TM023
  (650, 65000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 18),
  -- Chespin - Energy Ball - TM026
  (650, 65000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Chespin - Swift - TM027
  (650, 65000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Chespin - Dig - TM028
  (650, 65000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Chespin - Reflect - TM031
  (650, 65000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Chespin - Body Slam - TM033
  (650, 65000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Chespin - Endure - TM035
  (650, 65000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Chespin - Rock Tomb - TM036
  (650, 65000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Chespin - Bullet Seed - TM040
  (650, 65000, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Chespin - Giga Drain - TM042
  (650, 65000, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Chespin - Mud Shot - TM046
  (650, 65000, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Chespin - Iron Head - TM058
  (650, 65000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Chespin - Zen Headbutt - TM059
  (650, 65000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Chespin - Shadow Claw - TM061
  (650, 65000, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Chespin - Solar Beam - TM064
  (650, 65000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Chespin - Poison Jab - TM077
  (650, 65000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Chespin - Bulldoze - TM078
  (650, 65000, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Chespin - Substitute - TM085
  (650, 65000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Chespin - Spikes - TM088
  (650, 65000, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 36),
  -- Chespin - Curse - TM091
  (650, 65000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 37);
