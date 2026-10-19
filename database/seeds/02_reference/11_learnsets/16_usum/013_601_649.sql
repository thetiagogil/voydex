-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Ultra Sun / Ultra Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon learnsets for default forms, species 601-649.
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
  -- Klinklang - Vise Grip - Level 1
  (601, 60100, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klinklang - Thunder Shock - Level 1
  (601, 60100, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klinklang - Charge - Level 1
  (601, 60100, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klinklang - Gear Grind - Level 1
  (601, 60100, 544, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klinklang - Magnetic Flux - Level 1
  (601, 60100, 602, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Klinklang - Gear Up - Level 1
  (601, 60100, 674, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Klinklang - Charge - Level 6
  (601, 60100, 268, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Klinklang - Thunder Shock - Level 11
  (601, 60100, 84, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Klinklang - Gear Grind - Level 16
  (601, 60100, 544, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Klinklang - Bind - Level 21
  (601, 60100, 20, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Klinklang - Charge Beam - Level 25
  (601, 60100, 451, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Klinklang - Autotomize - Level 31
  (601, 60100, 475, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Klinklang - Mirror Shot - Level 36
  (601, 60100, 429, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Klinklang - Screech - Level 40
  (601, 60100, 103, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Klinklang - Discharge - Level 44
  (601, 60100, 435, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Klinklang - Metal Sound - Level 48
  (601, 60100, 319, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Klinklang - Shift Gear - Level 54
  (601, 60100, 508, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Klinklang - Lock-On - Level 60
  (601, 60100, 199, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Klinklang - Zap Cannon - Level 66
  (601, 60100, 192, 16, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Klinklang - Hyper Beam - Level 72
  (601, 60100, 63, 16, NULL, 1, 72, NULL, NULL, NULL, 20),
  -- Klinklang - Toxic - TM06
  (601, 60100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Klinklang - Hidden Power - TM10
  (601, 60100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Klinklang - Hyper Beam - TM15
  (601, 60100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Klinklang - Protect - TM17
  (601, 60100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Klinklang - Frustration - TM21
  (601, 60100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Klinklang - Thunderbolt - TM24
  (601, 60100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Klinklang - Thunder - TM25
  (601, 60100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Klinklang - Return - TM27
  (601, 60100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Klinklang - Double Team - TM32
  (601, 60100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Klinklang - Sandstorm - TM37
  (601, 60100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Klinklang - Facade - TM42
  (601, 60100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Klinklang - Rest - TM44
  (601, 60100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Klinklang - Round - TM48
  (601, 60100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Klinklang - Charge Beam - TM57
  (601, 60100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Klinklang - Giga Impact - TM68
  (601, 60100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Klinklang - Rock Polish - TM69
  (601, 60100, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 36),
  -- Klinklang - Volt Switch - TM72
  (601, 60100, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 37),
  -- Klinklang - Thunder Wave - TM73
  (601, 60100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 38),
  -- Klinklang - Swagger - TM87
  (601, 60100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Klinklang - Sleep Talk - TM88
  (601, 60100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Klinklang - Substitute - TM90
  (601, 60100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Klinklang - Flash Cannon - TM91
  (601, 60100, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 42),
  -- Klinklang - Trick Room - TM92
  (601, 60100, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 43),
  -- Klinklang - Wild Charge - TM93
  (601, 60100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 44),
  -- Klinklang - Confide - TM100
  (601, 60100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Klinklang - Bind - Tutor
  (601, 60100, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Klinklang - Snore - Tutor
  (601, 60100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Klinklang - Uproar - Tutor
  (601, 60100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Klinklang - Magic Coat - Tutor
  (601, 60100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Klinklang - Recycle - Tutor
  (601, 60100, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Klinklang - Signal Beam - Tutor
  (601, 60100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Klinklang - Iron Defense - Tutor
  (601, 60100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Klinklang - Shock Wave - Tutor
  (601, 60100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Klinklang - Gravity - Tutor
  (601, 60100, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Klinklang - Magnet Rise - Tutor
  (601, 60100, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Klinklang - Telekinesis - Tutor
  (601, 60100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Klinklang - Ally Switch - Tutor
  (601, 60100, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Klinklang - Magnetic Flux - Evolution
  (601, 60100, 602, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Tynamo - Tackle - Level 1
  (602, 60200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tynamo - Thunder Wave - Level 1
  (602, 60200, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tynamo - Spark - Level 1
  (602, 60200, 209, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tynamo - Charge Beam - Level 1
  (602, 60200, 451, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tynamo - Charge Beam - TM57
  (602, 60200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 5),
  -- Tynamo - Thunder Wave - TM73
  (602, 60200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 6),
  -- Tynamo - Magnet Rise - Tutor
  (602, 60200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 7),

  -- Eelektrik - Headbutt - Level 1
  (603, 60300, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektrik - Thunder Wave - Level 1
  (603, 60300, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektrik - Spark - Level 1
  (603, 60300, 209, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektrik - Crunch - Level 1
  (603, 60300, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektrik - Charge Beam - Level 1
  (603, 60300, 451, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eelektrik - Bind - Level 9
  (603, 60300, 20, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Eelektrik - Acid - Level 19
  (603, 60300, 51, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Eelektrik - Discharge - Level 29
  (603, 60300, 435, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Eelektrik - Thunderbolt - Level 44
  (603, 60300, 85, 16, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Eelektrik - Acid Spray - Level 49
  (603, 60300, 491, 16, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Eelektrik - Coil - Level 54
  (603, 60300, 489, 16, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Eelektrik - Wild Charge - Level 59
  (603, 60300, 528, 16, NULL, 1, 59, NULL, NULL, NULL, 12),
  -- Eelektrik - Gastro Acid - Level 64
  (603, 60300, 380, 16, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Eelektrik - Zap Cannon - Level 69
  (603, 60300, 192, 16, NULL, 1, 69, NULL, NULL, NULL, 14),
  -- Eelektrik - Thrash - Level 74
  (603, 60300, 37, 16, NULL, 1, 74, NULL, NULL, NULL, 15),
  -- Eelektrik - Toxic - TM06
  (603, 60300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Eelektrik - Hidden Power - TM10
  (603, 60300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Eelektrik - Light Screen - TM16
  (603, 60300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Eelektrik - Protect - TM17
  (603, 60300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Eelektrik - Rain Dance - TM18
  (603, 60300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Eelektrik - Frustration - TM21
  (603, 60300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Eelektrik - Thunderbolt - TM24
  (603, 60300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 22),
  -- Eelektrik - Thunder - TM25
  (603, 60300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 23),
  -- Eelektrik - Return - TM27
  (603, 60300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Eelektrik - Double Team - TM32
  (603, 60300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Eelektrik - Facade - TM42
  (603, 60300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Eelektrik - Rest - TM44
  (603, 60300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Eelektrik - Attract - TM45
  (603, 60300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Eelektrik - Round - TM48
  (603, 60300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Eelektrik - Charge Beam - TM57
  (603, 60300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 30),
  -- Eelektrik - Acrobatics - TM62
  (603, 60300, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 31),
  -- Eelektrik - Volt Switch - TM72
  (603, 60300, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 32),
  -- Eelektrik - Thunder Wave - TM73
  (603, 60300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 33),
  -- Eelektrik - Swagger - TM87
  (603, 60300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Eelektrik - Sleep Talk - TM88
  (603, 60300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Eelektrik - U-turn - TM89
  (603, 60300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 36),
  -- Eelektrik - Substitute - TM90
  (603, 60300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Eelektrik - Flash Cannon - TM91
  (603, 60300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 38),
  -- Eelektrik - Wild Charge - TM93
  (603, 60300, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 39),
  -- Eelektrik - Confide - TM100
  (603, 60300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Eelektrik - Bind - Tutor
  (603, 60300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Eelektrik - Super Fang - Tutor
  (603, 60300, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Eelektrik - Snore - Tutor
  (603, 60300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Eelektrik - Giga Drain - Tutor
  (603, 60300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Eelektrik - Iron Tail - Tutor
  (603, 60300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Eelektrik - Knock Off - Tutor
  (603, 60300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Eelektrik - Signal Beam - Tutor
  (603, 60300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Eelektrik - Bounce - Tutor
  (603, 60300, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Eelektrik - Shock Wave - Tutor
  (603, 60300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Eelektrik - Gastro Acid - Tutor
  (603, 60300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Eelektrik - Magnet Rise - Tutor
  (603, 60300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Eelektrik - Aqua Tail - Tutor
  (603, 60300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Eelektrik - Throat Chop - Tutor
  (603, 60300, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Eelektrik - Crunch - Evolution
  (603, 60300, 242, 16, NULL, 7, NULL, NULL, NULL, NULL, 54),

  -- Eelektross - Headbutt - Level 1
  (604, 60400, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektross - Thrash - Level 1
  (604, 60400, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektross - Acid - Level 1
  (604, 60400, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektross - Zap Cannon - Level 1
  (604, 60400, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektross - Crunch - Level 1
  (604, 60400, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eelektross - Crush Claw - Level 1
  (604, 60400, 306, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Eelektross - Gastro Acid - Level 1
  (604, 60400, 380, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Eelektross - Discharge - Level 1
  (604, 60400, 435, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Eelektross - Coil - Level 1
  (604, 60400, 489, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Eelektross - Ion Deluge - Level 1
  (604, 60400, 569, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Eelektross - Dragon Claw - TM02
  (604, 60400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 11),
  -- Eelektross - Roar - TM05
  (604, 60400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 12),
  -- Eelektross - Toxic - TM06
  (604, 60400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Eelektross - Hidden Power - TM10
  (604, 60400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Eelektross - Hyper Beam - TM15
  (604, 60400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 15),
  -- Eelektross - Light Screen - TM16
  (604, 60400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 16),
  -- Eelektross - Protect - TM17
  (604, 60400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Eelektross - Rain Dance - TM18
  (604, 60400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Eelektross - Frustration - TM21
  (604, 60400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Eelektross - Thunderbolt - TM24
  (604, 60400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 20),
  -- Eelektross - Thunder - TM25
  (604, 60400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 21),
  -- Eelektross - Return - TM27
  (604, 60400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Eelektross - Brick Break - TM31
  (604, 60400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Eelektross - Double Team - TM32
  (604, 60400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Eelektross - Flamethrower - TM35
  (604, 60400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Eelektross - Rock Tomb - TM39
  (604, 60400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Eelektross - Facade - TM42
  (604, 60400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Eelektross - Rest - TM44
  (604, 60400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Eelektross - Attract - TM45
  (604, 60400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Eelektross - Round - TM48
  (604, 60400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Eelektross - Charge Beam - TM57
  (604, 60400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 31),
  -- Eelektross - Acrobatics - TM62
  (604, 60400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 32),
  -- Eelektross - Giga Impact - TM68
  (604, 60400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Eelektross - Volt Switch - TM72
  (604, 60400, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 34),
  -- Eelektross - Thunder Wave - TM73
  (604, 60400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Eelektross - Rock Slide - TM80
  (604, 60400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Eelektross - Dragon Tail - TM82
  (604, 60400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 37),
  -- Eelektross - Grass Knot - TM86
  (604, 60400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Eelektross - Swagger - TM87
  (604, 60400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Eelektross - Sleep Talk - TM88
  (604, 60400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Eelektross - U-turn - TM89
  (604, 60400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Eelektross - Substitute - TM90
  (604, 60400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Eelektross - Flash Cannon - TM91
  (604, 60400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 43),
  -- Eelektross - Wild Charge - TM93
  (604, 60400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 44),
  -- Eelektross - Confide - TM100
  (604, 60400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Eelektross - Fire Punch - Tutor
  (604, 60400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Eelektross - Thunder Punch - Tutor
  (604, 60400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Eelektross - Bind - Tutor
  (604, 60400, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Eelektross - Super Fang - Tutor
  (604, 60400, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Eelektross - Snore - Tutor
  (604, 60400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Eelektross - Outrage - Tutor
  (604, 60400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Eelektross - Giga Drain - Tutor
  (604, 60400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Eelektross - Iron Tail - Tutor
  (604, 60400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Eelektross - Focus Punch - Tutor
  (604, 60400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Eelektross - Superpower - Tutor
  (604, 60400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Eelektross - Knock Off - Tutor
  (604, 60400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Eelektross - Signal Beam - Tutor
  (604, 60400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Eelektross - Bounce - Tutor
  (604, 60400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Eelektross - Shock Wave - Tutor
  (604, 60400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Eelektross - Gastro Acid - Tutor
  (604, 60400, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Eelektross - Magnet Rise - Tutor
  (604, 60400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Eelektross - Aqua Tail - Tutor
  (604, 60400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Eelektross - Dragon Pulse - Tutor
  (604, 60400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Eelektross - Drain Punch - Tutor
  (604, 60400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Eelektross - Throat Chop - Tutor
  (604, 60400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Elgyem - Confusion - Level 1
  (605, 60500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elgyem - Growl - Level 4
  (605, 60500, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Elgyem - Heal Block - Level 8
  (605, 60500, 377, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Elgyem - Miracle Eye - Level 11
  (605, 60500, 357, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Elgyem - Psybeam - Level 15
  (605, 60500, 60, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Elgyem - Headbutt - Level 18
  (605, 60500, 29, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Elgyem - Hidden Power - Level 22
  (605, 60500, 237, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Elgyem - Imprison - Level 25
  (605, 60500, 286, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Elgyem - Simple Beam - Level 29
  (605, 60500, 493, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Elgyem - Zen Headbutt - Level 32
  (605, 60500, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Elgyem - Psych Up - Level 36
  (605, 60500, 244, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Elgyem - Psychic - Level 39
  (605, 60500, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Elgyem - Calm Mind - Level 43
  (605, 60500, 347, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Elgyem - Recover - Level 46
  (605, 60500, 105, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Elgyem - Guard Split - Level 50
  (605, 60500, 470, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Elgyem - Power Split - Level 50
  (605, 60500, 471, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Elgyem - Synchronoise - Level 53
  (605, 60500, 485, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Elgyem - Wonder Room - Level 56
  (605, 60500, 472, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Elgyem - Psyshock - TM03
  (605, 60500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Elgyem - Calm Mind - TM04
  (605, 60500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Elgyem - Toxic - TM06
  (605, 60500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Elgyem - Hidden Power - TM10
  (605, 60500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Elgyem - Light Screen - TM16
  (605, 60500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Elgyem - Protect - TM17
  (605, 60500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Elgyem - Rain Dance - TM18
  (605, 60500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Elgyem - Safeguard - TM20
  (605, 60500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Elgyem - Frustration - TM21
  (605, 60500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Elgyem - Thunderbolt - TM24
  (605, 60500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Elgyem - Return - TM27
  (605, 60500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Elgyem - Psychic - TM29
  (605, 60500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Elgyem - Shadow Ball - TM30
  (605, 60500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Elgyem - Double Team - TM32
  (605, 60500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Elgyem - Reflect - TM33
  (605, 60500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Elgyem - Rock Tomb - TM39
  (605, 60500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Elgyem - Facade - TM42
  (605, 60500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Elgyem - Rest - TM44
  (605, 60500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Elgyem - Attract - TM45
  (605, 60500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Elgyem - Thief - TM46
  (605, 60500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Elgyem - Round - TM48
  (605, 60500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Elgyem - Echoed Voice - TM49
  (605, 60500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 40),
  -- Elgyem - Steel Wing - TM51
  (605, 60500, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 41),
  -- Elgyem - Energy Ball - TM53
  (605, 60500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Elgyem - Charge Beam - TM57
  (605, 60500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Elgyem - Embargo - TM63
  (605, 60500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Elgyem - Thunder Wave - TM73
  (605, 60500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Elgyem - Psych Up - TM77
  (605, 60500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Elgyem - Rock Slide - TM80
  (605, 60500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Elgyem - Dream Eater - TM85
  (605, 60500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Elgyem - Swagger - TM87
  (605, 60500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Elgyem - Sleep Talk - TM88
  (605, 60500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Elgyem - Substitute - TM90
  (605, 60500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Elgyem - Trick Room - TM92
  (605, 60500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Elgyem - Dark Pulse - TM97
  (605, 60500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Elgyem - Confide - TM100
  (605, 60500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Elgyem - Disable - Egg
  (605, 60500, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Elgyem - Teleport - Egg
  (605, 60500, 100, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Elgyem - Barrier - Egg
  (605, 60500, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Elgyem - Skill Swap - Egg
  (605, 60500, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Elgyem - Astonish - Egg
  (605, 60500, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Elgyem - Cosmic Power - Egg
  (605, 60500, 322, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Elgyem - Power Swap - Egg
  (605, 60500, 384, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Elgyem - Guard Swap - Egg
  (605, 60500, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Elgyem - Nasty Plot - Egg
  (605, 60500, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Elgyem - Ally Switch - Egg
  (605, 60500, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Elgyem - Snore - Tutor
  (605, 60500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Elgyem - Pain Split - Tutor
  (605, 60500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Elgyem - Uproar - Tutor
  (605, 60500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Elgyem - Trick - Tutor
  (605, 60500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Elgyem - Role Play - Tutor
  (605, 60500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Elgyem - Magic Coat - Tutor
  (605, 60500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Elgyem - Recycle - Tutor
  (605, 60500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Elgyem - Skill Swap - Tutor
  (605, 60500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Elgyem - Snatch - Tutor
  (605, 60500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Elgyem - Signal Beam - Tutor
  (605, 60500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Elgyem - Shock Wave - Tutor
  (605, 60500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Elgyem - Gravity - Tutor
  (605, 60500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Elgyem - Zen Headbutt - Tutor
  (605, 60500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Elgyem - Wonder Room - Tutor
  (605, 60500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Elgyem - Telekinesis - Tutor
  (605, 60500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Elgyem - After You - Tutor
  (605, 60500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Elgyem - Ally Switch - Tutor
  (605, 60500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),

  -- Beheeyem - Growl - Level 1
  (606, 60600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beheeyem - Confusion - Level 1
  (606, 60600, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beheeyem - Miracle Eye - Level 1
  (606, 60600, 357, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beheeyem - Heal Block - Level 1
  (606, 60600, 377, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beheeyem - Wonder Room - Level 1
  (606, 60600, 472, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beheeyem - Synchronoise - Level 1
  (606, 60600, 485, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Beheeyem - Psychic Terrain - Level 1
  (606, 60600, 678, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Beheeyem - Growl - Level 4
  (606, 60600, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Beheeyem - Heal Block - Level 8
  (606, 60600, 377, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Beheeyem - Miracle Eye - Level 11
  (606, 60600, 357, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Beheeyem - Psybeam - Level 15
  (606, 60600, 60, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Beheeyem - Headbutt - Level 18
  (606, 60600, 29, 16, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Beheeyem - Hidden Power - Level 22
  (606, 60600, 237, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Beheeyem - Imprison - Level 25
  (606, 60600, 286, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Beheeyem - Simple Beam - Level 29
  (606, 60600, 493, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Beheeyem - Zen Headbutt - Level 32
  (606, 60600, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Beheeyem - Psych Up - Level 36
  (606, 60600, 244, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Beheeyem - Psychic - Level 39
  (606, 60600, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Beheeyem - Calm Mind - Level 45
  (606, 60600, 347, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Beheeyem - Recover - Level 50
  (606, 60600, 105, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Beheeyem - Guard Split - Level 56
  (606, 60600, 470, 16, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Beheeyem - Power Split - Level 58
  (606, 60600, 471, 16, NULL, 1, 58, NULL, NULL, NULL, 22),
  -- Beheeyem - Synchronoise - Level 63
  (606, 60600, 485, 16, NULL, 1, 63, NULL, NULL, NULL, 23),
  -- Beheeyem - Wonder Room - Level 68
  (606, 60600, 472, 16, NULL, 1, 68, NULL, NULL, NULL, 24),
  -- Beheeyem - Psyshock - TM03
  (606, 60600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 25),
  -- Beheeyem - Calm Mind - TM04
  (606, 60600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 26),
  -- Beheeyem - Toxic - TM06
  (606, 60600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 27),
  -- Beheeyem - Hidden Power - TM10
  (606, 60600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 28),
  -- Beheeyem - Hyper Beam - TM15
  (606, 60600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Beheeyem - Light Screen - TM16
  (606, 60600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 30),
  -- Beheeyem - Protect - TM17
  (606, 60600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Beheeyem - Rain Dance - TM18
  (606, 60600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Beheeyem - Safeguard - TM20
  (606, 60600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 33),
  -- Beheeyem - Frustration - TM21
  (606, 60600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 34),
  -- Beheeyem - Thunderbolt - TM24
  (606, 60600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 35),
  -- Beheeyem - Return - TM27
  (606, 60600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Beheeyem - Psychic - TM29
  (606, 60600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 37),
  -- Beheeyem - Shadow Ball - TM30
  (606, 60600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Beheeyem - Double Team - TM32
  (606, 60600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Beheeyem - Reflect - TM33
  (606, 60600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 40),
  -- Beheeyem - Rock Tomb - TM39
  (606, 60600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 41),
  -- Beheeyem - Facade - TM42
  (606, 60600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Beheeyem - Rest - TM44
  (606, 60600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Beheeyem - Attract - TM45
  (606, 60600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Beheeyem - Thief - TM46
  (606, 60600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 45),
  -- Beheeyem - Round - TM48
  (606, 60600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Beheeyem - Echoed Voice - TM49
  (606, 60600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 47),
  -- Beheeyem - Steel Wing - TM51
  (606, 60600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 48),
  -- Beheeyem - Energy Ball - TM53
  (606, 60600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 49),
  -- Beheeyem - Charge Beam - TM57
  (606, 60600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 50),
  -- Beheeyem - Embargo - TM63
  (606, 60600, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 51),
  -- Beheeyem - Giga Impact - TM68
  (606, 60600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Beheeyem - Thunder Wave - TM73
  (606, 60600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 53),
  -- Beheeyem - Psych Up - TM77
  (606, 60600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 54),
  -- Beheeyem - Rock Slide - TM80
  (606, 60600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Beheeyem - Dream Eater - TM85
  (606, 60600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Beheeyem - Swagger - TM87
  (606, 60600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Beheeyem - Sleep Talk - TM88
  (606, 60600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Beheeyem - Substitute - TM90
  (606, 60600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Beheeyem - Trick Room - TM92
  (606, 60600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Beheeyem - Dark Pulse - TM97
  (606, 60600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Beheeyem - Confide - TM100
  (606, 60600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Beheeyem - Snore - Tutor
  (606, 60600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Beheeyem - Pain Split - Tutor
  (606, 60600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Beheeyem - Uproar - Tutor
  (606, 60600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Beheeyem - Trick - Tutor
  (606, 60600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Beheeyem - Role Play - Tutor
  (606, 60600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Beheeyem - Magic Coat - Tutor
  (606, 60600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Beheeyem - Recycle - Tutor
  (606, 60600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Beheeyem - Skill Swap - Tutor
  (606, 60600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Beheeyem - Snatch - Tutor
  (606, 60600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Beheeyem - Signal Beam - Tutor
  (606, 60600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Beheeyem - Shock Wave - Tutor
  (606, 60600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Beheeyem - Gravity - Tutor
  (606, 60600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Beheeyem - Zen Headbutt - Tutor
  (606, 60600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Beheeyem - Wonder Room - Tutor
  (606, 60600, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Beheeyem - Telekinesis - Tutor
  (606, 60600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Beheeyem - After You - Tutor
  (606, 60600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Beheeyem - Ally Switch - Tutor
  (606, 60600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Litwick - Ember - Level 1
  (607, 60700, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litwick - Astonish - Level 1
  (607, 60700, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litwick - Minimize - Level 3
  (607, 60700, 107, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Litwick - Smog - Level 5
  (607, 60700, 123, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Litwick - Fire Spin - Level 7
  (607, 60700, 83, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Litwick - Confuse Ray - Level 10
  (607, 60700, 109, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Litwick - Night Shade - Level 13
  (607, 60700, 101, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Litwick - Will-O-Wisp - Level 16
  (607, 60700, 261, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Litwick - Flame Burst - Level 20
  (607, 60700, 481, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Litwick - Imprison - Level 24
  (607, 60700, 286, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Litwick - Hex - Level 28
  (607, 60700, 506, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Litwick - Memento - Level 33
  (607, 60700, 262, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Litwick - Inferno - Level 38
  (607, 60700, 517, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Litwick - Curse - Level 43
  (607, 60700, 174, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Litwick - Shadow Ball - Level 49
  (607, 60700, 247, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Litwick - Pain Split - Level 55
  (607, 60700, 220, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Litwick - Overheat - Level 61
  (607, 60700, 315, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Litwick - Calm Mind - TM04
  (607, 60700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Litwick - Toxic - TM06
  (607, 60700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Litwick - Hidden Power - TM10
  (607, 60700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Litwick - Sunny Day - TM11
  (607, 60700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Litwick - Taunt - TM12
  (607, 60700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Litwick - Protect - TM17
  (607, 60700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Litwick - Safeguard - TM20
  (607, 60700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Litwick - Frustration - TM21
  (607, 60700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Litwick - Solar Beam - TM22
  (607, 60700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Litwick - Return - TM27
  (607, 60700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Litwick - Psychic - TM29
  (607, 60700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Litwick - Shadow Ball - TM30
  (607, 60700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Litwick - Double Team - TM32
  (607, 60700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Litwick - Flamethrower - TM35
  (607, 60700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Litwick - Fire Blast - TM38
  (607, 60700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Litwick - Facade - TM42
  (607, 60700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Litwick - Flame Charge - TM43
  (607, 60700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 34),
  -- Litwick - Rest - TM44
  (607, 60700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Litwick - Attract - TM45
  (607, 60700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Litwick - Thief - TM46
  (607, 60700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Litwick - Round - TM48
  (607, 60700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Litwick - Overheat - TM50
  (607, 60700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 39),
  -- Litwick - Energy Ball - TM53
  (607, 60700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Litwick - Will-O-Wisp - TM61
  (607, 60700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 41),
  -- Litwick - Embargo - TM63
  (607, 60700, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Litwick - Payback - TM66
  (607, 60700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Litwick - Psych Up - TM77
  (607, 60700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Litwick - Dream Eater - TM85
  (607, 60700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Litwick - Swagger - TM87
  (607, 60700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Litwick - Sleep Talk - TM88
  (607, 60700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Litwick - Substitute - TM90
  (607, 60700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Litwick - Trick Room - TM92
  (607, 60700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 49),
  -- Litwick - Dark Pulse - TM97
  (607, 60700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 50),
  -- Litwick - Confide - TM100
  (607, 60700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Litwick - Acid - Egg
  (607, 60700, 51, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Litwick - Haze - Egg
  (607, 60700, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Litwick - Acid Armor - Egg
  (607, 60700, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Litwick - Endure - Egg
  (607, 60700, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Litwick - Heat Wave - Egg
  (607, 60700, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Litwick - Captivate - Egg
  (607, 60700, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Litwick - Power Split - Egg
  (607, 60700, 471, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Litwick - Clear Smog - Egg
  (607, 60700, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Litwick - Snore - Tutor
  (607, 60700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Litwick - Spite - Tutor
  (607, 60700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Litwick - Pain Split - Tutor
  (607, 60700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Litwick - Heat Wave - Tutor
  (607, 60700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Litwick - Trick - Tutor
  (607, 60700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Litwick - Shock Wave - Tutor
  (607, 60700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Litwick - Telekinesis - Tutor
  (607, 60700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Litwick - Ally Switch - Tutor
  (607, 60700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Lampent - Ember - Level 1
  (608, 60800, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lampent - Minimize - Level 1
  (608, 60800, 107, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lampent - Smog - Level 1
  (608, 60800, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lampent - Astonish - Level 1
  (608, 60800, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lampent - Minimize - Level 3
  (608, 60800, 107, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Lampent - Smog - Level 5
  (608, 60800, 123, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Lampent - Fire Spin - Level 7
  (608, 60800, 83, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Lampent - Confuse Ray - Level 10
  (608, 60800, 109, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Lampent - Night Shade - Level 13
  (608, 60800, 101, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Lampent - Will-O-Wisp - Level 16
  (608, 60800, 261, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Lampent - Flame Burst - Level 20
  (608, 60800, 481, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Lampent - Imprison - Level 24
  (608, 60800, 286, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lampent - Hex - Level 28
  (608, 60800, 506, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Lampent - Memento - Level 33
  (608, 60800, 262, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Lampent - Inferno - Level 38
  (608, 60800, 517, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Lampent - Curse - Level 45
  (608, 60800, 174, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Lampent - Shadow Ball - Level 53
  (608, 60800, 247, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Lampent - Pain Split - Level 61
  (608, 60800, 220, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Lampent - Overheat - Level 69
  (608, 60800, 315, 16, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Lampent - Calm Mind - TM04
  (608, 60800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Lampent - Toxic - TM06
  (608, 60800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Lampent - Hidden Power - TM10
  (608, 60800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Lampent - Sunny Day - TM11
  (608, 60800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Lampent - Taunt - TM12
  (608, 60800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Lampent - Protect - TM17
  (608, 60800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Lampent - Safeguard - TM20
  (608, 60800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Lampent - Frustration - TM21
  (608, 60800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Lampent - Solar Beam - TM22
  (608, 60800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Lampent - Return - TM27
  (608, 60800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Lampent - Psychic - TM29
  (608, 60800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Lampent - Shadow Ball - TM30
  (608, 60800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Lampent - Double Team - TM32
  (608, 60800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Lampent - Flamethrower - TM35
  (608, 60800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Lampent - Fire Blast - TM38
  (608, 60800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Lampent - Facade - TM42
  (608, 60800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Lampent - Flame Charge - TM43
  (608, 60800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 36),
  -- Lampent - Rest - TM44
  (608, 60800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Lampent - Attract - TM45
  (608, 60800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Lampent - Thief - TM46
  (608, 60800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Lampent - Round - TM48
  (608, 60800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Lampent - Overheat - TM50
  (608, 60800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 41),
  -- Lampent - Energy Ball - TM53
  (608, 60800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Lampent - Will-O-Wisp - TM61
  (608, 60800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 43),
  -- Lampent - Embargo - TM63
  (608, 60800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Lampent - Payback - TM66
  (608, 60800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Lampent - Psych Up - TM77
  (608, 60800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Lampent - Dream Eater - TM85
  (608, 60800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Lampent - Swagger - TM87
  (608, 60800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Lampent - Sleep Talk - TM88
  (608, 60800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Lampent - Substitute - TM90
  (608, 60800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Lampent - Trick Room - TM92
  (608, 60800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 51),
  -- Lampent - Dark Pulse - TM97
  (608, 60800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 52),
  -- Lampent - Confide - TM100
  (608, 60800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Lampent - Snore - Tutor
  (608, 60800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Lampent - Spite - Tutor
  (608, 60800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Lampent - Pain Split - Tutor
  (608, 60800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lampent - Heat Wave - Tutor
  (608, 60800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lampent - Trick - Tutor
  (608, 60800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lampent - Shock Wave - Tutor
  (608, 60800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lampent - Telekinesis - Tutor
  (608, 60800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Lampent - Ally Switch - Tutor
  (608, 60800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Chandelure - Confuse Ray - Level 1
  (609, 60900, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chandelure - Smog - Level 1
  (609, 60900, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chandelure - Pain Split - Level 1
  (609, 60900, 220, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chandelure - Flame Burst - Level 1
  (609, 60900, 481, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chandelure - Hex - Level 1
  (609, 60900, 506, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chandelure - Calm Mind - TM04
  (609, 60900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 6),
  -- Chandelure - Toxic - TM06
  (609, 60900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 7),
  -- Chandelure - Hidden Power - TM10
  (609, 60900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Chandelure - Sunny Day - TM11
  (609, 60900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 9),
  -- Chandelure - Taunt - TM12
  (609, 60900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 10),
  -- Chandelure - Hyper Beam - TM15
  (609, 60900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 11),
  -- Chandelure - Protect - TM17
  (609, 60900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Chandelure - Safeguard - TM20
  (609, 60900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 13),
  -- Chandelure - Frustration - TM21
  (609, 60900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 14),
  -- Chandelure - Solar Beam - TM22
  (609, 60900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 15),
  -- Chandelure - Return - TM27
  (609, 60900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 16),
  -- Chandelure - Psychic - TM29
  (609, 60900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 17),
  -- Chandelure - Shadow Ball - TM30
  (609, 60900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 18),
  -- Chandelure - Double Team - TM32
  (609, 60900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 19),
  -- Chandelure - Flamethrower - TM35
  (609, 60900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 20),
  -- Chandelure - Fire Blast - TM38
  (609, 60900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 21),
  -- Chandelure - Facade - TM42
  (609, 60900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Chandelure - Flame Charge - TM43
  (609, 60900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 23),
  -- Chandelure - Rest - TM44
  (609, 60900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Chandelure - Attract - TM45
  (609, 60900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Chandelure - Thief - TM46
  (609, 60900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 26),
  -- Chandelure - Round - TM48
  (609, 60900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Chandelure - Overheat - TM50
  (609, 60900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 28),
  -- Chandelure - Energy Ball - TM53
  (609, 60900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 29),
  -- Chandelure - Will-O-Wisp - TM61
  (609, 60900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 30),
  -- Chandelure - Embargo - TM63
  (609, 60900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 31),
  -- Chandelure - Payback - TM66
  (609, 60900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 32),
  -- Chandelure - Giga Impact - TM68
  (609, 60900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Chandelure - Psych Up - TM77
  (609, 60900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 34),
  -- Chandelure - Dream Eater - TM85
  (609, 60900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 35),
  -- Chandelure - Swagger - TM87
  (609, 60900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Chandelure - Sleep Talk - TM88
  (609, 60900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Chandelure - Substitute - TM90
  (609, 60900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Chandelure - Trick Room - TM92
  (609, 60900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 39),
  -- Chandelure - Dark Pulse - TM97
  (609, 60900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 40),
  -- Chandelure - Confide - TM100
  (609, 60900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Chandelure - Snore - Tutor
  (609, 60900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Chandelure - Spite - Tutor
  (609, 60900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Chandelure - Pain Split - Tutor
  (609, 60900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Chandelure - Heat Wave - Tutor
  (609, 60900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Chandelure - Trick - Tutor
  (609, 60900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Chandelure - Shock Wave - Tutor
  (609, 60900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Chandelure - Telekinesis - Tutor
  (609, 60900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Chandelure - Ally Switch - Tutor
  (609, 60900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Chandelure - Laser Focus - Tutor
  (609, 60900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Axew - Scratch - Level 1
  (610, 61000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Axew - Leer - Level 4
  (610, 61000, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Axew - Assurance - Level 7
  (610, 61000, 372, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Axew - Dragon Rage - Level 10
  (610, 61000, 82, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Axew - Dual Chop - Level 13
  (610, 61000, 530, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Axew - Scary Face - Level 16
  (610, 61000, 184, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Axew - Slash - Level 20
  (610, 61000, 163, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Axew - False Swipe - Level 24
  (610, 61000, 206, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Axew - Dragon Claw - Level 28
  (610, 61000, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Axew - Dragon Dance - Level 32
  (610, 61000, 349, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Axew - Taunt - Level 36
  (610, 61000, 269, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Axew - Dragon Pulse - Level 41
  (610, 61000, 406, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Axew - Swords Dance - Level 46
  (610, 61000, 14, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Axew - Guillotine - Level 50
  (610, 61000, 12, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Axew - Outrage - Level 56
  (610, 61000, 200, 16, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Axew - Giga Impact - Level 61
  (610, 61000, 416, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Axew - Dragon Claw - TM02
  (610, 61000, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Axew - Roar - TM05
  (610, 61000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Axew - Toxic - TM06
  (610, 61000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Axew - Hidden Power - TM10
  (610, 61000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Axew - Sunny Day - TM11
  (610, 61000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Axew - Taunt - TM12
  (610, 61000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Axew - Protect - TM17
  (610, 61000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Axew - Rain Dance - TM18
  (610, 61000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Axew - Frustration - TM21
  (610, 61000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Axew - Return - TM27
  (610, 61000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Axew - Double Team - TM32
  (610, 61000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Axew - Rock Tomb - TM39
  (610, 61000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Axew - Aerial Ace - TM40
  (610, 61000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Axew - Facade - TM42
  (610, 61000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Axew - Rest - TM44
  (610, 61000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Axew - Attract - TM45
  (610, 61000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Axew - Round - TM48
  (610, 61000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Axew - False Swipe - TM54
  (610, 61000, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 34),
  -- Axew - Fling - TM56
  (610, 61000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Axew - Payback - TM66
  (610, 61000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 36),
  -- Axew - Giga Impact - TM68
  (610, 61000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Axew - Swords Dance - TM75
  (610, 61000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 38),
  -- Axew - X-Scissor - TM81
  (610, 61000, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 39),
  -- Axew - Poison Jab - TM84
  (610, 61000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 40),
  -- Axew - Swagger - TM87
  (610, 61000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Axew - Sleep Talk - TM88
  (610, 61000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Axew - Substitute - TM90
  (610, 61000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Axew - Confide - TM100
  (610, 61000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Axew - Razor Wind - Egg
  (610, 61000, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Axew - Counter - Egg
  (610, 61000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Axew - Harden - Egg
  (610, 61000, 106, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Axew - Focus Energy - Egg
  (610, 61000, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Axew - Reversal - Egg
  (610, 61000, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Axew - Endure - Egg
  (610, 61000, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Axew - Iron Tail - Egg
  (610, 61000, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Axew - Endeavor - Egg
  (610, 61000, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Axew - Night Slash - Egg
  (610, 61000, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Axew - Dragon Pulse - Egg
  (610, 61000, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Axew - Snore - Tutor
  (610, 61000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Axew - Outrage - Tutor
  (610, 61000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Axew - Iron Tail - Tutor
  (610, 61000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Axew - Superpower - Tutor
  (610, 61000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Axew - Endeavor - Tutor
  (610, 61000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Axew - Shock Wave - Tutor
  (610, 61000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Axew - Aqua Tail - Tutor
  (610, 61000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Axew - Dragon Pulse - Tutor
  (610, 61000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Axew - Draco Meteor - Tutor
  (610, 61000, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Axew - Dual Chop - Tutor
  (610, 61000, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Fraxure - Scratch - Level 1
  (611, 61100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fraxure - Leer - Level 1
  (611, 61100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fraxure - Dragon Rage - Level 1
  (611, 61100, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fraxure - Assurance - Level 1
  (611, 61100, 372, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fraxure - Leer - Level 4
  (611, 61100, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Fraxure - Assurance - Level 7
  (611, 61100, 372, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Fraxure - Dragon Rage - Level 10
  (611, 61100, 82, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Fraxure - Dual Chop - Level 13
  (611, 61100, 530, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Fraxure - Scary Face - Level 16
  (611, 61100, 184, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Fraxure - Slash - Level 20
  (611, 61100, 163, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Fraxure - False Swipe - Level 24
  (611, 61100, 206, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Fraxure - Dragon Claw - Level 28
  (611, 61100, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Fraxure - Dragon Dance - Level 32
  (611, 61100, 349, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Fraxure - Taunt - Level 36
  (611, 61100, 269, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Fraxure - Dragon Pulse - Level 42
  (611, 61100, 406, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Fraxure - Swords Dance - Level 48
  (611, 61100, 14, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Fraxure - Guillotine - Level 54
  (611, 61100, 12, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Fraxure - Outrage - Level 60
  (611, 61100, 200, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Fraxure - Giga Impact - Level 66
  (611, 61100, 416, 16, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Fraxure - Dragon Claw - TM02
  (611, 61100, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 20),
  -- Fraxure - Roar - TM05
  (611, 61100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Fraxure - Toxic - TM06
  (611, 61100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Fraxure - Hidden Power - TM10
  (611, 61100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Fraxure - Sunny Day - TM11
  (611, 61100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Fraxure - Taunt - TM12
  (611, 61100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Fraxure - Protect - TM17
  (611, 61100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Fraxure - Rain Dance - TM18
  (611, 61100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Fraxure - Frustration - TM21
  (611, 61100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Fraxure - Return - TM27
  (611, 61100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Fraxure - Double Team - TM32
  (611, 61100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Fraxure - Rock Tomb - TM39
  (611, 61100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Fraxure - Aerial Ace - TM40
  (611, 61100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Fraxure - Facade - TM42
  (611, 61100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Fraxure - Rest - TM44
  (611, 61100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Fraxure - Attract - TM45
  (611, 61100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Fraxure - Round - TM48
  (611, 61100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Fraxure - False Swipe - TM54
  (611, 61100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Fraxure - Fling - TM56
  (611, 61100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Fraxure - Shadow Claw - TM65
  (611, 61100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Fraxure - Payback - TM66
  (611, 61100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Fraxure - Giga Impact - TM68
  (611, 61100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Fraxure - Swords Dance - TM75
  (611, 61100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Fraxure - X-Scissor - TM81
  (611, 61100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Fraxure - Dragon Tail - TM82
  (611, 61100, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 44),
  -- Fraxure - Poison Jab - TM84
  (611, 61100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Fraxure - Swagger - TM87
  (611, 61100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Fraxure - Sleep Talk - TM88
  (611, 61100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Fraxure - Substitute - TM90
  (611, 61100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Fraxure - Confide - TM100
  (611, 61100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Fraxure - Low Kick - Tutor
  (611, 61100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Fraxure - Snore - Tutor
  (611, 61100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Fraxure - Outrage - Tutor
  (611, 61100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Fraxure - Iron Tail - Tutor
  (611, 61100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Fraxure - Superpower - Tutor
  (611, 61100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Fraxure - Endeavor - Tutor
  (611, 61100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Fraxure - Shock Wave - Tutor
  (611, 61100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Fraxure - Aqua Tail - Tutor
  (611, 61100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Fraxure - Dragon Pulse - Tutor
  (611, 61100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Fraxure - Draco Meteor - Tutor
  (611, 61100, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Fraxure - Dual Chop - Tutor
  (611, 61100, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Fraxure - Stomping Tantrum - Tutor
  (611, 61100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Haxorus - Scratch - Level 1
  (612, 61200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haxorus - Leer - Level 1
  (612, 61200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haxorus - Dragon Rage - Level 1
  (612, 61200, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haxorus - Outrage - Level 1
  (612, 61200, 200, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haxorus - Assurance - Level 1
  (612, 61200, 372, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Haxorus - Leer - Level 4
  (612, 61200, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Haxorus - Assurance - Level 7
  (612, 61200, 372, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Haxorus - Dragon Rage - Level 10
  (612, 61200, 82, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Haxorus - Dual Chop - Level 13
  (612, 61200, 530, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Haxorus - Scary Face - Level 16
  (612, 61200, 184, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Haxorus - Slash - Level 20
  (612, 61200, 163, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Haxorus - False Swipe - Level 24
  (612, 61200, 206, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Haxorus - Dragon Claw - Level 28
  (612, 61200, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Haxorus - Dragon Dance - Level 32
  (612, 61200, 349, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Haxorus - Taunt - Level 36
  (612, 61200, 269, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Haxorus - Dragon Pulse - Level 42
  (612, 61200, 406, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Haxorus - Swords Dance - Level 50
  (612, 61200, 14, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Haxorus - Guillotine - Level 58
  (612, 61200, 12, 16, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Haxorus - Outrage - Level 66
  (612, 61200, 200, 16, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Haxorus - Giga Impact - Level 74
  (612, 61200, 416, 16, NULL, 1, 74, NULL, NULL, NULL, 20),
  -- Haxorus - Dragon Claw - TM02
  (612, 61200, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Haxorus - Roar - TM05
  (612, 61200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Haxorus - Toxic - TM06
  (612, 61200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Haxorus - Hidden Power - TM10
  (612, 61200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Haxorus - Sunny Day - TM11
  (612, 61200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Haxorus - Taunt - TM12
  (612, 61200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Haxorus - Hyper Beam - TM15
  (612, 61200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Haxorus - Protect - TM17
  (612, 61200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Haxorus - Rain Dance - TM18
  (612, 61200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Haxorus - Frustration - TM21
  (612, 61200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Haxorus - Earthquake - TM26
  (612, 61200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Haxorus - Return - TM27
  (612, 61200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Haxorus - Brick Break - TM31
  (612, 61200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Haxorus - Double Team - TM32
  (612, 61200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Haxorus - Rock Tomb - TM39
  (612, 61200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Haxorus - Aerial Ace - TM40
  (612, 61200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Haxorus - Facade - TM42
  (612, 61200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Haxorus - Rest - TM44
  (612, 61200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Haxorus - Attract - TM45
  (612, 61200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Haxorus - Round - TM48
  (612, 61200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Haxorus - Focus Blast - TM52
  (612, 61200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Haxorus - False Swipe - TM54
  (612, 61200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 42),
  -- Haxorus - Fling - TM56
  (612, 61200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Haxorus - Brutal Swing - TM59
  (612, 61200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Haxorus - Shadow Claw - TM65
  (612, 61200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Haxorus - Payback - TM66
  (612, 61200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Haxorus - Giga Impact - TM68
  (612, 61200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Haxorus - Swords Dance - TM75
  (612, 61200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 48),
  -- Haxorus - Bulldoze - TM78
  (612, 61200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Haxorus - Rock Slide - TM80
  (612, 61200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Haxorus - X-Scissor - TM81
  (612, 61200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 51),
  -- Haxorus - Dragon Tail - TM82
  (612, 61200, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Haxorus - Poison Jab - TM84
  (612, 61200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Haxorus - Grass Knot - TM86
  (612, 61200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 54),
  -- Haxorus - Swagger - TM87
  (612, 61200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Haxorus - Sleep Talk - TM88
  (612, 61200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Haxorus - Substitute - TM90
  (612, 61200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Haxorus - Surf - TM94
  (612, 61200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 58),
  -- Haxorus - Confide - TM100
  (612, 61200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Haxorus - Low Kick - Tutor
  (612, 61200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Haxorus - Snore - Tutor
  (612, 61200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Haxorus - Outrage - Tutor
  (612, 61200, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Haxorus - Iron Tail - Tutor
  (612, 61200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Haxorus - Superpower - Tutor
  (612, 61200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Haxorus - Endeavor - Tutor
  (612, 61200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Haxorus - Shock Wave - Tutor
  (612, 61200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Haxorus - Aqua Tail - Tutor
  (612, 61200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Haxorus - Dragon Pulse - Tutor
  (612, 61200, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Haxorus - Draco Meteor - Tutor
  (612, 61200, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Haxorus - Dual Chop - Tutor
  (612, 61200, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Haxorus - Laser Focus - Tutor
  (612, 61200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Haxorus - Stomping Tantrum - Tutor
  (612, 61200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Cubchoo - Growl - Level 1
  (613, 61300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubchoo - Powder Snow - Level 5
  (613, 61300, 181, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cubchoo - Bide - Level 9
  (613, 61300, 117, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cubchoo - Icy Wind - Level 13
  (613, 61300, 196, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cubchoo - Play Nice - Level 15
  (613, 61300, 589, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cubchoo - Fury Swipes - Level 17
  (613, 61300, 154, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cubchoo - Brine - Level 21
  (613, 61300, 362, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cubchoo - Endure - Level 25
  (613, 61300, 203, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cubchoo - Charm - Level 29
  (613, 61300, 204, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cubchoo - Slash - Level 33
  (613, 61300, 163, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cubchoo - Flail - Level 36
  (613, 61300, 175, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Cubchoo - Rest - Level 41
  (613, 61300, 156, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cubchoo - Blizzard - Level 45
  (613, 61300, 59, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Cubchoo - Hail - Level 49
  (613, 61300, 258, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cubchoo - Thrash - Level 53
  (613, 61300, 37, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cubchoo - Sheer Cold - Level 57
  (613, 61300, 329, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Cubchoo - Toxic - TM06
  (613, 61300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Cubchoo - Hail - TM07
  (613, 61300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Cubchoo - Hidden Power - TM10
  (613, 61300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Cubchoo - Ice Beam - TM13
  (613, 61300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Cubchoo - Blizzard - TM14
  (613, 61300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Cubchoo - Protect - TM17
  (613, 61300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Cubchoo - Rain Dance - TM18
  (613, 61300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Cubchoo - Frustration - TM21
  (613, 61300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Cubchoo - Return - TM27
  (613, 61300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Cubchoo - Double Team - TM32
  (613, 61300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Cubchoo - Rock Tomb - TM39
  (613, 61300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Cubchoo - Aerial Ace - TM40
  (613, 61300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Cubchoo - Facade - TM42
  (613, 61300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Cubchoo - Rest - TM44
  (613, 61300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Cubchoo - Attract - TM45
  (613, 61300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Cubchoo - Round - TM48
  (613, 61300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Cubchoo - Echoed Voice - TM49
  (613, 61300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Cubchoo - Fling - TM56
  (613, 61300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Cubchoo - Shadow Claw - TM65
  (613, 61300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 35),
  -- Cubchoo - Frost Breath - TM79
  (613, 61300, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 36),
  -- Cubchoo - Grass Knot - TM86
  (613, 61300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Cubchoo - Swagger - TM87
  (613, 61300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Cubchoo - Sleep Talk - TM88
  (613, 61300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Cubchoo - Substitute - TM90
  (613, 61300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Cubchoo - Surf - TM94
  (613, 61300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 41),
  -- Cubchoo - Confide - TM100
  (613, 61300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Cubchoo - Ice Punch - Egg
  (613, 61300, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cubchoo - Sleep Talk - Egg
  (613, 61300, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cubchoo - Encore - Egg
  (613, 61300, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cubchoo - Focus Punch - Egg
  (613, 61300, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cubchoo - Yawn - Egg
  (613, 61300, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cubchoo - Assurance - Egg
  (613, 61300, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cubchoo - Night Slash - Egg
  (613, 61300, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cubchoo - Avalanche - Egg
  (613, 61300, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cubchoo - Play Rough - Egg
  (613, 61300, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cubchoo - Ice Punch - Tutor
  (613, 61300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cubchoo - Low Kick - Tutor
  (613, 61300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cubchoo - Snore - Tutor
  (613, 61300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cubchoo - Icy Wind - Tutor
  (613, 61300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cubchoo - Focus Punch - Tutor
  (613, 61300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cubchoo - Superpower - Tutor
  (613, 61300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cubchoo - Covet - Tutor
  (613, 61300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cubchoo - Water Pulse - Tutor
  (613, 61300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Beartic - Thrash - Level 1
  (614, 61400, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beartic - Growl - Level 1
  (614, 61400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beartic - Bide - Level 1
  (614, 61400, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beartic - Powder Snow - Level 1
  (614, 61400, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beartic - Icy Wind - Level 1
  (614, 61400, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beartic - Superpower - Level 1
  (614, 61400, 276, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Beartic - Sheer Cold - Level 1
  (614, 61400, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Beartic - Aqua Jet - Level 1
  (614, 61400, 453, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Beartic - Icicle Crash - Level 1
  (614, 61400, 556, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Beartic - Powder Snow - Level 5
  (614, 61400, 181, 16, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Beartic - Bide - Level 9
  (614, 61400, 117, 16, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Beartic - Icy Wind - Level 13
  (614, 61400, 196, 16, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Beartic - Play Nice - Level 15
  (614, 61400, 589, 16, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Beartic - Fury Swipes - Level 17
  (614, 61400, 154, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Beartic - Brine - Level 21
  (614, 61400, 362, 16, NULL, 1, 21, NULL, NULL, NULL, 15),
  -- Beartic - Endure - Level 25
  (614, 61400, 203, 16, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Beartic - Swagger - Level 29
  (614, 61400, 207, 16, NULL, 1, 29, NULL, NULL, NULL, 17),
  -- Beartic - Slash - Level 33
  (614, 61400, 163, 16, NULL, 1, 33, NULL, NULL, NULL, 18),
  -- Beartic - Flail - Level 36
  (614, 61400, 175, 16, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Beartic - Rest - Level 41
  (614, 61400, 156, 16, NULL, 1, 41, NULL, NULL, NULL, 20),
  -- Beartic - Blizzard - Level 45
  (614, 61400, 59, 16, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Beartic - Hail - Level 53
  (614, 61400, 258, 16, NULL, 1, 53, NULL, NULL, NULL, 22),
  -- Beartic - Thrash - Level 59
  (614, 61400, 37, 16, NULL, 1, 59, NULL, NULL, NULL, 23),
  -- Beartic - Sheer Cold - Level 66
  (614, 61400, 329, 16, NULL, 1, 66, NULL, NULL, NULL, 24),
  -- Beartic - Roar - TM05
  (614, 61400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 25),
  -- Beartic - Toxic - TM06
  (614, 61400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Beartic - Hail - TM07
  (614, 61400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 27),
  -- Beartic - Bulk Up - TM08
  (614, 61400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 28),
  -- Beartic - Hidden Power - TM10
  (614, 61400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 29),
  -- Beartic - Taunt - TM12
  (614, 61400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 30),
  -- Beartic - Ice Beam - TM13
  (614, 61400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 31),
  -- Beartic - Blizzard - TM14
  (614, 61400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 32),
  -- Beartic - Hyper Beam - TM15
  (614, 61400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 33),
  -- Beartic - Protect - TM17
  (614, 61400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 34),
  -- Beartic - Rain Dance - TM18
  (614, 61400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 35),
  -- Beartic - Frustration - TM21
  (614, 61400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 36),
  -- Beartic - Return - TM27
  (614, 61400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Beartic - Brick Break - TM31
  (614, 61400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 38),
  -- Beartic - Double Team - TM32
  (614, 61400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Beartic - Rock Tomb - TM39
  (614, 61400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 40),
  -- Beartic - Aerial Ace - TM40
  (614, 61400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 41),
  -- Beartic - Facade - TM42
  (614, 61400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Beartic - Rest - TM44
  (614, 61400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Beartic - Attract - TM45
  (614, 61400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Beartic - Round - TM48
  (614, 61400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Beartic - Echoed Voice - TM49
  (614, 61400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Beartic - Focus Blast - TM52
  (614, 61400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 47),
  -- Beartic - Fling - TM56
  (614, 61400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 48),
  -- Beartic - Shadow Claw - TM65
  (614, 61400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 49),
  -- Beartic - Giga Impact - TM68
  (614, 61400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Beartic - Stone Edge - TM71
  (614, 61400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 51),
  -- Beartic - Swords Dance - TM75
  (614, 61400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 52),
  -- Beartic - Bulldoze - TM78
  (614, 61400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 53),
  -- Beartic - Frost Breath - TM79
  (614, 61400, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 54),
  -- Beartic - Rock Slide - TM80
  (614, 61400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Beartic - Grass Knot - TM86
  (614, 61400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Beartic - Swagger - TM87
  (614, 61400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Beartic - Sleep Talk - TM88
  (614, 61400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Beartic - Substitute - TM90
  (614, 61400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Beartic - Surf - TM94
  (614, 61400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 60),
  -- Beartic - Confide - TM100
  (614, 61400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Beartic - Ice Punch - Tutor
  (614, 61400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Beartic - Low Kick - Tutor
  (614, 61400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Beartic - Snore - Tutor
  (614, 61400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Beartic - Icy Wind - Tutor
  (614, 61400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Beartic - Focus Punch - Tutor
  (614, 61400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Beartic - Superpower - Tutor
  (614, 61400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Beartic - Covet - Tutor
  (614, 61400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Beartic - Water Pulse - Tutor
  (614, 61400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Beartic - Throat Chop - Tutor
  (614, 61400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Beartic - Icicle Crash - Evolution
  (614, 61400, 556, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Cryogonal - Bind - Level 1
  (615, 61500, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cryogonal - Sharpen - Level 1
  (615, 61500, 159, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cryogonal - Rapid Spin - Level 1
  (615, 61500, 229, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cryogonal - Sheer Cold - Level 1
  (615, 61500, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cryogonal - Night Slash - Level 1
  (615, 61500, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cryogonal - Ice Shard - Level 1
  (615, 61500, 420, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cryogonal - Icy Wind - Level 5
  (615, 61500, 196, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Cryogonal - Mist - Level 9
  (615, 61500, 54, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Cryogonal - Haze - Level 9
  (615, 61500, 114, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Cryogonal - Aurora Beam - Level 13
  (615, 61500, 62, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Cryogonal - Acid Armor - Level 17
  (615, 61500, 151, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Cryogonal - Ancient Power - Level 21
  (615, 61500, 246, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Cryogonal - Ice Beam - Level 25
  (615, 61500, 58, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Cryogonal - Light Screen - Level 29
  (615, 61500, 113, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Cryogonal - Reflect - Level 33
  (615, 61500, 115, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Cryogonal - Slash - Level 37
  (615, 61500, 163, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Cryogonal - Confuse Ray - Level 41
  (615, 61500, 109, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Cryogonal - Recover - Level 45
  (615, 61500, 105, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Cryogonal - Freeze-Dry - Level 49
  (615, 61500, 573, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Cryogonal - Solar Beam - Level 50
  (615, 61500, 76, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Cryogonal - Night Slash - Level 53
  (615, 61500, 400, 16, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Cryogonal - Sheer Cold - Level 57
  (615, 61500, 329, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Cryogonal - Toxic - TM06
  (615, 61500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Cryogonal - Hail - TM07
  (615, 61500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Cryogonal - Hidden Power - TM10
  (615, 61500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Cryogonal - Ice Beam - TM13
  (615, 61500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Cryogonal - Blizzard - TM14
  (615, 61500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Cryogonal - Hyper Beam - TM15
  (615, 61500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Cryogonal - Light Screen - TM16
  (615, 61500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Cryogonal - Protect - TM17
  (615, 61500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Cryogonal - Rain Dance - TM18
  (615, 61500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Cryogonal - Frustration - TM21
  (615, 61500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Cryogonal - Solar Beam - TM22
  (615, 61500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Cryogonal - Return - TM27
  (615, 61500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Cryogonal - Double Team - TM32
  (615, 61500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Cryogonal - Reflect - TM33
  (615, 61500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Cryogonal - Facade - TM42
  (615, 61500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Cryogonal - Rest - TM44
  (615, 61500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Cryogonal - Attract - TM45
  (615, 61500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Cryogonal - Round - TM48
  (615, 61500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Cryogonal - Acrobatics - TM62
  (615, 61500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 41),
  -- Cryogonal - Explosion - TM64
  (615, 61500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Cryogonal - Aurora Veil - TM70
  (615, 61500, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 43),
  -- Cryogonal - Frost Breath - TM79
  (615, 61500, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 44),
  -- Cryogonal - Poison Jab - TM84
  (615, 61500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Cryogonal - Swagger - TM87
  (615, 61500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Cryogonal - Sleep Talk - TM88
  (615, 61500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Cryogonal - Substitute - TM90
  (615, 61500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Cryogonal - Flash Cannon - TM91
  (615, 61500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 49),
  -- Cryogonal - Confide - TM100
  (615, 61500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Cryogonal - Bind - Tutor
  (615, 61500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cryogonal - Snore - Tutor
  (615, 61500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cryogonal - Icy Wind - Tutor
  (615, 61500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cryogonal - Magic Coat - Tutor
  (615, 61500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cryogonal - Knock Off - Tutor
  (615, 61500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cryogonal - Signal Beam - Tutor
  (615, 61500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cryogonal - Iron Defense - Tutor
  (615, 61500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cryogonal - Water Pulse - Tutor
  (615, 61500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cryogonal - Defog - Tutor
  (615, 61500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cryogonal - Laser Focus - Tutor
  (615, 61500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Shelmet - Absorb - Level 1
  (616, 61600, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelmet - Acid - Level 4
  (616, 61600, 51, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shelmet - Bide - Level 8
  (616, 61600, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shelmet - Curse - Level 13
  (616, 61600, 174, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shelmet - Struggle Bug - Level 16
  (616, 61600, 522, 16, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shelmet - Mega Drain - Level 20
  (616, 61600, 72, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shelmet - Yawn - Level 25
  (616, 61600, 281, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shelmet - Protect - Level 28
  (616, 61600, 182, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shelmet - Acid Armor - Level 32
  (616, 61600, 151, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shelmet - Giga Drain - Level 37
  (616, 61600, 202, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shelmet - Body Slam - Level 40
  (616, 61600, 34, 16, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shelmet - Bug Buzz - Level 44
  (616, 61600, 405, 16, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Shelmet - Recover - Level 49
  (616, 61600, 105, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Shelmet - Guard Swap - Level 50
  (616, 61600, 385, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Shelmet - Final Gambit - Level 56
  (616, 61600, 515, 16, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Shelmet - Toxic - TM06
  (616, 61600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Shelmet - Venoshock - TM09
  (616, 61600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Shelmet - Hidden Power - TM10
  (616, 61600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Shelmet - Protect - TM17
  (616, 61600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Shelmet - Rain Dance - TM18
  (616, 61600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Shelmet - Frustration - TM21
  (616, 61600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Shelmet - Return - TM27
  (616, 61600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Shelmet - Leech Life - TM28
  (616, 61600, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 23),
  -- Shelmet - Double Team - TM32
  (616, 61600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Shelmet - Sludge Bomb - TM36
  (616, 61600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 25),
  -- Shelmet - Facade - TM42
  (616, 61600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Shelmet - Rest - TM44
  (616, 61600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Shelmet - Attract - TM45
  (616, 61600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Shelmet - Round - TM48
  (616, 61600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Shelmet - Energy Ball - TM53
  (616, 61600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 30),
  -- Shelmet - Infestation - TM83
  (616, 61600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 31),
  -- Shelmet - Swagger - TM87
  (616, 61600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Shelmet - Sleep Talk - TM88
  (616, 61600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Shelmet - Substitute - TM90
  (616, 61600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Shelmet - Confide - TM100
  (616, 61600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 35),
  -- Shelmet - Double-Edge - Egg
  (616, 61600, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shelmet - Mind Reader - Egg
  (616, 61600, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shelmet - Mud-Slap - Egg
  (616, 61600, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shelmet - Spikes - Egg
  (616, 61600, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shelmet - Endure - Egg
  (616, 61600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shelmet - Baton Pass - Egg
  (616, 61600, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shelmet - Encore - Egg
  (616, 61600, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shelmet - Pursuit - Egg
  (616, 61600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shelmet - Feint - Egg
  (616, 61600, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shelmet - Toxic Spikes - Egg
  (616, 61600, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shelmet - Guard Split - Egg
  (616, 61600, 470, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shelmet - Snore - Tutor
  (616, 61600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Shelmet - Giga Drain - Tutor
  (616, 61600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Shelmet - Signal Beam - Tutor
  (616, 61600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Shelmet - Gastro Acid - Tutor
  (616, 61600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Shelmet - Bug Bite - Tutor
  (616, 61600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),

  -- Accelgor - Absorb - Level 1
  (617, 61700, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Accelgor - Quick Attack - Level 1
  (617, 61700, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Accelgor - Double Team - Level 1
  (617, 61700, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Accelgor - Power Swap - Level 1
  (617, 61700, 384, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Accelgor - Acid Spray - Level 1
  (617, 61700, 491, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Accelgor - Final Gambit - Level 1
  (617, 61700, 515, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Accelgor - Water Shuriken - Level 1
  (617, 61700, 594, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Accelgor - Acid Spray - Level 4
  (617, 61700, 491, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Accelgor - Double Team - Level 8
  (617, 61700, 104, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Accelgor - Quick Attack - Level 13
  (617, 61700, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Accelgor - Struggle Bug - Level 16
  (617, 61700, 522, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Accelgor - Mega Drain - Level 20
  (617, 61700, 72, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Accelgor - Swift - Level 25
  (617, 61700, 129, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Accelgor - Me First - Level 28
  (617, 61700, 382, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Accelgor - Agility - Level 32
  (617, 61700, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Accelgor - Giga Drain - Level 37
  (617, 61700, 202, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Accelgor - U-turn - Level 40
  (617, 61700, 369, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Accelgor - Bug Buzz - Level 44
  (617, 61700, 405, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Accelgor - Recover - Level 49
  (617, 61700, 105, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Accelgor - Power Swap - Level 52
  (617, 61700, 384, 16, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Accelgor - Final Gambit - Level 56
  (617, 61700, 515, 16, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Accelgor - Toxic - TM06
  (617, 61700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Accelgor - Venoshock - TM09
  (617, 61700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 23),
  -- Accelgor - Hidden Power - TM10
  (617, 61700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Accelgor - Hyper Beam - TM15
  (617, 61700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Accelgor - Protect - TM17
  (617, 61700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Accelgor - Rain Dance - TM18
  (617, 61700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Accelgor - Frustration - TM21
  (617, 61700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Accelgor - Return - TM27
  (617, 61700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Accelgor - Leech Life - TM28
  (617, 61700, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 30),
  -- Accelgor - Double Team - TM32
  (617, 61700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Accelgor - Sludge Bomb - TM36
  (617, 61700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Accelgor - Sandstorm - TM37
  (617, 61700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Accelgor - Facade - TM42
  (617, 61700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Accelgor - Rest - TM44
  (617, 61700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Accelgor - Attract - TM45
  (617, 61700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Accelgor - Round - TM48
  (617, 61700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Accelgor - Focus Blast - TM52
  (617, 61700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Accelgor - Energy Ball - TM53
  (617, 61700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Accelgor - Giga Impact - TM68
  (617, 61700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Accelgor - Infestation - TM83
  (617, 61700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 41),
  -- Accelgor - Swagger - TM87
  (617, 61700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Accelgor - Sleep Talk - TM88
  (617, 61700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Accelgor - U-turn - TM89
  (617, 61700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 44),
  -- Accelgor - Substitute - TM90
  (617, 61700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Accelgor - Confide - TM100
  (617, 61700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Accelgor - Snore - Tutor
  (617, 61700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Accelgor - Giga Drain - Tutor
  (617, 61700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Accelgor - Knock Off - Tutor
  (617, 61700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Accelgor - Signal Beam - Tutor
  (617, 61700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Accelgor - Gastro Acid - Tutor
  (617, 61700, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Accelgor - Bug Bite - Tutor
  (617, 61700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Accelgor - Laser Focus - Tutor
  (617, 61700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Stunfisk - Tackle - Level 1
  (618, 61800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunfisk - Water Gun - Level 1
  (618, 61800, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunfisk - Fissure - Level 1
  (618, 61800, 90, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stunfisk - Flail - Level 1
  (618, 61800, 175, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stunfisk - Mud-Slap - Level 1
  (618, 61800, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Stunfisk - Mud Sport - Level 1
  (618, 61800, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Stunfisk - Bide - Level 5
  (618, 61800, 117, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Stunfisk - Thunder Shock - Level 9
  (618, 61800, 84, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Stunfisk - Mud Shot - Level 13
  (618, 61800, 341, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Stunfisk - Camouflage - Level 17
  (618, 61800, 293, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Stunfisk - Mud Bomb - Level 21
  (618, 61800, 426, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Stunfisk - Discharge - Level 25
  (618, 61800, 435, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Stunfisk - Endure - Level 30
  (618, 61800, 203, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Stunfisk - Bounce - Level 35
  (618, 61800, 340, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Stunfisk - Muddy Water - Level 40
  (618, 61800, 330, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Stunfisk - Thunderbolt - Level 45
  (618, 61800, 85, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Stunfisk - Revenge - Level 50
  (618, 61800, 279, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Stunfisk - Flail - Level 55
  (618, 61800, 175, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Stunfisk - Fissure - Level 61
  (618, 61800, 90, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Stunfisk - Toxic - TM06
  (618, 61800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Stunfisk - Hidden Power - TM10
  (618, 61800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Stunfisk - Protect - TM17
  (618, 61800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Stunfisk - Rain Dance - TM18
  (618, 61800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Stunfisk - Frustration - TM21
  (618, 61800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Stunfisk - Thunderbolt - TM24
  (618, 61800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Stunfisk - Thunder - TM25
  (618, 61800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Stunfisk - Earthquake - TM26
  (618, 61800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Stunfisk - Return - TM27
  (618, 61800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Stunfisk - Double Team - TM32
  (618, 61800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Stunfisk - Sludge Wave - TM34
  (618, 61800, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Stunfisk - Sludge Bomb - TM36
  (618, 61800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Stunfisk - Sandstorm - TM37
  (618, 61800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Stunfisk - Rock Tomb - TM39
  (618, 61800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Stunfisk - Facade - TM42
  (618, 61800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Stunfisk - Rest - TM44
  (618, 61800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Stunfisk - Attract - TM45
  (618, 61800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Stunfisk - Round - TM48
  (618, 61800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Stunfisk - Scald - TM55
  (618, 61800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Stunfisk - Payback - TM66
  (618, 61800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Stunfisk - Stone Edge - TM71
  (618, 61800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Stunfisk - Thunder Wave - TM73
  (618, 61800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Stunfisk - Bulldoze - TM78
  (618, 61800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Stunfisk - Rock Slide - TM80
  (618, 61800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Stunfisk - Infestation - TM83
  (618, 61800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 44),
  -- Stunfisk - Swagger - TM87
  (618, 61800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Stunfisk - Sleep Talk - TM88
  (618, 61800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Stunfisk - Substitute - TM90
  (618, 61800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Stunfisk - Surf - TM94
  (618, 61800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Stunfisk - Confide - TM100
  (618, 61800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Stunfisk - Curse - Egg
  (618, 61800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunfisk - Spite - Egg
  (618, 61800, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunfisk - Spark - Egg
  (618, 61800, 209, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunfisk - Sleep Talk - Egg
  (618, 61800, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunfisk - Pain Split - Egg
  (618, 61800, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunfisk - Yawn - Egg
  (618, 61800, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunfisk - Astonish - Egg
  (618, 61800, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunfisk - Shock Wave - Egg
  (618, 61800, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunfisk - Me First - Egg
  (618, 61800, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunfisk - Earth Power - Egg
  (618, 61800, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stunfisk - Reflect Type - Egg
  (618, 61800, 513, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stunfisk - Eerie Impulse - Egg
  (618, 61800, 598, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stunfisk - Snore - Tutor
  (618, 61800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Stunfisk - Spite - Tutor
  (618, 61800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Stunfisk - Pain Split - Tutor
  (618, 61800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Stunfisk - Uproar - Tutor
  (618, 61800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Stunfisk - Endeavor - Tutor
  (618, 61800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Stunfisk - Bounce - Tutor
  (618, 61800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Stunfisk - Shock Wave - Tutor
  (618, 61800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Stunfisk - Water Pulse - Tutor
  (618, 61800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Stunfisk - Magnet Rise - Tutor
  (618, 61800, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Stunfisk - Aqua Tail - Tutor
  (618, 61800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Stunfisk - Earth Power - Tutor
  (618, 61800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Stunfisk - Stealth Rock - Tutor
  (618, 61800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Stunfisk - Foul Play - Tutor
  (618, 61800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Stunfisk - Electroweb - Tutor
  (618, 61800, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Stunfisk - Stomping Tantrum - Tutor
  (618, 61800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Mienfoo - Pound - Level 1
  (619, 61900, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienfoo - Meditate - Level 5
  (619, 61900, 96, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mienfoo - Detect - Level 9
  (619, 61900, 197, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mienfoo - Fake Out - Level 13
  (619, 61900, 252, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Mienfoo - Double Slap - Level 17
  (619, 61900, 3, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Mienfoo - Swift - Level 21
  (619, 61900, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Mienfoo - Calm Mind - Level 25
  (619, 61900, 347, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mienfoo - Force Palm - Level 29
  (619, 61900, 395, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Mienfoo - Drain Punch - Level 33
  (619, 61900, 409, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mienfoo - Jump Kick - Level 37
  (619, 61900, 26, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mienfoo - U-turn - Level 41
  (619, 61900, 369, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mienfoo - Quick Guard - Level 45
  (619, 61900, 501, 16, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Mienfoo - Bounce - Level 49
  (619, 61900, 340, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Mienfoo - High Jump Kick - Level 50
  (619, 61900, 136, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Mienfoo - Reversal - Level 57
  (619, 61900, 179, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Mienfoo - Aura Sphere - Level 61
  (619, 61900, 396, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Mienfoo - Work Up - TM01
  (619, 61900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Mienfoo - Calm Mind - TM04
  (619, 61900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Mienfoo - Toxic - TM06
  (619, 61900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Mienfoo - Bulk Up - TM08
  (619, 61900, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 20),
  -- Mienfoo - Hidden Power - TM10
  (619, 61900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Mienfoo - Sunny Day - TM11
  (619, 61900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Mienfoo - Taunt - TM12
  (619, 61900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Mienfoo - Protect - TM17
  (619, 61900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Mienfoo - Rain Dance - TM18
  (619, 61900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Mienfoo - Frustration - TM21
  (619, 61900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Mienfoo - Return - TM27
  (619, 61900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Mienfoo - Brick Break - TM31
  (619, 61900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Mienfoo - Double Team - TM32
  (619, 61900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Mienfoo - Reflect - TM33
  (619, 61900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Mienfoo - Rock Tomb - TM39
  (619, 61900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Mienfoo - Aerial Ace - TM40
  (619, 61900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Mienfoo - Facade - TM42
  (619, 61900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Mienfoo - Rest - TM44
  (619, 61900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Mienfoo - Attract - TM45
  (619, 61900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Mienfoo - Low Sweep - TM47
  (619, 61900, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 36),
  -- Mienfoo - Round - TM48
  (619, 61900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Mienfoo - Focus Blast - TM52
  (619, 61900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Mienfoo - Fling - TM56
  (619, 61900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Mienfoo - Acrobatics - TM62
  (619, 61900, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Mienfoo - Payback - TM66
  (619, 61900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Mienfoo - Stone Edge - TM71
  (619, 61900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Mienfoo - Swords Dance - TM75
  (619, 61900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Mienfoo - Psych Up - TM77
  (619, 61900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Mienfoo - Rock Slide - TM80
  (619, 61900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Mienfoo - Poison Jab - TM84
  (619, 61900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Mienfoo - Grass Knot - TM86
  (619, 61900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Mienfoo - Swagger - TM87
  (619, 61900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Mienfoo - Sleep Talk - TM88
  (619, 61900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Mienfoo - U-turn - TM89
  (619, 61900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Mienfoo - Substitute - TM90
  (619, 61900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Mienfoo - Confide - TM100
  (619, 61900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Mienfoo - Low Kick - Egg
  (619, 61900, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mienfoo - Endure - Egg
  (619, 61900, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mienfoo - Baton Pass - Egg
  (619, 61900, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mienfoo - Vital Throw - Egg
  (619, 61900, 233, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mienfoo - Smelling Salts - Egg
  (619, 61900, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mienfoo - Knock Off - Egg
  (619, 61900, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mienfoo - Feint - Egg
  (619, 61900, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mienfoo - Me First - Egg
  (619, 61900, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mienfoo - Ally Switch - Egg
  (619, 61900, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mienfoo - Low Kick - Tutor
  (619, 61900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Mienfoo - Snore - Tutor
  (619, 61900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Mienfoo - Focus Punch - Tutor
  (619, 61900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mienfoo - Helping Hand - Tutor
  (619, 61900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mienfoo - Role Play - Tutor
  (619, 61900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Mienfoo - Knock Off - Tutor
  (619, 61900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Mienfoo - Bounce - Tutor
  (619, 61900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Mienfoo - Drain Punch - Tutor
  (619, 61900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Mienfoo - Ally Switch - Tutor
  (619, 61900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Mienfoo - Dual Chop - Tutor
  (619, 61900, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Mienshao - Pound - Level 1
  (620, 62000, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienshao - Meditate - Level 1
  (620, 62000, 96, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienshao - Reversal - Level 1
  (620, 62000, 179, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mienshao - Detect - Level 1
  (620, 62000, 197, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mienshao - Fake Out - Level 1
  (620, 62000, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mienshao - Aura Sphere - Level 1
  (620, 62000, 396, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mienshao - Meditate - Level 5
  (620, 62000, 96, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Mienshao - Detect - Level 9
  (620, 62000, 197, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Mienshao - Fake Out - Level 13
  (620, 62000, 252, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Mienshao - Double Slap - Level 17
  (620, 62000, 3, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Mienshao - Swift - Level 21
  (620, 62000, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Mienshao - Calm Mind - Level 25
  (620, 62000, 347, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Mienshao - Force Palm - Level 29
  (620, 62000, 395, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Mienshao - Drain Punch - Level 33
  (620, 62000, 409, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mienshao - Jump Kick - Level 37
  (620, 62000, 26, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Mienshao - U-turn - Level 41
  (620, 62000, 369, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Mienshao - Wide Guard - Level 45
  (620, 62000, 469, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Mienshao - Bounce - Level 49
  (620, 62000, 340, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Mienshao - High Jump Kick - Level 56
  (620, 62000, 136, 16, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Mienshao - Reversal - Level 63
  (620, 62000, 179, 16, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Mienshao - Aura Sphere - Level 70
  (620, 62000, 396, 16, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Mienshao - Work Up - TM01
  (620, 62000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Mienshao - Calm Mind - TM04
  (620, 62000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Mienshao - Toxic - TM06
  (620, 62000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Mienshao - Bulk Up - TM08
  (620, 62000, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 25),
  -- Mienshao - Hidden Power - TM10
  (620, 62000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Mienshao - Sunny Day - TM11
  (620, 62000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Mienshao - Taunt - TM12
  (620, 62000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 28),
  -- Mienshao - Hyper Beam - TM15
  (620, 62000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Mienshao - Protect - TM17
  (620, 62000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Mienshao - Rain Dance - TM18
  (620, 62000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Mienshao - Frustration - TM21
  (620, 62000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Mienshao - Return - TM27
  (620, 62000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Mienshao - Brick Break - TM31
  (620, 62000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Mienshao - Double Team - TM32
  (620, 62000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Mienshao - Reflect - TM33
  (620, 62000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Mienshao - Rock Tomb - TM39
  (620, 62000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Mienshao - Aerial Ace - TM40
  (620, 62000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Mienshao - Facade - TM42
  (620, 62000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Mienshao - Rest - TM44
  (620, 62000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Mienshao - Attract - TM45
  (620, 62000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Mienshao - Low Sweep - TM47
  (620, 62000, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Mienshao - Round - TM48
  (620, 62000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Mienshao - Focus Blast - TM52
  (620, 62000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Mienshao - Fling - TM56
  (620, 62000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Mienshao - Acrobatics - TM62
  (620, 62000, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 46),
  -- Mienshao - Payback - TM66
  (620, 62000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Mienshao - Giga Impact - TM68
  (620, 62000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Mienshao - Stone Edge - TM71
  (620, 62000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 49),
  -- Mienshao - Swords Dance - TM75
  (620, 62000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 50),
  -- Mienshao - Psych Up - TM77
  (620, 62000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Mienshao - Rock Slide - TM80
  (620, 62000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Mienshao - Poison Jab - TM84
  (620, 62000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Mienshao - Grass Knot - TM86
  (620, 62000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 54),
  -- Mienshao - Swagger - TM87
  (620, 62000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Mienshao - Sleep Talk - TM88
  (620, 62000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Mienshao - U-turn - TM89
  (620, 62000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 57),
  -- Mienshao - Substitute - TM90
  (620, 62000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Mienshao - Confide - TM100
  (620, 62000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Mienshao - Low Kick - Tutor
  (620, 62000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Mienshao - Snore - Tutor
  (620, 62000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Mienshao - Focus Punch - Tutor
  (620, 62000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Mienshao - Helping Hand - Tutor
  (620, 62000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Mienshao - Role Play - Tutor
  (620, 62000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mienshao - Knock Off - Tutor
  (620, 62000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mienshao - Bounce - Tutor
  (620, 62000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Mienshao - Drain Punch - Tutor
  (620, 62000, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Mienshao - Ally Switch - Tutor
  (620, 62000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Mienshao - Dual Chop - Tutor
  (620, 62000, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Mienshao - Laser Focus - Tutor
  (620, 62000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Druddigon - Scratch - Level 1
  (621, 62100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Druddigon - Leer - Level 1
  (621, 62100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Druddigon - Hone Claws - Level 5
  (621, 62100, 468, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Druddigon - Bite - Level 9
  (621, 62100, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Druddigon - Scary Face - Level 13
  (621, 62100, 184, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Druddigon - Dragon Rage - Level 18
  (621, 62100, 82, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Druddigon - Slash - Level 21
  (621, 62100, 163, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Druddigon - Crunch - Level 25
  (621, 62100, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Druddigon - Dragon Claw - Level 27
  (621, 62100, 337, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Druddigon - Chip Away - Level 31
  (621, 62100, 498, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Druddigon - Revenge - Level 35
  (621, 62100, 279, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Druddigon - Night Slash - Level 40
  (621, 62100, 400, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Druddigon - Dragon Tail - Level 45
  (621, 62100, 525, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Druddigon - Rock Climb - Level 49
  (621, 62100, 431, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Druddigon - Superpower - Level 55
  (621, 62100, 276, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Druddigon - Outrage - Level 62
  (621, 62100, 200, 16, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Druddigon - Dragon Claw - TM02
  (621, 62100, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Druddigon - Roar - TM05
  (621, 62100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Druddigon - Toxic - TM06
  (621, 62100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Druddigon - Hidden Power - TM10
  (621, 62100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Druddigon - Sunny Day - TM11
  (621, 62100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Druddigon - Taunt - TM12
  (621, 62100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Druddigon - Hyper Beam - TM15
  (621, 62100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Druddigon - Protect - TM17
  (621, 62100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Druddigon - Rain Dance - TM18
  (621, 62100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Druddigon - Frustration - TM21
  (621, 62100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Druddigon - Smack Down - TM23
  (621, 62100, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 27),
  -- Druddigon - Earthquake - TM26
  (621, 62100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Druddigon - Return - TM27
  (621, 62100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Druddigon - Double Team - TM32
  (621, 62100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Druddigon - Flamethrower - TM35
  (621, 62100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Druddigon - Sludge Bomb - TM36
  (621, 62100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Druddigon - Rock Tomb - TM39
  (621, 62100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Druddigon - Aerial Ace - TM40
  (621, 62100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Druddigon - Torment - TM41
  (621, 62100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Druddigon - Facade - TM42
  (621, 62100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Druddigon - Rest - TM44
  (621, 62100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Druddigon - Attract - TM45
  (621, 62100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Druddigon - Round - TM48
  (621, 62100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Druddigon - Focus Blast - TM52
  (621, 62100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Druddigon - Fling - TM56
  (621, 62100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Druddigon - Charge Beam - TM57
  (621, 62100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Druddigon - Shadow Claw - TM65
  (621, 62100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Druddigon - Payback - TM66
  (621, 62100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Druddigon - Giga Impact - TM68
  (621, 62100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Druddigon - Bulldoze - TM78
  (621, 62100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Druddigon - Rock Slide - TM80
  (621, 62100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Druddigon - Dragon Tail - TM82
  (621, 62100, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 48),
  -- Druddigon - Swagger - TM87
  (621, 62100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Druddigon - Sleep Talk - TM88
  (621, 62100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Druddigon - Substitute - TM90
  (621, 62100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Druddigon - Flash Cannon - TM91
  (621, 62100, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 52),
  -- Druddigon - Surf - TM94
  (621, 62100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 53),
  -- Druddigon - Snarl - TM95
  (621, 62100, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 54),
  -- Druddigon - Dark Pulse - TM97
  (621, 62100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Druddigon - Confide - TM100
  (621, 62100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Druddigon - Glare - Egg
  (621, 62100, 137, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Druddigon - Feint Attack - Egg
  (621, 62100, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Druddigon - Pursuit - Egg
  (621, 62100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Druddigon - Iron Tail - Egg
  (621, 62100, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Druddigon - Metal Claw - Egg
  (621, 62100, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Druddigon - Snatch - Egg
  (621, 62100, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Druddigon - Crush Claw - Egg
  (621, 62100, 306, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Druddigon - Poison Tail - Egg
  (621, 62100, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Druddigon - Sucker Punch - Egg
  (621, 62100, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Druddigon - Thunder Fang - Egg
  (621, 62100, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Druddigon - Fire Fang - Egg
  (621, 62100, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Druddigon - Fire Punch - Tutor
  (621, 62100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Druddigon - Thunder Punch - Tutor
  (621, 62100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Druddigon - Snore - Tutor
  (621, 62100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Druddigon - Outrage - Tutor
  (621, 62100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Druddigon - Iron Tail - Tutor
  (621, 62100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Druddigon - Heat Wave - Tutor
  (621, 62100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Druddigon - Superpower - Tutor
  (621, 62100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Druddigon - Snatch - Tutor
  (621, 62100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Druddigon - Shock Wave - Tutor
  (621, 62100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Druddigon - Aqua Tail - Tutor
  (621, 62100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Druddigon - Dragon Pulse - Tutor
  (621, 62100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Druddigon - Draco Meteor - Tutor
  (621, 62100, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Druddigon - Gunk Shot - Tutor
  (621, 62100, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Druddigon - Iron Head - Tutor
  (621, 62100, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Druddigon - Stealth Rock - Tutor
  (621, 62100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Druddigon - Stomping Tantrum - Tutor
  (621, 62100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),

  -- Golett - Pound - Level 1
  (622, 62200, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golett - Defense Curl - Level 1
  (622, 62200, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golett - Astonish - Level 1
  (622, 62200, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golett - Mud-Slap - Level 5
  (622, 62200, 189, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Golett - Rollout - Level 9
  (622, 62200, 205, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Golett - Shadow Punch - Level 13
  (622, 62200, 325, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Golett - Iron Defense - Level 17
  (622, 62200, 334, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Golett - Stomping Tantrum - Level 21
  (622, 62200, 707, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golett - Mega Punch - Level 25
  (622, 62200, 5, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Golett - Magnitude - Level 30
  (622, 62200, 222, 16, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Golett - Dynamic Punch - Level 35
  (622, 62200, 223, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Golett - Night Shade - Level 40
  (622, 62200, 101, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Golett - Curse - Level 45
  (622, 62200, 174, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Golett - Earthquake - Level 50
  (622, 62200, 89, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Golett - Hammer Arm - Level 55
  (622, 62200, 359, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Golett - Focus Punch - Level 61
  (622, 62200, 264, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Golett - Toxic - TM06
  (622, 62200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Golett - Hidden Power - TM10
  (622, 62200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Golett - Ice Beam - TM13
  (622, 62200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Golett - Protect - TM17
  (622, 62200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Golett - Rain Dance - TM18
  (622, 62200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Golett - Safeguard - TM20
  (622, 62200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Golett - Frustration - TM21
  (622, 62200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Golett - Earthquake - TM26
  (622, 62200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Golett - Return - TM27
  (622, 62200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Golett - Psychic - TM29
  (622, 62200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Golett - Shadow Ball - TM30
  (622, 62200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Golett - Brick Break - TM31
  (622, 62200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Golett - Double Team - TM32
  (622, 62200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Golett - Rock Tomb - TM39
  (622, 62200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Golett - Facade - TM42
  (622, 62200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Golett - Rest - TM44
  (622, 62200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Golett - Thief - TM46
  (622, 62200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Golett - Low Sweep - TM47
  (622, 62200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 34),
  -- Golett - Round - TM48
  (622, 62200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Golett - Focus Blast - TM52
  (622, 62200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 36),
  -- Golett - Fling - TM56
  (622, 62200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Golett - Rock Polish - TM69
  (622, 62200, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 38),
  -- Golett - Gyro Ball - TM74
  (622, 62200, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 39),
  -- Golett - Bulldoze - TM78
  (622, 62200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Golett - Rock Slide - TM80
  (622, 62200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Golett - Grass Knot - TM86
  (622, 62200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Golett - Swagger - TM87
  (622, 62200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Golett - Sleep Talk - TM88
  (622, 62200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Golett - Substitute - TM90
  (622, 62200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Golett - Confide - TM100
  (622, 62200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Golett - Fire Punch - Tutor
  (622, 62200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Golett - Ice Punch - Tutor
  (622, 62200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Golett - Thunder Punch - Tutor
  (622, 62200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Golett - Low Kick - Tutor
  (622, 62200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Golett - Snore - Tutor
  (622, 62200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Golett - Icy Wind - Tutor
  (622, 62200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Golett - Focus Punch - Tutor
  (622, 62200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Golett - Superpower - Tutor
  (622, 62200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Golett - Magic Coat - Tutor
  (622, 62200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Golett - Signal Beam - Tutor
  (622, 62200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Golett - Iron Defense - Tutor
  (622, 62200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Golett - Block - Tutor
  (622, 62200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Golett - Shock Wave - Tutor
  (622, 62200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Golett - Gravity - Tutor
  (622, 62200, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Golett - Drain Punch - Tutor
  (622, 62200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Golett - Earth Power - Tutor
  (622, 62200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Golett - Stealth Rock - Tutor
  (622, 62200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Golett - Telekinesis - Tutor
  (622, 62200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Golett - Ally Switch - Tutor
  (622, 62200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Golett - Stomping Tantrum - Tutor
  (622, 62200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Golurk - Pound - Level 1
  (623, 62300, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golurk - Defense Curl - Level 1
  (623, 62300, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golurk - Mud-Slap - Level 1
  (623, 62300, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golurk - Astonish - Level 1
  (623, 62300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golurk - Heavy Slam - Level 1
  (623, 62300, 484, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golurk - High Horsepower - Level 1
  (623, 62300, 667, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Golurk - Mud-Slap - Level 5
  (623, 62300, 189, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Golurk - Rollout - Level 9
  (623, 62300, 205, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Golurk - Shadow Punch - Level 13
  (623, 62300, 325, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Golurk - Iron Defense - Level 17
  (623, 62300, 334, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Golurk - Stomping Tantrum - Level 21
  (623, 62300, 707, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Golurk - Mega Punch - Level 25
  (623, 62300, 5, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Golurk - Magnitude - Level 30
  (623, 62300, 222, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Golurk - Dynamic Punch - Level 35
  (623, 62300, 223, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Golurk - Night Shade - Level 40
  (623, 62300, 101, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golurk - Curse - Level 47
  (623, 62300, 174, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Golurk - Earthquake - Level 54
  (623, 62300, 89, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Golurk - Hammer Arm - Level 61
  (623, 62300, 359, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Golurk - Focus Punch - Level 69
  (623, 62300, 264, 16, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Golurk - Phantom Force - Level 76
  (623, 62300, 566, 16, NULL, 1, 76, NULL, NULL, NULL, 20),
  -- Golurk - Toxic - TM06
  (623, 62300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Golurk - Hidden Power - TM10
  (623, 62300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Golurk - Ice Beam - TM13
  (623, 62300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Golurk - Hyper Beam - TM15
  (623, 62300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Golurk - Protect - TM17
  (623, 62300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Golurk - Rain Dance - TM18
  (623, 62300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Golurk - Safeguard - TM20
  (623, 62300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Golurk - Frustration - TM21
  (623, 62300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Golurk - Solar Beam - TM22
  (623, 62300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Golurk - Thunderbolt - TM24
  (623, 62300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Golurk - Earthquake - TM26
  (623, 62300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Golurk - Return - TM27
  (623, 62300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Golurk - Psychic - TM29
  (623, 62300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Golurk - Shadow Ball - TM30
  (623, 62300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Golurk - Brick Break - TM31
  (623, 62300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Golurk - Double Team - TM32
  (623, 62300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Golurk - Rock Tomb - TM39
  (623, 62300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Golurk - Facade - TM42
  (623, 62300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Golurk - Rest - TM44
  (623, 62300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Golurk - Thief - TM46
  (623, 62300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Golurk - Low Sweep - TM47
  (623, 62300, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Golurk - Round - TM48
  (623, 62300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Golurk - Focus Blast - TM52
  (623, 62300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Golurk - Fling - TM56
  (623, 62300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Golurk - Charge Beam - TM57
  (623, 62300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Golurk - Giga Impact - TM68
  (623, 62300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Golurk - Rock Polish - TM69
  (623, 62300, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 47),
  -- Golurk - Stone Edge - TM71
  (623, 62300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Golurk - Gyro Ball - TM74
  (623, 62300, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 49),
  -- Golurk - Fly - TM76
  (623, 62300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 50),
  -- Golurk - Bulldoze - TM78
  (623, 62300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Golurk - Rock Slide - TM80
  (623, 62300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Golurk - Grass Knot - TM86
  (623, 62300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 53),
  -- Golurk - Swagger - TM87
  (623, 62300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Golurk - Sleep Talk - TM88
  (623, 62300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Golurk - Substitute - TM90
  (623, 62300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Golurk - Flash Cannon - TM91
  (623, 62300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 57),
  -- Golurk - Confide - TM100
  (623, 62300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Golurk - Fire Punch - Tutor
  (623, 62300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Golurk - Ice Punch - Tutor
  (623, 62300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Golurk - Thunder Punch - Tutor
  (623, 62300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Golurk - Low Kick - Tutor
  (623, 62300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Golurk - Snore - Tutor
  (623, 62300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Golurk - Icy Wind - Tutor
  (623, 62300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Golurk - Focus Punch - Tutor
  (623, 62300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Golurk - Superpower - Tutor
  (623, 62300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Golurk - Magic Coat - Tutor
  (623, 62300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Golurk - Signal Beam - Tutor
  (623, 62300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Golurk - Iron Defense - Tutor
  (623, 62300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Golurk - Block - Tutor
  (623, 62300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Golurk - Shock Wave - Tutor
  (623, 62300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Golurk - Gravity - Tutor
  (623, 62300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Golurk - Drain Punch - Tutor
  (623, 62300, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Golurk - Earth Power - Tutor
  (623, 62300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Golurk - Zen Headbutt - Tutor
  (623, 62300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Golurk - Stealth Rock - Tutor
  (623, 62300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Golurk - Telekinesis - Tutor
  (623, 62300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Golurk - Ally Switch - Tutor
  (623, 62300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Golurk - Stomping Tantrum - Tutor
  (623, 62300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Golurk - Heavy Slam - Evolution
  (623, 62300, 484, 16, NULL, 7, NULL, NULL, NULL, NULL, 80),

  -- Pawniard - Scratch - Level 1
  (624, 62400, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawniard - Leer - Level 6
  (624, 62400, 43, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Pawniard - Fury Cutter - Level 9
  (624, 62400, 210, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pawniard - Torment - Level 14
  (624, 62400, 259, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Pawniard - Feint Attack - Level 17
  (624, 62400, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pawniard - Scary Face - Level 22
  (624, 62400, 184, 16, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Pawniard - Metal Claw - Level 25
  (624, 62400, 232, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pawniard - Slash - Level 30
  (624, 62400, 163, 16, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pawniard - Assurance - Level 33
  (624, 62400, 372, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pawniard - Metal Sound - Level 38
  (624, 62400, 319, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Pawniard - Embargo - Level 41
  (624, 62400, 373, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Pawniard - Iron Defense - Level 46
  (624, 62400, 334, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Pawniard - Night Slash - Level 49
  (624, 62400, 400, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Pawniard - Iron Head - Level 54
  (624, 62400, 442, 16, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pawniard - Swords Dance - Level 57
  (624, 62400, 14, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Pawniard - Guillotine - Level 62
  (624, 62400, 12, 16, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Pawniard - Toxic - TM06
  (624, 62400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Pawniard - Hidden Power - TM10
  (624, 62400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Pawniard - Taunt - TM12
  (624, 62400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Pawniard - Protect - TM17
  (624, 62400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Pawniard - Rain Dance - TM18
  (624, 62400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Pawniard - Frustration - TM21
  (624, 62400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Pawniard - Return - TM27
  (624, 62400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Pawniard - Brick Break - TM31
  (624, 62400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 24),
  -- Pawniard - Double Team - TM32
  (624, 62400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Pawniard - Sandstorm - TM37
  (624, 62400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 26),
  -- Pawniard - Rock Tomb - TM39
  (624, 62400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Pawniard - Aerial Ace - TM40
  (624, 62400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Pawniard - Torment - TM41
  (624, 62400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 29),
  -- Pawniard - Facade - TM42
  (624, 62400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Pawniard - Rest - TM44
  (624, 62400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Pawniard - Attract - TM45
  (624, 62400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Pawniard - Thief - TM46
  (624, 62400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Pawniard - Low Sweep - TM47
  (624, 62400, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 34),
  -- Pawniard - Round - TM48
  (624, 62400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Pawniard - False Swipe - TM54
  (624, 62400, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 36),
  -- Pawniard - Fling - TM56
  (624, 62400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Pawniard - Embargo - TM63
  (624, 62400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 38),
  -- Pawniard - Shadow Claw - TM65
  (624, 62400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Pawniard - Payback - TM66
  (624, 62400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Pawniard - Rock Polish - TM69
  (624, 62400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Pawniard - Thunder Wave - TM73
  (624, 62400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Pawniard - Swords Dance - TM75
  (624, 62400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Pawniard - X-Scissor - TM81
  (624, 62400, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Pawniard - Poison Jab - TM84
  (624, 62400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Pawniard - Grass Knot - TM86
  (624, 62400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Pawniard - Swagger - TM87
  (624, 62400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Pawniard - Sleep Talk - TM88
  (624, 62400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Pawniard - Substitute - TM90
  (624, 62400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Pawniard - Snarl - TM95
  (624, 62400, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 50),
  -- Pawniard - Dark Pulse - TM97
  (624, 62400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 51),
  -- Pawniard - Confide - TM100
  (624, 62400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Pawniard - Headbutt - Egg
  (624, 62400, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pawniard - Mean Look - Egg
  (624, 62400, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pawniard - Pursuit - Egg
  (624, 62400, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pawniard - Revenge - Egg
  (624, 62400, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pawniard - Sucker Punch - Egg
  (624, 62400, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pawniard - Psycho Cut - Egg
  (624, 62400, 427, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pawniard - Stealth Rock - Egg
  (624, 62400, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pawniard - Quick Guard - Egg
  (624, 62400, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pawniard - Low Kick - Tutor
  (624, 62400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Pawniard - Snore - Tutor
  (624, 62400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Pawniard - Spite - Tutor
  (624, 62400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Pawniard - Role Play - Tutor
  (624, 62400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Pawniard - Knock Off - Tutor
  (624, 62400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Pawniard - Snatch - Tutor
  (624, 62400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Pawniard - Iron Defense - Tutor
  (624, 62400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Pawniard - Magnet Rise - Tutor
  (624, 62400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Pawniard - Iron Head - Tutor
  (624, 62400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Pawniard - Stealth Rock - Tutor
  (624, 62400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Pawniard - Foul Play - Tutor
  (624, 62400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Pawniard - Dual Chop - Tutor
  (624, 62400, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Bisharp - Scratch - Level 1
  (625, 62500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bisharp - Guillotine - Level 1
  (625, 62500, 12, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bisharp - Leer - Level 1
  (625, 62500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bisharp - Fury Cutter - Level 1
  (625, 62500, 210, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bisharp - Torment - Level 1
  (625, 62500, 259, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bisharp - Metal Burst - Level 1
  (625, 62500, 368, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bisharp - Iron Head - Level 1
  (625, 62500, 442, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bisharp - Leer - Level 6
  (625, 62500, 43, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Bisharp - Fury Cutter - Level 9
  (625, 62500, 210, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Bisharp - Torment - Level 14
  (625, 62500, 259, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Bisharp - Feint Attack - Level 17
  (625, 62500, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Bisharp - Scary Face - Level 22
  (625, 62500, 184, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Bisharp - Metal Claw - Level 25
  (625, 62500, 232, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Bisharp - Slash - Level 30
  (625, 62500, 163, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Bisharp - Assurance - Level 33
  (625, 62500, 372, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Bisharp - Metal Sound - Level 38
  (625, 62500, 319, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Bisharp - Embargo - Level 41
  (625, 62500, 373, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Bisharp - Iron Defense - Level 46
  (625, 62500, 334, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Bisharp - Night Slash - Level 49
  (625, 62500, 400, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Bisharp - Iron Head - Level 57
  (625, 62500, 442, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Bisharp - Swords Dance - Level 63
  (625, 62500, 14, 16, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Bisharp - Guillotine - Level 71
  (625, 62500, 12, 16, NULL, 1, 71, NULL, NULL, NULL, 22),
  -- Bisharp - Toxic - TM06
  (625, 62500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Bisharp - Hidden Power - TM10
  (625, 62500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Bisharp - Taunt - TM12
  (625, 62500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Bisharp - Hyper Beam - TM15
  (625, 62500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Bisharp - Protect - TM17
  (625, 62500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Bisharp - Rain Dance - TM18
  (625, 62500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Bisharp - Frustration - TM21
  (625, 62500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Bisharp - Return - TM27
  (625, 62500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Bisharp - Brick Break - TM31
  (625, 62500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Bisharp - Double Team - TM32
  (625, 62500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Bisharp - Sandstorm - TM37
  (625, 62500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Bisharp - Rock Tomb - TM39
  (625, 62500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Bisharp - Aerial Ace - TM40
  (625, 62500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Bisharp - Torment - TM41
  (625, 62500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Bisharp - Facade - TM42
  (625, 62500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Bisharp - Rest - TM44
  (625, 62500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Bisharp - Attract - TM45
  (625, 62500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Bisharp - Thief - TM46
  (625, 62500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Bisharp - Low Sweep - TM47
  (625, 62500, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Bisharp - Round - TM48
  (625, 62500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Bisharp - Focus Blast - TM52
  (625, 62500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Bisharp - False Swipe - TM54
  (625, 62500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 44),
  -- Bisharp - Fling - TM56
  (625, 62500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Bisharp - Embargo - TM63
  (625, 62500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Bisharp - Shadow Claw - TM65
  (625, 62500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Bisharp - Payback - TM66
  (625, 62500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Bisharp - Giga Impact - TM68
  (625, 62500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Bisharp - Rock Polish - TM69
  (625, 62500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 50),
  -- Bisharp - Stone Edge - TM71
  (625, 62500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 51),
  -- Bisharp - Thunder Wave - TM73
  (625, 62500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 52),
  -- Bisharp - Swords Dance - TM75
  (625, 62500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 53),
  -- Bisharp - X-Scissor - TM81
  (625, 62500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 54),
  -- Bisharp - Poison Jab - TM84
  (625, 62500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 55),
  -- Bisharp - Grass Knot - TM86
  (625, 62500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Bisharp - Swagger - TM87
  (625, 62500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Bisharp - Sleep Talk - TM88
  (625, 62500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Bisharp - Substitute - TM90
  (625, 62500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Bisharp - Snarl - TM95
  (625, 62500, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 60),
  -- Bisharp - Dark Pulse - TM97
  (625, 62500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Bisharp - Confide - TM100
  (625, 62500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Bisharp - Low Kick - Tutor
  (625, 62500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bisharp - Snore - Tutor
  (625, 62500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Bisharp - Spite - Tutor
  (625, 62500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Bisharp - Role Play - Tutor
  (625, 62500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Bisharp - Knock Off - Tutor
  (625, 62500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Bisharp - Snatch - Tutor
  (625, 62500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Bisharp - Iron Defense - Tutor
  (625, 62500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Bisharp - Magnet Rise - Tutor
  (625, 62500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Bisharp - Iron Head - Tutor
  (625, 62500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Bisharp - Stealth Rock - Tutor
  (625, 62500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Bisharp - Foul Play - Tutor
  (625, 62500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Bisharp - Dual Chop - Tutor
  (625, 62500, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Bisharp - Laser Focus - Tutor
  (625, 62500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Bisharp - Throat Chop - Tutor
  (625, 62500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Bouffalant - Leer - Level 1
  (626, 62600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bouffalant - Pursuit - Level 1
  (626, 62600, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bouffalant - Rage - Level 6
  (626, 62600, 99, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Bouffalant - Fury Attack - Level 11
  (626, 62600, 31, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Bouffalant - Horn Attack - Level 16
  (626, 62600, 30, 16, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Bouffalant - Scary Face - Level 21
  (626, 62600, 184, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bouffalant - Revenge - Level 26
  (626, 62600, 279, 16, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Bouffalant - Head Charge - Level 31
  (626, 62600, 543, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Bouffalant - Focus Energy - Level 36
  (626, 62600, 116, 16, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Bouffalant - Megahorn - Level 41
  (626, 62600, 224, 16, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Bouffalant - Reversal - Level 46
  (626, 62600, 179, 16, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Bouffalant - Thrash - Level 50
  (626, 62600, 37, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bouffalant - Swords Dance - Level 56
  (626, 62600, 14, 16, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Bouffalant - Giga Impact - Level 61
  (626, 62600, 416, 16, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Bouffalant - Work Up - TM01
  (626, 62600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Bouffalant - Toxic - TM06
  (626, 62600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Bouffalant - Hidden Power - TM10
  (626, 62600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Bouffalant - Sunny Day - TM11
  (626, 62600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Bouffalant - Taunt - TM12
  (626, 62600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Bouffalant - Protect - TM17
  (626, 62600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Bouffalant - Rain Dance - TM18
  (626, 62600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Bouffalant - Frustration - TM21
  (626, 62600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Bouffalant - Earthquake - TM26
  (626, 62600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Bouffalant - Return - TM27
  (626, 62600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Bouffalant - Double Team - TM32
  (626, 62600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Bouffalant - Rock Tomb - TM39
  (626, 62600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Bouffalant - Aerial Ace - TM40
  (626, 62600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Bouffalant - Facade - TM42
  (626, 62600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Bouffalant - Rest - TM44
  (626, 62600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Bouffalant - Attract - TM45
  (626, 62600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Bouffalant - Round - TM48
  (626, 62600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Bouffalant - Payback - TM66
  (626, 62600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 32),
  -- Bouffalant - Smart Strike - TM67
  (626, 62600, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 33),
  -- Bouffalant - Giga Impact - TM68
  (626, 62600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 34),
  -- Bouffalant - Stone Edge - TM71
  (626, 62600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 35),
  -- Bouffalant - Swords Dance - TM75
  (626, 62600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Bouffalant - Bulldoze - TM78
  (626, 62600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 37),
  -- Bouffalant - Rock Slide - TM80
  (626, 62600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Bouffalant - Poison Jab - TM84
  (626, 62600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 39),
  -- Bouffalant - Swagger - TM87
  (626, 62600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Bouffalant - Sleep Talk - TM88
  (626, 62600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Bouffalant - Substitute - TM90
  (626, 62600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Bouffalant - Wild Charge - TM93
  (626, 62600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 43),
  -- Bouffalant - Surf - TM94
  (626, 62600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Bouffalant - Confide - TM100
  (626, 62600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Bouffalant - Stomp - Egg
  (626, 62600, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bouffalant - Headbutt - Egg
  (626, 62600, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bouffalant - Skull Bash - Egg
  (626, 62600, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bouffalant - Amnesia - Egg
  (626, 62600, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bouffalant - Mud-Slap - Egg
  (626, 62600, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bouffalant - Mud Shot - Egg
  (626, 62600, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bouffalant - Rock Climb - Egg
  (626, 62600, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bouffalant - Iron Head - Egg
  (626, 62600, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bouffalant - Cotton Guard - Egg
  (626, 62600, 538, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bouffalant - Belch - Egg
  (626, 62600, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bouffalant - Snore - Tutor
  (626, 62600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bouffalant - Outrage - Tutor
  (626, 62600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bouffalant - Uproar - Tutor
  (626, 62600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bouffalant - Superpower - Tutor
  (626, 62600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bouffalant - Endeavor - Tutor
  (626, 62600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bouffalant - Zen Headbutt - Tutor
  (626, 62600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bouffalant - Iron Head - Tutor
  (626, 62600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bouffalant - Stomping Tantrum - Tutor
  (626, 62600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Rufflet - Leer - Level 1
  (627, 62700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rufflet - Peck - Level 1
  (627, 62700, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rufflet - Fury Attack - Level 5
  (627, 62700, 31, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rufflet - Wing Attack - Level 10
  (627, 62700, 17, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rufflet - Hone Claws - Level 14
  (627, 62700, 468, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Rufflet - Scary Face - Level 19
  (627, 62700, 184, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rufflet - Aerial Ace - Level 23
  (627, 62700, 332, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Rufflet - Slash - Level 28
  (627, 62700, 163, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rufflet - Defog - Level 32
  (627, 62700, 432, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Rufflet - Tailwind - Level 37
  (627, 62700, 366, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Rufflet - Air Slash - Level 41
  (627, 62700, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Rufflet - Crush Claw - Level 46
  (627, 62700, 306, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Rufflet - Sky Drop - Level 50
  (627, 62700, 507, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Rufflet - Whirlwind - Level 55
  (627, 62700, 18, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Rufflet - Brave Bird - Level 59
  (627, 62700, 413, 16, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Rufflet - Thrash - Level 64
  (627, 62700, 37, 16, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rufflet - Work Up - TM01
  (627, 62700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Rufflet - Toxic - TM06
  (627, 62700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Rufflet - Bulk Up - TM08
  (627, 62700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 19),
  -- Rufflet - Hidden Power - TM10
  (627, 62700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Rufflet - Sunny Day - TM11
  (627, 62700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Rufflet - Protect - TM17
  (627, 62700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Rufflet - Rain Dance - TM18
  (627, 62700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Rufflet - Roost - TM19
  (627, 62700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Rufflet - Frustration - TM21
  (627, 62700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Rufflet - Return - TM27
  (627, 62700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Rufflet - Double Team - TM32
  (627, 62700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Rufflet - Rock Tomb - TM39
  (627, 62700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Rufflet - Aerial Ace - TM40
  (627, 62700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Rufflet - Facade - TM42
  (627, 62700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Rufflet - Rest - TM44
  (627, 62700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Rufflet - Attract - TM45
  (627, 62700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Rufflet - Round - TM48
  (627, 62700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Rufflet - Steel Wing - TM51
  (627, 62700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 34),
  -- Rufflet - Sky Drop - TM58
  (627, 62700, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 35),
  -- Rufflet - Shadow Claw - TM65
  (627, 62700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 36),
  -- Rufflet - Fly - TM76
  (627, 62700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 37),
  -- Rufflet - Rock Slide - TM80
  (627, 62700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Rufflet - Swagger - TM87
  (627, 62700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Rufflet - Sleep Talk - TM88
  (627, 62700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Rufflet - U-turn - TM89
  (627, 62700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Rufflet - Substitute - TM90
  (627, 62700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Rufflet - Confide - TM100
  (627, 62700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Rufflet - Snore - Tutor
  (627, 62700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Rufflet - Heat Wave - Tutor
  (627, 62700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Rufflet - Superpower - Tutor
  (627, 62700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Rufflet - Tailwind - Tutor
  (627, 62700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Rufflet - Defog - Tutor
  (627, 62700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Braviary - Wing Attack - Level 1
  (628, 62800, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary - Whirlwind - Level 1
  (628, 62800, 18, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braviary - Fury Attack - Level 1
  (628, 62800, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braviary - Thrash - Level 1
  (628, 62800, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Braviary - Leer - Level 1
  (628, 62800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Braviary - Peck - Level 1
  (628, 62800, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Braviary - Superpower - Level 1
  (628, 62800, 276, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Braviary - Brave Bird - Level 1
  (628, 62800, 413, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Braviary - Fury Attack - Level 5
  (628, 62800, 31, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Braviary - Wing Attack - Level 10
  (628, 62800, 17, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Braviary - Hone Claws - Level 14
  (628, 62800, 468, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Braviary - Scary Face - Level 19
  (628, 62800, 184, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Braviary - Aerial Ace - Level 23
  (628, 62800, 332, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Braviary - Slash - Level 28
  (628, 62800, 163, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Braviary - Defog - Level 32
  (628, 62800, 432, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Braviary - Tailwind - Level 37
  (628, 62800, 366, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Braviary - Air Slash - Level 41
  (628, 62800, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Braviary - Crush Claw - Level 46
  (628, 62800, 306, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Braviary - Sky Drop - Level 50
  (628, 62800, 507, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Braviary - Whirlwind - Level 57
  (628, 62800, 18, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Braviary - Brave Bird - Level 63
  (628, 62800, 413, 16, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Braviary - Thrash - Level 70
  (628, 62800, 37, 16, NULL, 1, 70, NULL, NULL, NULL, 22),
  -- Braviary - Work Up - TM01
  (628, 62800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 23),
  -- Braviary - Toxic - TM06
  (628, 62800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Braviary - Bulk Up - TM08
  (628, 62800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 25),
  -- Braviary - Hidden Power - TM10
  (628, 62800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Braviary - Sunny Day - TM11
  (628, 62800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Braviary - Hyper Beam - TM15
  (628, 62800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Braviary - Protect - TM17
  (628, 62800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Braviary - Rain Dance - TM18
  (628, 62800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Braviary - Roost - TM19
  (628, 62800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 31),
  -- Braviary - Frustration - TM21
  (628, 62800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Braviary - Return - TM27
  (628, 62800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Braviary - Double Team - TM32
  (628, 62800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Braviary - Rock Tomb - TM39
  (628, 62800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Braviary - Aerial Ace - TM40
  (628, 62800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Braviary - Facade - TM42
  (628, 62800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Braviary - Rest - TM44
  (628, 62800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Braviary - Attract - TM45
  (628, 62800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Braviary - Round - TM48
  (628, 62800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Braviary - Steel Wing - TM51
  (628, 62800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 41),
  -- Braviary - Sky Drop - TM58
  (628, 62800, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 42),
  -- Braviary - Shadow Claw - TM65
  (628, 62800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Braviary - Giga Impact - TM68
  (628, 62800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Braviary - Fly - TM76
  (628, 62800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 45),
  -- Braviary - Rock Slide - TM80
  (628, 62800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Braviary - Swagger - TM87
  (628, 62800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Braviary - Sleep Talk - TM88
  (628, 62800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Braviary - U-turn - TM89
  (628, 62800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 49),
  -- Braviary - Substitute - TM90
  (628, 62800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Braviary - Confide - TM100
  (628, 62800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Braviary - Sky Attack - Tutor
  (628, 62800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Braviary - Snore - Tutor
  (628, 62800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Braviary - Heat Wave - Tutor
  (628, 62800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Braviary - Superpower - Tutor
  (628, 62800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Braviary - Tailwind - Tutor
  (628, 62800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Braviary - Zen Headbutt - Tutor
  (628, 62800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Braviary - Defog - Tutor
  (628, 62800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Braviary - Laser Focus - Tutor
  (628, 62800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Braviary - Superpower - Evolution
  (628, 62800, 276, 16, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Vullaby - Gust - Level 1
  (629, 62900, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vullaby - Leer - Level 1
  (629, 62900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vullaby - Fury Attack - Level 5
  (629, 62900, 31, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Vullaby - Pluck - Level 10
  (629, 62900, 365, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vullaby - Nasty Plot - Level 14
  (629, 62900, 417, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vullaby - Flatter - Level 19
  (629, 62900, 260, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Vullaby - Feint Attack - Level 23
  (629, 62900, 185, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Vullaby - Punishment - Level 28
  (629, 62900, 386, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Vullaby - Defog - Level 32
  (629, 62900, 432, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Vullaby - Tailwind - Level 37
  (629, 62900, 366, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vullaby - Air Slash - Level 41
  (629, 62900, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Vullaby - Dark Pulse - Level 46
  (629, 62900, 399, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Vullaby - Embargo - Level 50
  (629, 62900, 373, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Vullaby - Whirlwind - Level 55
  (629, 62900, 18, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Vullaby - Brave Bird - Level 59
  (629, 62900, 413, 16, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Vullaby - Mirror Move - Level 64
  (629, 62900, 119, 16, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Vullaby - Toxic - TM06
  (629, 62900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Vullaby - Hidden Power - TM10
  (629, 62900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Vullaby - Sunny Day - TM11
  (629, 62900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Vullaby - Taunt - TM12
  (629, 62900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Vullaby - Protect - TM17
  (629, 62900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Vullaby - Rain Dance - TM18
  (629, 62900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Vullaby - Roost - TM19
  (629, 62900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Vullaby - Frustration - TM21
  (629, 62900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Vullaby - Return - TM27
  (629, 62900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Vullaby - Shadow Ball - TM30
  (629, 62900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Vullaby - Double Team - TM32
  (629, 62900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Vullaby - Rock Tomb - TM39
  (629, 62900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Vullaby - Aerial Ace - TM40
  (629, 62900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Vullaby - Torment - TM41
  (629, 62900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Vullaby - Facade - TM42
  (629, 62900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Vullaby - Rest - TM44
  (629, 62900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Vullaby - Attract - TM45
  (629, 62900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Vullaby - Thief - TM46
  (629, 62900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Vullaby - Round - TM48
  (629, 62900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Vullaby - Steel Wing - TM51
  (629, 62900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Vullaby - Embargo - TM63
  (629, 62900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 37),
  -- Vullaby - Payback - TM66
  (629, 62900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Vullaby - Fly - TM76
  (629, 62900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 39),
  -- Vullaby - Psych Up - TM77
  (629, 62900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Vullaby - Swagger - TM87
  (629, 62900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Vullaby - Sleep Talk - TM88
  (629, 62900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Vullaby - U-turn - TM89
  (629, 62900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Vullaby - Substitute - TM90
  (629, 62900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Vullaby - Snarl - TM95
  (629, 62900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 45),
  -- Vullaby - Dark Pulse - TM97
  (629, 62900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Vullaby - Confide - TM100
  (629, 62900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Vullaby - Scary Face - Egg
  (629, 62900, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vullaby - Steel Wing - Egg
  (629, 62900, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vullaby - Mean Look - Egg
  (629, 62900, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vullaby - Knock Off - Egg
  (629, 62900, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vullaby - Fake Tears - Egg
  (629, 62900, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vullaby - Roost - Egg
  (629, 62900, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vullaby - Foul Play - Egg
  (629, 62900, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vullaby - Snore - Tutor
  (629, 62900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Vullaby - Heat Wave - Tutor
  (629, 62900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Vullaby - Knock Off - Tutor
  (629, 62900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Vullaby - Snatch - Tutor
  (629, 62900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Vullaby - Block - Tutor
  (629, 62900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Vullaby - Tailwind - Tutor
  (629, 62900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Vullaby - Defog - Tutor
  (629, 62900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Vullaby - Foul Play - Tutor
  (629, 62900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Mandibuzz - Gust - Level 1
  (630, 63000, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mandibuzz - Whirlwind - Level 1
  (630, 63000, 18, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mandibuzz - Fury Attack - Level 1
  (630, 63000, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mandibuzz - Leer - Level 1
  (630, 63000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mandibuzz - Mirror Move - Level 1
  (630, 63000, 119, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mandibuzz - Bone Rush - Level 1
  (630, 63000, 198, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mandibuzz - Pluck - Level 1
  (630, 63000, 365, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mandibuzz - Brave Bird - Level 1
  (630, 63000, 413, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mandibuzz - Fury Attack - Level 5
  (630, 63000, 31, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Mandibuzz - Pluck - Level 10
  (630, 63000, 365, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Mandibuzz - Nasty Plot - Level 14
  (630, 63000, 417, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Mandibuzz - Flatter - Level 19
  (630, 63000, 260, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Mandibuzz - Feint Attack - Level 23
  (630, 63000, 185, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Mandibuzz - Punishment - Level 28
  (630, 63000, 386, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Mandibuzz - Defog - Level 32
  (630, 63000, 432, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Mandibuzz - Tailwind - Level 37
  (630, 63000, 366, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Mandibuzz - Air Slash - Level 41
  (630, 63000, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Mandibuzz - Dark Pulse - Level 46
  (630, 63000, 399, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Mandibuzz - Embargo - Level 50
  (630, 63000, 373, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Mandibuzz - Whirlwind - Level 57
  (630, 63000, 18, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Mandibuzz - Brave Bird - Level 63
  (630, 63000, 413, 16, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Mandibuzz - Mirror Move - Level 70
  (630, 63000, 119, 16, NULL, 1, 70, NULL, NULL, NULL, 22),
  -- Mandibuzz - Toxic - TM06
  (630, 63000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Mandibuzz - Hidden Power - TM10
  (630, 63000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Mandibuzz - Sunny Day - TM11
  (630, 63000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Mandibuzz - Taunt - TM12
  (630, 63000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Mandibuzz - Hyper Beam - TM15
  (630, 63000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Mandibuzz - Protect - TM17
  (630, 63000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Mandibuzz - Rain Dance - TM18
  (630, 63000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Mandibuzz - Roost - TM19
  (630, 63000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Mandibuzz - Frustration - TM21
  (630, 63000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Mandibuzz - Return - TM27
  (630, 63000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Mandibuzz - Shadow Ball - TM30
  (630, 63000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Mandibuzz - Double Team - TM32
  (630, 63000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Mandibuzz - Rock Tomb - TM39
  (630, 63000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Mandibuzz - Aerial Ace - TM40
  (630, 63000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Mandibuzz - Torment - TM41
  (630, 63000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Mandibuzz - Facade - TM42
  (630, 63000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Mandibuzz - Rest - TM44
  (630, 63000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Mandibuzz - Attract - TM45
  (630, 63000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Mandibuzz - Thief - TM46
  (630, 63000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Mandibuzz - Round - TM48
  (630, 63000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Mandibuzz - Steel Wing - TM51
  (630, 63000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 43),
  -- Mandibuzz - Embargo - TM63
  (630, 63000, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Mandibuzz - Payback - TM66
  (630, 63000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Mandibuzz - Giga Impact - TM68
  (630, 63000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Mandibuzz - Fly - TM76
  (630, 63000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 47),
  -- Mandibuzz - Psych Up - TM77
  (630, 63000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Mandibuzz - Swagger - TM87
  (630, 63000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Mandibuzz - Sleep Talk - TM88
  (630, 63000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Mandibuzz - U-turn - TM89
  (630, 63000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 51),
  -- Mandibuzz - Substitute - TM90
  (630, 63000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Mandibuzz - Snarl - TM95
  (630, 63000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 53),
  -- Mandibuzz - Dark Pulse - TM97
  (630, 63000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 54),
  -- Mandibuzz - Confide - TM100
  (630, 63000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Mandibuzz - Sky Attack - Tutor
  (630, 63000, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mandibuzz - Snore - Tutor
  (630, 63000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mandibuzz - Heat Wave - Tutor
  (630, 63000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Mandibuzz - Knock Off - Tutor
  (630, 63000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Mandibuzz - Snatch - Tutor
  (630, 63000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Mandibuzz - Iron Defense - Tutor
  (630, 63000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Mandibuzz - Block - Tutor
  (630, 63000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Mandibuzz - Tailwind - Tutor
  (630, 63000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Mandibuzz - Defog - Tutor
  (630, 63000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mandibuzz - Foul Play - Tutor
  (630, 63000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mandibuzz - Bone Rush - Evolution
  (630, 63000, 198, 16, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Heatmor - Tackle - Level 1
  (631, 63100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatmor - Lick - Level 1
  (631, 63100, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatmor - Hone Claws - Level 1
  (631, 63100, 468, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heatmor - Incinerate - Level 1
  (631, 63100, 510, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heatmor - Odor Sleuth - Level 6
  (631, 63100, 316, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Heatmor - Bind - Level 11
  (631, 63100, 20, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Heatmor - Fire Spin - Level 16
  (631, 63100, 83, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Heatmor - Fury Swipes - Level 21
  (631, 63100, 154, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Heatmor - Snatch - Level 26
  (631, 63100, 289, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Heatmor - Flame Burst - Level 31
  (631, 63100, 481, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Heatmor - Bug Bite - Level 36
  (631, 63100, 450, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Heatmor - Slash - Level 41
  (631, 63100, 163, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Heatmor - Fire Lash - Level 44
  (631, 63100, 680, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Heatmor - Amnesia - Level 47
  (631, 63100, 133, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Heatmor - Flamethrower - Level 50
  (631, 63100, 53, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Heatmor - Stockpile - Level 56
  (631, 63100, 254, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Heatmor - Spit Up - Level 56
  (631, 63100, 255, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Heatmor - Swallow - Level 56
  (631, 63100, 256, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Heatmor - Flare Blitz - Level 61
  (631, 63100, 394, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Heatmor - Inferno - Level 66
  (631, 63100, 517, 16, NULL, 1, 66, NULL, NULL, NULL, 20),
  -- Heatmor - Toxic - TM06
  (631, 63100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Heatmor - Hidden Power - TM10
  (631, 63100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Heatmor - Sunny Day - TM11
  (631, 63100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Heatmor - Taunt - TM12
  (631, 63100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Heatmor - Protect - TM17
  (631, 63100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Heatmor - Rain Dance - TM18
  (631, 63100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Heatmor - Frustration - TM21
  (631, 63100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Heatmor - Solar Beam - TM22
  (631, 63100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Heatmor - Return - TM27
  (631, 63100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Heatmor - Double Team - TM32
  (631, 63100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Heatmor - Flamethrower - TM35
  (631, 63100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Heatmor - Fire Blast - TM38
  (631, 63100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Heatmor - Rock Tomb - TM39
  (631, 63100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Heatmor - Aerial Ace - TM40
  (631, 63100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Heatmor - Facade - TM42
  (631, 63100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Heatmor - Rest - TM44
  (631, 63100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Heatmor - Attract - TM45
  (631, 63100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Heatmor - Thief - TM46
  (631, 63100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Heatmor - Round - TM48
  (631, 63100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Heatmor - Overheat - TM50
  (631, 63100, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 40),
  -- Heatmor - Focus Blast - TM52
  (631, 63100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Heatmor - Fling - TM56
  (631, 63100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Heatmor - Will-O-Wisp - TM61
  (631, 63100, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 43),
  -- Heatmor - Shadow Claw - TM65
  (631, 63100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Heatmor - Giga Impact - TM68
  (631, 63100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Heatmor - Swagger - TM87
  (631, 63100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Heatmor - Sleep Talk - TM88
  (631, 63100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Heatmor - Substitute - TM90
  (631, 63100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Heatmor - Confide - TM100
  (631, 63100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Heatmor - Body Slam - Egg
  (631, 63100, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Heatmor - Wrap - Egg
  (631, 63100, 35, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Heatmor - Curse - Egg
  (631, 63100, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Heatmor - Feint Attack - Egg
  (631, 63100, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Heatmor - Sleep Talk - Egg
  (631, 63100, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heatmor - Pursuit - Egg
  (631, 63100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heatmor - Heat Wave - Egg
  (631, 63100, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heatmor - Tickle - Egg
  (631, 63100, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heatmor - Sucker Punch - Egg
  (631, 63100, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heatmor - Night Slash - Egg
  (631, 63100, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Heatmor - Belch - Egg
  (631, 63100, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Heatmor - Fire Punch - Tutor
  (631, 63100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Heatmor - Thunder Punch - Tutor
  (631, 63100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Heatmor - Bind - Tutor
  (631, 63100, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Heatmor - Low Kick - Tutor
  (631, 63100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Heatmor - Snore - Tutor
  (631, 63100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Heatmor - Giga Drain - Tutor
  (631, 63100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Heatmor - Heat Wave - Tutor
  (631, 63100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Heatmor - Focus Punch - Tutor
  (631, 63100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Heatmor - Superpower - Tutor
  (631, 63100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Heatmor - Recycle - Tutor
  (631, 63100, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Heatmor - Knock Off - Tutor
  (631, 63100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Heatmor - Snatch - Tutor
  (631, 63100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Heatmor - Gastro Acid - Tutor
  (631, 63100, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Heatmor - Bug Bite - Tutor
  (631, 63100, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Heatmor - Throat Chop - Tutor
  (631, 63100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Heatmor - Stomping Tantrum - Tutor
  (631, 63100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Durant - Vise Grip - Level 1
  (632, 63200, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Durant - Guillotine - Level 1
  (632, 63200, 12, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Durant - Sand Attack - Level 1
  (632, 63200, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Durant - Bite - Level 1
  (632, 63200, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Durant - Fury Cutter - Level 1
  (632, 63200, 210, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Durant - Metal Sound - Level 1
  (632, 63200, 319, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Durant - Agility - Level 6
  (632, 63200, 97, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Durant - Metal Claw - Level 11
  (632, 63200, 232, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Durant - Bug Bite - Level 16
  (632, 63200, 450, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Durant - Crunch - Level 21
  (632, 63200, 242, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Durant - Iron Head - Level 26
  (632, 63200, 442, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Durant - Dig - Level 31
  (632, 63200, 91, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Durant - Entrainment - Level 36
  (632, 63200, 494, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Durant - X-Scissor - Level 41
  (632, 63200, 404, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Durant - Iron Defense - Level 46
  (632, 63200, 334, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Durant - Guillotine - Level 51
  (632, 63200, 12, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Durant - Metal Sound - Level 56
  (632, 63200, 319, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Durant - Toxic - TM06
  (632, 63200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Durant - Hidden Power - TM10
  (632, 63200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Durant - Protect - TM17
  (632, 63200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Durant - Frustration - TM21
  (632, 63200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Durant - Return - TM27
  (632, 63200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Durant - Double Team - TM32
  (632, 63200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Durant - Sandstorm - TM37
  (632, 63200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 24),
  -- Durant - Rock Tomb - TM39
  (632, 63200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Durant - Aerial Ace - TM40
  (632, 63200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Durant - Facade - TM42
  (632, 63200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Durant - Rest - TM44
  (632, 63200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Durant - Attract - TM45
  (632, 63200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Durant - Round - TM48
  (632, 63200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Durant - Energy Ball - TM53
  (632, 63200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Durant - Shadow Claw - TM65
  (632, 63200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 32),
  -- Durant - Giga Impact - TM68
  (632, 63200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Durant - Rock Polish - TM69
  (632, 63200, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 34),
  -- Durant - Stone Edge - TM71
  (632, 63200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 35),
  -- Durant - Thunder Wave - TM73
  (632, 63200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 36),
  -- Durant - Rock Slide - TM80
  (632, 63200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Durant - X-Scissor - TM81
  (632, 63200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 38),
  -- Durant - Swagger - TM87
  (632, 63200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Durant - Sleep Talk - TM88
  (632, 63200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Durant - Substitute - TM90
  (632, 63200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Durant - Flash Cannon - TM91
  (632, 63200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 42),
  -- Durant - Confide - TM100
  (632, 63200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Durant - Screech - Egg
  (632, 63200, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Durant - Feint Attack - Egg
  (632, 63200, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Durant - Endure - Egg
  (632, 63200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Durant - Baton Pass - Egg
  (632, 63200, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Durant - Thunder Fang - Egg
  (632, 63200, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Durant - Rock Climb - Egg
  (632, 63200, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Durant - Snore - Tutor
  (632, 63200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Durant - Superpower - Tutor
  (632, 63200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Durant - Endeavor - Tutor
  (632, 63200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Durant - Iron Defense - Tutor
  (632, 63200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Durant - Iron Head - Tutor
  (632, 63200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Durant - Bug Bite - Tutor
  (632, 63200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Deino - Tackle - Level 1
  (633, 63300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deino - Dragon Rage - Level 1
  (633, 63300, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deino - Focus Energy - Level 4
  (633, 63300, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deino - Bite - Level 9
  (633, 63300, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Deino - Headbutt - Level 12
  (633, 63300, 29, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Deino - Dragon Breath - Level 17
  (633, 63300, 225, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Deino - Roar - Level 20
  (633, 63300, 46, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Deino - Crunch - Level 25
  (633, 63300, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Deino - Slam - Level 28
  (633, 63300, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Deino - Dragon Pulse - Level 32
  (633, 63300, 406, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Deino - Work Up - Level 38
  (633, 63300, 526, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Deino - Dragon Rush - Level 42
  (633, 63300, 407, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Deino - Body Slam - Level 48
  (633, 63300, 34, 16, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Deino - Scary Face - Level 50
  (633, 63300, 184, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Deino - Hyper Voice - Level 58
  (633, 63300, 304, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Deino - Outrage - Level 62
  (633, 63300, 200, 16, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Deino - Work Up - TM01
  (633, 63300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Deino - Roar - TM05
  (633, 63300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Deino - Toxic - TM06
  (633, 63300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Deino - Hidden Power - TM10
  (633, 63300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Deino - Sunny Day - TM11
  (633, 63300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Deino - Taunt - TM12
  (633, 63300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Deino - Protect - TM17
  (633, 63300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Deino - Rain Dance - TM18
  (633, 63300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Deino - Frustration - TM21
  (633, 63300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Deino - Return - TM27
  (633, 63300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Deino - Double Team - TM32
  (633, 63300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Deino - Torment - TM41
  (633, 63300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 28),
  -- Deino - Facade - TM42
  (633, 63300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Deino - Rest - TM44
  (633, 63300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Deino - Attract - TM45
  (633, 63300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Deino - Thief - TM46
  (633, 63300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Deino - Round - TM48
  (633, 63300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Deino - Thunder Wave - TM73
  (633, 63300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 34),
  -- Deino - Psych Up - TM77
  (633, 63300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 35),
  -- Deino - Dragon Tail - TM82
  (633, 63300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 36),
  -- Deino - Swagger - TM87
  (633, 63300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Deino - Sleep Talk - TM88
  (633, 63300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Deino - Substitute - TM90
  (633, 63300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Deino - Dark Pulse - TM97
  (633, 63300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 40),
  -- Deino - Confide - TM100
  (633, 63300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Deino - Screech - Egg
  (633, 63300, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Deino - Astonish - Egg
  (633, 63300, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Deino - Assurance - Egg
  (633, 63300, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Deino - Dark Pulse - Egg
  (633, 63300, 399, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Deino - Earth Power - Egg
  (633, 63300, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Deino - Thunder Fang - Egg
  (633, 63300, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deino - Ice Fang - Egg
  (633, 63300, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deino - Fire Fang - Egg
  (633, 63300, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deino - Head Smash - Egg
  (633, 63300, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Deino - Double Hit - Egg
  (633, 63300, 458, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deino - Belch - Egg
  (633, 63300, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deino - Snore - Tutor
  (633, 63300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Deino - Spite - Tutor
  (633, 63300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Deino - Outrage - Tutor
  (633, 63300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Deino - Uproar - Tutor
  (633, 63300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Deino - Superpower - Tutor
  (633, 63300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Deino - Hyper Voice - Tutor
  (633, 63300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Deino - Shock Wave - Tutor
  (633, 63300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Deino - Aqua Tail - Tutor
  (633, 63300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Deino - Dragon Pulse - Tutor
  (633, 63300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Deino - Earth Power - Tutor
  (633, 63300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Deino - Zen Headbutt - Tutor
  (633, 63300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Deino - Draco Meteor - Tutor
  (633, 63300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Zweilous - Bite - Level 1
  (634, 63400, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zweilous - Dragon Rage - Level 1
  (634, 63400, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zweilous - Focus Energy - Level 1
  (634, 63400, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zweilous - Double Hit - Level 1
  (634, 63400, 458, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zweilous - Focus Energy - Level 4
  (634, 63400, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Zweilous - Bite - Level 9
  (634, 63400, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Zweilous - Headbutt - Level 12
  (634, 63400, 29, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Zweilous - Dragon Breath - Level 17
  (634, 63400, 225, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Zweilous - Roar - Level 20
  (634, 63400, 46, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Zweilous - Crunch - Level 25
  (634, 63400, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Zweilous - Slam - Level 28
  (634, 63400, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Zweilous - Dragon Pulse - Level 32
  (634, 63400, 406, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Zweilous - Work Up - Level 38
  (634, 63400, 526, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Zweilous - Dragon Rush - Level 42
  (634, 63400, 407, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Zweilous - Body Slam - Level 48
  (634, 63400, 34, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Zweilous - Scary Face - Level 55
  (634, 63400, 184, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Zweilous - Hyper Voice - Level 64
  (634, 63400, 304, 16, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Zweilous - Outrage - Level 71
  (634, 63400, 200, 16, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Zweilous - Work Up - TM01
  (634, 63400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Zweilous - Roar - TM05
  (634, 63400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Zweilous - Toxic - TM06
  (634, 63400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Zweilous - Hidden Power - TM10
  (634, 63400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Zweilous - Sunny Day - TM11
  (634, 63400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Zweilous - Taunt - TM12
  (634, 63400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Zweilous - Protect - TM17
  (634, 63400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Zweilous - Rain Dance - TM18
  (634, 63400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Zweilous - Frustration - TM21
  (634, 63400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Zweilous - Return - TM27
  (634, 63400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Zweilous - Double Team - TM32
  (634, 63400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Zweilous - Torment - TM41
  (634, 63400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Zweilous - Facade - TM42
  (634, 63400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Zweilous - Rest - TM44
  (634, 63400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Zweilous - Attract - TM45
  (634, 63400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Zweilous - Thief - TM46
  (634, 63400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Zweilous - Round - TM48
  (634, 63400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Zweilous - Thunder Wave - TM73
  (634, 63400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 36),
  -- Zweilous - Psych Up - TM77
  (634, 63400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 37),
  -- Zweilous - Dragon Tail - TM82
  (634, 63400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 38),
  -- Zweilous - Swagger - TM87
  (634, 63400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Zweilous - Sleep Talk - TM88
  (634, 63400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Zweilous - Substitute - TM90
  (634, 63400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Zweilous - Dark Pulse - TM97
  (634, 63400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 42),
  -- Zweilous - Confide - TM100
  (634, 63400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Zweilous - Snore - Tutor
  (634, 63400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Zweilous - Spite - Tutor
  (634, 63400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Zweilous - Outrage - Tutor
  (634, 63400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Zweilous - Uproar - Tutor
  (634, 63400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Zweilous - Superpower - Tutor
  (634, 63400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Zweilous - Hyper Voice - Tutor
  (634, 63400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Zweilous - Shock Wave - Tutor
  (634, 63400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Zweilous - Aqua Tail - Tutor
  (634, 63400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Zweilous - Dragon Pulse - Tutor
  (634, 63400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Zweilous - Earth Power - Tutor
  (634, 63400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Zweilous - Zen Headbutt - Tutor
  (634, 63400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Zweilous - Draco Meteor - Tutor
  (634, 63400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Hydreigon - Bite - Level 1
  (635, 63500, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hydreigon - Dragon Rage - Level 1
  (635, 63500, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hydreigon - Focus Energy - Level 1
  (635, 63500, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hydreigon - Tri Attack - Level 1
  (635, 63500, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hydreigon - Outrage - Level 1
  (635, 63500, 200, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hydreigon - Hyper Voice - Level 1
  (635, 63500, 304, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hydreigon - Focus Energy - Level 4
  (635, 63500, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Hydreigon - Bite - Level 9
  (635, 63500, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Hydreigon - Headbutt - Level 12
  (635, 63500, 29, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Hydreigon - Dragon Breath - Level 17
  (635, 63500, 225, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Hydreigon - Roar - Level 20
  (635, 63500, 46, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Hydreigon - Crunch - Level 25
  (635, 63500, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hydreigon - Slam - Level 28
  (635, 63500, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Hydreigon - Dragon Pulse - Level 32
  (635, 63500, 406, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Hydreigon - Work Up - Level 38
  (635, 63500, 526, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Hydreigon - Dragon Rush - Level 42
  (635, 63500, 407, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Hydreigon - Body Slam - Level 48
  (635, 63500, 34, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Hydreigon - Scary Face - Level 55
  (635, 63500, 184, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Hydreigon - Hyper Voice - Level 68
  (635, 63500, 304, 16, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Hydreigon - Outrage - Level 79
  (635, 63500, 200, 16, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Hydreigon - Work Up - TM01
  (635, 63500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Hydreigon - Roar - TM05
  (635, 63500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Hydreigon - Toxic - TM06
  (635, 63500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Hydreigon - Hidden Power - TM10
  (635, 63500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Hydreigon - Sunny Day - TM11
  (635, 63500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Hydreigon - Taunt - TM12
  (635, 63500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Hydreigon - Hyper Beam - TM15
  (635, 63500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Hydreigon - Protect - TM17
  (635, 63500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Hydreigon - Rain Dance - TM18
  (635, 63500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Hydreigon - Roost - TM19
  (635, 63500, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Hydreigon - Frustration - TM21
  (635, 63500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Hydreigon - Earthquake - TM26
  (635, 63500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Hydreigon - Return - TM27
  (635, 63500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Hydreigon - Double Team - TM32
  (635, 63500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Hydreigon - Reflect - TM33
  (635, 63500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Hydreigon - Flamethrower - TM35
  (635, 63500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Hydreigon - Fire Blast - TM38
  (635, 63500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 37),
  -- Hydreigon - Rock Tomb - TM39
  (635, 63500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Hydreigon - Torment - TM41
  (635, 63500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Hydreigon - Facade - TM42
  (635, 63500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Hydreigon - Rest - TM44
  (635, 63500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Hydreigon - Attract - TM45
  (635, 63500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Hydreigon - Thief - TM46
  (635, 63500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Hydreigon - Round - TM48
  (635, 63500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Hydreigon - Echoed Voice - TM49
  (635, 63500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 45),
  -- Hydreigon - Steel Wing - TM51
  (635, 63500, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 46),
  -- Hydreigon - Focus Blast - TM52
  (635, 63500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 47),
  -- Hydreigon - Charge Beam - TM57
  (635, 63500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Hydreigon - Brutal Swing - TM59
  (635, 63500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 49),
  -- Hydreigon - Acrobatics - TM62
  (635, 63500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 50),
  -- Hydreigon - Payback - TM66
  (635, 63500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 51),
  -- Hydreigon - Giga Impact - TM68
  (635, 63500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Hydreigon - Stone Edge - TM71
  (635, 63500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 53),
  -- Hydreigon - Thunder Wave - TM73
  (635, 63500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 54),
  -- Hydreigon - Fly - TM76
  (635, 63500, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 55),
  -- Hydreigon - Psych Up - TM77
  (635, 63500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 56),
  -- Hydreigon - Bulldoze - TM78
  (635, 63500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 57),
  -- Hydreigon - Rock Slide - TM80
  (635, 63500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 58),
  -- Hydreigon - Dragon Tail - TM82
  (635, 63500, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 59),
  -- Hydreigon - Swagger - TM87
  (635, 63500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 60),
  -- Hydreigon - Sleep Talk - TM88
  (635, 63500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 61),
  -- Hydreigon - U-turn - TM89
  (635, 63500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 62),
  -- Hydreigon - Substitute - TM90
  (635, 63500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 63),
  -- Hydreigon - Flash Cannon - TM91
  (635, 63500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 64),
  -- Hydreigon - Surf - TM94
  (635, 63500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 65),
  -- Hydreigon - Dark Pulse - TM97
  (635, 63500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 66),
  -- Hydreigon - Confide - TM100
  (635, 63500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 67),
  -- Hydreigon - Snore - Tutor
  (635, 63500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Hydreigon - Spite - Tutor
  (635, 63500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Hydreigon - Outrage - Tutor
  (635, 63500, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Hydreigon - Iron Tail - Tutor
  (635, 63500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Hydreigon - Uproar - Tutor
  (635, 63500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Hydreigon - Heat Wave - Tutor
  (635, 63500, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Hydreigon - Superpower - Tutor
  (635, 63500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Hydreigon - Hyper Voice - Tutor
  (635, 63500, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Hydreigon - Signal Beam - Tutor
  (635, 63500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Hydreigon - Shock Wave - Tutor
  (635, 63500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Hydreigon - Tailwind - Tutor
  (635, 63500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Hydreigon - Aqua Tail - Tutor
  (635, 63500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Hydreigon - Dragon Pulse - Tutor
  (635, 63500, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Hydreigon - Earth Power - Tutor
  (635, 63500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Hydreigon - Zen Headbutt - Tutor
  (635, 63500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Hydreigon - Defog - Tutor
  (635, 63500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Hydreigon - Draco Meteor - Tutor
  (635, 63500, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Hydreigon - Throat Chop - Tutor
  (635, 63500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Larvesta - Ember - Level 1
  (636, 63600, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvesta - String Shot - Level 1
  (636, 63600, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvesta - Absorb - Level 10
  (636, 63600, 71, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Larvesta - Take Down - Level 20
  (636, 63600, 36, 16, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Larvesta - Flame Charge - Level 30
  (636, 63600, 488, 16, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Larvesta - Bug Bite - Level 40
  (636, 63600, 450, 16, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Larvesta - Double-Edge - Level 50
  (636, 63600, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Larvesta - Flame Wheel - Level 60
  (636, 63600, 172, 16, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Larvesta - Bug Buzz - Level 70
  (636, 63600, 405, 16, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Larvesta - Amnesia - Level 80
  (636, 63600, 133, 16, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Larvesta - Thrash - Level 90
  (636, 63600, 37, 16, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Larvesta - Flare Blitz - Level 100
  (636, 63600, 394, 16, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Larvesta - Calm Mind - TM04
  (636, 63600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 13),
  -- Larvesta - Toxic - TM06
  (636, 63600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Larvesta - Hidden Power - TM10
  (636, 63600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Larvesta - Sunny Day - TM11
  (636, 63600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Larvesta - Light Screen - TM16
  (636, 63600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Larvesta - Protect - TM17
  (636, 63600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Larvesta - Safeguard - TM20
  (636, 63600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 19),
  -- Larvesta - Frustration - TM21
  (636, 63600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Larvesta - Solar Beam - TM22
  (636, 63600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Larvesta - Return - TM27
  (636, 63600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Larvesta - Leech Life - TM28
  (636, 63600, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 23),
  -- Larvesta - Psychic - TM29
  (636, 63600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Larvesta - Double Team - TM32
  (636, 63600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Larvesta - Flamethrower - TM35
  (636, 63600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 26),
  -- Larvesta - Fire Blast - TM38
  (636, 63600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 27),
  -- Larvesta - Facade - TM42
  (636, 63600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Larvesta - Flame Charge - TM43
  (636, 63600, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 29),
  -- Larvesta - Rest - TM44
  (636, 63600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Larvesta - Round - TM48
  (636, 63600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Larvesta - Overheat - TM50
  (636, 63600, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 32),
  -- Larvesta - Will-O-Wisp - TM61
  (636, 63600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 33),
  -- Larvesta - Acrobatics - TM62
  (636, 63600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 34),
  -- Larvesta - Swagger - TM87
  (636, 63600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Larvesta - Sleep Talk - TM88
  (636, 63600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Larvesta - U-turn - TM89
  (636, 63600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 37),
  -- Larvesta - Substitute - TM90
  (636, 63600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Larvesta - Wild Charge - TM93
  (636, 63600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 39),
  -- Larvesta - Confide - TM100
  (636, 63600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Larvesta - String Shot - Egg
  (636, 63600, 81, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Larvesta - Harden - Egg
  (636, 63600, 106, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Larvesta - Foresight - Egg
  (636, 63600, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Larvesta - Endure - Egg
  (636, 63600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Larvesta - Morning Sun - Egg
  (636, 63600, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Larvesta - Magnet Rise - Egg
  (636, 63600, 393, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Larvesta - Zen Headbutt - Egg
  (636, 63600, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvesta - Snore - Tutor
  (636, 63600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Larvesta - Giga Drain - Tutor
  (636, 63600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Larvesta - Heat Wave - Tutor
  (636, 63600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Larvesta - Signal Beam - Tutor
  (636, 63600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Larvesta - Magnet Rise - Tutor
  (636, 63600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Larvesta - Zen Headbutt - Tutor
  (636, 63600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Larvesta - Bug Bite - Tutor
  (636, 63600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Volcarona - Gust - Level 1
  (637, 63700, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcarona - Thrash - Level 1
  (637, 63700, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcarona - Ember - Level 1
  (637, 63700, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcarona - Absorb - Level 1
  (637, 63700, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Volcarona - String Shot - Level 1
  (637, 63700, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Volcarona - Amnesia - Level 1
  (637, 63700, 133, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Volcarona - Flame Wheel - Level 1
  (637, 63700, 172, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Volcarona - Heat Wave - Level 1
  (637, 63700, 257, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Volcarona - Flare Blitz - Level 1
  (637, 63700, 394, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Volcarona - Bug Buzz - Level 1
  (637, 63700, 405, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Volcarona - Rage Powder - Level 1
  (637, 63700, 476, 16, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Volcarona - Quiver Dance - Level 1
  (637, 63700, 483, 16, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Volcarona - Hurricane - Level 1
  (637, 63700, 542, 16, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Volcarona - Fiery Dance - Level 1
  (637, 63700, 552, 16, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Volcarona - Absorb - Level 10
  (637, 63700, 71, 16, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Volcarona - Gust - Level 20
  (637, 63700, 16, 16, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Volcarona - Fire Spin - Level 30
  (637, 63700, 83, 16, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Volcarona - Whirlwind - Level 40
  (637, 63700, 18, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Volcarona - Silver Wind - Level 50
  (637, 63700, 318, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Volcarona - Heat Wave - Level 60
  (637, 63700, 257, 16, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Volcarona - Bug Buzz - Level 70
  (637, 63700, 405, 16, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Volcarona - Rage Powder - Level 80
  (637, 63700, 476, 16, NULL, 1, 80, NULL, NULL, NULL, 22),
  -- Volcarona - Hurricane - Level 90
  (637, 63700, 542, 16, NULL, 1, 90, NULL, NULL, NULL, 23),
  -- Volcarona - Fiery Dance - Level 100
  (637, 63700, 552, 16, NULL, 1, 100, NULL, NULL, NULL, 24),
  -- Volcarona - Calm Mind - TM04
  (637, 63700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 25),
  -- Volcarona - Toxic - TM06
  (637, 63700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Volcarona - Hidden Power - TM10
  (637, 63700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Volcarona - Sunny Day - TM11
  (637, 63700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Volcarona - Hyper Beam - TM15
  (637, 63700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Volcarona - Light Screen - TM16
  (637, 63700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 30),
  -- Volcarona - Protect - TM17
  (637, 63700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Volcarona - Roost - TM19
  (637, 63700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 32),
  -- Volcarona - Safeguard - TM20
  (637, 63700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 33),
  -- Volcarona - Frustration - TM21
  (637, 63700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 34),
  -- Volcarona - Solar Beam - TM22
  (637, 63700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 35),
  -- Volcarona - Return - TM27
  (637, 63700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Volcarona - Leech Life - TM28
  (637, 63700, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 37),
  -- Volcarona - Psychic - TM29
  (637, 63700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Volcarona - Double Team - TM32
  (637, 63700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Volcarona - Flamethrower - TM35
  (637, 63700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Volcarona - Fire Blast - TM38
  (637, 63700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Volcarona - Aerial Ace - TM40
  (637, 63700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 42),
  -- Volcarona - Facade - TM42
  (637, 63700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Volcarona - Flame Charge - TM43
  (637, 63700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 44),
  -- Volcarona - Rest - TM44
  (637, 63700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Volcarona - Round - TM48
  (637, 63700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Volcarona - Overheat - TM50
  (637, 63700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 47),
  -- Volcarona - Will-O-Wisp - TM61
  (637, 63700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 48),
  -- Volcarona - Acrobatics - TM62
  (637, 63700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 49),
  -- Volcarona - Giga Impact - TM68
  (637, 63700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Volcarona - Fly - TM76
  (637, 63700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 51),
  -- Volcarona - Poison Jab - TM84
  (637, 63700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 52),
  -- Volcarona - Swagger - TM87
  (637, 63700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Volcarona - Sleep Talk - TM88
  (637, 63700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Volcarona - U-turn - TM89
  (637, 63700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 55),
  -- Volcarona - Substitute - TM90
  (637, 63700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Volcarona - Wild Charge - TM93
  (637, 63700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 57),
  -- Volcarona - Confide - TM100
  (637, 63700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Volcarona - Snore - Tutor
  (637, 63700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Volcarona - Giga Drain - Tutor
  (637, 63700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Volcarona - Heat Wave - Tutor
  (637, 63700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Volcarona - Signal Beam - Tutor
  (637, 63700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Volcarona - Tailwind - Tutor
  (637, 63700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Volcarona - Magnet Rise - Tutor
  (637, 63700, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Volcarona - Zen Headbutt - Tutor
  (637, 63700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Volcarona - Defog - Tutor
  (637, 63700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Volcarona - Bug Bite - Tutor
  (637, 63700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Volcarona - Quiver Dance - Evolution
  (637, 63700, 483, 16, NULL, 7, NULL, NULL, NULL, NULL, 68),

  -- Cobalion - Double Kick - Level 1
  (638, 63800, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cobalion - Leer - Level 1
  (638, 63800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cobalion - Quick Attack - Level 1
  (638, 63800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cobalion - Metal Claw - Level 1
  (638, 63800, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cobalion - Metal Burst - Level 1
  (638, 63800, 368, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cobalion - Close Combat - Level 1
  (638, 63800, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cobalion - Take Down - Level 7
  (638, 63800, 36, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Cobalion - Helping Hand - Level 13
  (638, 63800, 270, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cobalion - Retaliate - Level 19
  (638, 63800, 514, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Cobalion - Iron Head - Level 25
  (638, 63800, 442, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Cobalion - Sacred Sword - Level 31
  (638, 63800, 533, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Cobalion - Swords Dance - Level 37
  (638, 63800, 14, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Cobalion - Quick Guard - Level 42
  (638, 63800, 501, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Cobalion - Work Up - Level 49
  (638, 63800, 526, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cobalion - Metal Burst - Level 55
  (638, 63800, 368, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Cobalion - Close Combat - Level 61
  (638, 63800, 370, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Cobalion - Work Up - TM01
  (638, 63800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Cobalion - Calm Mind - TM04
  (638, 63800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Cobalion - Roar - TM05
  (638, 63800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Cobalion - Toxic - TM06
  (638, 63800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Cobalion - Hidden Power - TM10
  (638, 63800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Cobalion - Taunt - TM12
  (638, 63800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Cobalion - Hyper Beam - TM15
  (638, 63800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Cobalion - Protect - TM17
  (638, 63800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Cobalion - Safeguard - TM20
  (638, 63800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Cobalion - Frustration - TM21
  (638, 63800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Cobalion - Return - TM27
  (638, 63800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Cobalion - Double Team - TM32
  (638, 63800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Cobalion - Reflect - TM33
  (638, 63800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Cobalion - Sandstorm - TM37
  (638, 63800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Cobalion - Aerial Ace - TM40
  (638, 63800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Cobalion - Facade - TM42
  (638, 63800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Cobalion - Rest - TM44
  (638, 63800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Cobalion - Round - TM48
  (638, 63800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Cobalion - Focus Blast - TM52
  (638, 63800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 35),
  -- Cobalion - False Swipe - TM54
  (638, 63800, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 36),
  -- Cobalion - Giga Impact - TM68
  (638, 63800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Cobalion - Rock Polish - TM69
  (638, 63800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 38),
  -- Cobalion - Stone Edge - TM71
  (638, 63800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 39),
  -- Cobalion - Volt Switch - TM72
  (638, 63800, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 40),
  -- Cobalion - Thunder Wave - TM73
  (638, 63800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Cobalion - Swords Dance - TM75
  (638, 63800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Cobalion - Psych Up - TM77
  (638, 63800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Cobalion - X-Scissor - TM81
  (638, 63800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Cobalion - Poison Jab - TM84
  (638, 63800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Cobalion - Swagger - TM87
  (638, 63800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Cobalion - Sleep Talk - TM88
  (638, 63800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Cobalion - Substitute - TM90
  (638, 63800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Cobalion - Flash Cannon - TM91
  (638, 63800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 49),
  -- Cobalion - Confide - TM100
  (638, 63800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Cobalion - Snore - Tutor
  (638, 63800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cobalion - Helping Hand - Tutor
  (638, 63800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cobalion - Superpower - Tutor
  (638, 63800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cobalion - Iron Defense - Tutor
  (638, 63800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cobalion - Block - Tutor
  (638, 63800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cobalion - Bounce - Tutor
  (638, 63800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cobalion - Magnet Rise - Tutor
  (638, 63800, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cobalion - Zen Headbutt - Tutor
  (638, 63800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cobalion - Iron Head - Tutor
  (638, 63800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cobalion - Stealth Rock - Tutor
  (638, 63800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cobalion - Laser Focus - Tutor
  (638, 63800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Terrakion - Double Kick - Level 1
  (639, 63900, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terrakion - Leer - Level 1
  (639, 63900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terrakion - Quick Attack - Level 1
  (639, 63900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Terrakion - Close Combat - Level 1
  (639, 63900, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Terrakion - Smack Down - Level 1
  (639, 63900, 479, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Terrakion - Take Down - Level 7
  (639, 63900, 36, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Terrakion - Helping Hand - Level 13
  (639, 63900, 270, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Terrakion - Retaliate - Level 19
  (639, 63900, 514, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Terrakion - Rock Slide - Level 25
  (639, 63900, 157, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Terrakion - Sacred Sword - Level 31
  (639, 63900, 533, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Terrakion - Swords Dance - Level 37
  (639, 63900, 14, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Terrakion - Quick Guard - Level 42
  (639, 63900, 501, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Terrakion - Work Up - Level 49
  (639, 63900, 526, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Terrakion - Stone Edge - Level 55
  (639, 63900, 444, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Terrakion - Close Combat - Level 61
  (639, 63900, 370, 16, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Terrakion - Work Up - TM01
  (639, 63900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Terrakion - Calm Mind - TM04
  (639, 63900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Terrakion - Roar - TM05
  (639, 63900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Terrakion - Toxic - TM06
  (639, 63900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Terrakion - Hidden Power - TM10
  (639, 63900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Terrakion - Taunt - TM12
  (639, 63900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Terrakion - Hyper Beam - TM15
  (639, 63900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Terrakion - Protect - TM17
  (639, 63900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Terrakion - Safeguard - TM20
  (639, 63900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Terrakion - Frustration - TM21
  (639, 63900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Terrakion - Smack Down - TM23
  (639, 63900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Terrakion - Earthquake - TM26
  (639, 63900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Terrakion - Return - TM27
  (639, 63900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Terrakion - Double Team - TM32
  (639, 63900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Terrakion - Reflect - TM33
  (639, 63900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Terrakion - Sandstorm - TM37
  (639, 63900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Terrakion - Rock Tomb - TM39
  (639, 63900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Terrakion - Aerial Ace - TM40
  (639, 63900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Terrakion - Facade - TM42
  (639, 63900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Terrakion - Rest - TM44
  (639, 63900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Terrakion - Round - TM48
  (639, 63900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Terrakion - Focus Blast - TM52
  (639, 63900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Terrakion - False Swipe - TM54
  (639, 63900, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 38),
  -- Terrakion - Giga Impact - TM68
  (639, 63900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Terrakion - Rock Polish - TM69
  (639, 63900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 40),
  -- Terrakion - Stone Edge - TM71
  (639, 63900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 41),
  -- Terrakion - Swords Dance - TM75
  (639, 63900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Terrakion - Psych Up - TM77
  (639, 63900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Terrakion - Bulldoze - TM78
  (639, 63900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Terrakion - Rock Slide - TM80
  (639, 63900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Terrakion - X-Scissor - TM81
  (639, 63900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 46),
  -- Terrakion - Poison Jab - TM84
  (639, 63900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Terrakion - Swagger - TM87
  (639, 63900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Terrakion - Sleep Talk - TM88
  (639, 63900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Terrakion - Substitute - TM90
  (639, 63900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Terrakion - Confide - TM100
  (639, 63900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Terrakion - Snore - Tutor
  (639, 63900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Terrakion - Helping Hand - Tutor
  (639, 63900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Terrakion - Superpower - Tutor
  (639, 63900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Terrakion - Block - Tutor
  (639, 63900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Terrakion - Earth Power - Tutor
  (639, 63900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Terrakion - Zen Headbutt - Tutor
  (639, 63900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Terrakion - Iron Head - Tutor
  (639, 63900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Terrakion - Stealth Rock - Tutor
  (639, 63900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Terrakion - Laser Focus - Tutor
  (639, 63900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Terrakion - Stomping Tantrum - Tutor
  (639, 63900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Virizion - Double Kick - Level 1
  (640, 64000, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Virizion - Leer - Level 1
  (640, 64000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Virizion - Quick Attack - Level 1
  (640, 64000, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Virizion - Magical Leaf - Level 1
  (640, 64000, 345, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Virizion - Leaf Blade - Level 1
  (640, 64000, 348, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Virizion - Close Combat - Level 1
  (640, 64000, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Virizion - Take Down - Level 7
  (640, 64000, 36, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Virizion - Helping Hand - Level 13
  (640, 64000, 270, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Virizion - Retaliate - Level 19
  (640, 64000, 514, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Virizion - Giga Drain - Level 25
  (640, 64000, 202, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Virizion - Sacred Sword - Level 31
  (640, 64000, 533, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Virizion - Swords Dance - Level 37
  (640, 64000, 14, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Virizion - Quick Guard - Level 42
  (640, 64000, 501, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Virizion - Work Up - Level 49
  (640, 64000, 526, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Virizion - Leaf Blade - Level 55
  (640, 64000, 348, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Virizion - Close Combat - Level 61
  (640, 64000, 370, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Virizion - Work Up - TM01
  (640, 64000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Virizion - Calm Mind - TM04
  (640, 64000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Virizion - Roar - TM05
  (640, 64000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Virizion - Toxic - TM06
  (640, 64000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Virizion - Hidden Power - TM10
  (640, 64000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Virizion - Sunny Day - TM11
  (640, 64000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Virizion - Taunt - TM12
  (640, 64000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Virizion - Hyper Beam - TM15
  (640, 64000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Virizion - Light Screen - TM16
  (640, 64000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Virizion - Protect - TM17
  (640, 64000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Virizion - Safeguard - TM20
  (640, 64000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Virizion - Frustration - TM21
  (640, 64000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Virizion - Solar Beam - TM22
  (640, 64000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Virizion - Return - TM27
  (640, 64000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Virizion - Double Team - TM32
  (640, 64000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Virizion - Reflect - TM33
  (640, 64000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Virizion - Aerial Ace - TM40
  (640, 64000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Virizion - Facade - TM42
  (640, 64000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Virizion - Rest - TM44
  (640, 64000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Virizion - Round - TM48
  (640, 64000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Virizion - Focus Blast - TM52
  (640, 64000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Virizion - Energy Ball - TM53
  (640, 64000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Virizion - False Swipe - TM54
  (640, 64000, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 39),
  -- Virizion - Giga Impact - TM68
  (640, 64000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Virizion - Stone Edge - TM71
  (640, 64000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 41),
  -- Virizion - Swords Dance - TM75
  (640, 64000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Virizion - Psych Up - TM77
  (640, 64000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Virizion - X-Scissor - TM81
  (640, 64000, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Virizion - Grass Knot - TM86
  (640, 64000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Virizion - Swagger - TM87
  (640, 64000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Virizion - Sleep Talk - TM88
  (640, 64000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Virizion - Substitute - TM90
  (640, 64000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Virizion - Nature Power - TM96
  (640, 64000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 49),
  -- Virizion - Confide - TM100
  (640, 64000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Virizion - Snore - Tutor
  (640, 64000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Virizion - Giga Drain - Tutor
  (640, 64000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Virizion - Synthesis - Tutor
  (640, 64000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Virizion - Helping Hand - Tutor
  (640, 64000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Virizion - Superpower - Tutor
  (640, 64000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Virizion - Block - Tutor
  (640, 64000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Virizion - Bounce - Tutor
  (640, 64000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Virizion - Worry Seed - Tutor
  (640, 64000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Virizion - Seed Bomb - Tutor
  (640, 64000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Virizion - Zen Headbutt - Tutor
  (640, 64000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Virizion - Laser Focus - Tutor
  (640, 64000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Tornadus - Gust - Level 1
  (641, 64100, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus - Thrash - Level 1
  (641, 64100, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus - Swagger - Level 1
  (641, 64100, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tornadus - Uproar - Level 1
  (641, 64100, 253, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tornadus - Astonish - Level 1
  (641, 64100, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tornadus - Hammer Arm - Level 1
  (641, 64100, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tornadus - Hurricane - Level 1
  (641, 64100, 542, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tornadus - Bite - Level 7
  (641, 64100, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Tornadus - Revenge - Level 13
  (641, 64100, 279, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Tornadus - Air Cutter - Level 19
  (641, 64100, 314, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Tornadus - Extrasensory - Level 25
  (641, 64100, 326, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Tornadus - Agility - Level 31
  (641, 64100, 97, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tornadus - Air Slash - Level 37
  (641, 64100, 403, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tornadus - Crunch - Level 43
  (641, 64100, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tornadus - Tailwind - Level 49
  (641, 64100, 366, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Tornadus - Rain Dance - Level 55
  (641, 64100, 240, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Tornadus - Hurricane - Level 61
  (641, 64100, 542, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tornadus - Dark Pulse - Level 67
  (641, 64100, 399, 16, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Tornadus - Hammer Arm - Level 73
  (641, 64100, 359, 16, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Tornadus - Thrash - Level 79
  (641, 64100, 37, 16, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Tornadus - Toxic - TM06
  (641, 64100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Tornadus - Bulk Up - TM08
  (641, 64100, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Tornadus - Hidden Power - TM10
  (641, 64100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Tornadus - Taunt - TM12
  (641, 64100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Tornadus - Hyper Beam - TM15
  (641, 64100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Tornadus - Protect - TM17
  (641, 64100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Tornadus - Rain Dance - TM18
  (641, 64100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Tornadus - Frustration - TM21
  (641, 64100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Tornadus - Smack Down - TM23
  (641, 64100, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Tornadus - Return - TM27
  (641, 64100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Tornadus - Psychic - TM29
  (641, 64100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Tornadus - Brick Break - TM31
  (641, 64100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Tornadus - Double Team - TM32
  (641, 64100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Tornadus - Sludge Wave - TM34
  (641, 64100, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 34),
  -- Tornadus - Sludge Bomb - TM36
  (641, 64100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Tornadus - Aerial Ace - TM40
  (641, 64100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Tornadus - Torment - TM41
  (641, 64100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Tornadus - Facade - TM42
  (641, 64100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Tornadus - Rest - TM44
  (641, 64100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Tornadus - Attract - TM45
  (641, 64100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Tornadus - Thief - TM46
  (641, 64100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Tornadus - Round - TM48
  (641, 64100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Tornadus - Focus Blast - TM52
  (641, 64100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Tornadus - Fling - TM56
  (641, 64100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Tornadus - Sky Drop - TM58
  (641, 64100, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 45),
  -- Tornadus - Brutal Swing - TM59
  (641, 64100, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 46),
  -- Tornadus - Acrobatics - TM62
  (641, 64100, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 47),
  -- Tornadus - Embargo - TM63
  (641, 64100, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 48),
  -- Tornadus - Payback - TM66
  (641, 64100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 49),
  -- Tornadus - Giga Impact - TM68
  (641, 64100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Tornadus - Fly - TM76
  (641, 64100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 51),
  -- Tornadus - Grass Knot - TM86
  (641, 64100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 52),
  -- Tornadus - Swagger - TM87
  (641, 64100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Tornadus - Sleep Talk - TM88
  (641, 64100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Tornadus - U-turn - TM89
  (641, 64100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 55),
  -- Tornadus - Substitute - TM90
  (641, 64100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Tornadus - Dark Pulse - TM97
  (641, 64100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Tornadus - Confide - TM100
  (641, 64100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Tornadus - Snore - Tutor
  (641, 64100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Tornadus - Icy Wind - Tutor
  (641, 64100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tornadus - Iron Tail - Tutor
  (641, 64100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tornadus - Uproar - Tutor
  (641, 64100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tornadus - Heat Wave - Tutor
  (641, 64100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tornadus - Role Play - Tutor
  (641, 64100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tornadus - Superpower - Tutor
  (641, 64100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tornadus - Knock Off - Tutor
  (641, 64100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Tornadus - Tailwind - Tutor
  (641, 64100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Tornadus - Defog - Tutor
  (641, 64100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Tornadus - Foul Play - Tutor
  (641, 64100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Thundurus - Thrash - Level 1
  (642, 64200, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus - Thunder Shock - Level 1
  (642, 64200, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus - Swagger - Level 1
  (642, 64200, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thundurus - Uproar - Level 1
  (642, 64200, 253, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thundurus - Astonish - Level 1
  (642, 64200, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Thundurus - Hammer Arm - Level 1
  (642, 64200, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Thundurus - Nasty Plot - Level 1
  (642, 64200, 417, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Thundurus - Bite - Level 7
  (642, 64200, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Thundurus - Revenge - Level 13
  (642, 64200, 279, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Thundurus - Shock Wave - Level 19
  (642, 64200, 351, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Thundurus - Heal Block - Level 25
  (642, 64200, 377, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Thundurus - Agility - Level 31
  (642, 64200, 97, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Thundurus - Discharge - Level 37
  (642, 64200, 435, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Thundurus - Crunch - Level 43
  (642, 64200, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Thundurus - Charge - Level 49
  (642, 64200, 268, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Thundurus - Nasty Plot - Level 55
  (642, 64200, 417, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Thundurus - Thunder - Level 61
  (642, 64200, 87, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Thundurus - Dark Pulse - Level 67
  (642, 64200, 399, 16, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Thundurus - Hammer Arm - Level 73
  (642, 64200, 359, 16, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Thundurus - Thrash - Level 79
  (642, 64200, 37, 16, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Thundurus - Toxic - TM06
  (642, 64200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Thundurus - Bulk Up - TM08
  (642, 64200, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Thundurus - Hidden Power - TM10
  (642, 64200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Thundurus - Taunt - TM12
  (642, 64200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Thundurus - Hyper Beam - TM15
  (642, 64200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Thundurus - Protect - TM17
  (642, 64200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Thundurus - Rain Dance - TM18
  (642, 64200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Thundurus - Frustration - TM21
  (642, 64200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Thundurus - Smack Down - TM23
  (642, 64200, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Thundurus - Thunderbolt - TM24
  (642, 64200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Thundurus - Thunder - TM25
  (642, 64200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Thundurus - Return - TM27
  (642, 64200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Thundurus - Psychic - TM29
  (642, 64200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Thundurus - Brick Break - TM31
  (642, 64200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Thundurus - Double Team - TM32
  (642, 64200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Thundurus - Sludge Wave - TM34
  (642, 64200, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 36),
  -- Thundurus - Sludge Bomb - TM36
  (642, 64200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Thundurus - Torment - TM41
  (642, 64200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Thundurus - Facade - TM42
  (642, 64200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Thundurus - Rest - TM44
  (642, 64200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Thundurus - Attract - TM45
  (642, 64200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Thundurus - Thief - TM46
  (642, 64200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Thundurus - Round - TM48
  (642, 64200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Thundurus - Focus Blast - TM52
  (642, 64200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Thundurus - Fling - TM56
  (642, 64200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Thundurus - Charge Beam - TM57
  (642, 64200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 46),
  -- Thundurus - Sky Drop - TM58
  (642, 64200, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 47),
  -- Thundurus - Brutal Swing - TM59
  (642, 64200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Thundurus - Embargo - TM63
  (642, 64200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Thundurus - Payback - TM66
  (642, 64200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 50),
  -- Thundurus - Smart Strike - TM67
  (642, 64200, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 51),
  -- Thundurus - Giga Impact - TM68
  (642, 64200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Thundurus - Volt Switch - TM72
  (642, 64200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 53),
  -- Thundurus - Thunder Wave - TM73
  (642, 64200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 54),
  -- Thundurus - Fly - TM76
  (642, 64200, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 55),
  -- Thundurus - Grass Knot - TM86
  (642, 64200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Thundurus - Swagger - TM87
  (642, 64200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Thundurus - Sleep Talk - TM88
  (642, 64200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Thundurus - U-turn - TM89
  (642, 64200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 59),
  -- Thundurus - Substitute - TM90
  (642, 64200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Thundurus - Flash Cannon - TM91
  (642, 64200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 61),
  -- Thundurus - Wild Charge - TM93
  (642, 64200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 62),
  -- Thundurus - Dark Pulse - TM97
  (642, 64200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 63),
  -- Thundurus - Confide - TM100
  (642, 64200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 64),
  -- Thundurus - Thunder Punch - Tutor
  (642, 64200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Thundurus - Snore - Tutor
  (642, 64200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Thundurus - Iron Tail - Tutor
  (642, 64200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Thundurus - Uproar - Tutor
  (642, 64200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Thundurus - Role Play - Tutor
  (642, 64200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Thundurus - Superpower - Tutor
  (642, 64200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Thundurus - Knock Off - Tutor
  (642, 64200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Thundurus - Shock Wave - Tutor
  (642, 64200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Thundurus - Defog - Tutor
  (642, 64200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Thundurus - Foul Play - Tutor
  (642, 64200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Thundurus - Electroweb - Tutor
  (642, 64200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Reshiram - Dragon Rage - Level 1
  (643, 64300, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reshiram - Fire Fang - Level 1
  (643, 64300, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reshiram - Imprison - Level 8
  (643, 64300, 286, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Reshiram - Ancient Power - Level 15
  (643, 64300, 246, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Reshiram - Flamethrower - Level 22
  (643, 64300, 53, 16, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Reshiram - Dragon Breath - Level 29
  (643, 64300, 225, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Reshiram - Slash - Level 36
  (643, 64300, 163, 16, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Reshiram - Extrasensory - Level 43
  (643, 64300, 326, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Reshiram - Fusion Flare - Level 50
  (643, 64300, 558, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Reshiram - Dragon Pulse - Level 54
  (643, 64300, 406, 16, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Reshiram - Noble Roar - Level 64
  (643, 64300, 568, 16, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Reshiram - Crunch - Level 71
  (643, 64300, 242, 16, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Reshiram - Fire Blast - Level 78
  (643, 64300, 126, 16, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Reshiram - Outrage - Level 85
  (643, 64300, 200, 16, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Reshiram - Hyper Voice - Level 92
  (643, 64300, 304, 16, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Reshiram - Blue Flare - Level 100
  (643, 64300, 551, 16, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Reshiram - Dragon Claw - TM02
  (643, 64300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Reshiram - Toxic - TM06
  (643, 64300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Reshiram - Hidden Power - TM10
  (643, 64300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Reshiram - Sunny Day - TM11
  (643, 64300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Reshiram - Hyper Beam - TM15
  (643, 64300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Reshiram - Light Screen - TM16
  (643, 64300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Reshiram - Protect - TM17
  (643, 64300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Reshiram - Roost - TM19
  (643, 64300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Reshiram - Safeguard - TM20
  (643, 64300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Reshiram - Frustration - TM21
  (643, 64300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Reshiram - Solar Beam - TM22
  (643, 64300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Reshiram - Return - TM27
  (643, 64300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Reshiram - Psychic - TM29
  (643, 64300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 29),
  -- Reshiram - Shadow Ball - TM30
  (643, 64300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Reshiram - Double Team - TM32
  (643, 64300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Reshiram - Reflect - TM33
  (643, 64300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Reshiram - Flamethrower - TM35
  (643, 64300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Reshiram - Fire Blast - TM38
  (643, 64300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Reshiram - Rock Tomb - TM39
  (643, 64300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Reshiram - Facade - TM42
  (643, 64300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Reshiram - Flame Charge - TM43
  (643, 64300, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 37),
  -- Reshiram - Rest - TM44
  (643, 64300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Reshiram - Round - TM48
  (643, 64300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Reshiram - Echoed Voice - TM49
  (643, 64300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 40),
  -- Reshiram - Overheat - TM50
  (643, 64300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 41),
  -- Reshiram - Steel Wing - TM51
  (643, 64300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 42),
  -- Reshiram - Focus Blast - TM52
  (643, 64300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Reshiram - Fling - TM56
  (643, 64300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Reshiram - Brutal Swing - TM59
  (643, 64300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 45),
  -- Reshiram - Will-O-Wisp - TM61
  (643, 64300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 46),
  -- Reshiram - Shadow Claw - TM65
  (643, 64300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Reshiram - Payback - TM66
  (643, 64300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Reshiram - Giga Impact - TM68
  (643, 64300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Reshiram - Stone Edge - TM71
  (643, 64300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Reshiram - Fly - TM76
  (643, 64300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 51),
  -- Reshiram - Rock Slide - TM80
  (643, 64300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Reshiram - Dragon Tail - TM82
  (643, 64300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 53),
  -- Reshiram - Swagger - TM87
  (643, 64300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Reshiram - Sleep Talk - TM88
  (643, 64300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Reshiram - Substitute - TM90
  (643, 64300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Reshiram - Confide - TM100
  (643, 64300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Reshiram - Snore - Tutor
  (643, 64300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Reshiram - Outrage - Tutor
  (643, 64300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Reshiram - Heat Wave - Tutor
  (643, 64300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Reshiram - Hyper Voice - Tutor
  (643, 64300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Reshiram - Tailwind - Tutor
  (643, 64300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Reshiram - Dragon Pulse - Tutor
  (643, 64300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Reshiram - Earth Power - Tutor
  (643, 64300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Reshiram - Zen Headbutt - Tutor
  (643, 64300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Reshiram - Defog - Tutor
  (643, 64300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Reshiram - Draco Meteor - Tutor
  (643, 64300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Reshiram - Laser Focus - Tutor
  (643, 64300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Zekrom - Dragon Rage - Level 1
  (644, 64400, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zekrom - Thunder Fang - Level 1
  (644, 64400, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zekrom - Imprison - Level 8
  (644, 64400, 286, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Zekrom - Ancient Power - Level 15
  (644, 64400, 246, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Zekrom - Thunderbolt - Level 22
  (644, 64400, 85, 16, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Zekrom - Dragon Breath - Level 29
  (644, 64400, 225, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Zekrom - Slash - Level 36
  (644, 64400, 163, 16, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Zekrom - Zen Headbutt - Level 43
  (644, 64400, 428, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Zekrom - Fusion Bolt - Level 50
  (644, 64400, 559, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Zekrom - Dragon Claw - Level 54
  (644, 64400, 337, 16, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Zekrom - Noble Roar - Level 64
  (644, 64400, 568, 16, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Zekrom - Crunch - Level 71
  (644, 64400, 242, 16, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Zekrom - Thunder - Level 78
  (644, 64400, 87, 16, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Zekrom - Outrage - Level 85
  (644, 64400, 200, 16, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Zekrom - Hyper Voice - Level 92
  (644, 64400, 304, 16, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Zekrom - Bolt Strike - Level 100
  (644, 64400, 550, 16, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Zekrom - Dragon Claw - TM02
  (644, 64400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Zekrom - Toxic - TM06
  (644, 64400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Zekrom - Hidden Power - TM10
  (644, 64400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Zekrom - Hyper Beam - TM15
  (644, 64400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Zekrom - Light Screen - TM16
  (644, 64400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Zekrom - Protect - TM17
  (644, 64400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Zekrom - Rain Dance - TM18
  (644, 64400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Zekrom - Roost - TM19
  (644, 64400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Zekrom - Safeguard - TM20
  (644, 64400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Zekrom - Frustration - TM21
  (644, 64400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Zekrom - Thunderbolt - TM24
  (644, 64400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Zekrom - Thunder - TM25
  (644, 64400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Zekrom - Return - TM27
  (644, 64400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Zekrom - Psychic - TM29
  (644, 64400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Zekrom - Shadow Ball - TM30
  (644, 64400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Zekrom - Double Team - TM32
  (644, 64400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Zekrom - Reflect - TM33
  (644, 64400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Zekrom - Rock Tomb - TM39
  (644, 64400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Zekrom - Facade - TM42
  (644, 64400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Zekrom - Rest - TM44
  (644, 64400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Zekrom - Round - TM48
  (644, 64400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Zekrom - Echoed Voice - TM49
  (644, 64400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Zekrom - Steel Wing - TM51
  (644, 64400, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Zekrom - Focus Blast - TM52
  (644, 64400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Zekrom - Fling - TM56
  (644, 64400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Zekrom - Charge Beam - TM57
  (644, 64400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Zekrom - Brutal Swing - TM59
  (644, 64400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 43),
  -- Zekrom - Shadow Claw - TM65
  (644, 64400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Zekrom - Payback - TM66
  (644, 64400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Zekrom - Giga Impact - TM68
  (644, 64400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Zekrom - Stone Edge - TM71
  (644, 64400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Zekrom - Volt Switch - TM72
  (644, 64400, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 48),
  -- Zekrom - Thunder Wave - TM73
  (644, 64400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Zekrom - Fly - TM76
  (644, 64400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 50),
  -- Zekrom - Rock Slide - TM80
  (644, 64400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Zekrom - Dragon Tail - TM82
  (644, 64400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Zekrom - Swagger - TM87
  (644, 64400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Zekrom - Sleep Talk - TM88
  (644, 64400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Zekrom - Substitute - TM90
  (644, 64400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Zekrom - Flash Cannon - TM91
  (644, 64400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 56),
  -- Zekrom - Wild Charge - TM93
  (644, 64400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 57),
  -- Zekrom - Confide - TM100
  (644, 64400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Zekrom - Thunder Punch - Tutor
  (644, 64400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Zekrom - Snore - Tutor
  (644, 64400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Zekrom - Outrage - Tutor
  (644, 64400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Zekrom - Hyper Voice - Tutor
  (644, 64400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Zekrom - Signal Beam - Tutor
  (644, 64400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Zekrom - Shock Wave - Tutor
  (644, 64400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Zekrom - Tailwind - Tutor
  (644, 64400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Zekrom - Magnet Rise - Tutor
  (644, 64400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Zekrom - Dragon Pulse - Tutor
  (644, 64400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Zekrom - Earth Power - Tutor
  (644, 64400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Zekrom - Zen Headbutt - Tutor
  (644, 64400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Zekrom - Defog - Tutor
  (644, 64400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Zekrom - Draco Meteor - Tutor
  (644, 64400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Zekrom - Laser Focus - Tutor
  (644, 64400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Landorus - Fissure - Level 1
  (645, 64500, 90, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus - Outrage - Level 1
  (645, 64500, 200, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus - Imprison - Level 1
  (645, 64500, 286, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Landorus - Rock Tomb - Level 1
  (645, 64500, 317, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Landorus - Block - Level 1
  (645, 64500, 335, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Landorus - Mud Shot - Level 1
  (645, 64500, 341, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Landorus - Hammer Arm - Level 1
  (645, 64500, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Landorus - Punishment - Level 7
  (645, 64500, 386, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Landorus - Bulldoze - Level 13
  (645, 64500, 523, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Landorus - Rock Throw - Level 19
  (645, 64500, 88, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Landorus - Extrasensory - Level 25
  (645, 64500, 326, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Landorus - Swords Dance - Level 31
  (645, 64500, 14, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Landorus - Earth Power - Level 37
  (645, 64500, 414, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Landorus - Rock Slide - Level 43
  (645, 64500, 157, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Landorus - Earthquake - Level 49
  (645, 64500, 89, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Landorus - Sandstorm - Level 55
  (645, 64500, 201, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Landorus - Fissure - Level 61
  (645, 64500, 90, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Landorus - Stone Edge - Level 67
  (645, 64500, 444, 16, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Landorus - Hammer Arm - Level 73
  (645, 64500, 359, 16, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Landorus - Outrage - Level 79
  (645, 64500, 200, 16, NULL, 1, 79, NULL, NULL, NULL, 20),
  -- Landorus - Calm Mind - TM04
  (645, 64500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Landorus - Toxic - TM06
  (645, 64500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Landorus - Bulk Up - TM08
  (645, 64500, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 23),
  -- Landorus - Hidden Power - TM10
  (645, 64500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Landorus - Hyper Beam - TM15
  (645, 64500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Landorus - Protect - TM17
  (645, 64500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Landorus - Frustration - TM21
  (645, 64500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Landorus - Smack Down - TM23
  (645, 64500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Landorus - Earthquake - TM26
  (645, 64500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Landorus - Return - TM27
  (645, 64500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Landorus - Psychic - TM29
  (645, 64500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Landorus - Brick Break - TM31
  (645, 64500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Landorus - Double Team - TM32
  (645, 64500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Landorus - Sludge Wave - TM34
  (645, 64500, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 34),
  -- Landorus - Sludge Bomb - TM36
  (645, 64500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Landorus - Sandstorm - TM37
  (645, 64500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 36),
  -- Landorus - Rock Tomb - TM39
  (645, 64500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Landorus - Facade - TM42
  (645, 64500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Landorus - Rest - TM44
  (645, 64500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Landorus - Attract - TM45
  (645, 64500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Landorus - Round - TM48
  (645, 64500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Landorus - Focus Blast - TM52
  (645, 64500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Landorus - Fling - TM56
  (645, 64500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Landorus - Brutal Swing - TM59
  (645, 64500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Landorus - Explosion - TM64
  (645, 64500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 45),
  -- Landorus - Payback - TM66
  (645, 64500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Landorus - Giga Impact - TM68
  (645, 64500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Landorus - Rock Polish - TM69
  (645, 64500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 48),
  -- Landorus - Stone Edge - TM71
  (645, 64500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 49),
  -- Landorus - Swords Dance - TM75
  (645, 64500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 50),
  -- Landorus - Fly - TM76
  (645, 64500, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 51),
  -- Landorus - Bulldoze - TM78
  (645, 64500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Landorus - Rock Slide - TM80
  (645, 64500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Landorus - Grass Knot - TM86
  (645, 64500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 54),
  -- Landorus - Swagger - TM87
  (645, 64500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Landorus - Sleep Talk - TM88
  (645, 64500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Landorus - U-turn - TM89
  (645, 64500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 57),
  -- Landorus - Substitute - TM90
  (645, 64500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Landorus - Confide - TM100
  (645, 64500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Landorus - Snore - Tutor
  (645, 64500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Landorus - Outrage - Tutor
  (645, 64500, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Landorus - Iron Tail - Tutor
  (645, 64500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Landorus - Role Play - Tutor
  (645, 64500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Landorus - Superpower - Tutor
  (645, 64500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Landorus - Knock Off - Tutor
  (645, 64500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Landorus - Block - Tutor
  (645, 64500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Landorus - Gravity - Tutor
  (645, 64500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Landorus - Earth Power - Tutor
  (645, 64500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Landorus - Defog - Tutor
  (645, 64500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Landorus - Stealth Rock - Tutor
  (645, 64500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Kyurem - Dragon Rage - Level 1
  (646, 64600, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem - Icy Wind - Level 1
  (646, 64600, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem - Imprison - Level 8
  (646, 64600, 286, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem - Ancient Power - Level 15
  (646, 64600, 246, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem - Ice Beam - Level 22
  (646, 64600, 58, 16, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem - Dragon Breath - Level 29
  (646, 64600, 225, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem - Slash - Level 36
  (646, 64600, 163, 16, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem - Scary Face - Level 43
  (646, 64600, 184, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem - Glaciate - Level 50
  (646, 64600, 549, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem - Dragon Pulse - Level 57
  (646, 64600, 406, 16, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem - Noble Roar - Level 64
  (646, 64600, 568, 16, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem - Endeavor - Level 71
  (646, 64600, 283, 16, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem - Blizzard - Level 78
  (646, 64600, 59, 16, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem - Outrage - Level 85
  (646, 64600, 200, 16, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem - Hyper Voice - Level 92
  (646, 64600, 304, 16, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem - Dragon Claw - TM02
  (646, 64600, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 16),
  -- Kyurem - Toxic - TM06
  (646, 64600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Kyurem - Hail - TM07
  (646, 64600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Kyurem - Hidden Power - TM10
  (646, 64600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Kyurem - Sunny Day - TM11
  (646, 64600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Kyurem - Ice Beam - TM13
  (646, 64600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Kyurem - Blizzard - TM14
  (646, 64600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Kyurem - Hyper Beam - TM15
  (646, 64600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Kyurem - Light Screen - TM16
  (646, 64600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Kyurem - Protect - TM17
  (646, 64600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Kyurem - Rain Dance - TM18
  (646, 64600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Kyurem - Roost - TM19
  (646, 64600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Kyurem - Safeguard - TM20
  (646, 64600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Kyurem - Frustration - TM21
  (646, 64600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Kyurem - Return - TM27
  (646, 64600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Kyurem - Psychic - TM29
  (646, 64600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Kyurem - Shadow Ball - TM30
  (646, 64600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Kyurem - Double Team - TM32
  (646, 64600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Kyurem - Reflect - TM33
  (646, 64600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Kyurem - Rock Tomb - TM39
  (646, 64600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Kyurem - Facade - TM42
  (646, 64600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Kyurem - Rest - TM44
  (646, 64600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Kyurem - Round - TM48
  (646, 64600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Kyurem - Echoed Voice - TM49
  (646, 64600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Kyurem - Steel Wing - TM51
  (646, 64600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 40),
  -- Kyurem - Focus Blast - TM52
  (646, 64600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Kyurem - Fling - TM56
  (646, 64600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Kyurem - Brutal Swing - TM59
  (646, 64600, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 43),
  -- Kyurem - Shadow Claw - TM65
  (646, 64600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Kyurem - Payback - TM66
  (646, 64600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Kyurem - Giga Impact - TM68
  (646, 64600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Kyurem - Stone Edge - TM71
  (646, 64600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Kyurem - Fly - TM76
  (646, 64600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 48),
  -- Kyurem - Rock Slide - TM80
  (646, 64600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Kyurem - Dragon Tail - TM82
  (646, 64600, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Kyurem - Swagger - TM87
  (646, 64600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Kyurem - Sleep Talk - TM88
  (646, 64600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Kyurem - Substitute - TM90
  (646, 64600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Kyurem - Flash Cannon - TM91
  (646, 64600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 54),
  -- Kyurem - Confide - TM100
  (646, 64600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Kyurem - Snore - Tutor
  (646, 64600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Kyurem - Icy Wind - Tutor
  (646, 64600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Kyurem - Outrage - Tutor
  (646, 64600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Kyurem - Endeavor - Tutor
  (646, 64600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Kyurem - Hyper Voice - Tutor
  (646, 64600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Kyurem - Signal Beam - Tutor
  (646, 64600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Kyurem - Dragon Pulse - Tutor
  (646, 64600, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Kyurem - Earth Power - Tutor
  (646, 64600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Kyurem - Zen Headbutt - Tutor
  (646, 64600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Kyurem - Draco Meteor - Tutor
  (646, 64600, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Kyurem - Iron Head - Tutor
  (646, 64600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Kyurem - Laser Focus - Tutor
  (646, 64600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Keldeo - Double Kick - Level 1
  (647, 64700, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Keldeo - Leer - Level 1
  (647, 64700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Keldeo - Bubble Beam - Level 1
  (647, 64700, 61, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Keldeo - Aqua Jet - Level 1
  (647, 64700, 453, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Keldeo - Double Kick - Level 7
  (647, 64700, 24, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Keldeo - Bubble Beam - Level 13
  (647, 64700, 61, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Keldeo - Take Down - Level 19
  (647, 64700, 36, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Keldeo - Helping Hand - Level 25
  (647, 64700, 270, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Keldeo - Retaliate - Level 31
  (647, 64700, 514, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Keldeo - Aqua Tail - Level 37
  (647, 64700, 401, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Keldeo - Sacred Sword - Level 43
  (647, 64700, 533, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Keldeo - Swords Dance - Level 49
  (647, 64700, 14, 16, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Keldeo - Quick Guard - Level 55
  (647, 64700, 501, 16, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Keldeo - Work Up - Level 61
  (647, 64700, 526, 16, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Keldeo - Hydro Pump - Level 67
  (647, 64700, 56, 16, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Keldeo - Close Combat - Level 73
  (647, 64700, 370, 16, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Keldeo - Work Up - TM01
  (647, 64700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Keldeo - Calm Mind - TM04
  (647, 64700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Keldeo - Roar - TM05
  (647, 64700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Keldeo - Toxic - TM06
  (647, 64700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Keldeo - Hail - TM07
  (647, 64700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Keldeo - Hidden Power - TM10
  (647, 64700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Keldeo - Taunt - TM12
  (647, 64700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Keldeo - Hyper Beam - TM15
  (647, 64700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Keldeo - Protect - TM17
  (647, 64700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Keldeo - Rain Dance - TM18
  (647, 64700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Keldeo - Safeguard - TM20
  (647, 64700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Keldeo - Frustration - TM21
  (647, 64700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Keldeo - Return - TM27
  (647, 64700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Keldeo - Double Team - TM32
  (647, 64700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Keldeo - Reflect - TM33
  (647, 64700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Keldeo - Aerial Ace - TM40
  (647, 64700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Keldeo - Facade - TM42
  (647, 64700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Keldeo - Rest - TM44
  (647, 64700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Keldeo - Round - TM48
  (647, 64700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Keldeo - Focus Blast - TM52
  (647, 64700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 36),
  -- Keldeo - False Swipe - TM54
  (647, 64700, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Keldeo - Scald - TM55
  (647, 64700, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Keldeo - Giga Impact - TM68
  (647, 64700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Keldeo - Stone Edge - TM71
  (647, 64700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Keldeo - Swords Dance - TM75
  (647, 64700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Keldeo - Psych Up - TM77
  (647, 64700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Keldeo - X-Scissor - TM81
  (647, 64700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Keldeo - Poison Jab - TM84
  (647, 64700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 44),
  -- Keldeo - Swagger - TM87
  (647, 64700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Keldeo - Sleep Talk - TM88
  (647, 64700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Keldeo - Substitute - TM90
  (647, 64700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Keldeo - Surf - TM94
  (647, 64700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Keldeo - Confide - TM100
  (647, 64700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Keldeo - Low Kick - Tutor
  (647, 64700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Keldeo - Snore - Tutor
  (647, 64700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Keldeo - Icy Wind - Tutor
  (647, 64700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Keldeo - Helping Hand - Tutor
  (647, 64700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Keldeo - Superpower - Tutor
  (647, 64700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Keldeo - Endeavor - Tutor
  (647, 64700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Keldeo - Bounce - Tutor
  (647, 64700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Keldeo - Covet - Tutor
  (647, 64700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Keldeo - Water Pulse - Tutor
  (647, 64700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Keldeo - Last Resort - Tutor
  (647, 64700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Keldeo - Aqua Tail - Tutor
  (647, 64700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Keldeo - Secret Sword - Tutor
  (647, 64700, 548, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Keldeo - Liquidation - Tutor
  (647, 64700, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Meloetta - Sing - Level 1
  (648, 64800, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meloetta - Confusion - Level 1
  (648, 64800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meloetta - Quick Attack - Level 1
  (648, 64800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meloetta - Round - Level 1
  (648, 64800, 496, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meloetta - Quick Attack - Level 6
  (648, 64800, 98, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Meloetta - Confusion - Level 11
  (648, 64800, 93, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Meloetta - Sing - Level 16
  (648, 64800, 47, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Meloetta - Teeter Dance - Level 21
  (648, 64800, 298, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Meloetta - Acrobatics - Level 26
  (648, 64800, 512, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Meloetta - Psybeam - Level 31
  (648, 64800, 60, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Meloetta - Echoed Voice - Level 36
  (648, 64800, 497, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meloetta - U-turn - Level 43
  (648, 64800, 369, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Meloetta - Wake-Up Slap - Level 50
  (648, 64800, 358, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Meloetta - Psychic - Level 57
  (648, 64800, 94, 16, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Meloetta - Hyper Voice - Level 64
  (648, 64800, 304, 16, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Meloetta - Role Play - Level 71
  (648, 64800, 272, 16, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Meloetta - Close Combat - Level 78
  (648, 64800, 370, 16, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Meloetta - Perish Song - Level 85
  (648, 64800, 195, 16, NULL, 1, 85, NULL, NULL, NULL, 18),
  -- Meloetta - Work Up - TM01
  (648, 64800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Meloetta - Psyshock - TM03
  (648, 64800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Meloetta - Calm Mind - TM04
  (648, 64800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Meloetta - Toxic - TM06
  (648, 64800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Meloetta - Hidden Power - TM10
  (648, 64800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Meloetta - Sunny Day - TM11
  (648, 64800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Meloetta - Hyper Beam - TM15
  (648, 64800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Meloetta - Light Screen - TM16
  (648, 64800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Meloetta - Protect - TM17
  (648, 64800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Meloetta - Rain Dance - TM18
  (648, 64800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Meloetta - Safeguard - TM20
  (648, 64800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Meloetta - Frustration - TM21
  (648, 64800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Meloetta - Thunderbolt - TM24
  (648, 64800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 31),
  -- Meloetta - Thunder - TM25
  (648, 64800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 32),
  -- Meloetta - Return - TM27
  (648, 64800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Meloetta - Psychic - TM29
  (648, 64800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Meloetta - Shadow Ball - TM30
  (648, 64800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Meloetta - Brick Break - TM31
  (648, 64800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 36),
  -- Meloetta - Double Team - TM32
  (648, 64800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Meloetta - Facade - TM42
  (648, 64800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Meloetta - Rest - TM44
  (648, 64800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Meloetta - Low Sweep - TM47
  (648, 64800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 40),
  -- Meloetta - Round - TM48
  (648, 64800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Meloetta - Echoed Voice - TM49
  (648, 64800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Meloetta - Focus Blast - TM52
  (648, 64800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Meloetta - Energy Ball - TM53
  (648, 64800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 44),
  -- Meloetta - Fling - TM56
  (648, 64800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Meloetta - Charge Beam - TM57
  (648, 64800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 46),
  -- Meloetta - Acrobatics - TM62
  (648, 64800, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 47),
  -- Meloetta - Embargo - TM63
  (648, 64800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 48),
  -- Meloetta - Shadow Claw - TM65
  (648, 64800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 49),
  -- Meloetta - Payback - TM66
  (648, 64800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 50),
  -- Meloetta - Giga Impact - TM68
  (648, 64800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Meloetta - Stone Edge - TM71
  (648, 64800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 52),
  -- Meloetta - Thunder Wave - TM73
  (648, 64800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 53),
  -- Meloetta - Psych Up - TM77
  (648, 64800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 54),
  -- Meloetta - Dream Eater - TM85
  (648, 64800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Meloetta - Grass Knot - TM86
  (648, 64800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Meloetta - Swagger - TM87
  (648, 64800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Meloetta - Sleep Talk - TM88
  (648, 64800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Meloetta - U-turn - TM89
  (648, 64800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 59),
  -- Meloetta - Substitute - TM90
  (648, 64800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Meloetta - Trick Room - TM92
  (648, 64800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 61),
  -- Meloetta - Dazzling Gleam - TM99
  (648, 64800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 62),
  -- Meloetta - Confide - TM100
  (648, 64800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Meloetta - Fire Punch - Tutor
  (648, 64800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Meloetta - Ice Punch - Tutor
  (648, 64800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Meloetta - Thunder Punch - Tutor
  (648, 64800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Meloetta - Low Kick - Tutor
  (648, 64800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Meloetta - Snore - Tutor
  (648, 64800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Meloetta - Heal Bell - Tutor
  (648, 64800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Meloetta - Uproar - Tutor
  (648, 64800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Meloetta - Focus Punch - Tutor
  (648, 64800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Meloetta - Helping Hand - Tutor
  (648, 64800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Meloetta - Trick - Tutor
  (648, 64800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Meloetta - Role Play - Tutor
  (648, 64800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Meloetta - Magic Coat - Tutor
  (648, 64800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Meloetta - Recycle - Tutor
  (648, 64800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Meloetta - Knock Off - Tutor
  (648, 64800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Meloetta - Skill Swap - Tutor
  (648, 64800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Meloetta - Snatch - Tutor
  (648, 64800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Meloetta - Hyper Voice - Tutor
  (648, 64800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Meloetta - Signal Beam - Tutor
  (648, 64800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Meloetta - Covet - Tutor
  (648, 64800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Meloetta - Shock Wave - Tutor
  (648, 64800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Meloetta - Gravity - Tutor
  (648, 64800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Meloetta - Last Resort - Tutor
  (648, 64800, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Meloetta - Drain Punch - Tutor
  (648, 64800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Meloetta - Zen Headbutt - Tutor
  (648, 64800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Meloetta - Wonder Room - Tutor
  (648, 64800, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Meloetta - Telekinesis - Tutor
  (648, 64800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Meloetta - Magic Room - Tutor
  (648, 64800, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Meloetta - Ally Switch - Tutor
  (648, 64800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Meloetta - Dual Chop - Tutor
  (648, 64800, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Meloetta - Relic Song - Tutor
  (648, 64800, 547, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),
  -- Meloetta - Laser Focus - Tutor
  (648, 64800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 94),

  -- Genesect - Quick Attack - Level 1
  (649, 64900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect - Screech - Level 1
  (649, 64900, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect - Metal Claw - Level 1
  (649, 64900, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Genesect - Magnet Rise - Level 1
  (649, 64900, 393, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Genesect - Techno Blast - Level 1
  (649, 64900, 546, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Genesect - Fell Stinger - Level 1
  (649, 64900, 565, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Genesect - Fury Cutter - Level 7
  (649, 64900, 210, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Genesect - Lock-On - Level 11
  (649, 64900, 199, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Genesect - Flame Charge - Level 18
  (649, 64900, 488, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Genesect - Magnet Bomb - Level 22
  (649, 64900, 443, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Genesect - Slash - Level 29
  (649, 64900, 163, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Genesect - Metal Sound - Level 33
  (649, 64900, 319, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Genesect - Signal Beam - Level 40
  (649, 64900, 324, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Genesect - Tri Attack - Level 44
  (649, 64900, 161, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Genesect - X-Scissor - Level 51
  (649, 64900, 404, 16, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Genesect - Bug Buzz - Level 55
  (649, 64900, 405, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Genesect - Simple Beam - Level 62
  (649, 64900, 493, 16, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Genesect - Zap Cannon - Level 66
  (649, 64900, 192, 16, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Genesect - Hyper Beam - Level 73
  (649, 64900, 63, 16, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Genesect - Self-Destruct - Level 77
  (649, 64900, 120, 16, NULL, 1, 77, NULL, NULL, NULL, 20),
  -- Genesect - Toxic - TM06
  (649, 64900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Genesect - Hidden Power - TM10
  (649, 64900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Genesect - Ice Beam - TM13
  (649, 64900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Genesect - Blizzard - TM14
  (649, 64900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Genesect - Hyper Beam - TM15
  (649, 64900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Genesect - Light Screen - TM16
  (649, 64900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Genesect - Protect - TM17
  (649, 64900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Genesect - Frustration - TM21
  (649, 64900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Genesect - Solar Beam - TM22
  (649, 64900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Genesect - Thunderbolt - TM24
  (649, 64900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Genesect - Thunder - TM25
  (649, 64900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Genesect - Return - TM27
  (649, 64900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Genesect - Psychic - TM29
  (649, 64900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Genesect - Double Team - TM32
  (649, 64900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Genesect - Reflect - TM33
  (649, 64900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Genesect - Flamethrower - TM35
  (649, 64900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Genesect - Aerial Ace - TM40
  (649, 64900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Genesect - Facade - TM42
  (649, 64900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Genesect - Flame Charge - TM43
  (649, 64900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 39),
  -- Genesect - Rest - TM44
  (649, 64900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Genesect - Round - TM48
  (649, 64900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Genesect - Energy Ball - TM53
  (649, 64900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Genesect - Charge Beam - TM57
  (649, 64900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Genesect - Explosion - TM64
  (649, 64900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Genesect - Shadow Claw - TM65
  (649, 64900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Genesect - Giga Impact - TM68
  (649, 64900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Genesect - Rock Polish - TM69
  (649, 64900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 47),
  -- Genesect - Thunder Wave - TM73
  (649, 64900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Genesect - Fly - TM76
  (649, 64900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 49),
  -- Genesect - X-Scissor - TM81
  (649, 64900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 50),
  -- Genesect - Infestation - TM83
  (649, 64900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 51),
  -- Genesect - Swagger - TM87
  (649, 64900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Genesect - Sleep Talk - TM88
  (649, 64900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Genesect - U-turn - TM89
  (649, 64900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 54),
  -- Genesect - Substitute - TM90
  (649, 64900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Genesect - Flash Cannon - TM91
  (649, 64900, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 56),
  -- Genesect - Dark Pulse - TM97
  (649, 64900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Genesect - Confide - TM100
  (649, 64900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Genesect - Snore - Tutor
  (649, 64900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Genesect - Giga Drain - Tutor
  (649, 64900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Genesect - Magic Coat - Tutor
  (649, 64900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Genesect - Recycle - Tutor
  (649, 64900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Genesect - Signal Beam - Tutor
  (649, 64900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Genesect - Iron Defense - Tutor
  (649, 64900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Genesect - Shock Wave - Tutor
  (649, 64900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Genesect - Gravity - Tutor
  (649, 64900, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Genesect - Last Resort - Tutor
  (649, 64900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Genesect - Magnet Rise - Tutor
  (649, 64900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Genesect - Zen Headbutt - Tutor
  (649, 64900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Genesect - Gunk Shot - Tutor
  (649, 64900, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Genesect - Iron Head - Tutor
  (649, 64900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Genesect - Bug Bite - Tutor
  (649, 64900, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Genesect - Telekinesis - Tutor
  (649, 64900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Genesect - Ally Switch - Tutor
  (649, 64900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Genesect - Electroweb - Tutor
  (649, 64900, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75);
