-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black / White
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black / White Pokedex learnset pages, Serebii Black / White
-- Move Tutor pages, and PokemonDB Generation 5 Black / White learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black / White
-- Pokémon: #601-#649
-- Rows: 2563
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black / White seed.
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
  -- Klinklang - Vise Grip - Level 1
  (601, 60100, 11, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klinklang - Charge - Level 1
  (601, 60100, 268, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klinklang - Thunder Shock - Level 1
  (601, 60100, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klinklang - Gear Grind - Level 1
  (601, 60100, 544, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klinklang - Charge - Level 6
  (601, 60100, 268, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Klinklang - Thunder Shock - Level 11
  (601, 60100, 84, 11, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Klinklang - Gear Grind - Level 16
  (601, 60100, 544, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Klinklang - Bind - Level 21
  (601, 60100, 20, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Klinklang - Charge Beam - Level 25
  (601, 60100, 451, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Klinklang - Autotomize - Level 31
  (601, 60100, 475, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Klinklang - Mirror Shot - Level 36
  (601, 60100, 429, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klinklang - Screech - Level 40
  (601, 60100, 103, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klinklang - Discharge - Level 44
  (601, 60100, 435, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klinklang - Metal Sound - Level 48
  (601, 60100, 319, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klinklang - Shift Gear - Level 54
  (601, 60100, 508, 11, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Klinklang - Lock-On - Level 60
  (601, 60100, 199, 11, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Klinklang - Zap Cannon - Level 66
  (601, 60100, 192, 11, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Klinklang - Hyper Beam - Level 72
  (601, 60100, 63, 11, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Klinklang - Toxic - TM06
  (601, 60100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Klinklang - Hidden Power - TM10
  (601, 60100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Klinklang - Hyper Beam - TM15
  (601, 60100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Klinklang - Protect - TM17
  (601, 60100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Klinklang - Frustration - TM21
  (601, 60100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Klinklang - Thunderbolt - TM24
  (601, 60100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Klinklang - Thunder - TM25
  (601, 60100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Klinklang - Return - TM27
  (601, 60100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Klinklang - Double Team - TM32
  (601, 60100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Klinklang - Sandstorm - TM37
  (601, 60100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 28),
  -- Klinklang - Facade - TM42
  (601, 60100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Klinklang - Rest - TM44
  (601, 60100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Klinklang - Round - TM48
  (601, 60100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Klinklang - Charge Beam - TM57
  (601, 60100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 32),
  -- Klinklang - Giga Impact - TM68
  (601, 60100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 33),
  -- Klinklang - Rock Polish - TM69
  (601, 60100, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 34),
  -- Klinklang - Volt Switch - TM72
  (601, 60100, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 35),
  -- Klinklang - Thunder Wave - TM73
  (601, 60100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Klinklang - Swagger - TM87
  (601, 60100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Klinklang - Substitute - TM90
  (601, 60100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Klinklang - Flash Cannon - TM91
  (601, 60100, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 39),
  -- Klinklang - Trick Room - TM92
  (601, 60100, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 40),
  -- Klinklang - Wild Charge - TM93
  (601, 60100, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 41),
  -- Klinklang - Rock Smash - TM94
  (601, 60100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Tynamo - Tackle - Level 1
  (602, 60200, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tynamo - Thunder Wave - Level 1
  (602, 60200, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tynamo - Spark - Level 1
  (602, 60200, 209, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tynamo - Charge Beam - Level 1
  (602, 60200, 451, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektrik - Headbutt - Level 1
  (603, 60300, 29, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektrik - Thunder Wave - Level 1
  (603, 60300, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektrik - Spark - Level 1
  (603, 60300, 209, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektrik - Charge Beam - Level 1
  (603, 60300, 451, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektrik - Bind - Level 9
  (603, 60300, 20, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Eelektrik - Acid - Level 19
  (603, 60300, 51, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Eelektrik - Discharge - Level 29
  (603, 60300, 435, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Eelektrik - Crunch - Level 39
  (603, 60300, 242, 11, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Eelektrik - Thunderbolt - Level 44
  (603, 60300, 85, 11, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Eelektrik - Acid Spray - Level 49
  (603, 60300, 491, 11, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Eelektrik - Coil - Level 54
  (603, 60300, 489, 11, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Eelektrik - Wild Charge - Level 59
  (603, 60300, 528, 11, NULL, 1, 59, NULL, NULL, NULL, 12),
  -- Eelektrik - Gastro Acid - Level 64
  (603, 60300, 380, 11, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Eelektrik - Zap Cannon - Level 69
  (603, 60300, 192, 11, NULL, 1, 69, NULL, NULL, NULL, 14),
  -- Eelektrik - Thrash - Level 74
  (603, 60300, 37, 11, NULL, 1, 74, NULL, NULL, NULL, 15),
  -- Eelektrik - Toxic - TM06
  (603, 60300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Eelektrik - Hidden Power - TM10
  (603, 60300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Eelektrik - Light Screen - TM16
  (603, 60300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Eelektrik - Protect - TM17
  (603, 60300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Eelektrik - Rain Dance - TM18
  (603, 60300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Eelektrik - Frustration - TM21
  (603, 60300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Eelektrik - Thunderbolt - TM24
  (603, 60300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 22),
  -- Eelektrik - Thunder - TM25
  (603, 60300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 23),
  -- Eelektrik - Return - TM27
  (603, 60300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Eelektrik - Double Team - TM32
  (603, 60300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Eelektrik - Facade - TM42
  (603, 60300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Eelektrik - Rest - TM44
  (603, 60300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Eelektrik - Attract - TM45
  (603, 60300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Eelektrik - Round - TM48
  (603, 60300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Eelektrik - Charge Beam - TM57
  (603, 60300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 30),
  -- Eelektrik - Acrobatics - TM62
  (603, 60300, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 31),
  -- Eelektrik - Flash - TM70
  (603, 60300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 32),
  -- Eelektrik - Volt Switch - TM72
  (603, 60300, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 33),
  -- Eelektrik - Thunder Wave - TM73
  (603, 60300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 34),
  -- Eelektrik - Swagger - TM87
  (603, 60300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Eelektrik - U-turn - TM89
  (603, 60300, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 36),
  -- Eelektrik - Substitute - TM90
  (603, 60300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Eelektrik - Flash Cannon - TM91
  (603, 60300, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 38),
  -- Eelektrik - Wild Charge - TM93
  (603, 60300, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 39),
  -- Eelektross - Crush Claw - Level 1
  (604, 60400, 306, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektross - Headbutt - Level 1
  (604, 60400, 29, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektross - Acid - Level 1
  (604, 60400, 51, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektross - Discharge - Level 1
  (604, 60400, 435, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektross - Crunch - Level 1
  (604, 60400, 242, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eelektross - Hone Claws - TM01
  (604, 60400, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 6),
  -- Eelektross - Dragon Claw - TM02
  (604, 60400, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 7),
  -- Eelektross - Roar - TM05
  (604, 60400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 8),
  -- Eelektross - Toxic - TM06
  (604, 60400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 9),
  -- Eelektross - Hidden Power - TM10
  (604, 60400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 10),
  -- Eelektross - Hyper Beam - TM15
  (604, 60400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 11),
  -- Eelektross - Light Screen - TM16
  (604, 60400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 12),
  -- Eelektross - Protect - TM17
  (604, 60400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 13),
  -- Eelektross - Rain Dance - TM18
  (604, 60400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 14),
  -- Eelektross - Frustration - TM21
  (604, 60400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 15),
  -- Eelektross - Thunderbolt - TM24
  (604, 60400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 16),
  -- Eelektross - Thunder - TM25
  (604, 60400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 17),
  -- Eelektross - Return - TM27
  (604, 60400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 18),
  -- Eelektross - Brick Break - TM31
  (604, 60400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 19),
  -- Eelektross - Double Team - TM32
  (604, 60400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 20),
  -- Eelektross - Flamethrower - TM35
  (604, 60400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 21),
  -- Eelektross - Rock Tomb - TM39
  (604, 60400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 22),
  -- Eelektross - Facade - TM42
  (604, 60400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 23),
  -- Eelektross - Rest - TM44
  (604, 60400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 24),
  -- Eelektross - Attract - TM45
  (604, 60400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 25),
  -- Eelektross - Round - TM48
  (604, 60400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 26),
  -- Eelektross - Charge Beam - TM57
  (604, 60400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 27),
  -- Eelektross - Acrobatics - TM62
  (604, 60400, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 28),
  -- Eelektross - Giga Impact - TM68
  (604, 60400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 29),
  -- Eelektross - Flash - TM70
  (604, 60400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 30),
  -- Eelektross - Volt Switch - TM72
  (604, 60400, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 31),
  -- Eelektross - Thunder Wave - TM73
  (604, 60400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 32),
  -- Eelektross - Rock Slide - TM80
  (604, 60400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 33),
  -- Eelektross - Dragon Tail - TM82
  (604, 60400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 34),
  -- Eelektross - Grass Knot - TM86
  (604, 60400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 35),
  -- Eelektross - Swagger - TM87
  (604, 60400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Eelektross - U-turn - TM89
  (604, 60400, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 37),
  -- Eelektross - Substitute - TM90
  (604, 60400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Eelektross - Flash Cannon - TM91
  (604, 60400, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 39),
  -- Eelektross - Wild Charge - TM93
  (604, 60400, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 40),
  -- Eelektross - Rock Smash - TM94
  (604, 60400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 41),
  -- Eelektross - Cut - HM01
  (604, 60400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 42),
  -- Eelektross - Strength - HM04
  (604, 60400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 43),
  -- Elgyem - Confusion - Level 1
  (605, 60500, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elgyem - Growl - Level 4
  (605, 60500, 45, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Elgyem - Heal Block - Level 8
  (605, 60500, 377, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Elgyem - Miracle Eye - Level 11
  (605, 60500, 357, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Elgyem - Psybeam - Level 15
  (605, 60500, 60, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Elgyem - Headbutt - Level 18
  (605, 60500, 29, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Elgyem - Hidden Power - Level 22
  (605, 60500, 237, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Elgyem - Imprison - Level 25
  (605, 60500, 286, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Elgyem - Simple Beam - Level 29
  (605, 60500, 493, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Elgyem - Zen Headbutt - Level 32
  (605, 60500, 428, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Elgyem - Psych Up - Level 36
  (605, 60500, 244, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Elgyem - Psychic - Level 39
  (605, 60500, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Elgyem - Calm Mind - Level 43
  (605, 60500, 347, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Elgyem - Recover - Level 46
  (605, 60500, 105, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Elgyem - Guard Split - Level 50
  (605, 60500, 470, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Elgyem - Power Split - Level 50
  (605, 60500, 471, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Elgyem - Synchronoise - Level 53
  (605, 60500, 485, 11, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Elgyem - Wonder Room - Level 56
  (605, 60500, 472, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Elgyem - Psyshock - TM03
  (605, 60500, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 19),
  -- Elgyem - Calm Mind - TM04
  (605, 60500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 20),
  -- Elgyem - Toxic - TM06
  (605, 60500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Elgyem - Hidden Power - TM10
  (605, 60500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Elgyem - Light Screen - TM16
  (605, 60500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Elgyem - Protect - TM17
  (605, 60500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Elgyem - Rain Dance - TM18
  (605, 60500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Elgyem - Telekinesis - TM19
  (605, 60500, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Elgyem - Safeguard - TM20
  (605, 60500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Elgyem - Frustration - TM21
  (605, 60500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Elgyem - Thunderbolt - TM24
  (605, 60500, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Elgyem - Return - TM27
  (605, 60500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Elgyem - Psychic - TM29
  (605, 60500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Elgyem - Shadow Ball - TM30
  (605, 60500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Elgyem - Double Team - TM32
  (605, 60500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Elgyem - Reflect - TM33
  (605, 60500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Elgyem - Rock Tomb - TM39
  (605, 60500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Elgyem - Facade - TM42
  (605, 60500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Elgyem - Rest - TM44
  (605, 60500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Elgyem - Attract - TM45
  (605, 60500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Elgyem - Thief - TM46
  (605, 60500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Elgyem - Round - TM48
  (605, 60500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Elgyem - Echoed Voice - TM49
  (605, 60500, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 41),
  -- Elgyem - Ally Switch - TM51
  (605, 60500, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 42),
  -- Elgyem - Energy Ball - TM53
  (605, 60500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 43),
  -- Elgyem - Charge Beam - TM57
  (605, 60500, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 44),
  -- Elgyem - Embargo - TM63
  (605, 60500, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 45),
  -- Elgyem - Flash - TM70
  (605, 60500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 46),
  -- Elgyem - Thunder Wave - TM73
  (605, 60500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 47),
  -- Elgyem - Psych Up - TM77
  (605, 60500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 48),
  -- Elgyem - Rock Slide - TM80
  (605, 60500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Elgyem - Dream Eater - TM85
  (605, 60500, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Elgyem - Swagger - TM87
  (605, 60500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Elgyem - Substitute - TM90
  (605, 60500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Elgyem - Trick Room - TM92
  (605, 60500, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 53),
  -- Elgyem - Astonish - Egg Move
  (605, 60500, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Elgyem - Barrier - Egg Move
  (605, 60500, 112, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Elgyem - Disable - Egg Move
  (605, 60500, 50, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Elgyem - Guard Swap - Egg Move
  (605, 60500, 385, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Elgyem - Nasty Plot - Egg Move
  (605, 60500, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Elgyem - Power Swap - Egg Move
  (605, 60500, 384, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Elgyem - Skill Swap - Egg Move
  (605, 60500, 285, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Elgyem - Teleport - Egg Move
  (605, 60500, 100, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Beheeyem - Confusion - Level 1
  (606, 60600, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beheeyem - Growl - Level 1
  (606, 60600, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beheeyem - Heal Block - Level 1
  (606, 60600, 377, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beheeyem - Miracle Eye - Level 1
  (606, 60600, 357, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beheeyem - Growl - Level 4
  (606, 60600, 45, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Beheeyem - Heal Block - Level 8
  (606, 60600, 377, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Beheeyem - Miracle Eye - Level 11
  (606, 60600, 357, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Beheeyem - Psybeam - Level 15
  (606, 60600, 60, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Beheeyem - Headbutt - Level 18
  (606, 60600, 29, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Beheeyem - Hidden Power - Level 22
  (606, 60600, 237, 11, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Beheeyem - Imprison - Level 25
  (606, 60600, 286, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Beheeyem - Simple Beam - Level 29
  (606, 60600, 493, 11, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Beheeyem - Zen Headbutt - Level 32
  (606, 60600, 428, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Beheeyem - Psych Up - Level 36
  (606, 60600, 244, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Beheeyem - Psychic - Level 39
  (606, 60600, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Beheeyem - Calm Mind - Level 45
  (606, 60600, 347, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Beheeyem - Recover - Level 50
  (606, 60600, 105, 11, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Beheeyem - Guard Split - Level 56
  (606, 60600, 470, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Beheeyem - Power Split - Level 58
  (606, 60600, 471, 11, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Beheeyem - Synchronoise - Level 63
  (606, 60600, 485, 11, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Beheeyem - Wonder Room - Level 68
  (606, 60600, 472, 11, NULL, 1, 68, NULL, NULL, NULL, 21),
  -- Beheeyem - Psyshock - TM03
  (606, 60600, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 22),
  -- Beheeyem - Calm Mind - TM04
  (606, 60600, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 23),
  -- Beheeyem - Toxic - TM06
  (606, 60600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 24),
  -- Beheeyem - Hidden Power - TM10
  (606, 60600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Beheeyem - Hyper Beam - TM15
  (606, 60600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Beheeyem - Light Screen - TM16
  (606, 60600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 27),
  -- Beheeyem - Protect - TM17
  (606, 60600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Beheeyem - Rain Dance - TM18
  (606, 60600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Beheeyem - Telekinesis - TM19
  (606, 60600, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 30),
  -- Beheeyem - Safeguard - TM20
  (606, 60600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 31),
  -- Beheeyem - Frustration - TM21
  (606, 60600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 32),
  -- Beheeyem - Thunderbolt - TM24
  (606, 60600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 33),
  -- Beheeyem - Return - TM27
  (606, 60600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 34),
  -- Beheeyem - Psychic - TM29
  (606, 60600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 35),
  -- Beheeyem - Shadow Ball - TM30
  (606, 60600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 36),
  -- Beheeyem - Double Team - TM32
  (606, 60600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 37),
  -- Beheeyem - Reflect - TM33
  (606, 60600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 38),
  -- Beheeyem - Rock Tomb - TM39
  (606, 60600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 39),
  -- Beheeyem - Facade - TM42
  (606, 60600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Beheeyem - Rest - TM44
  (606, 60600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Beheeyem - Attract - TM45
  (606, 60600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 42),
  -- Beheeyem - Thief - TM46
  (606, 60600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 43),
  -- Beheeyem - Round - TM48
  (606, 60600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Beheeyem - Echoed Voice - TM49
  (606, 60600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 45),
  -- Beheeyem - Ally Switch - TM51
  (606, 60600, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 46),
  -- Beheeyem - Energy Ball - TM53
  (606, 60600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 47),
  -- Beheeyem - Charge Beam - TM57
  (606, 60600, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 48),
  -- Beheeyem - Embargo - TM63
  (606, 60600, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 49),
  -- Beheeyem - Giga Impact - TM68
  (606, 60600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Beheeyem - Flash - TM70
  (606, 60600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 51),
  -- Beheeyem - Thunder Wave - TM73
  (606, 60600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 52),
  -- Beheeyem - Psych Up - TM77
  (606, 60600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 53),
  -- Beheeyem - Rock Slide - TM80
  (606, 60600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 54),
  -- Beheeyem - Dream Eater - TM85
  (606, 60600, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 55),
  -- Beheeyem - Swagger - TM87
  (606, 60600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Beheeyem - Substitute - TM90
  (606, 60600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Beheeyem - Trick Room - TM92
  (606, 60600, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 58),
  -- Litwick - Ember - Level 1
  (607, 60700, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litwick - Astonish - Level 1
  (607, 60700, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litwick - Minimize - Level 3
  (607, 60700, 107, 11, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Litwick - Smog - Level 5
  (607, 60700, 123, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Litwick - Fire Spin - Level 7
  (607, 60700, 83, 11, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Litwick - Confuse Ray - Level 10
  (607, 60700, 109, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Litwick - Night Shade - Level 13
  (607, 60700, 101, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Litwick - Will-O-Wisp - Level 16
  (607, 60700, 261, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Litwick - Flame Burst - Level 20
  (607, 60700, 481, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Litwick - Imprison - Level 24
  (607, 60700, 286, 11, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Litwick - Hex - Level 28
  (607, 60700, 506, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Litwick - Memento - Level 33
  (607, 60700, 262, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Litwick - Inferno - Level 38
  (607, 60700, 517, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Litwick - Curse - Level 43
  (607, 60700, 174, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Litwick - Shadow Ball - Level 49
  (607, 60700, 247, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Litwick - Pain Split - Level 55
  (607, 60700, 220, 11, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Litwick - Overheat - Level 61
  (607, 60700, 315, 11, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Litwick - Calm Mind - TM04
  (607, 60700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Litwick - Toxic - TM06
  (607, 60700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Litwick - Hidden Power - TM10
  (607, 60700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Litwick - Sunny Day - TM11
  (607, 60700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Litwick - Taunt - TM12
  (607, 60700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Litwick - Protect - TM17
  (607, 60700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Litwick - Telekinesis - TM19
  (607, 60700, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Litwick - Safeguard - TM20
  (607, 60700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Litwick - Frustration - TM21
  (607, 60700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Litwick - Solar Beam - TM22
  (607, 60700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Litwick - Return - TM27
  (607, 60700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Litwick - Psychic - TM29
  (607, 60700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Litwick - Shadow Ball - TM30
  (607, 60700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Litwick - Double Team - TM32
  (607, 60700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Litwick - Flamethrower - TM35
  (607, 60700, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Litwick - Fire Blast - TM38
  (607, 60700, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Litwick - Facade - TM42
  (607, 60700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Litwick - Flame Charge - TM43
  (607, 60700, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 35),
  -- Litwick - Rest - TM44
  (607, 60700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Litwick - Attract - TM45
  (607, 60700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Litwick - Thief - TM46
  (607, 60700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Litwick - Round - TM48
  (607, 60700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Litwick - Overheat - TM50
  (607, 60700, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 40),
  -- Litwick - Energy Ball - TM53
  (607, 60700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 41),
  -- Litwick - Incinerate - TM59
  (607, 60700, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 42),
  -- Litwick - Will-O-Wisp - TM61
  (607, 60700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 43),
  -- Litwick - Embargo - TM63
  (607, 60700, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 44),
  -- Litwick - Payback - TM66
  (607, 60700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 45),
  -- Litwick - Flash - TM70
  (607, 60700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 46),
  -- Litwick - Psych Up - TM77
  (607, 60700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 47),
  -- Litwick - Dream Eater - TM85
  (607, 60700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 48),
  -- Litwick - Swagger - TM87
  (607, 60700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Litwick - Substitute - TM90
  (607, 60700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 50),
  -- Litwick - Trick Room - TM92
  (607, 60700, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 51),
  -- Litwick - Acid - Egg Move
  (607, 60700, 51, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Litwick - Acid Armor - Egg Move
  (607, 60700, 151, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Litwick - Captivate - Egg Move
  (607, 60700, 445, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Litwick - Clear Smog - Egg Move
  (607, 60700, 499, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Litwick - Endure - Egg Move
  (607, 60700, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Litwick - Haze - Egg Move
  (607, 60700, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Litwick - Heat Wave - Egg Move
  (607, 60700, 257, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lampent - Ember - Level 1
  (608, 60800, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lampent - Astonish - Level 1
  (608, 60800, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lampent - Minimize - Level 1
  (608, 60800, 107, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lampent - Smog - Level 1
  (608, 60800, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lampent - Minimize - Level 3
  (608, 60800, 107, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Lampent - Smog - Level 5
  (608, 60800, 123, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Lampent - Fire Spin - Level 7
  (608, 60800, 83, 11, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Lampent - Confuse Ray - Level 10
  (608, 60800, 109, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Lampent - Night Shade - Level 13
  (608, 60800, 101, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Lampent - Will-O-Wisp - Level 16
  (608, 60800, 261, 11, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Lampent - Flame Burst - Level 20
  (608, 60800, 481, 11, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Lampent - Imprison - Level 24
  (608, 60800, 286, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lampent - Hex - Level 28
  (608, 60800, 506, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Lampent - Memento - Level 33
  (608, 60800, 262, 11, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Lampent - Inferno - Level 38
  (608, 60800, 517, 11, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Lampent - Curse - Level 45
  (608, 60800, 174, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Lampent - Shadow Ball - Level 53
  (608, 60800, 247, 11, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Lampent - Pain Split - Level 61
  (608, 60800, 220, 11, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Lampent - Overheat - Level 69
  (608, 60800, 315, 11, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Lampent - Calm Mind - TM04
  (608, 60800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 20),
  -- Lampent - Toxic - TM06
  (608, 60800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Lampent - Hidden Power - TM10
  (608, 60800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Lampent - Sunny Day - TM11
  (608, 60800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Lampent - Taunt - TM12
  (608, 60800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Lampent - Protect - TM17
  (608, 60800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Lampent - Telekinesis - TM19
  (608, 60800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Lampent - Safeguard - TM20
  (608, 60800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Lampent - Frustration - TM21
  (608, 60800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Lampent - Solar Beam - TM22
  (608, 60800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Lampent - Return - TM27
  (608, 60800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Lampent - Psychic - TM29
  (608, 60800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Lampent - Shadow Ball - TM30
  (608, 60800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Lampent - Double Team - TM32
  (608, 60800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Lampent - Flamethrower - TM35
  (608, 60800, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 34),
  -- Lampent - Fire Blast - TM38
  (608, 60800, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 35),
  -- Lampent - Facade - TM42
  (608, 60800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Lampent - Flame Charge - TM43
  (608, 60800, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 37),
  -- Lampent - Rest - TM44
  (608, 60800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Lampent - Attract - TM45
  (608, 60800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Lampent - Thief - TM46
  (608, 60800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 40),
  -- Lampent - Round - TM48
  (608, 60800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Lampent - Overheat - TM50
  (608, 60800, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 42),
  -- Lampent - Energy Ball - TM53
  (608, 60800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 43),
  -- Lampent - Incinerate - TM59
  (608, 60800, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Lampent - Will-O-Wisp - TM61
  (608, 60800, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 45),
  -- Lampent - Embargo - TM63
  (608, 60800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Lampent - Payback - TM66
  (608, 60800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Lampent - Flash - TM70
  (608, 60800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 48),
  -- Lampent - Psych Up - TM77
  (608, 60800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 49),
  -- Lampent - Dream Eater - TM85
  (608, 60800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Lampent - Swagger - TM87
  (608, 60800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Lampent - Substitute - TM90
  (608, 60800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Lampent - Trick Room - TM92
  (608, 60800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 53),
  -- Chandelure - Smog - Level 1
  (609, 60900, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chandelure - Confuse Ray - Level 1
  (609, 60900, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chandelure - Flame Burst - Level 1
  (609, 60900, 481, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chandelure - Hex - Level 1
  (609, 60900, 506, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chandelure - Calm Mind - TM04
  (609, 60900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 5),
  -- Chandelure - Toxic - TM06
  (609, 60900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 6),
  -- Chandelure - Hidden Power - TM10
  (609, 60900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 7),
  -- Chandelure - Sunny Day - TM11
  (609, 60900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 8),
  -- Chandelure - Taunt - TM12
  (609, 60900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 9),
  -- Chandelure - Hyper Beam - TM15
  (609, 60900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 10),
  -- Chandelure - Protect - TM17
  (609, 60900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 11),
  -- Chandelure - Telekinesis - TM19
  (609, 60900, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 12),
  -- Chandelure - Safeguard - TM20
  (609, 60900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 13),
  -- Chandelure - Frustration - TM21
  (609, 60900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 14),
  -- Chandelure - Solar Beam - TM22
  (609, 60900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 15),
  -- Chandelure - Return - TM27
  (609, 60900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 16),
  -- Chandelure - Psychic - TM29
  (609, 60900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 17),
  -- Chandelure - Shadow Ball - TM30
  (609, 60900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 18),
  -- Chandelure - Double Team - TM32
  (609, 60900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 19),
  -- Chandelure - Flamethrower - TM35
  (609, 60900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 20),
  -- Chandelure - Fire Blast - TM38
  (609, 60900, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 21),
  -- Chandelure - Facade - TM42
  (609, 60900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 22),
  -- Chandelure - Flame Charge - TM43
  (609, 60900, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 23),
  -- Chandelure - Rest - TM44
  (609, 60900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 24),
  -- Chandelure - Attract - TM45
  (609, 60900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 25),
  -- Chandelure - Thief - TM46
  (609, 60900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 26),
  -- Chandelure - Round - TM48
  (609, 60900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 27),
  -- Chandelure - Overheat - TM50
  (609, 60900, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 28),
  -- Chandelure - Energy Ball - TM53
  (609, 60900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 29),
  -- Chandelure - Incinerate - TM59
  (609, 60900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 30),
  -- Chandelure - Will-O-Wisp - TM61
  (609, 60900, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 31),
  -- Chandelure - Embargo - TM63
  (609, 60900, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 32),
  -- Chandelure - Payback - TM66
  (609, 60900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 33),
  -- Chandelure - Giga Impact - TM68
  (609, 60900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 34),
  -- Chandelure - Flash - TM70
  (609, 60900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Chandelure - Psych Up - TM77
  (609, 60900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 36),
  -- Chandelure - Dream Eater - TM85
  (609, 60900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 37),
  -- Chandelure - Swagger - TM87
  (609, 60900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Chandelure - Substitute - TM90
  (609, 60900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Chandelure - Trick Room - TM92
  (609, 60900, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 40),
  -- Axew - Scratch - Level 1
  (610, 61000, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Axew - Leer - Level 4
  (610, 61000, 43, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Axew - Assurance - Level 7
  (610, 61000, 372, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Axew - Dragon Rage - Level 10
  (610, 61000, 82, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Axew - Dual Chop - Level 13
  (610, 61000, 530, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Axew - Scary Face - Level 16
  (610, 61000, 184, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Axew - Slash - Level 20
  (610, 61000, 163, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Axew - False Swipe - Level 24
  (610, 61000, 206, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Axew - Dragon Claw - Level 28
  (610, 61000, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Axew - Dragon Dance - Level 32
  (610, 61000, 349, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Axew - Taunt - Level 36
  (610, 61000, 269, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Axew - Dragon Pulse - Level 41
  (610, 61000, 406, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Axew - Swords Dance - Level 46
  (610, 61000, 14, 11, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Axew - Guillotine - Level 51
  (610, 61000, 12, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Axew - Outrage - Level 56
  (610, 61000, 200, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Axew - Giga Impact - Level 61
  (610, 61000, 416, 11, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Axew - Hone Claws - TM01
  (610, 61000, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Axew - Dragon Claw - TM02
  (610, 61000, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 18),
  -- Axew - Roar - TM05
  (610, 61000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Axew - Toxic - TM06
  (610, 61000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Axew - Hidden Power - TM10
  (610, 61000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Axew - Sunny Day - TM11
  (610, 61000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Axew - Taunt - TM12
  (610, 61000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Axew - Protect - TM17
  (610, 61000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Axew - Rain Dance - TM18
  (610, 61000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Axew - Frustration - TM21
  (610, 61000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Axew - Return - TM27
  (610, 61000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Axew - Dig - TM28
  (610, 61000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Axew - Double Team - TM32
  (610, 61000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Axew - Rock Tomb - TM39
  (610, 61000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Axew - Aerial Ace - TM40
  (610, 61000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Axew - Facade - TM42
  (610, 61000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Axew - Rest - TM44
  (610, 61000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Axew - Attract - TM45
  (610, 61000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Axew - Round - TM48
  (610, 61000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Axew - False Swipe - TM54
  (610, 61000, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 36),
  -- Axew - Fling - TM56
  (610, 61000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 37),
  -- Axew - Incinerate - TM59
  (610, 61000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 38),
  -- Axew - Payback - TM66
  (610, 61000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 39),
  -- Axew - Giga Impact - TM68
  (610, 61000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Axew - Swords Dance - TM75
  (610, 61000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Axew - X-Scissor - TM81
  (610, 61000, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 42),
  -- Axew - Poison Jab - TM84
  (610, 61000, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 43),
  -- Axew - Swagger - TM87
  (610, 61000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Axew - Substitute - TM90
  (610, 61000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Axew - Rock Smash - TM94
  (610, 61000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Axew - Cut - HM01
  (610, 61000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 47),
  -- Axew - Strength - HM04
  (610, 61000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 48),
  -- Axew - Counter - Egg Move
  (610, 61000, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Axew - Dragon Pulse - Egg Move
  (610, 61000, 406, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Axew - Endeavor - Egg Move
  (610, 61000, 283, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Axew - Endure - Egg Move
  (610, 61000, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Axew - Focus Energy - Egg Move
  (610, 61000, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Axew - Harden - Egg Move
  (610, 61000, 106, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Axew - Iron Tail - Egg Move
  (610, 61000, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Axew - Night Slash - Egg Move
  (610, 61000, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Axew - Razor Wind - Egg Move
  (610, 61000, 13, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Axew - Reversal - Egg Move
  (610, 61000, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Axew - Draco Meteor - Move Tutor
  (610, 61000, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 59),
  -- Fraxure - Scratch - Level 1
  (611, 61100, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fraxure - Leer - Level 1
  (611, 61100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fraxure - Assurance - Level 1
  (611, 61100, 372, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fraxure - Dragon Rage - Level 1
  (611, 61100, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fraxure - Leer - Level 4
  (611, 61100, 43, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Fraxure - Assurance - Level 7
  (611, 61100, 372, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Fraxure - Dragon Rage - Level 10
  (611, 61100, 82, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Fraxure - Dual Chop - Level 13
  (611, 61100, 530, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Fraxure - Scary Face - Level 16
  (611, 61100, 184, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Fraxure - Slash - Level 20
  (611, 61100, 163, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Fraxure - False Swipe - Level 24
  (611, 61100, 206, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Fraxure - Dragon Claw - Level 28
  (611, 61100, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Fraxure - Dragon Dance - Level 32
  (611, 61100, 349, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Fraxure - Taunt - Level 36
  (611, 61100, 269, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Fraxure - Dragon Pulse - Level 42
  (611, 61100, 406, 11, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Fraxure - Swords Dance - Level 48
  (611, 61100, 14, 11, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Fraxure - Guillotine - Level 54
  (611, 61100, 12, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Fraxure - Outrage - Level 60
  (611, 61100, 200, 11, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Fraxure - Giga Impact - Level 66
  (611, 61100, 416, 11, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Fraxure - Hone Claws - TM01
  (611, 61100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Fraxure - Dragon Claw - TM02
  (611, 61100, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 21),
  -- Fraxure - Roar - TM05
  (611, 61100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Fraxure - Toxic - TM06
  (611, 61100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Fraxure - Hidden Power - TM10
  (611, 61100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Fraxure - Sunny Day - TM11
  (611, 61100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 25),
  -- Fraxure - Taunt - TM12
  (611, 61100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Fraxure - Protect - TM17
  (611, 61100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Fraxure - Rain Dance - TM18
  (611, 61100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Fraxure - Frustration - TM21
  (611, 61100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Fraxure - Return - TM27
  (611, 61100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Fraxure - Dig - TM28
  (611, 61100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Fraxure - Double Team - TM32
  (611, 61100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Fraxure - Rock Tomb - TM39
  (611, 61100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Fraxure - Aerial Ace - TM40
  (611, 61100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Fraxure - Facade - TM42
  (611, 61100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Fraxure - Rest - TM44
  (611, 61100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Fraxure - Attract - TM45
  (611, 61100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Fraxure - Round - TM48
  (611, 61100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Fraxure - False Swipe - TM54
  (611, 61100, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 39),
  -- Fraxure - Fling - TM56
  (611, 61100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Fraxure - Incinerate - TM59
  (611, 61100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 41),
  -- Fraxure - Shadow Claw - TM65
  (611, 61100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Fraxure - Payback - TM66
  (611, 61100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Fraxure - Giga Impact - TM68
  (611, 61100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Fraxure - Swords Dance - TM75
  (611, 61100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 45),
  -- Fraxure - X-Scissor - TM81
  (611, 61100, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 46),
  -- Fraxure - Dragon Tail - TM82
  (611, 61100, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 47),
  -- Fraxure - Poison Jab - TM84
  (611, 61100, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 48),
  -- Fraxure - Swagger - TM87
  (611, 61100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Fraxure - Substitute - TM90
  (611, 61100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 50),
  -- Fraxure - Rock Smash - TM94
  (611, 61100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 51),
  -- Fraxure - Cut - HM01
  (611, 61100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 52),
  -- Fraxure - Strength - HM04
  (611, 61100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 53),
  -- Fraxure - Draco Meteor - Move Tutor
  (611, 61100, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 54),
  -- Haxorus - Scratch - Level 1
  (612, 61200, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haxorus - Leer - Level 1
  (612, 61200, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haxorus - Assurance - Level 1
  (612, 61200, 372, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haxorus - Dragon Rage - Level 1
  (612, 61200, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haxorus - Leer - Level 4
  (612, 61200, 43, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Haxorus - Assurance - Level 7
  (612, 61200, 372, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Haxorus - Dragon Rage - Level 10
  (612, 61200, 82, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Haxorus - Dual Chop - Level 13
  (612, 61200, 530, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Haxorus - Scary Face - Level 16
  (612, 61200, 184, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Haxorus - Slash - Level 20
  (612, 61200, 163, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Haxorus - False Swipe - Level 24
  (612, 61200, 206, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Haxorus - Dragon Claw - Level 28
  (612, 61200, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Haxorus - Dragon Dance - Level 32
  (612, 61200, 349, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Haxorus - Taunt - Level 36
  (612, 61200, 269, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Haxorus - Dragon Pulse - Level 42
  (612, 61200, 406, 11, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Haxorus - Swords Dance - Level 50
  (612, 61200, 14, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Haxorus - Guillotine - Level 58
  (612, 61200, 12, 11, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Haxorus - Outrage - Level 66
  (612, 61200, 200, 11, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Haxorus - Giga Impact - Level 74
  (612, 61200, 416, 11, NULL, 1, 74, NULL, NULL, NULL, 19),
  -- Haxorus - Hone Claws - TM01
  (612, 61200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Haxorus - Dragon Claw - TM02
  (612, 61200, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 21),
  -- Haxorus - Roar - TM05
  (612, 61200, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Haxorus - Toxic - TM06
  (612, 61200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Haxorus - Hidden Power - TM10
  (612, 61200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Haxorus - Sunny Day - TM11
  (612, 61200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 25),
  -- Haxorus - Taunt - TM12
  (612, 61200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Haxorus - Hyper Beam - TM15
  (612, 61200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Haxorus - Protect - TM17
  (612, 61200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Haxorus - Rain Dance - TM18
  (612, 61200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Haxorus - Frustration - TM21
  (612, 61200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Haxorus - Earthquake - TM26
  (612, 61200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 31),
  -- Haxorus - Return - TM27
  (612, 61200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Haxorus - Dig - TM28
  (612, 61200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 33),
  -- Haxorus - Brick Break - TM31
  (612, 61200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Haxorus - Double Team - TM32
  (612, 61200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Haxorus - Rock Tomb - TM39
  (612, 61200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Haxorus - Aerial Ace - TM40
  (612, 61200, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 37),
  -- Haxorus - Facade - TM42
  (612, 61200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Haxorus - Rest - TM44
  (612, 61200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Haxorus - Attract - TM45
  (612, 61200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Haxorus - Round - TM48
  (612, 61200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Haxorus - Focus Blast - TM52
  (612, 61200, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Haxorus - False Swipe - TM54
  (612, 61200, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 43),
  -- Haxorus - Fling - TM56
  (612, 61200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 44),
  -- Haxorus - Incinerate - TM59
  (612, 61200, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 45),
  -- Haxorus - Shadow Claw - TM65
  (612, 61200, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 46),
  -- Haxorus - Payback - TM66
  (612, 61200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Haxorus - Giga Impact - TM68
  (612, 61200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Haxorus - Swords Dance - TM75
  (612, 61200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 49),
  -- Haxorus - Bulldoze - TM78
  (612, 61200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Haxorus - Rock Slide - TM80
  (612, 61200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Haxorus - X-Scissor - TM81
  (612, 61200, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 52),
  -- Haxorus - Dragon Tail - TM82
  (612, 61200, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 53),
  -- Haxorus - Poison Jab - TM84
  (612, 61200, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 54),
  -- Haxorus - Grass Knot - TM86
  (612, 61200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 55),
  -- Haxorus - Swagger - TM87
  (612, 61200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Haxorus - Substitute - TM90
  (612, 61200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Haxorus - Rock Smash - TM94
  (612, 61200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Haxorus - Cut - HM01
  (612, 61200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 59),
  -- Haxorus - Surf - HM03
  (612, 61200, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 60),
  -- Haxorus - Strength - HM04
  (612, 61200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 61),
  -- Haxorus - Draco Meteor - Move Tutor
  (612, 61200, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 62),
  -- Cubchoo - Powder Snow - Level 1
  (613, 61300, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubchoo - Growl - Level 5
  (613, 61300, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cubchoo - Bide - Level 9
  (613, 61300, 117, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cubchoo - Icy Wind - Level 13
  (613, 61300, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cubchoo - Fury Swipes - Level 17
  (613, 61300, 154, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Cubchoo - Brine - Level 21
  (613, 61300, 362, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Cubchoo - Endure - Level 25
  (613, 61300, 203, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cubchoo - Charm - Level 29
  (613, 61300, 204, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cubchoo - Slash - Level 33
  (613, 61300, 163, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cubchoo - Flail - Level 36
  (613, 61300, 175, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Cubchoo - Rest - Level 41
  (613, 61300, 156, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Cubchoo - Blizzard - Level 45
  (613, 61300, 59, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Cubchoo - Hail - Level 49
  (613, 61300, 258, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cubchoo - Thrash - Level 53
  (613, 61300, 37, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Cubchoo - Sheer Cold - Level 57
  (613, 61300, 329, 11, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Cubchoo - Hone Claws - TM01
  (613, 61300, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Cubchoo - Toxic - TM06
  (613, 61300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Cubchoo - Hail - TM07
  (613, 61300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Cubchoo - Hidden Power - TM10
  (613, 61300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Cubchoo - Ice Beam - TM13
  (613, 61300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Cubchoo - Blizzard - TM14
  (613, 61300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Cubchoo - Protect - TM17
  (613, 61300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Cubchoo - Rain Dance - TM18
  (613, 61300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Cubchoo - Frustration - TM21
  (613, 61300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Cubchoo - Return - TM27
  (613, 61300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Cubchoo - Dig - TM28
  (613, 61300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Cubchoo - Double Team - TM32
  (613, 61300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Cubchoo - Rock Tomb - TM39
  (613, 61300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 28),
  -- Cubchoo - Aerial Ace - TM40
  (613, 61300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Cubchoo - Facade - TM42
  (613, 61300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Cubchoo - Rest - TM44
  (613, 61300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Cubchoo - Attract - TM45
  (613, 61300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Cubchoo - Round - TM48
  (613, 61300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Cubchoo - Echoed Voice - TM49
  (613, 61300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 34),
  -- Cubchoo - Fling - TM56
  (613, 61300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 35),
  -- Cubchoo - Shadow Claw - TM65
  (613, 61300, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 36),
  -- Cubchoo - Frost Breath - TM79
  (613, 61300, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 37),
  -- Cubchoo - Grass Knot - TM86
  (613, 61300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 38),
  -- Cubchoo - Swagger - TM87
  (613, 61300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Cubchoo - Substitute - TM90
  (613, 61300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Cubchoo - Rock Smash - TM94
  (613, 61300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 41),
  -- Cubchoo - Cut - HM01
  (613, 61300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 42),
  -- Cubchoo - Surf - HM03
  (613, 61300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 43),
  -- Cubchoo - Strength - HM04
  (613, 61300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 44),
  -- Cubchoo - Assurance - Egg Move
  (613, 61300, 372, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cubchoo - Avalanche - Egg Move
  (613, 61300, 419, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cubchoo - Encore - Egg Move
  (613, 61300, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cubchoo - Focus Punch - Egg Move
  (613, 61300, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cubchoo - Ice Punch - Egg Move
  (613, 61300, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cubchoo - Night Slash - Egg Move
  (613, 61300, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cubchoo - Sleep Talk - Egg Move
  (613, 61300, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cubchoo - Yawn - Egg Move
  (613, 61300, 281, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Beartic - Superpower - Level 1
  (614, 61400, 276, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beartic - Powder Snow - Level 1
  (614, 61400, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beartic - Growl - Level 1
  (614, 61400, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beartic - Bide - Level 1
  (614, 61400, 117, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beartic - Icy Wind - Level 1
  (614, 61400, 196, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beartic - Growl - Level 5
  (614, 61400, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Beartic - Bide - Level 9
  (614, 61400, 117, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Beartic - Icy Wind - Level 13
  (614, 61400, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Beartic - Fury Swipes - Level 17
  (614, 61400, 154, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Beartic - Brine - Level 21
  (614, 61400, 362, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Beartic - Endure - Level 25
  (614, 61400, 203, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Beartic - Swagger - Level 29
  (614, 61400, 207, 11, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Beartic - Slash - Level 33
  (614, 61400, 163, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Beartic - Flail - Level 36
  (614, 61400, 175, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Beartic - Icicle Crash - Level 37
  (614, 61400, 556, 11, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Beartic - Rest - Level 41
  (614, 61400, 156, 11, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Beartic - Blizzard - Level 45
  (614, 61400, 59, 11, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Beartic - Hail - Level 53
  (614, 61400, 258, 11, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Beartic - Thrash - Level 59
  (614, 61400, 37, 11, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Beartic - Sheer Cold - Level 66
  (614, 61400, 329, 11, NULL, 1, 66, NULL, NULL, NULL, 20),
  -- Beartic - Hone Claws - TM01
  (614, 61400, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 21),
  -- Beartic - Roar - TM05
  (614, 61400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Beartic - Toxic - TM06
  (614, 61400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Beartic - Hail - TM07
  (614, 61400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 24),
  -- Beartic - Bulk Up - TM08
  (614, 61400, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 25),
  -- Beartic - Hidden Power - TM10
  (614, 61400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 26),
  -- Beartic - Taunt - TM12
  (614, 61400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 27),
  -- Beartic - Ice Beam - TM13
  (614, 61400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 28),
  -- Beartic - Blizzard - TM14
  (614, 61400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 29),
  -- Beartic - Hyper Beam - TM15
  (614, 61400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 30),
  -- Beartic - Protect - TM17
  (614, 61400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 31),
  -- Beartic - Rain Dance - TM18
  (614, 61400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 32),
  -- Beartic - Frustration - TM21
  (614, 61400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 33),
  -- Beartic - Return - TM27
  (614, 61400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 34),
  -- Beartic - Dig - TM28
  (614, 61400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 35),
  -- Beartic - Brick Break - TM31
  (614, 61400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 36),
  -- Beartic - Double Team - TM32
  (614, 61400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 37),
  -- Beartic - Rock Tomb - TM39
  (614, 61400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Beartic - Aerial Ace - TM40
  (614, 61400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Beartic - Facade - TM42
  (614, 61400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Beartic - Rest - TM44
  (614, 61400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Beartic - Attract - TM45
  (614, 61400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 42),
  -- Beartic - Round - TM48
  (614, 61400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Beartic - Echoed Voice - TM49
  (614, 61400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 44),
  -- Beartic - Focus Blast - TM52
  (614, 61400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 45),
  -- Beartic - Fling - TM56
  (614, 61400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 46),
  -- Beartic - Shadow Claw - TM65
  (614, 61400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 47),
  -- Beartic - Giga Impact - TM68
  (614, 61400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Beartic - Stone Edge - TM71
  (614, 61400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 49),
  -- Beartic - Swords Dance - TM75
  (614, 61400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 50),
  -- Beartic - Bulldoze - TM78
  (614, 61400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 51),
  -- Beartic - Frost Breath - TM79
  (614, 61400, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 52),
  -- Beartic - Rock Slide - TM80
  (614, 61400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 53),
  -- Beartic - Grass Knot - TM86
  (614, 61400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 54),
  -- Beartic - Swagger - TM87
  (614, 61400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Beartic - Substitute - TM90
  (614, 61400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 56),
  -- Beartic - Rock Smash - TM94
  (614, 61400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 57),
  -- Beartic - Cut - HM01
  (614, 61400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 58),
  -- Beartic - Surf - HM03
  (614, 61400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 59),
  -- Beartic - Strength - HM04
  (614, 61400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 60),
  -- Beartic - Dive - HM06
  (614, 61400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 61),
  -- Cryogonal - Bind - Level 1
  (615, 61500, 20, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cryogonal - Ice Shard - Level 5
  (615, 61500, 420, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cryogonal - Sharpen - Level 9
  (615, 61500, 159, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cryogonal - Rapid Spin - Level 13
  (615, 61500, 229, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cryogonal - Icy Wind - Level 17
  (615, 61500, 196, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Cryogonal - Mist - Level 21
  (615, 61500, 54, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Cryogonal - Haze - Level 21
  (615, 61500, 114, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cryogonal - Aurora Beam - Level 25
  (615, 61500, 62, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cryogonal - Acid Armor - Level 29
  (615, 61500, 151, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cryogonal - Ice Beam - Level 33
  (615, 61500, 58, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cryogonal - Light Screen - Level 37
  (615, 61500, 113, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Cryogonal - Reflect - Level 37
  (615, 61500, 115, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Cryogonal - Slash - Level 41
  (615, 61500, 163, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Cryogonal - Confuse Ray - Level 45
  (615, 61500, 109, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Cryogonal - Recover - Level 49
  (615, 61500, 105, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Cryogonal - Solar Beam - Level 53
  (615, 61500, 76, 11, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Cryogonal - Night Slash - Level 57
  (615, 61500, 400, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Cryogonal - Sheer Cold - Level 61
  (615, 61500, 329, 11, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Cryogonal - Toxic - TM06
  (615, 61500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Cryogonal - Hail - TM07
  (615, 61500, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Cryogonal - Hidden Power - TM10
  (615, 61500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Cryogonal - Ice Beam - TM13
  (615, 61500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Cryogonal - Blizzard - TM14
  (615, 61500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Cryogonal - Hyper Beam - TM15
  (615, 61500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Cryogonal - Light Screen - TM16
  (615, 61500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Cryogonal - Protect - TM17
  (615, 61500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Cryogonal - Rain Dance - TM18
  (615, 61500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Cryogonal - Frustration - TM21
  (615, 61500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Cryogonal - Solar Beam - TM22
  (615, 61500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Cryogonal - Return - TM27
  (615, 61500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Cryogonal - Double Team - TM32
  (615, 61500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Cryogonal - Reflect - TM33
  (615, 61500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Cryogonal - Facade - TM42
  (615, 61500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Cryogonal - Rest - TM44
  (615, 61500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Cryogonal - Attract - TM45
  (615, 61500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Cryogonal - Round - TM48
  (615, 61500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Cryogonal - Acrobatics - TM62
  (615, 61500, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 37),
  -- Cryogonal - Explosion - TM64
  (615, 61500, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 38),
  -- Cryogonal - Frost Breath - TM79
  (615, 61500, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 39),
  -- Cryogonal - Poison Jab - TM84
  (615, 61500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 40),
  -- Cryogonal - Swagger - TM87
  (615, 61500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Cryogonal - Substitute - TM90
  (615, 61500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Cryogonal - Flash Cannon - TM91
  (615, 61500, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 43),
  -- Shelmet - Leech Life - Level 1
  (616, 61600, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelmet - Acid - Level 4
  (616, 61600, 51, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shelmet - Bide - Level 8
  (616, 61600, 117, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shelmet - Curse - Level 13
  (616, 61600, 174, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shelmet - Struggle Bug - Level 16
  (616, 61600, 522, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shelmet - Mega Drain - Level 20
  (616, 61600, 72, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shelmet - Yawn - Level 25
  (616, 61600, 281, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shelmet - Protect - Level 28
  (616, 61600, 182, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shelmet - Acid Armor - Level 32
  (616, 61600, 151, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shelmet - Giga Drain - Level 37
  (616, 61600, 202, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shelmet - Body Slam - Level 40
  (616, 61600, 34, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shelmet - Bug Buzz - Level 44
  (616, 61600, 405, 11, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Shelmet - Recover - Level 49
  (616, 61600, 105, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Shelmet - Guard Swap - Level 52
  (616, 61600, 385, 11, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Shelmet - Final Gambit - Level 56
  (616, 61600, 515, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Shelmet - Toxic - TM06
  (616, 61600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Shelmet - Venoshock - TM09
  (616, 61600, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 17),
  -- Shelmet - Hidden Power - TM10
  (616, 61600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Shelmet - Protect - TM17
  (616, 61600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Shelmet - Rain Dance - TM18
  (616, 61600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Shelmet - Frustration - TM21
  (616, 61600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Shelmet - Return - TM27
  (616, 61600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Shelmet - Double Team - TM32
  (616, 61600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Shelmet - Sludge Bomb - TM36
  (616, 61600, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 24),
  -- Shelmet - Facade - TM42
  (616, 61600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Shelmet - Rest - TM44
  (616, 61600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Shelmet - Attract - TM45
  (616, 61600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Shelmet - Round - TM48
  (616, 61600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Shelmet - Energy Ball - TM53
  (616, 61600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 29),
  -- Shelmet - Struggle Bug - TM76
  (616, 61600, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 30),
  -- Shelmet - Swagger - TM87
  (616, 61600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 31),
  -- Shelmet - Substitute - TM90
  (616, 61600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 32),
  -- Shelmet - Baton Pass - Egg Move
  (616, 61600, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shelmet - Double-Edge - Egg Move
  (616, 61600, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shelmet - Encore - Egg Move
  (616, 61600, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shelmet - Endure - Egg Move
  (616, 61600, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shelmet - Feint - Egg Move
  (616, 61600, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shelmet - Guard Split - Egg Move
  (616, 61600, 470, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shelmet - Mind Reader - Egg Move
  (616, 61600, 170, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shelmet - Mud-Slap - Egg Move
  (616, 61600, 189, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shelmet - Pursuit - Egg Move
  (616, 61600, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shelmet - Spikes - Egg Move
  (616, 61600, 191, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Accelgor - Leech Life - Level 1
  (617, 61700, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Accelgor - Acid Spray - Level 1
  (617, 61700, 491, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Accelgor - Double Team - Level 1
  (617, 61700, 104, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Accelgor - Quick Attack - Level 1
  (617, 61700, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Accelgor - Acid Spray - Level 4
  (617, 61700, 491, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Accelgor - Double Team - Level 8
  (617, 61700, 104, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Accelgor - Quick Attack - Level 13
  (617, 61700, 98, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Accelgor - Struggle Bug - Level 16
  (617, 61700, 522, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Accelgor - Mega Drain - Level 20
  (617, 61700, 72, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Accelgor - Swift - Level 25
  (617, 61700, 129, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Accelgor - Me First - Level 28
  (617, 61700, 382, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Accelgor - Agility - Level 32
  (617, 61700, 97, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Accelgor - Giga Drain - Level 37
  (617, 61700, 202, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Accelgor - U-turn - Level 40
  (617, 61700, 369, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Accelgor - Bug Buzz - Level 44
  (617, 61700, 405, 11, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Accelgor - Recover - Level 49
  (617, 61700, 105, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Accelgor - Power Swap - Level 52
  (617, 61700, 384, 11, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Accelgor - Final Gambit - Level 56
  (617, 61700, 515, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Accelgor - Toxic - TM06
  (617, 61700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Accelgor - Venoshock - TM09
  (617, 61700, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 20),
  -- Accelgor - Hidden Power - TM10
  (617, 61700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Accelgor - Hyper Beam - TM15
  (617, 61700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Accelgor - Protect - TM17
  (617, 61700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Accelgor - Rain Dance - TM18
  (617, 61700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Accelgor - Frustration - TM21
  (617, 61700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Accelgor - Return - TM27
  (617, 61700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Accelgor - Double Team - TM32
  (617, 61700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Accelgor - Sludge Bomb - TM36
  (617, 61700, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 28),
  -- Accelgor - Sandstorm - TM37
  (617, 61700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Accelgor - Facade - TM42
  (617, 61700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Accelgor - Rest - TM44
  (617, 61700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Accelgor - Attract - TM45
  (617, 61700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Accelgor - Round - TM48
  (617, 61700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Accelgor - Focus Blast - TM52
  (617, 61700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 34),
  -- Accelgor - Energy Ball - TM53
  (617, 61700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 35),
  -- Accelgor - Giga Impact - TM68
  (617, 61700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Accelgor - Struggle Bug - TM76
  (617, 61700, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 37),
  -- Accelgor - Swagger - TM87
  (617, 61700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Accelgor - U-turn - TM89
  (617, 61700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 39),
  -- Accelgor - Substitute - TM90
  (617, 61700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Stunfisk - Mud-Slap - Level 1
  (618, 61800, 189, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunfisk - Mud Sport - Level 1
  (618, 61800, 300, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunfisk - Bide - Level 5
  (618, 61800, 117, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Stunfisk - Thunder Shock - Level 9
  (618, 61800, 84, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Stunfisk - Mud Shot - Level 13
  (618, 61800, 341, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Stunfisk - Camouflage - Level 17
  (618, 61800, 293, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Stunfisk - Mud Bomb - Level 21
  (618, 61800, 426, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Stunfisk - Discharge - Level 25
  (618, 61800, 435, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Stunfisk - Endure - Level 30
  (618, 61800, 203, 11, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Stunfisk - Bounce - Level 35
  (618, 61800, 340, 11, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Stunfisk - Muddy Water - Level 40
  (618, 61800, 330, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Stunfisk - Thunderbolt - Level 45
  (618, 61800, 85, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Stunfisk - Revenge - Level 50
  (618, 61800, 279, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Stunfisk - Flail - Level 55
  (618, 61800, 175, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Stunfisk - Fissure - Level 61
  (618, 61800, 90, 11, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Stunfisk - Toxic - TM06
  (618, 61800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Stunfisk - Hidden Power - TM10
  (618, 61800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Stunfisk - Protect - TM17
  (618, 61800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Stunfisk - Rain Dance - TM18
  (618, 61800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 19),
  -- Stunfisk - Frustration - TM21
  (618, 61800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Stunfisk - Thunderbolt - TM24
  (618, 61800, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 21),
  -- Stunfisk - Thunder - TM25
  (618, 61800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 22),
  -- Stunfisk - Earthquake - TM26
  (618, 61800, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Stunfisk - Return - TM27
  (618, 61800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Stunfisk - Dig - TM28
  (618, 61800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Stunfisk - Double Team - TM32
  (618, 61800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Stunfisk - Sludge Wave - TM34
  (618, 61800, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 27),
  -- Stunfisk - Sludge Bomb - TM36
  (618, 61800, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 28),
  -- Stunfisk - Sandstorm - TM37
  (618, 61800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Stunfisk - Rock Tomb - TM39
  (618, 61800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Stunfisk - Facade - TM42
  (618, 61800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Stunfisk - Rest - TM44
  (618, 61800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Stunfisk - Attract - TM45
  (618, 61800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Stunfisk - Round - TM48
  (618, 61800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Stunfisk - Scald - TM55
  (618, 61800, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 35),
  -- Stunfisk - Payback - TM66
  (618, 61800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 36),
  -- Stunfisk - Flash - TM70
  (618, 61800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Stunfisk - Stone Edge - TM71
  (618, 61800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 38),
  -- Stunfisk - Thunder Wave - TM73
  (618, 61800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 39),
  -- Stunfisk - Bulldoze - TM78
  (618, 61800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Stunfisk - Rock Slide - TM80
  (618, 61800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Stunfisk - Swagger - TM87
  (618, 61800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Stunfisk - Substitute - TM90
  (618, 61800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Stunfisk - Surf - HM03
  (618, 61800, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 44),
  -- Stunfisk - Astonish - Egg Move
  (618, 61800, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Stunfisk - Curse - Egg Move
  (618, 61800, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Stunfisk - Earth Power - Egg Move
  (618, 61800, 414, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Stunfisk - Pain Split - Egg Move
  (618, 61800, 220, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Stunfisk - Shock Wave - Egg Move
  (618, 61800, 351, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stunfisk - Sleep Talk - Egg Move
  (618, 61800, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunfisk - Spark - Egg Move
  (618, 61800, 209, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunfisk - Spite - Egg Move
  (618, 61800, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunfisk - Yawn - Egg Move
  (618, 61800, 281, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mienfoo - Pound - Level 1
  (619, 61900, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienfoo - Meditate - Level 5
  (619, 61900, 96, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mienfoo - Detect - Level 9
  (619, 61900, 197, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mienfoo - Fake Out - Level 13
  (619, 61900, 252, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Mienfoo - Double Slap - Level 17
  (619, 61900, 3, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Mienfoo - Swift - Level 21
  (619, 61900, 129, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Mienfoo - Calm Mind - Level 25
  (619, 61900, 347, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mienfoo - Force Palm - Level 29
  (619, 61900, 395, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Mienfoo - Drain Punch - Level 33
  (619, 61900, 409, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mienfoo - Jump Kick - Level 37
  (619, 61900, 26, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mienfoo - U-turn - Level 41
  (619, 61900, 369, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mienfoo - Quick Guard - Level 45
  (619, 61900, 501, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Mienfoo - Bounce - Level 49
  (619, 61900, 340, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Mienfoo - High Jump Kick - Level 53
  (619, 61900, 136, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Mienfoo - Reversal - Level 57
  (619, 61900, 179, 11, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Mienfoo - Aura Sphere - Level 61
  (619, 61900, 396, 11, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Mienfoo - Calm Mind - TM04
  (619, 61900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 17),
  -- Mienfoo - Toxic - TM06
  (619, 61900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Mienfoo - Bulk Up - TM08
  (619, 61900, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Mienfoo - Hidden Power - TM10
  (619, 61900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Mienfoo - Sunny Day - TM11
  (619, 61900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Mienfoo - Taunt - TM12
  (619, 61900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Mienfoo - Protect - TM17
  (619, 61900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Mienfoo - Rain Dance - TM18
  (619, 61900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Mienfoo - Frustration - TM21
  (619, 61900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Mienfoo - Return - TM27
  (619, 61900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Mienfoo - Dig - TM28
  (619, 61900, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Mienfoo - Brick Break - TM31
  (619, 61900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Mienfoo - Double Team - TM32
  (619, 61900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Mienfoo - Reflect - TM33
  (619, 61900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Mienfoo - Rock Tomb - TM39
  (619, 61900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Mienfoo - Aerial Ace - TM40
  (619, 61900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Mienfoo - Facade - TM42
  (619, 61900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Mienfoo - Rest - TM44
  (619, 61900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Mienfoo - Attract - TM45
  (619, 61900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Mienfoo - Low Sweep - TM47
  (619, 61900, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 36),
  -- Mienfoo - Round - TM48
  (619, 61900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Mienfoo - Focus Blast - TM52
  (619, 61900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 38),
  -- Mienfoo - Fling - TM56
  (619, 61900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Mienfoo - Acrobatics - TM62
  (619, 61900, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 40),
  -- Mienfoo - Payback - TM66
  (619, 61900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 41),
  -- Mienfoo - Retaliate - TM67
  (619, 61900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 42),
  -- Mienfoo - Stone Edge - TM71
  (619, 61900, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Mienfoo - Swords Dance - TM75
  (619, 61900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 44),
  -- Mienfoo - Psych Up - TM77
  (619, 61900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 45),
  -- Mienfoo - Rock Slide - TM80
  (619, 61900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Mienfoo - Work Up - TM83
  (619, 61900, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 47),
  -- Mienfoo - Poison Jab - TM84
  (619, 61900, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 48),
  -- Mienfoo - Grass Knot - TM86
  (619, 61900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 49),
  -- Mienfoo - Swagger - TM87
  (619, 61900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Mienfoo - U-turn - TM89
  (619, 61900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 51),
  -- Mienfoo - Substitute - TM90
  (619, 61900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Mienfoo - Rock Smash - TM94
  (619, 61900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Mienfoo - Strength - HM04
  (619, 61900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Mienfoo - Baton Pass - Egg Move
  (619, 61900, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mienfoo - Endure - Egg Move
  (619, 61900, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mienfoo - Feint - Egg Move
  (619, 61900, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mienfoo - Knock Off - Egg Move
  (619, 61900, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mienfoo - Low Kick - Egg Move
  (619, 61900, 67, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mienfoo - Me First - Egg Move
  (619, 61900, 382, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mienfoo - Smelling Salts - Egg Move
  (619, 61900, 265, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mienfoo - Vital Throw - Egg Move
  (619, 61900, 233, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mienshao - Pound - Level 1
  (620, 62000, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienshao - Meditate - Level 1
  (620, 62000, 96, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienshao - Detect - Level 1
  (620, 62000, 197, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mienshao - Fake Out - Level 1
  (620, 62000, 252, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mienshao - Meditate - Level 5
  (620, 62000, 96, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mienshao - Detect - Level 9
  (620, 62000, 197, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mienshao - Fake Out - Level 13
  (620, 62000, 252, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mienshao - Double Slap - Level 17
  (620, 62000, 3, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mienshao - Swift - Level 21
  (620, 62000, 129, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mienshao - Calm Mind - Level 25
  (620, 62000, 347, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mienshao - Force Palm - Level 29
  (620, 62000, 395, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Mienshao - Drain Punch - Level 33
  (620, 62000, 409, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Mienshao - Jump Kick - Level 37
  (620, 62000, 26, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Mienshao - U-turn - Level 41
  (620, 62000, 369, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Mienshao - Wide Guard - Level 45
  (620, 62000, 469, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Mienshao - Bounce - Level 49
  (620, 62000, 340, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Mienshao - High Jump Kick - Level 56
  (620, 62000, 136, 11, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Mienshao - Reversal - Level 63
  (620, 62000, 179, 11, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Mienshao - Aura Sphere - Level 70
  (620, 62000, 396, 11, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Mienshao - Calm Mind - TM04
  (620, 62000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 20),
  -- Mienshao - Toxic - TM06
  (620, 62000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Mienshao - Bulk Up - TM08
  (620, 62000, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 22),
  -- Mienshao - Hidden Power - TM10
  (620, 62000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Mienshao - Sunny Day - TM11
  (620, 62000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Mienshao - Taunt - TM12
  (620, 62000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 25),
  -- Mienshao - Hyper Beam - TM15
  (620, 62000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Mienshao - Protect - TM17
  (620, 62000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Mienshao - Rain Dance - TM18
  (620, 62000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Mienshao - Frustration - TM21
  (620, 62000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Mienshao - Return - TM27
  (620, 62000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Mienshao - Dig - TM28
  (620, 62000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Mienshao - Brick Break - TM31
  (620, 62000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 32),
  -- Mienshao - Double Team - TM32
  (620, 62000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Mienshao - Reflect - TM33
  (620, 62000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Mienshao - Rock Tomb - TM39
  (620, 62000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Mienshao - Aerial Ace - TM40
  (620, 62000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 36),
  -- Mienshao - Facade - TM42
  (620, 62000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Mienshao - Rest - TM44
  (620, 62000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Mienshao - Attract - TM45
  (620, 62000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Mienshao - Low Sweep - TM47
  (620, 62000, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 40),
  -- Mienshao - Round - TM48
  (620, 62000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Mienshao - Focus Blast - TM52
  (620, 62000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Mienshao - Fling - TM56
  (620, 62000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Mienshao - Acrobatics - TM62
  (620, 62000, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 44),
  -- Mienshao - Payback - TM66
  (620, 62000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 45),
  -- Mienshao - Retaliate - TM67
  (620, 62000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 46),
  -- Mienshao - Giga Impact - TM68
  (620, 62000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Mienshao - Stone Edge - TM71
  (620, 62000, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 48),
  -- Mienshao - Swords Dance - TM75
  (620, 62000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 49),
  -- Mienshao - Psych Up - TM77
  (620, 62000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 50),
  -- Mienshao - Rock Slide - TM80
  (620, 62000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Mienshao - Work Up - TM83
  (620, 62000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 52),
  -- Mienshao - Poison Jab - TM84
  (620, 62000, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 53),
  -- Mienshao - Grass Knot - TM86
  (620, 62000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 54),
  -- Mienshao - Swagger - TM87
  (620, 62000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Mienshao - U-turn - TM89
  (620, 62000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 56),
  -- Mienshao - Substitute - TM90
  (620, 62000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Mienshao - Rock Smash - TM94
  (620, 62000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Mienshao - Strength - HM04
  (620, 62000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 59),
  -- Druddigon - Leer - Level 1
  (621, 62100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Druddigon - Scratch - Level 1
  (621, 62100, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Druddigon - Hone Claws - Level 5
  (621, 62100, 468, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Druddigon - Bite - Level 9
  (621, 62100, 44, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Druddigon - Scary Face - Level 13
  (621, 62100, 184, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Druddigon - Dragon Rage - Level 18
  (621, 62100, 82, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Druddigon - Slash - Level 21
  (621, 62100, 163, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Druddigon - Crunch - Level 25
  (621, 62100, 242, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Druddigon - Dragon Claw - Level 27
  (621, 62100, 337, 11, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Druddigon - Chip Away - Level 31
  (621, 62100, 498, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Druddigon - Revenge - Level 35
  (621, 62100, 279, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Druddigon - Night Slash - Level 40
  (621, 62100, 400, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Druddigon - Dragon Tail - Level 45
  (621, 62100, 525, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Druddigon - Rock Climb - Level 49
  (621, 62100, 431, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Druddigon - Superpower - Level 55
  (621, 62100, 276, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Druddigon - Outrage - Level 62
  (621, 62100, 200, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Druddigon - Hone Claws - TM01
  (621, 62100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Druddigon - Dragon Claw - TM02
  (621, 62100, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 18),
  -- Druddigon - Roar - TM05
  (621, 62100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Druddigon - Toxic - TM06
  (621, 62100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Druddigon - Hidden Power - TM10
  (621, 62100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Druddigon - Sunny Day - TM11
  (621, 62100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Druddigon - Taunt - TM12
  (621, 62100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Druddigon - Hyper Beam - TM15
  (621, 62100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Druddigon - Protect - TM17
  (621, 62100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Druddigon - Rain Dance - TM18
  (621, 62100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Druddigon - Frustration - TM21
  (621, 62100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Druddigon - Smack Down - TM23
  (621, 62100, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 28),
  -- Druddigon - Earthquake - TM26
  (621, 62100, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Druddigon - Return - TM27
  (621, 62100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Druddigon - Dig - TM28
  (621, 62100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Druddigon - Double Team - TM32
  (621, 62100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Druddigon - Flamethrower - TM35
  (621, 62100, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 33),
  -- Druddigon - Sludge Bomb - TM36
  (621, 62100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 34),
  -- Druddigon - Rock Tomb - TM39
  (621, 62100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Druddigon - Aerial Ace - TM40
  (621, 62100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 36),
  -- Druddigon - Torment - TM41
  (621, 62100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 37),
  -- Druddigon - Facade - TM42
  (621, 62100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Druddigon - Rest - TM44
  (621, 62100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Druddigon - Attract - TM45
  (621, 62100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Druddigon - Round - TM48
  (621, 62100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Druddigon - Focus Blast - TM52
  (621, 62100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Druddigon - Fling - TM56
  (621, 62100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Druddigon - Charge Beam - TM57
  (621, 62100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 44),
  -- Druddigon - Incinerate - TM59
  (621, 62100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 45),
  -- Druddigon - Shadow Claw - TM65
  (621, 62100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 46),
  -- Druddigon - Payback - TM66
  (621, 62100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Druddigon - Retaliate - TM67
  (621, 62100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Druddigon - Giga Impact - TM68
  (621, 62100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Druddigon - Bulldoze - TM78
  (621, 62100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Druddigon - Rock Slide - TM80
  (621, 62100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Druddigon - Dragon Tail - TM82
  (621, 62100, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 52),
  -- Druddigon - Swagger - TM87
  (621, 62100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 53),
  -- Druddigon - Substitute - TM90
  (621, 62100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 54),
  -- Druddigon - Flash Cannon - TM91
  (621, 62100, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 55),
  -- Druddigon - Rock Smash - TM94
  (621, 62100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 56),
  -- Druddigon - Snarl - TM95
  (621, 62100, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 57),
  -- Druddigon - Cut - HM01
  (621, 62100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 58),
  -- Druddigon - Surf - HM03
  (621, 62100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 59),
  -- Druddigon - Strength - HM04
  (621, 62100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 60),
  -- Druddigon - Crush Claw - Egg Move
  (621, 62100, 306, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Druddigon - Feint Attack - Egg Move
  (621, 62100, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Druddigon - Fire Fang - Egg Move
  (621, 62100, 424, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Druddigon - Glare - Egg Move
  (621, 62100, 137, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Druddigon - Iron Tail - Egg Move
  (621, 62100, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Druddigon - Metal Claw - Egg Move
  (621, 62100, 232, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Druddigon - Poison Tail - Egg Move
  (621, 62100, 342, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Druddigon - Pursuit - Egg Move
  (621, 62100, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Druddigon - Thunder Fang - Egg Move
  (621, 62100, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Druddigon - Snatch - Egg Move
  (621, 62100, 289, 11, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Druddigon - Sucker Punch - Egg Move
  (621, 62100, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Druddigon - Draco Meteor - Move Tutor
  (621, 62100, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 72),
  -- Golett - Pound - Level 1
  (622, 62200, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golett - Astonish - Level 1
  (622, 62200, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golett - Defense Curl - Level 1
  (622, 62200, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golett - Mud-Slap - Level 5
  (622, 62200, 189, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Golett - Rollout - Level 9
  (622, 62200, 205, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Golett - Shadow Punch - Level 13
  (622, 62200, 325, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Golett - Iron Defense - Level 17
  (622, 62200, 334, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Golett - Mega Punch - Level 21
  (622, 62200, 5, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golett - Magnitude - Level 25
  (622, 62200, 222, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Golett - Dynamic Punch - Level 30
  (622, 62200, 223, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Golett - Night Shade - Level 35
  (622, 62200, 101, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Golett - Curse - Level 40
  (622, 62200, 174, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Golett - Earthquake - Level 45
  (622, 62200, 89, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Golett - Hammer Arm - Level 50
  (622, 62200, 359, 11, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Golett - Focus Punch - Level 55
  (622, 62200, 264, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Golett - Toxic - TM06
  (622, 62200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Golett - Hidden Power - TM10
  (622, 62200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Golett - Ice Beam - TM13
  (622, 62200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Golett - Protect - TM17
  (622, 62200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Golett - Rain Dance - TM18
  (622, 62200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Golett - Telekinesis - TM19
  (622, 62200, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Golett - Safeguard - TM20
  (622, 62200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Golett - Frustration - TM21
  (622, 62200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Golett - Earthquake - TM26
  (622, 62200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 24),
  -- Golett - Return - TM27
  (622, 62200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Golett - Psychic - TM29
  (622, 62200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 26),
  -- Golett - Shadow Ball - TM30
  (622, 62200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Golett - Brick Break - TM31
  (622, 62200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Golett - Double Team - TM32
  (622, 62200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Golett - Rock Tomb - TM39
  (622, 62200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Golett - Facade - TM42
  (622, 62200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Golett - Rest - TM44
  (622, 62200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Golett - Thief - TM46
  (622, 62200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Golett - Low Sweep - TM47
  (622, 62200, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 34),
  -- Golett - Round - TM48
  (622, 62200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Golett - Focus Blast - TM52
  (622, 62200, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 36),
  -- Golett - Fling - TM56
  (622, 62200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 37),
  -- Golett - Rock Polish - TM69
  (622, 62200, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 38),
  -- Golett - Flash - TM70
  (622, 62200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Golett - Gyro Ball - TM74
  (622, 62200, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 40),
  -- Golett - Bulldoze - TM78
  (622, 62200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 41),
  -- Golett - Rock Slide - TM80
  (622, 62200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 42),
  -- Golett - Grass Knot - TM86
  (622, 62200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 43),
  -- Golett - Swagger - TM87
  (622, 62200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Golett - Substitute - TM90
  (622, 62200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Golett - Rock Smash - TM94
  (622, 62200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Golett - Strength - HM04
  (622, 62200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 47),
  -- Golurk - Pound - Level 1
  (623, 62300, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golurk - Astonish - Level 1
  (623, 62300, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golurk - Defense Curl - Level 1
  (623, 62300, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golurk - Mud-Slap - Level 1
  (623, 62300, 189, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golurk - Mud-Slap - Level 5
  (623, 62300, 189, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Golurk - Rollout - Level 9
  (623, 62300, 205, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Golurk - Shadow Punch - Level 13
  (623, 62300, 325, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Golurk - Iron Defense - Level 17
  (623, 62300, 334, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Golurk - Mega Punch - Level 21
  (623, 62300, 5, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Golurk - Magnitude - Level 25
  (623, 62300, 222, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Golurk - Dynamic Punch - Level 30
  (623, 62300, 223, 11, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Golurk - Night Shade - Level 35
  (623, 62300, 101, 11, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Golurk - Curse - Level 40
  (623, 62300, 174, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Golurk - Heavy Slam - Level 43
  (623, 62300, 484, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Golurk - Earthquake - Level 50
  (623, 62300, 89, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Golurk - Hammer Arm - Level 60
  (623, 62300, 359, 11, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Golurk - Focus Punch - Level 70
  (623, 62300, 264, 11, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Golurk - Toxic - TM06
  (623, 62300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Golurk - Hidden Power - TM10
  (623, 62300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Golurk - Ice Beam - TM13
  (623, 62300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Golurk - Hyper Beam - TM15
  (623, 62300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Golurk - Protect - TM17
  (623, 62300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Golurk - Rain Dance - TM18
  (623, 62300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Golurk - Telekinesis - TM19
  (623, 62300, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Golurk - Safeguard - TM20
  (623, 62300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Golurk - Frustration - TM21
  (623, 62300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Golurk - Solar Beam - TM22
  (623, 62300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Golurk - Thunderbolt - TM24
  (623, 62300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Golurk - Earthquake - TM26
  (623, 62300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Golurk - Return - TM27
  (623, 62300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Golurk - Psychic - TM29
  (623, 62300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Golurk - Shadow Ball - TM30
  (623, 62300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Golurk - Brick Break - TM31
  (623, 62300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 33),
  -- Golurk - Double Team - TM32
  (623, 62300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Golurk - Rock Tomb - TM39
  (623, 62300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Golurk - Facade - TM42
  (623, 62300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Golurk - Rest - TM44
  (623, 62300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Golurk - Thief - TM46
  (623, 62300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Golurk - Low Sweep - TM47
  (623, 62300, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 39),
  -- Golurk - Round - TM48
  (623, 62300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Golurk - Focus Blast - TM52
  (623, 62300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 41),
  -- Golurk - Fling - TM56
  (623, 62300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Golurk - Charge Beam - TM57
  (623, 62300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Golurk - Giga Impact - TM68
  (623, 62300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Golurk - Rock Polish - TM69
  (623, 62300, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 45),
  -- Golurk - Flash - TM70
  (623, 62300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 46),
  -- Golurk - Stone Edge - TM71
  (623, 62300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 47),
  -- Golurk - Gyro Ball - TM74
  (623, 62300, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 48),
  -- Golurk - Bulldoze - TM78
  (623, 62300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 49),
  -- Golurk - Rock Slide - TM80
  (623, 62300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Golurk - Grass Knot - TM86
  (623, 62300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 51),
  -- Golurk - Swagger - TM87
  (623, 62300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Golurk - Substitute - TM90
  (623, 62300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Golurk - Flash Cannon - TM91
  (623, 62300, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 54),
  -- Golurk - Rock Smash - TM94
  (623, 62300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Golurk - Fly - HM02
  (623, 62300, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 56),
  -- Golurk - Strength - HM04
  (623, 62300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 57),
  -- Pawniard - Scratch - Level 1
  (624, 62400, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawniard - Leer - Level 6
  (624, 62400, 43, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Pawniard - Fury Cutter - Level 9
  (624, 62400, 210, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pawniard - Torment - Level 14
  (624, 62400, 259, 11, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Pawniard - Feint Attack - Level 17
  (624, 62400, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pawniard - Scary Face - Level 22
  (624, 62400, 184, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Pawniard - Metal Claw - Level 25
  (624, 62400, 232, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pawniard - Slash - Level 30
  (624, 62400, 163, 11, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pawniard - Assurance - Level 33
  (624, 62400, 372, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pawniard - Metal Sound - Level 38
  (624, 62400, 319, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Pawniard - Embargo - Level 41
  (624, 62400, 373, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Pawniard - Iron Defense - Level 46
  (624, 62400, 334, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Pawniard - Night Slash - Level 49
  (624, 62400, 400, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Pawniard - Iron Head - Level 54
  (624, 62400, 442, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pawniard - Swords Dance - Level 57
  (624, 62400, 14, 11, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Pawniard - Guillotine - Level 62
  (624, 62400, 12, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Pawniard - Hone Claws - TM01
  (624, 62400, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Pawniard - Toxic - TM06
  (624, 62400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Pawniard - Hidden Power - TM10
  (624, 62400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Pawniard - Taunt - TM12
  (624, 62400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Pawniard - Protect - TM17
  (624, 62400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Pawniard - Rain Dance - TM18
  (624, 62400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Pawniard - Frustration - TM21
  (624, 62400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Pawniard - Return - TM27
  (624, 62400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Pawniard - Dig - TM28
  (624, 62400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Pawniard - Brick Break - TM31
  (624, 62400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 26),
  -- Pawniard - Double Team - TM32
  (624, 62400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Pawniard - Sandstorm - TM37
  (624, 62400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 28),
  -- Pawniard - Rock Tomb - TM39
  (624, 62400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 29),
  -- Pawniard - Aerial Ace - TM40
  (624, 62400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Pawniard - Torment - TM41
  (624, 62400, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 31),
  -- Pawniard - Facade - TM42
  (624, 62400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Pawniard - Rest - TM44
  (624, 62400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Pawniard - Attract - TM45
  (624, 62400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Pawniard - Thief - TM46
  (624, 62400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Pawniard - Low Sweep - TM47
  (624, 62400, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 36),
  -- Pawniard - Round - TM48
  (624, 62400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Pawniard - False Swipe - TM54
  (624, 62400, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 38),
  -- Pawniard - Fling - TM56
  (624, 62400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Pawniard - Embargo - TM63
  (624, 62400, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 40),
  -- Pawniard - Shadow Claw - TM65
  (624, 62400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 41),
  -- Pawniard - Payback - TM66
  (624, 62400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 42),
  -- Pawniard - Retaliate - TM67
  (624, 62400, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 43),
  -- Pawniard - Rock Polish - TM69
  (624, 62400, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 44),
  -- Pawniard - Thunder Wave - TM73
  (624, 62400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Pawniard - Swords Dance - TM75
  (624, 62400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 46),
  -- Pawniard - X-Scissor - TM81
  (624, 62400, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 47),
  -- Pawniard - Poison Jab - TM84
  (624, 62400, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 48),
  -- Pawniard - Grass Knot - TM86
  (624, 62400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 49),
  -- Pawniard - Swagger - TM87
  (624, 62400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Pawniard - Substitute - TM90
  (624, 62400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Pawniard - Rock Smash - TM94
  (624, 62400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 52),
  -- Pawniard - Snarl - TM95
  (624, 62400, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 53),
  -- Pawniard - Cut - HM01
  (624, 62400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Pawniard - Headbutt - Egg Move
  (624, 62400, 29, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pawniard - Mean Look - Egg Move
  (624, 62400, 212, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pawniard - Psycho Cut - Egg Move
  (624, 62400, 427, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pawniard - Pursuit - Egg Move
  (624, 62400, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pawniard - Revenge - Egg Move
  (624, 62400, 279, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pawniard - Stealth Rock - Egg Move
  (624, 62400, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pawniard - Sucker Punch - Egg Move
  (624, 62400, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bisharp - Metal Burst - Level 1
  (625, 62500, 368, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bisharp - Scratch - Level 1
  (625, 62500, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bisharp - Leer - Level 1
  (625, 62500, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bisharp - Fury Cutter - Level 1
  (625, 62500, 210, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bisharp - Torment - Level 1
  (625, 62500, 259, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bisharp - Leer - Level 6
  (625, 62500, 43, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Bisharp - Fury Cutter - Level 9
  (625, 62500, 210, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Bisharp - Torment - Level 14
  (625, 62500, 259, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Bisharp - Feint Attack - Level 17
  (625, 62500, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Bisharp - Scary Face - Level 22
  (625, 62500, 184, 11, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Bisharp - Metal Claw - Level 25
  (625, 62500, 232, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Bisharp - Slash - Level 30
  (625, 62500, 163, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Bisharp - Assurance - Level 33
  (625, 62500, 372, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bisharp - Metal Sound - Level 38
  (625, 62500, 319, 11, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Bisharp - Embargo - Level 41
  (625, 62500, 373, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Bisharp - Iron Defense - Level 46
  (625, 62500, 334, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Bisharp - Night Slash - Level 49
  (625, 62500, 400, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Bisharp - Iron Head - Level 57
  (625, 62500, 442, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Bisharp - Swords Dance - Level 63
  (625, 62500, 14, 11, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Bisharp - Guillotine - Level 71
  (625, 62500, 12, 11, NULL, 1, 71, NULL, NULL, NULL, 20),
  -- Bisharp - Hone Claws - TM01
  (625, 62500, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 21),
  -- Bisharp - Toxic - TM06
  (625, 62500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Bisharp - Hidden Power - TM10
  (625, 62500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Bisharp - Taunt - TM12
  (625, 62500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Bisharp - Hyper Beam - TM15
  (625, 62500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Bisharp - Protect - TM17
  (625, 62500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Bisharp - Rain Dance - TM18
  (625, 62500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Bisharp - Frustration - TM21
  (625, 62500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Bisharp - Return - TM27
  (625, 62500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Bisharp - Dig - TM28
  (625, 62500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Bisharp - Brick Break - TM31
  (625, 62500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 31),
  -- Bisharp - Double Team - TM32
  (625, 62500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Bisharp - Sandstorm - TM37
  (625, 62500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 33),
  -- Bisharp - Rock Tomb - TM39
  (625, 62500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Bisharp - Aerial Ace - TM40
  (625, 62500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 35),
  -- Bisharp - Torment - TM41
  (625, 62500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 36),
  -- Bisharp - Facade - TM42
  (625, 62500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Bisharp - Rest - TM44
  (625, 62500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Bisharp - Attract - TM45
  (625, 62500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Bisharp - Thief - TM46
  (625, 62500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 40),
  -- Bisharp - Low Sweep - TM47
  (625, 62500, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 41),
  -- Bisharp - Round - TM48
  (625, 62500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Bisharp - Focus Blast - TM52
  (625, 62500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 43),
  -- Bisharp - False Swipe - TM54
  (625, 62500, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 44),
  -- Bisharp - Fling - TM56
  (625, 62500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Bisharp - Embargo - TM63
  (625, 62500, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Bisharp - Shadow Claw - TM65
  (625, 62500, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 47),
  -- Bisharp - Payback - TM66
  (625, 62500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 48),
  -- Bisharp - Retaliate - TM67
  (625, 62500, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 49),
  -- Bisharp - Giga Impact - TM68
  (625, 62500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Bisharp - Rock Polish - TM69
  (625, 62500, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 51),
  -- Bisharp - Stone Edge - TM71
  (625, 62500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 52),
  -- Bisharp - Thunder Wave - TM73
  (625, 62500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 53),
  -- Bisharp - Swords Dance - TM75
  (625, 62500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 54),
  -- Bisharp - X-Scissor - TM81
  (625, 62500, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 55),
  -- Bisharp - Poison Jab - TM84
  (625, 62500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 56),
  -- Bisharp - Grass Knot - TM86
  (625, 62500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 57),
  -- Bisharp - Swagger - TM87
  (625, 62500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 58),
  -- Bisharp - Substitute - TM90
  (625, 62500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 59),
  -- Bisharp - Rock Smash - TM94
  (625, 62500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 60),
  -- Bisharp - Snarl - TM95
  (625, 62500, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 61),
  -- Bisharp - Cut - HM01
  (625, 62500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 62),
  -- Bouffalant - Pursuit - Level 1
  (626, 62600, 228, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bouffalant - Leer - Level 1
  (626, 62600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bouffalant - Rage - Level 6
  (626, 62600, 99, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Bouffalant - Fury Attack - Level 11
  (626, 62600, 31, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Bouffalant - Horn Attack - Level 16
  (626, 62600, 30, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Bouffalant - Scary Face - Level 21
  (626, 62600, 184, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bouffalant - Revenge - Level 26
  (626, 62600, 279, 11, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Bouffalant - Head Charge - Level 31
  (626, 62600, 543, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Bouffalant - Focus Energy - Level 36
  (626, 62600, 116, 11, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Bouffalant - Megahorn - Level 41
  (626, 62600, 224, 11, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Bouffalant - Reversal - Level 46
  (626, 62600, 179, 11, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Bouffalant - Thrash - Level 51
  (626, 62600, 37, 11, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Bouffalant - Swords Dance - Level 56
  (626, 62600, 14, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Bouffalant - Giga Impact - Level 61
  (626, 62600, 416, 11, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Bouffalant - Toxic - TM06
  (626, 62600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Bouffalant - Hidden Power - TM10
  (626, 62600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Bouffalant - Sunny Day - TM11
  (626, 62600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Bouffalant - Taunt - TM12
  (626, 62600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Bouffalant - Protect - TM17
  (626, 62600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Bouffalant - Rain Dance - TM18
  (626, 62600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Bouffalant - Frustration - TM21
  (626, 62600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Bouffalant - Earthquake - TM26
  (626, 62600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 22),
  -- Bouffalant - Return - TM27
  (626, 62600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Bouffalant - Double Team - TM32
  (626, 62600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Bouffalant - Rock Tomb - TM39
  (626, 62600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 25),
  -- Bouffalant - Aerial Ace - TM40
  (626, 62600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 26),
  -- Bouffalant - Facade - TM42
  (626, 62600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Bouffalant - Rest - TM44
  (626, 62600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Bouffalant - Attract - TM45
  (626, 62600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Bouffalant - Round - TM48
  (626, 62600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Bouffalant - Payback - TM66
  (626, 62600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 31),
  -- Bouffalant - Retaliate - TM67
  (626, 62600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 32),
  -- Bouffalant - Giga Impact - TM68
  (626, 62600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 33),
  -- Bouffalant - Stone Edge - TM71
  (626, 62600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 34),
  -- Bouffalant - Swords Dance - TM75
  (626, 62600, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 35),
  -- Bouffalant - Bulldoze - TM78
  (626, 62600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 36),
  -- Bouffalant - Rock Slide - TM80
  (626, 62600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 37),
  -- Bouffalant - Work Up - TM83
  (626, 62600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 38),
  -- Bouffalant - Poison Jab - TM84
  (626, 62600, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 39),
  -- Bouffalant - Swagger - TM87
  (626, 62600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Bouffalant - Substitute - TM90
  (626, 62600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Bouffalant - Wild Charge - TM93
  (626, 62600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 42),
  -- Bouffalant - Rock Smash - TM94
  (626, 62600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 43),
  -- Bouffalant - Cut - HM01
  (626, 62600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 44),
  -- Bouffalant - Surf - HM03
  (626, 62600, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 45),
  -- Bouffalant - Strength - HM04
  (626, 62600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 46),
  -- Bouffalant - Amnesia - Egg Move
  (626, 62600, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bouffalant - Headbutt - Egg Move
  (626, 62600, 29, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bouffalant - Iron Head - Egg Move
  (626, 62600, 442, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bouffalant - Mud Shot - Egg Move
  (626, 62600, 341, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bouffalant - Mud-Slap - Egg Move
  (626, 62600, 189, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bouffalant - Rock Climb - Egg Move
  (626, 62600, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bouffalant - Skull Bash - Egg Move
  (626, 62600, 130, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bouffalant - Stomp - Egg Move
  (626, 62600, 23, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Rufflet - Peck - Level 1
  (627, 62700, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rufflet - Leer - Level 1
  (627, 62700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rufflet - Fury Attack - Level 5
  (627, 62700, 31, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rufflet - Wing Attack - Level 10
  (627, 62700, 17, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rufflet - Hone Claws - Level 14
  (627, 62700, 468, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Rufflet - Scary Face - Level 19
  (627, 62700, 184, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rufflet - Aerial Ace - Level 23
  (627, 62700, 332, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Rufflet - Slash - Level 28
  (627, 62700, 163, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rufflet - Defog - Level 32
  (627, 62700, 432, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Rufflet - Tailwind - Level 37
  (627, 62700, 366, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Rufflet - Air Slash - Level 41
  (627, 62700, 403, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Rufflet - Crush Claw - Level 46
  (627, 62700, 306, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Rufflet - Sky Drop - Level 50
  (627, 62700, 507, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Rufflet - Whirlwind - Level 55
  (627, 62700, 18, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Rufflet - Brave Bird - Level 59
  (627, 62700, 413, 11, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Rufflet - Thrash - Level 64
  (627, 62700, 37, 11, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rufflet - Hone Claws - TM01
  (627, 62700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Rufflet - Toxic - TM06
  (627, 62700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Rufflet - Bulk Up - TM08
  (627, 62700, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Rufflet - Hidden Power - TM10
  (627, 62700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Rufflet - Sunny Day - TM11
  (627, 62700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Rufflet - Protect - TM17
  (627, 62700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Rufflet - Rain Dance - TM18
  (627, 62700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Rufflet - Frustration - TM21
  (627, 62700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Rufflet - Return - TM27
  (627, 62700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rufflet - Double Team - TM32
  (627, 62700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Rufflet - Rock Tomb - TM39
  (627, 62700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 27),
  -- Rufflet - Aerial Ace - TM40
  (627, 62700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Rufflet - Facade - TM42
  (627, 62700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rufflet - Rest - TM44
  (627, 62700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rufflet - Attract - TM45
  (627, 62700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Rufflet - Round - TM48
  (627, 62700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rufflet - Sky Drop - TM58
  (627, 62700, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 33),
  -- Rufflet - Shadow Claw - TM65
  (627, 62700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 34),
  -- Rufflet - Retaliate - TM67
  (627, 62700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 35),
  -- Rufflet - Rock Slide - TM80
  (627, 62700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 36),
  -- Rufflet - Work Up - TM83
  (627, 62700, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 37),
  -- Rufflet - Swagger - TM87
  (627, 62700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Rufflet - Pluck - TM88
  (627, 62700, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 39),
  -- Rufflet - U-turn - TM89
  (627, 62700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 40),
  -- Rufflet - Substitute - TM90
  (627, 62700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Rufflet - Rock Smash - TM94
  (627, 62700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Rufflet - Cut - HM01
  (627, 62700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 43),
  -- Rufflet - Fly - HM02
  (627, 62700, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 44),
  -- Rufflet - Strength - HM04
  (627, 62700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 45),
  -- Braviary - Peck - Level 1
  (628, 62800, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary - Leer - Level 1
  (628, 62800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braviary - Fury Attack - Level 1
  (628, 62800, 31, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braviary - Wing Attack - Level 1
  (628, 62800, 17, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Braviary - Fury Attack - Level 5
  (628, 62800, 31, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Braviary - Wing Attack - Level 10
  (628, 62800, 17, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Braviary - Hone Claws - Level 14
  (628, 62800, 468, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Braviary - Scary Face - Level 19
  (628, 62800, 184, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Braviary - Aerial Ace - Level 23
  (628, 62800, 332, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Braviary - Slash - Level 28
  (628, 62800, 163, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Braviary - Defog - Level 32
  (628, 62800, 432, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Braviary - Tailwind - Level 37
  (628, 62800, 366, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Braviary - Air Slash - Level 41
  (628, 62800, 403, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Braviary - Crush Claw - Level 46
  (628, 62800, 306, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Braviary - Sky Drop - Level 50
  (628, 62800, 507, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Braviary - Superpower - Level 51
  (628, 62800, 276, 11, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Braviary - Whirlwind - Level 57
  (628, 62800, 18, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Braviary - Brave Bird - Level 63
  (628, 62800, 413, 11, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Braviary - Thrash - Level 70
  (628, 62800, 37, 11, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Braviary - Hone Claws - TM01
  (628, 62800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Braviary - Toxic - TM06
  (628, 62800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Braviary - Bulk Up - TM08
  (628, 62800, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 22),
  -- Braviary - Hidden Power - TM10
  (628, 62800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Braviary - Sunny Day - TM11
  (628, 62800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Braviary - Hyper Beam - TM15
  (628, 62800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Braviary - Protect - TM17
  (628, 62800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Braviary - Rain Dance - TM18
  (628, 62800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Braviary - Frustration - TM21
  (628, 62800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Braviary - Return - TM27
  (628, 62800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Braviary - Double Team - TM32
  (628, 62800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Braviary - Rock Tomb - TM39
  (628, 62800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Braviary - Aerial Ace - TM40
  (628, 62800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Braviary - Facade - TM42
  (628, 62800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Braviary - Rest - TM44
  (628, 62800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Braviary - Attract - TM45
  (628, 62800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Braviary - Round - TM48
  (628, 62800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Braviary - Sky Drop - TM58
  (628, 62800, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 37),
  -- Braviary - Shadow Claw - TM65
  (628, 62800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 38),
  -- Braviary - Retaliate - TM67
  (628, 62800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 39),
  -- Braviary - Giga Impact - TM68
  (628, 62800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Braviary - Rock Slide - TM80
  (628, 62800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Braviary - Work Up - TM83
  (628, 62800, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 42),
  -- Braviary - Swagger - TM87
  (628, 62800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Braviary - Pluck - TM88
  (628, 62800, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 44),
  -- Braviary - U-turn - TM89
  (628, 62800, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 45),
  -- Braviary - Substitute - TM90
  (628, 62800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Braviary - Rock Smash - TM94
  (628, 62800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 47),
  -- Braviary - Cut - HM01
  (628, 62800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 48),
  -- Braviary - Fly - HM02
  (628, 62800, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 49),
  -- Braviary - Strength - HM04
  (628, 62800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Vullaby - Gust - Level 1
  (629, 62900, 16, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vullaby - Leer - Level 1
  (629, 62900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vullaby - Fury Attack - Level 5
  (629, 62900, 31, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Vullaby - Pluck - Level 10
  (629, 62900, 365, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vullaby - Nasty Plot - Level 14
  (629, 62900, 417, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vullaby - Flatter - Level 19
  (629, 62900, 260, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Vullaby - Feint Attack - Level 23
  (629, 62900, 185, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Vullaby - Punishment - Level 28
  (629, 62900, 386, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Vullaby - Defog - Level 32
  (629, 62900, 432, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Vullaby - Tailwind - Level 37
  (629, 62900, 366, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vullaby - Air Slash - Level 41
  (629, 62900, 403, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Vullaby - Dark Pulse - Level 46
  (629, 62900, 399, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Vullaby - Embargo - Level 50
  (629, 62900, 373, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Vullaby - Whirlwind - Level 55
  (629, 62900, 18, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Vullaby - Brave Bird - Level 59
  (629, 62900, 413, 11, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Vullaby - Mirror Move - Level 64
  (629, 62900, 119, 11, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Vullaby - Toxic - TM06
  (629, 62900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Vullaby - Hidden Power - TM10
  (629, 62900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Vullaby - Sunny Day - TM11
  (629, 62900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Vullaby - Taunt - TM12
  (629, 62900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Vullaby - Protect - TM17
  (629, 62900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Vullaby - Rain Dance - TM18
  (629, 62900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Vullaby - Frustration - TM21
  (629, 62900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Vullaby - Return - TM27
  (629, 62900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Vullaby - Shadow Ball - TM30
  (629, 62900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 25),
  -- Vullaby - Double Team - TM32
  (629, 62900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Vullaby - Rock Tomb - TM39
  (629, 62900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 27),
  -- Vullaby - Aerial Ace - TM40
  (629, 62900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Vullaby - Torment - TM41
  (629, 62900, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 29),
  -- Vullaby - Facade - TM42
  (629, 62900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Vullaby - Rest - TM44
  (629, 62900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Vullaby - Attract - TM45
  (629, 62900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Vullaby - Thief - TM46
  (629, 62900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Vullaby - Round - TM48
  (629, 62900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Vullaby - Incinerate - TM59
  (629, 62900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 35),
  -- Vullaby - Embargo - TM63
  (629, 62900, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 36),
  -- Vullaby - Payback - TM66
  (629, 62900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 37),
  -- Vullaby - Retaliate - TM67
  (629, 62900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 38),
  -- Vullaby - Psych Up - TM77
  (629, 62900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 39),
  -- Vullaby - Swagger - TM87
  (629, 62900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Vullaby - Pluck - TM88
  (629, 62900, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 41),
  -- Vullaby - U-turn - TM89
  (629, 62900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 42),
  -- Vullaby - Substitute - TM90
  (629, 62900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Vullaby - Rock Smash - TM94
  (629, 62900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Vullaby - Snarl - TM95
  (629, 62900, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 45),
  -- Vullaby - Cut - HM01
  (629, 62900, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 46),
  -- Vullaby - Fly - HM02
  (629, 62900, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 47),
  -- Vullaby - Fake Tears - Egg Move
  (629, 62900, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vullaby - Knock Off - Egg Move
  (629, 62900, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vullaby - Mean Look - Egg Move
  (629, 62900, 212, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vullaby - Roost - Egg Move
  (629, 62900, 355, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vullaby - Scary Face - Egg Move
  (629, 62900, 184, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vullaby - Steel Wing - Egg Move
  (629, 62900, 211, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mandibuzz - Gust - Level 1
  (630, 63000, 16, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mandibuzz - Leer - Level 1
  (630, 63000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mandibuzz - Fury Attack - Level 1
  (630, 63000, 31, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mandibuzz - Pluck - Level 1
  (630, 63000, 365, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mandibuzz - Fury Attack - Level 5
  (630, 63000, 31, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mandibuzz - Pluck - Level 10
  (630, 63000, 365, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Mandibuzz - Nasty Plot - Level 14
  (630, 63000, 417, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Mandibuzz - Flatter - Level 19
  (630, 63000, 260, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Mandibuzz - Feint Attack - Level 23
  (630, 63000, 185, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Mandibuzz - Punishment - Level 28
  (630, 63000, 386, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Mandibuzz - Defog - Level 32
  (630, 63000, 432, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mandibuzz - Tailwind - Level 37
  (630, 63000, 366, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mandibuzz - Air Slash - Level 41
  (630, 63000, 403, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Mandibuzz - Dark Pulse - Level 46
  (630, 63000, 399, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Mandibuzz - Embargo - Level 50
  (630, 63000, 373, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Mandibuzz - Bone Rush - Level 51
  (630, 63000, 198, 11, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Mandibuzz - Whirlwind - Level 57
  (630, 63000, 18, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Mandibuzz - Brave Bird - Level 63
  (630, 63000, 413, 11, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Mandibuzz - Mirror Move - Level 70
  (630, 63000, 119, 11, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Mandibuzz - Toxic - TM06
  (630, 63000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Mandibuzz - Hidden Power - TM10
  (630, 63000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Mandibuzz - Sunny Day - TM11
  (630, 63000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Mandibuzz - Taunt - TM12
  (630, 63000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Mandibuzz - Hyper Beam - TM15
  (630, 63000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Mandibuzz - Protect - TM17
  (630, 63000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Mandibuzz - Rain Dance - TM18
  (630, 63000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Mandibuzz - Frustration - TM21
  (630, 63000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Mandibuzz - Return - TM27
  (630, 63000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Mandibuzz - Shadow Ball - TM30
  (630, 63000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Mandibuzz - Double Team - TM32
  (630, 63000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Mandibuzz - Rock Tomb - TM39
  (630, 63000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Mandibuzz - Aerial Ace - TM40
  (630, 63000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Mandibuzz - Torment - TM41
  (630, 63000, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 33),
  -- Mandibuzz - Facade - TM42
  (630, 63000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Mandibuzz - Rest - TM44
  (630, 63000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Mandibuzz - Attract - TM45
  (630, 63000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Mandibuzz - Thief - TM46
  (630, 63000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Mandibuzz - Round - TM48
  (630, 63000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Mandibuzz - Incinerate - TM59
  (630, 63000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 39),
  -- Mandibuzz - Embargo - TM63
  (630, 63000, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 40),
  -- Mandibuzz - Payback - TM66
  (630, 63000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 41),
  -- Mandibuzz - Retaliate - TM67
  (630, 63000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 42),
  -- Mandibuzz - Giga Impact - TM68
  (630, 63000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 43),
  -- Mandibuzz - Psych Up - TM77
  (630, 63000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Mandibuzz - Swagger - TM87
  (630, 63000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Mandibuzz - Pluck - TM88
  (630, 63000, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 46),
  -- Mandibuzz - U-turn - TM89
  (630, 63000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 47),
  -- Mandibuzz - Substitute - TM90
  (630, 63000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Mandibuzz - Rock Smash - TM94
  (630, 63000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Mandibuzz - Snarl - TM95
  (630, 63000, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 50),
  -- Mandibuzz - Cut - HM01
  (630, 63000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Mandibuzz - Fly - HM02
  (630, 63000, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 52),
  -- Heatmor - Incinerate - Level 1
  (631, 63100, 510, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatmor - Lick - Level 1
  (631, 63100, 122, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatmor - Odor Sleuth - Level 6
  (631, 63100, 316, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heatmor - Bind - Level 11
  (631, 63100, 20, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Heatmor - Fire Spin - Level 16
  (631, 63100, 83, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Heatmor - Fury Swipes - Level 21
  (631, 63100, 154, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Heatmor - Snatch - Level 26
  (631, 63100, 289, 11, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Heatmor - Flame Burst - Level 31
  (631, 63100, 481, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Heatmor - Bug Bite - Level 36
  (631, 63100, 450, 11, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Heatmor - Slash - Level 41
  (631, 63100, 163, 11, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Heatmor - Amnesia - Level 46
  (631, 63100, 133, 11, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Heatmor - Flamethrower - Level 51
  (631, 63100, 53, 11, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Heatmor - Stockpile - Level 56
  (631, 63100, 254, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Heatmor - Spit Up - Level 56
  (631, 63100, 255, 11, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Heatmor - Swallow - Level 56
  (631, 63100, 256, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Heatmor - Inferno - Level 61
  (631, 63100, 517, 11, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Heatmor - Hone Claws - TM01
  (631, 63100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Heatmor - Toxic - TM06
  (631, 63100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Heatmor - Hidden Power - TM10
  (631, 63100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Heatmor - Sunny Day - TM11
  (631, 63100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Heatmor - Taunt - TM12
  (631, 63100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Heatmor - Protect - TM17
  (631, 63100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Heatmor - Rain Dance - TM18
  (631, 63100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Heatmor - Frustration - TM21
  (631, 63100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Heatmor - Solar Beam - TM22
  (631, 63100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Heatmor - Return - TM27
  (631, 63100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Heatmor - Dig - TM28
  (631, 63100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Heatmor - Double Team - TM32
  (631, 63100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Heatmor - Flamethrower - TM35
  (631, 63100, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 29),
  -- Heatmor - Fire Blast - TM38
  (631, 63100, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 30),
  -- Heatmor - Rock Tomb - TM39
  (631, 63100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Heatmor - Aerial Ace - TM40
  (631, 63100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Heatmor - Facade - TM42
  (631, 63100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Heatmor - Rest - TM44
  (631, 63100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Heatmor - Attract - TM45
  (631, 63100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Heatmor - Thief - TM46
  (631, 63100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Heatmor - Round - TM48
  (631, 63100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Heatmor - Focus Blast - TM52
  (631, 63100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 38),
  -- Heatmor - Fling - TM56
  (631, 63100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Heatmor - Incinerate - TM59
  (631, 63100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 40),
  -- Heatmor - Will-O-Wisp - TM61
  (631, 63100, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 41),
  -- Heatmor - Shadow Claw - TM65
  (631, 63100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Heatmor - Giga Impact - TM68
  (631, 63100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 43),
  -- Heatmor - Swagger - TM87
  (631, 63100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Heatmor - Substitute - TM90
  (631, 63100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Heatmor - Rock Smash - TM94
  (631, 63100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Heatmor - Cut - HM01
  (631, 63100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 47),
  -- Heatmor - Body Slam - Egg Move
  (631, 63100, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Heatmor - Curse - Egg Move
  (631, 63100, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Heatmor - Feint Attack - Egg Move
  (631, 63100, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Heatmor - Heat Wave - Egg Move
  (631, 63100, 257, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Heatmor - Night Slash - Egg Move
  (631, 63100, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Heatmor - Pursuit - Egg Move
  (631, 63100, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Heatmor - Sleep Talk - Egg Move
  (631, 63100, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heatmor - Sucker Punch - Egg Move
  (631, 63100, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heatmor - Tickle - Egg Move
  (631, 63100, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heatmor - Wrap - Egg Move
  (631, 63100, 35, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Durant - Vise Grip - Level 1
  (632, 63200, 11, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Durant - Sand Attack - Level 1
  (632, 63200, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Durant - Fury Cutter - Level 6
  (632, 63200, 210, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Durant - Bite - Level 11
  (632, 63200, 44, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Durant - Agility - Level 16
  (632, 63200, 97, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Durant - Metal Claw - Level 21
  (632, 63200, 232, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Durant - Bug Bite - Level 26
  (632, 63200, 450, 11, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Durant - Crunch - Level 31
  (632, 63200, 242, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Durant - Iron Head - Level 36
  (632, 63200, 442, 11, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Durant - Dig - Level 41
  (632, 63200, 91, 11, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Durant - Entrainment - Level 46
  (632, 63200, 494, 11, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Durant - X-Scissor - Level 51
  (632, 63200, 404, 11, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Durant - Iron Defense - Level 56
  (632, 63200, 334, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Durant - Guillotine - Level 61
  (632, 63200, 12, 11, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Durant - Metal Sound - Level 66
  (632, 63200, 319, 11, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Durant - Hone Claws - TM01
  (632, 63200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Durant - Toxic - TM06
  (632, 63200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Durant - Hidden Power - TM10
  (632, 63200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Durant - Protect - TM17
  (632, 63200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Durant - Frustration - TM21
  (632, 63200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Durant - Return - TM27
  (632, 63200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Durant - Dig - TM28
  (632, 63200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 22),
  -- Durant - Double Team - TM32
  (632, 63200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Durant - Sandstorm - TM37
  (632, 63200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 24),
  -- Durant - Rock Tomb - TM39
  (632, 63200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 25),
  -- Durant - Aerial Ace - TM40
  (632, 63200, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 26),
  -- Durant - Facade - TM42
  (632, 63200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Durant - Rest - TM44
  (632, 63200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Durant - Attract - TM45
  (632, 63200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Durant - Round - TM48
  (632, 63200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Durant - Energy Ball - TM53
  (632, 63200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Durant - Shadow Claw - TM65
  (632, 63200, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 32),
  -- Durant - Retaliate - TM67
  (632, 63200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 33),
  -- Durant - Giga Impact - TM68
  (632, 63200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 34),
  -- Durant - Rock Polish - TM69
  (632, 63200, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 35),
  -- Durant - Stone Edge - TM71
  (632, 63200, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 36),
  -- Durant - Thunder Wave - TM73
  (632, 63200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Durant - Struggle Bug - TM76
  (632, 63200, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 38),
  -- Durant - Rock Slide - TM80
  (632, 63200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 39),
  -- Durant - X-Scissor - TM81
  (632, 63200, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 40),
  -- Durant - Swagger - TM87
  (632, 63200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Durant - Substitute - TM90
  (632, 63200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Durant - Flash Cannon - TM91
  (632, 63200, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 43),
  -- Durant - Rock Smash - TM94
  (632, 63200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Durant - Cut - HM01
  (632, 63200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 45),
  -- Durant - Strength - HM04
  (632, 63200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 46),
  -- Durant - Baton Pass - Egg Move
  (632, 63200, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Durant - Endure - Egg Move
  (632, 63200, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Durant - Feint Attack - Egg Move
  (632, 63200, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Durant - Rock Climb - Egg Move
  (632, 63200, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Durant - Screech - Egg Move
  (632, 63200, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Durant - Thunder Fang - Egg Move
  (632, 63200, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deino - Tackle - Level 1
  (633, 63300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deino - Dragon Rage - Level 1
  (633, 63300, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deino - Focus Energy - Level 4
  (633, 63300, 116, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deino - Bite - Level 9
  (633, 63300, 44, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Deino - Headbutt - Level 12
  (633, 63300, 29, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Deino - Dragon Breath - Level 17
  (633, 63300, 225, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Deino - Roar - Level 20
  (633, 63300, 46, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Deino - Crunch - Level 25
  (633, 63300, 242, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Deino - Slam - Level 28
  (633, 63300, 21, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Deino - Dragon Pulse - Level 32
  (633, 63300, 406, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Deino - Work Up - Level 38
  (633, 63300, 526, 11, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Deino - Dragon Rush - Level 42
  (633, 63300, 407, 11, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Deino - Body Slam - Level 48
  (633, 63300, 34, 11, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Deino - Scary Face - Level 52
  (633, 63300, 184, 11, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Deino - Hyper Voice - Level 58
  (633, 63300, 304, 11, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Deino - Outrage - Level 62
  (633, 63300, 200, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Deino - Roar - TM05
  (633, 63300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Deino - Toxic - TM06
  (633, 63300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Deino - Hidden Power - TM10
  (633, 63300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Deino - Sunny Day - TM11
  (633, 63300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Deino - Taunt - TM12
  (633, 63300, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Deino - Protect - TM17
  (633, 63300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Deino - Rain Dance - TM18
  (633, 63300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Deino - Frustration - TM21
  (633, 63300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Deino - Return - TM27
  (633, 63300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Deino - Double Team - TM32
  (633, 63300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Deino - Torment - TM41
  (633, 63300, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 27),
  -- Deino - Facade - TM42
  (633, 63300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Deino - Rest - TM44
  (633, 63300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Deino - Attract - TM45
  (633, 63300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Deino - Thief - TM46
  (633, 63300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Deino - Round - TM48
  (633, 63300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Deino - Incinerate - TM59
  (633, 63300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 33),
  -- Deino - Thunder Wave - TM73
  (633, 63300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 34),
  -- Deino - Psych Up - TM77
  (633, 63300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 35),
  -- Deino - Dragon Tail - TM82
  (633, 63300, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 36),
  -- Deino - Work Up - TM83
  (633, 63300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 37),
  -- Deino - Swagger - TM87
  (633, 63300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Deino - Substitute - TM90
  (633, 63300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Deino - Rock Smash - TM94
  (633, 63300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 40),
  -- Deino - Strength - HM04
  (633, 63300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 41),
  -- Deino - Assurance - Egg Move
  (633, 63300, 372, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Deino - Astonish - Egg Move
  (633, 63300, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Deino - Dark Pulse - Egg Move
  (633, 63300, 399, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Deino - Double Hit - Egg Move
  (633, 63300, 458, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Deino - Earth Power - Egg Move
  (633, 63300, 414, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Deino - Fire Fang - Egg Move
  (633, 63300, 424, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deino - Head Smash - Egg Move
  (633, 63300, 457, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deino - Ice Fang - Egg Move
  (633, 63300, 423, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deino - Screech - Egg Move
  (633, 63300, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Deino - Thunder Fang - Egg Move
  (633, 63300, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deino - Draco Meteor - Move Tutor
  (633, 63300, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 52),
  -- Zweilous - Double Hit - Level 1
  (634, 63400, 458, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zweilous - Dragon Rage - Level 1
  (634, 63400, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zweilous - Focus Energy - Level 1
  (634, 63400, 116, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zweilous - Bite - Level 1
  (634, 63400, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zweilous - Focus Energy - Level 4
  (634, 63400, 116, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Zweilous - Bite - Level 9
  (634, 63400, 44, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Zweilous - Headbutt - Level 12
  (634, 63400, 29, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Zweilous - Dragon Breath - Level 17
  (634, 63400, 225, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Zweilous - Roar - Level 20
  (634, 63400, 46, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Zweilous - Crunch - Level 25
  (634, 63400, 242, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Zweilous - Slam - Level 28
  (634, 63400, 21, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Zweilous - Dragon Pulse - Level 32
  (634, 63400, 406, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Zweilous - Work Up - Level 38
  (634, 63400, 526, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Zweilous - Dragon Rush - Level 42
  (634, 63400, 407, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Zweilous - Body Slam - Level 48
  (634, 63400, 34, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Zweilous - Scary Face - Level 55
  (634, 63400, 184, 11, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Zweilous - Hyper Voice - Level 64
  (634, 63400, 304, 11, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Zweilous - Outrage - Level 71
  (634, 63400, 200, 11, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Zweilous - Roar - TM05
  (634, 63400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Zweilous - Toxic - TM06
  (634, 63400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Zweilous - Hidden Power - TM10
  (634, 63400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Zweilous - Sunny Day - TM11
  (634, 63400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Zweilous - Taunt - TM12
  (634, 63400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Zweilous - Protect - TM17
  (634, 63400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Zweilous - Rain Dance - TM18
  (634, 63400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Zweilous - Frustration - TM21
  (634, 63400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Zweilous - Return - TM27
  (634, 63400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Zweilous - Double Team - TM32
  (634, 63400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Zweilous - Torment - TM41
  (634, 63400, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 29),
  -- Zweilous - Facade - TM42
  (634, 63400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Zweilous - Rest - TM44
  (634, 63400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Zweilous - Attract - TM45
  (634, 63400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Zweilous - Thief - TM46
  (634, 63400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Zweilous - Round - TM48
  (634, 63400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Zweilous - Incinerate - TM59
  (634, 63400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 35),
  -- Zweilous - Thunder Wave - TM73
  (634, 63400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Zweilous - Psych Up - TM77
  (634, 63400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 37),
  -- Zweilous - Dragon Tail - TM82
  (634, 63400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 38),
  -- Zweilous - Work Up - TM83
  (634, 63400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 39),
  -- Zweilous - Swagger - TM87
  (634, 63400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Zweilous - Substitute - TM90
  (634, 63400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Zweilous - Rock Smash - TM94
  (634, 63400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Zweilous - Strength - HM04
  (634, 63400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 43),
  -- Zweilous - Draco Meteor - Move Tutor
  (634, 63400, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 44),
  -- Hydreigon - Tri Attack - Level 1
  (635, 63500, 161, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hydreigon - Dragon Rage - Level 1
  (635, 63500, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hydreigon - Focus Energy - Level 1
  (635, 63500, 116, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hydreigon - Bite - Level 1
  (635, 63500, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hydreigon - Focus Energy - Level 4
  (635, 63500, 116, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Hydreigon - Bite - Level 9
  (635, 63500, 44, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Hydreigon - Headbutt - Level 12
  (635, 63500, 29, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hydreigon - Dragon Breath - Level 17
  (635, 63500, 225, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Hydreigon - Roar - Level 20
  (635, 63500, 46, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Hydreigon - Crunch - Level 25
  (635, 63500, 242, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hydreigon - Slam - Level 28
  (635, 63500, 21, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Hydreigon - Dragon Pulse - Level 32
  (635, 63500, 406, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Hydreigon - Work Up - Level 38
  (635, 63500, 526, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Hydreigon - Dragon Rush - Level 42
  (635, 63500, 407, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Hydreigon - Body Slam - Level 48
  (635, 63500, 34, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Hydreigon - Scary Face - Level 55
  (635, 63500, 184, 11, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Hydreigon - Hyper Voice - Level 68
  (635, 63500, 304, 11, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Hydreigon - Outrage - Level 79
  (635, 63500, 200, 11, NULL, 1, 79, NULL, NULL, NULL, 18),
  -- Hydreigon - Roar - TM05
  (635, 63500, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Hydreigon - Toxic - TM06
  (635, 63500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Hydreigon - Hidden Power - TM10
  (635, 63500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Hydreigon - Sunny Day - TM11
  (635, 63500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Hydreigon - Taunt - TM12
  (635, 63500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Hydreigon - Hyper Beam - TM15
  (635, 63500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Hydreigon - Protect - TM17
  (635, 63500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Hydreigon - Rain Dance - TM18
  (635, 63500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Hydreigon - Frustration - TM21
  (635, 63500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Hydreigon - Earthquake - TM26
  (635, 63500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Hydreigon - Return - TM27
  (635, 63500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Hydreigon - Double Team - TM32
  (635, 63500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Hydreigon - Reflect - TM33
  (635, 63500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Hydreigon - Flamethrower - TM35
  (635, 63500, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Hydreigon - Fire Blast - TM38
  (635, 63500, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Hydreigon - Rock Tomb - TM39
  (635, 63500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Hydreigon - Torment - TM41
  (635, 63500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Hydreigon - Facade - TM42
  (635, 63500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Hydreigon - Rest - TM44
  (635, 63500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Hydreigon - Attract - TM45
  (635, 63500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Hydreigon - Thief - TM46
  (635, 63500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Hydreigon - Round - TM48
  (635, 63500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Hydreigon - Echoed Voice - TM49
  (635, 63500, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 41),
  -- Hydreigon - Focus Blast - TM52
  (635, 63500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Hydreigon - Charge Beam - TM57
  (635, 63500, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Hydreigon - Incinerate - TM59
  (635, 63500, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Hydreigon - Acrobatics - TM62
  (635, 63500, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 45),
  -- Hydreigon - Payback - TM66
  (635, 63500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Hydreigon - Giga Impact - TM68
  (635, 63500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Hydreigon - Stone Edge - TM71
  (635, 63500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 48),
  -- Hydreigon - Thunder Wave - TM73
  (635, 63500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Hydreigon - Psych Up - TM77
  (635, 63500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 50),
  -- Hydreigon - Bulldoze - TM78
  (635, 63500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 51),
  -- Hydreigon - Rock Slide - TM80
  (635, 63500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 52),
  -- Hydreigon - Dragon Tail - TM82
  (635, 63500, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 53),
  -- Hydreigon - Work Up - TM83
  (635, 63500, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 54),
  -- Hydreigon - Swagger - TM87
  (635, 63500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Hydreigon - U-turn - TM89
  (635, 63500, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 56),
  -- Hydreigon - Substitute - TM90
  (635, 63500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Hydreigon - Flash Cannon - TM91
  (635, 63500, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 58),
  -- Hydreigon - Rock Smash - TM94
  (635, 63500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 59),
  -- Hydreigon - Fly - HM02
  (635, 63500, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 60),
  -- Hydreigon - Surf - HM03
  (635, 63500, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 61),
  -- Hydreigon - Strength - HM04
  (635, 63500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 62),
  -- Hydreigon - Draco Meteor - Move Tutor
  (635, 63500, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 63),
  -- Larvesta - Ember - Level 1
  (636, 63600, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvesta - String Shot - Level 1
  (636, 63600, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvesta - Leech Life - Level 10
  (636, 63600, 141, 11, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Larvesta - Take Down - Level 20
  (636, 63600, 36, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Larvesta - Flame Charge - Level 30
  (636, 63600, 488, 11, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Larvesta - Bug Bite - Level 40
  (636, 63600, 450, 11, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Larvesta - Double-Edge - Level 50
  (636, 63600, 38, 11, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Larvesta - Flame Wheel - Level 60
  (636, 63600, 172, 11, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Larvesta - Bug Buzz - Level 70
  (636, 63600, 405, 11, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Larvesta - Amnesia - Level 80
  (636, 63600, 133, 11, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Larvesta - Thrash - Level 90
  (636, 63600, 37, 11, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Larvesta - Flare Blitz - Level 100
  (636, 63600, 394, 11, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Larvesta - Calm Mind - TM04
  (636, 63600, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 13),
  -- Larvesta - Toxic - TM06
  (636, 63600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Larvesta - Hidden Power - TM10
  (636, 63600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Larvesta - Sunny Day - TM11
  (636, 63600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Larvesta - Light Screen - TM16
  (636, 63600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 17),
  -- Larvesta - Protect - TM17
  (636, 63600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Larvesta - Safeguard - TM20
  (636, 63600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 19),
  -- Larvesta - Frustration - TM21
  (636, 63600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Larvesta - Solar Beam - TM22
  (636, 63600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 21),
  -- Larvesta - Return - TM27
  (636, 63600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Larvesta - Psychic - TM29
  (636, 63600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 23),
  -- Larvesta - Double Team - TM32
  (636, 63600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Larvesta - Flamethrower - TM35
  (636, 63600, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 25),
  -- Larvesta - Fire Blast - TM38
  (636, 63600, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 26),
  -- Larvesta - Facade - TM42
  (636, 63600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Larvesta - Flame Charge - TM43
  (636, 63600, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 28),
  -- Larvesta - Rest - TM44
  (636, 63600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Larvesta - Round - TM48
  (636, 63600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Larvesta - Overheat - TM50
  (636, 63600, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 31),
  -- Larvesta - Incinerate - TM59
  (636, 63600, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 32),
  -- Larvesta - Will-O-Wisp - TM61
  (636, 63600, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 33),
  -- Larvesta - Acrobatics - TM62
  (636, 63600, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 34),
  -- Larvesta - Struggle Bug - TM76
  (636, 63600, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 35),
  -- Larvesta - Swagger - TM87
  (636, 63600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Larvesta - U-turn - TM89
  (636, 63600, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 37),
  -- Larvesta - Substitute - TM90
  (636, 63600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Larvesta - Wild Charge - TM93
  (636, 63600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 39),
  -- Larvesta - Endure - Egg Move
  (636, 63600, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Larvesta - Foresight - Egg Move
  (636, 63600, 193, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Larvesta - Harden - Egg Move
  (636, 63600, 106, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Larvesta - Magnet Rise - Egg Move
  (636, 63600, 393, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Larvesta - Morning Sun - Egg Move
  (636, 63600, 234, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Larvesta - String Shot - Egg Move
  (636, 63600, 81, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Larvesta - Zen Headbutt - Egg Move
  (636, 63600, 428, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Volcarona - Ember - Level 1
  (637, 63700, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcarona - String Shot - Level 1
  (637, 63700, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcarona - Leech Life - Level 1
  (637, 63700, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcarona - Gust - Level 1
  (637, 63700, 16, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Volcarona - Leech Life - Level 10
  (637, 63700, 141, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Volcarona - Gust - Level 20
  (637, 63700, 16, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Volcarona - Fire Spin - Level 30
  (637, 63700, 83, 11, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Volcarona - Whirlwind - Level 40
  (637, 63700, 18, 11, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Volcarona - Silver Wind - Level 50
  (637, 63700, 318, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Volcarona - Quiver Dance - Level 59
  (637, 63700, 483, 11, NULL, 1, 59, NULL, NULL, NULL, 10),
  -- Volcarona - Heat Wave - Level 60
  (637, 63700, 257, 11, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Volcarona - Bug Buzz - Level 70
  (637, 63700, 405, 11, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Volcarona - Rage Powder - Level 80
  (637, 63700, 476, 11, NULL, 1, 80, NULL, NULL, NULL, 13),
  -- Volcarona - Hurricane - Level 90
  (637, 63700, 542, 11, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Volcarona - Fiery Dance - Level 100
  (637, 63700, 552, 11, NULL, 1, 100, NULL, NULL, NULL, 15),
  -- Volcarona - Calm Mind - TM04
  (637, 63700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Volcarona - Toxic - TM06
  (637, 63700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Volcarona - Hidden Power - TM10
  (637, 63700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Volcarona - Sunny Day - TM11
  (637, 63700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Volcarona - Hyper Beam - TM15
  (637, 63700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Volcarona - Light Screen - TM16
  (637, 63700, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Volcarona - Protect - TM17
  (637, 63700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Volcarona - Safeguard - TM20
  (637, 63700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Volcarona - Frustration - TM21
  (637, 63700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Volcarona - Solar Beam - TM22
  (637, 63700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Volcarona - Return - TM27
  (637, 63700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Volcarona - Psychic - TM29
  (637, 63700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 27),
  -- Volcarona - Double Team - TM32
  (637, 63700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Volcarona - Flamethrower - TM35
  (637, 63700, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 29),
  -- Volcarona - Fire Blast - TM38
  (637, 63700, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 30),
  -- Volcarona - Aerial Ace - TM40
  (637, 63700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Volcarona - Facade - TM42
  (637, 63700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Volcarona - Flame Charge - TM43
  (637, 63700, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 33),
  -- Volcarona - Rest - TM44
  (637, 63700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Volcarona - Round - TM48
  (637, 63700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Volcarona - Overheat - TM50
  (637, 63700, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 36),
  -- Volcarona - Incinerate - TM59
  (637, 63700, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 37),
  -- Volcarona - Will-O-Wisp - TM61
  (637, 63700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 38),
  -- Volcarona - Acrobatics - TM62
  (637, 63700, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 39),
  -- Volcarona - Giga Impact - TM68
  (637, 63700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Volcarona - Struggle Bug - TM76
  (637, 63700, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 41),
  -- Volcarona - Poison Jab - TM84
  (637, 63700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 42),
  -- Volcarona - Swagger - TM87
  (637, 63700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Volcarona - U-turn - TM89
  (637, 63700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 44),
  -- Volcarona - Substitute - TM90
  (637, 63700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Volcarona - Wild Charge - TM93
  (637, 63700, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 46),
  -- Volcarona - Fly - HM02
  (637, 63700, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 47),
  -- Cobalion - Quick Attack - Level 1
  (638, 63800, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cobalion - Leer - Level 1
  (638, 63800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cobalion - Double Kick - Level 7
  (638, 63800, 24, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cobalion - Metal Claw - Level 13
  (638, 63800, 232, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cobalion - Take Down - Level 19
  (638, 63800, 36, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Cobalion - Helping Hand - Level 25
  (638, 63800, 270, 11, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Cobalion - Retaliate - Level 31
  (638, 63800, 514, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Cobalion - Iron Head - Level 37
  (638, 63800, 442, 11, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Cobalion - Sacred Sword - Level 42
  (638, 63800, 533, 11, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cobalion - Swords Dance - Level 49
  (638, 63800, 14, 11, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Cobalion - Quick Guard - Level 55
  (638, 63800, 501, 11, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Cobalion - Work Up - Level 61
  (638, 63800, 526, 11, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Cobalion - Metal Burst - Level 67
  (638, 63800, 368, 11, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Cobalion - Close Combat - Level 73
  (638, 63800, 370, 11, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Cobalion - Hone Claws - TM01
  (638, 63800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Cobalion - Calm Mind - TM04
  (638, 63800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Cobalion - Roar - TM05
  (638, 63800, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Cobalion - Toxic - TM06
  (638, 63800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Cobalion - Hidden Power - TM10
  (638, 63800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Cobalion - Taunt - TM12
  (638, 63800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Cobalion - Hyper Beam - TM15
  (638, 63800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Cobalion - Protect - TM17
  (638, 63800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Cobalion - Safeguard - TM20
  (638, 63800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Cobalion - Frustration - TM21
  (638, 63800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Cobalion - Return - TM27
  (638, 63800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Cobalion - Double Team - TM32
  (638, 63800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Cobalion - Reflect - TM33
  (638, 63800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 27),
  -- Cobalion - Sandstorm - TM37
  (638, 63800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 28),
  -- Cobalion - Aerial Ace - TM40
  (638, 63800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Cobalion - Facade - TM42
  (638, 63800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Cobalion - Rest - TM44
  (638, 63800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Cobalion - Round - TM48
  (638, 63800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Cobalion - Focus Blast - TM52
  (638, 63800, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 33),
  -- Cobalion - False Swipe - TM54
  (638, 63800, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 34),
  -- Cobalion - Retaliate - TM67
  (638, 63800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 35),
  -- Cobalion - Giga Impact - TM68
  (638, 63800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Cobalion - Rock Polish - TM69
  (638, 63800, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 37),
  -- Cobalion - Stone Edge - TM71
  (638, 63800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 38),
  -- Cobalion - Volt Switch - TM72
  (638, 63800, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 39),
  -- Cobalion - Thunder Wave - TM73
  (638, 63800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 40),
  -- Cobalion - Swords Dance - TM75
  (638, 63800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Cobalion - Psych Up - TM77
  (638, 63800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Cobalion - X-Scissor - TM81
  (638, 63800, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 43),
  -- Cobalion - Work Up - TM83
  (638, 63800, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Cobalion - Poison Jab - TM84
  (638, 63800, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 45),
  -- Cobalion - Swagger - TM87
  (638, 63800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Cobalion - Substitute - TM90
  (638, 63800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Cobalion - Flash Cannon - TM91
  (638, 63800, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 48),
  -- Cobalion - Rock Smash - TM94
  (638, 63800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Cobalion - Cut - HM01
  (638, 63800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 50),
  -- Cobalion - Strength - HM04
  (638, 63800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 51),
  -- Terrakion - Quick Attack - Level 1
  (639, 63900, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terrakion - Leer - Level 1
  (639, 63900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terrakion - Double Kick - Level 7
  (639, 63900, 24, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Terrakion - Smack Down - Level 13
  (639, 63900, 479, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Terrakion - Take Down - Level 19
  (639, 63900, 36, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Terrakion - Helping Hand - Level 25
  (639, 63900, 270, 11, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Terrakion - Retaliate - Level 31
  (639, 63900, 514, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Terrakion - Rock Slide - Level 37
  (639, 63900, 157, 11, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Terrakion - Sacred Sword - Level 42
  (639, 63900, 533, 11, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Terrakion - Swords Dance - Level 49
  (639, 63900, 14, 11, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Terrakion - Quick Guard - Level 55
  (639, 63900, 501, 11, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Terrakion - Work Up - Level 61
  (639, 63900, 526, 11, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Terrakion - Stone Edge - Level 67
  (639, 63900, 444, 11, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Terrakion - Close Combat - Level 73
  (639, 63900, 370, 11, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Terrakion - Calm Mind - TM04
  (639, 63900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Terrakion - Roar - TM05
  (639, 63900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Terrakion - Toxic - TM06
  (639, 63900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Terrakion - Hidden Power - TM10
  (639, 63900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Terrakion - Taunt - TM12
  (639, 63900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 19),
  -- Terrakion - Hyper Beam - TM15
  (639, 63900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Terrakion - Protect - TM17
  (639, 63900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Terrakion - Safeguard - TM20
  (639, 63900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Terrakion - Frustration - TM21
  (639, 63900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Terrakion - Smack Down - TM23
  (639, 63900, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 24),
  -- Terrakion - Earthquake - TM26
  (639, 63900, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Terrakion - Return - TM27
  (639, 63900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Terrakion - Double Team - TM32
  (639, 63900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Terrakion - Reflect - TM33
  (639, 63900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Terrakion - Sandstorm - TM37
  (639, 63900, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Terrakion - Rock Tomb - TM39
  (639, 63900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Terrakion - Aerial Ace - TM40
  (639, 63900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Terrakion - Facade - TM42
  (639, 63900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Terrakion - Rest - TM44
  (639, 63900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Terrakion - Round - TM48
  (639, 63900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Terrakion - Focus Blast - TM52
  (639, 63900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 35),
  -- Terrakion - False Swipe - TM54
  (639, 63900, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 36),
  -- Terrakion - Retaliate - TM67
  (639, 63900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Terrakion - Giga Impact - TM68
  (639, 63900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Terrakion - Rock Polish - TM69
  (639, 63900, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 39),
  -- Terrakion - Stone Edge - TM71
  (639, 63900, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 40),
  -- Terrakion - Swords Dance - TM75
  (639, 63900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Terrakion - Psych Up - TM77
  (639, 63900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Terrakion - Bulldoze - TM78
  (639, 63900, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Terrakion - Rock Slide - TM80
  (639, 63900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Terrakion - X-Scissor - TM81
  (639, 63900, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 45),
  -- Terrakion - Work Up - TM83
  (639, 63900, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 46),
  -- Terrakion - Poison Jab - TM84
  (639, 63900, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 47),
  -- Terrakion - Swagger - TM87
  (639, 63900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Terrakion - Substitute - TM90
  (639, 63900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Terrakion - Rock Smash - TM94
  (639, 63900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Terrakion - Cut - HM01
  (639, 63900, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Terrakion - Strength - HM04
  (639, 63900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Virizion - Quick Attack - Level 1
  (640, 64000, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Virizion - Leer - Level 1
  (640, 64000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Virizion - Double Kick - Level 7
  (640, 64000, 24, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Virizion - Magical Leaf - Level 13
  (640, 64000, 345, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Virizion - Take Down - Level 19
  (640, 64000, 36, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Virizion - Helping Hand - Level 25
  (640, 64000, 270, 11, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Virizion - Retaliate - Level 31
  (640, 64000, 514, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Virizion - Giga Drain - Level 37
  (640, 64000, 202, 11, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Virizion - Sacred Sword - Level 42
  (640, 64000, 533, 11, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Virizion - Swords Dance - Level 49
  (640, 64000, 14, 11, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Virizion - Quick Guard - Level 55
  (640, 64000, 501, 11, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Virizion - Work Up - Level 61
  (640, 64000, 526, 11, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Virizion - Leaf Blade - Level 67
  (640, 64000, 348, 11, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Virizion - Close Combat - Level 73
  (640, 64000, 370, 11, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Virizion - Calm Mind - TM04
  (640, 64000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Virizion - Roar - TM05
  (640, 64000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Virizion - Toxic - TM06
  (640, 64000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Virizion - Hidden Power - TM10
  (640, 64000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Virizion - Sunny Day - TM11
  (640, 64000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Virizion - Taunt - TM12
  (640, 64000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Virizion - Hyper Beam - TM15
  (640, 64000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Virizion - Light Screen - TM16
  (640, 64000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Virizion - Protect - TM17
  (640, 64000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Virizion - Safeguard - TM20
  (640, 64000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Virizion - Frustration - TM21
  (640, 64000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Virizion - Solar Beam - TM22
  (640, 64000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Virizion - Return - TM27
  (640, 64000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Virizion - Double Team - TM32
  (640, 64000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Virizion - Reflect - TM33
  (640, 64000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 29),
  -- Virizion - Aerial Ace - TM40
  (640, 64000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Virizion - Facade - TM42
  (640, 64000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Virizion - Rest - TM44
  (640, 64000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Virizion - Round - TM48
  (640, 64000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Virizion - Focus Blast - TM52
  (640, 64000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 34),
  -- Virizion - Energy Ball - TM53
  (640, 64000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 35),
  -- Virizion - False Swipe - TM54
  (640, 64000, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 36),
  -- Virizion - Retaliate - TM67
  (640, 64000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Virizion - Giga Impact - TM68
  (640, 64000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Virizion - Flash - TM70
  (640, 64000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Virizion - Stone Edge - TM71
  (640, 64000, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 40),
  -- Virizion - Swords Dance - TM75
  (640, 64000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Virizion - Psych Up - TM77
  (640, 64000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Virizion - X-Scissor - TM81
  (640, 64000, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 43),
  -- Virizion - Work Up - TM83
  (640, 64000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Virizion - Grass Knot - TM86
  (640, 64000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 45),
  -- Virizion - Swagger - TM87
  (640, 64000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Virizion - Substitute - TM90
  (640, 64000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Virizion - Rock Smash - TM94
  (640, 64000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Virizion - Cut - HM01
  (640, 64000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 49),
  -- Virizion - Strength - HM04
  (640, 64000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Tornadus - Uproar - Level 1
  (641, 64100, 253, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus - Astonish - Level 1
  (641, 64100, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus - Gust - Level 1
  (641, 64100, 16, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tornadus - Swagger - Level 7
  (641, 64100, 207, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tornadus - Bite - Level 13
  (641, 64100, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tornadus - Revenge - Level 19
  (641, 64100, 279, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tornadus - Air Cutter - Level 25
  (641, 64100, 314, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus - Extrasensory - Level 31
  (641, 64100, 326, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Tornadus - Agility - Level 37
  (641, 64100, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Tornadus - Air Slash - Level 43
  (641, 64100, 403, 11, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Tornadus - Crunch - Level 49
  (641, 64100, 242, 11, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Tornadus - Tailwind - Level 55
  (641, 64100, 366, 11, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Tornadus - Rain Dance - Level 61
  (641, 64100, 240, 11, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Tornadus - Hurricane - Level 67
  (641, 64100, 542, 11, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Tornadus - Dark Pulse - Level 73
  (641, 64100, 399, 11, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Tornadus - Hammer Arm - Level 79
  (641, 64100, 359, 11, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Tornadus - Thrash - Level 85
  (641, 64100, 37, 11, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Tornadus - Toxic - TM06
  (641, 64100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Tornadus - Bulk Up - TM08
  (641, 64100, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Tornadus - Hidden Power - TM10
  (641, 64100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Tornadus - Taunt - TM12
  (641, 64100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Tornadus - Hyper Beam - TM15
  (641, 64100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Tornadus - Protect - TM17
  (641, 64100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Tornadus - Rain Dance - TM18
  (641, 64100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Tornadus - Frustration - TM21
  (641, 64100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Tornadus - Smack Down - TM23
  (641, 64100, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Tornadus - Return - TM27
  (641, 64100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Tornadus - Psychic - TM29
  (641, 64100, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Tornadus - Brick Break - TM31
  (641, 64100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Tornadus - Double Team - TM32
  (641, 64100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Tornadus - Sludge Wave - TM34
  (641, 64100, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 31),
  -- Tornadus - Sludge Bomb - TM36
  (641, 64100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 32),
  -- Tornadus - Aerial Ace - TM40
  (641, 64100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Tornadus - Torment - TM41
  (641, 64100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Tornadus - Facade - TM42
  (641, 64100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Tornadus - Rest - TM44
  (641, 64100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Tornadus - Attract - TM45
  (641, 64100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Tornadus - Thief - TM46
  (641, 64100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Tornadus - Round - TM48
  (641, 64100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Tornadus - Focus Blast - TM52
  (641, 64100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Tornadus - Fling - TM56
  (641, 64100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Tornadus - Sky Drop - TM58
  (641, 64100, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 42),
  -- Tornadus - Incinerate - TM59
  (641, 64100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 43),
  -- Tornadus - Acrobatics - TM62
  (641, 64100, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 44),
  -- Tornadus - Embargo - TM63
  (641, 64100, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 45),
  -- Tornadus - Payback - TM66
  (641, 64100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Tornadus - Giga Impact - TM68
  (641, 64100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Tornadus - Grass Knot - TM86
  (641, 64100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 48),
  -- Tornadus - Swagger - TM87
  (641, 64100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Tornadus - U-turn - TM89
  (641, 64100, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 50),
  -- Tornadus - Substitute - TM90
  (641, 64100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Tornadus - Rock Smash - TM94
  (641, 64100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 52),
  -- Tornadus - Fly - HM02
  (641, 64100, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 53),
  -- Tornadus - Strength - HM04
  (641, 64100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Thundurus - Uproar - Level 1
  (642, 64200, 253, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus - Astonish - Level 1
  (642, 64200, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus - Thunder Shock - Level 1
  (642, 64200, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thundurus - Swagger - Level 7
  (642, 64200, 207, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Thundurus - Bite - Level 13
  (642, 64200, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Thundurus - Revenge - Level 19
  (642, 64200, 279, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Thundurus - Shock Wave - Level 25
  (642, 64200, 351, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus - Heal Block - Level 31
  (642, 64200, 377, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Thundurus - Agility - Level 37
  (642, 64200, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Thundurus - Discharge - Level 43
  (642, 64200, 435, 11, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Thundurus - Crunch - Level 49
  (642, 64200, 242, 11, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Thundurus - Charge - Level 55
  (642, 64200, 268, 11, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Thundurus - Nasty Plot - Level 61
  (642, 64200, 417, 11, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Thundurus - Thunder - Level 67
  (642, 64200, 87, 11, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Thundurus - Dark Pulse - Level 73
  (642, 64200, 399, 11, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Thundurus - Hammer Arm - Level 79
  (642, 64200, 359, 11, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Thundurus - Thrash - Level 85
  (642, 64200, 37, 11, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Thundurus - Toxic - TM06
  (642, 64200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Thundurus - Bulk Up - TM08
  (642, 64200, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Thundurus - Hidden Power - TM10
  (642, 64200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Thundurus - Taunt - TM12
  (642, 64200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Thundurus - Hyper Beam - TM15
  (642, 64200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Thundurus - Protect - TM17
  (642, 64200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Thundurus - Rain Dance - TM18
  (642, 64200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Thundurus - Frustration - TM21
  (642, 64200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Thundurus - Smack Down - TM23
  (642, 64200, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Thundurus - Thunderbolt - TM24
  (642, 64200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Thundurus - Thunder - TM25
  (642, 64200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Thundurus - Return - TM27
  (642, 64200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Thundurus - Psychic - TM29
  (642, 64200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Thundurus - Brick Break - TM31
  (642, 64200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 31),
  -- Thundurus - Double Team - TM32
  (642, 64200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Thundurus - Sludge Wave - TM34
  (642, 64200, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 33),
  -- Thundurus - Sludge Bomb - TM36
  (642, 64200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 34),
  -- Thundurus - Torment - TM41
  (642, 64200, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Thundurus - Facade - TM42
  (642, 64200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Thundurus - Rest - TM44
  (642, 64200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Thundurus - Attract - TM45
  (642, 64200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Thundurus - Thief - TM46
  (642, 64200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Thundurus - Round - TM48
  (642, 64200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Thundurus - Focus Blast - TM52
  (642, 64200, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 41),
  -- Thundurus - Fling - TM56
  (642, 64200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Thundurus - Charge Beam - TM57
  (642, 64200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Thundurus - Sky Drop - TM58
  (642, 64200, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 44),
  -- Thundurus - Incinerate - TM59
  (642, 64200, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 45),
  -- Thundurus - Embargo - TM63
  (642, 64200, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Thundurus - Payback - TM66
  (642, 64200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Thundurus - Giga Impact - TM68
  (642, 64200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Thundurus - Volt Switch - TM72
  (642, 64200, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 49),
  -- Thundurus - Thunder Wave - TM73
  (642, 64200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Thundurus - Grass Knot - TM86
  (642, 64200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 51),
  -- Thundurus - Swagger - TM87
  (642, 64200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Thundurus - U-turn - TM89
  (642, 64200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 53),
  -- Thundurus - Substitute - TM90
  (642, 64200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 54),
  -- Thundurus - Flash Cannon - TM91
  (642, 64200, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 55),
  -- Thundurus - Wild Charge - TM93
  (642, 64200, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 56),
  -- Thundurus - Rock Smash - TM94
  (642, 64200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 57),
  -- Thundurus - Fly - HM02
  (642, 64200, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 58),
  -- Thundurus - Strength - HM04
  (642, 64200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 59),
  -- Reshiram - Fire Fang - Level 1
  (643, 64300, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reshiram - Dragon Rage - Level 1
  (643, 64300, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reshiram - Imprison - Level 8
  (643, 64300, 286, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Reshiram - Ancient Power - Level 15
  (643, 64300, 246, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Reshiram - Flamethrower - Level 22
  (643, 64300, 53, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Reshiram - Dragon Breath - Level 29
  (643, 64300, 225, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Reshiram - Slash - Level 36
  (643, 64300, 163, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Reshiram - Extrasensory - Level 43
  (643, 64300, 326, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Reshiram - Fusion Flare - Level 50
  (643, 64300, 558, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Reshiram - Dragon Pulse - Level 54
  (643, 64300, 406, 11, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Reshiram - Imprison - Level 64
  (643, 64300, 286, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Reshiram - Crunch - Level 71
  (643, 64300, 242, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Reshiram - Fire Blast - Level 78
  (643, 64300, 126, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Reshiram - Outrage - Level 85
  (643, 64300, 200, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Reshiram - Hyper Voice - Level 92
  (643, 64300, 304, 11, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Reshiram - Blue Flare - Level 100
  (643, 64300, 551, 11, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Reshiram - Hone Claws - TM01
  (643, 64300, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Reshiram - Dragon Claw - TM02
  (643, 64300, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 18),
  -- Reshiram - Toxic - TM06
  (643, 64300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Reshiram - Hidden Power - TM10
  (643, 64300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Reshiram - Sunny Day - TM11
  (643, 64300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Reshiram - Hyper Beam - TM15
  (643, 64300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Reshiram - Light Screen - TM16
  (643, 64300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Reshiram - Protect - TM17
  (643, 64300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Reshiram - Safeguard - TM20
  (643, 64300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Reshiram - Frustration - TM21
  (643, 64300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Reshiram - Solar Beam - TM22
  (643, 64300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Reshiram - Return - TM27
  (643, 64300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Reshiram - Psychic - TM29
  (643, 64300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Reshiram - Shadow Ball - TM30
  (643, 64300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Reshiram - Double Team - TM32
  (643, 64300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Reshiram - Reflect - TM33
  (643, 64300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Reshiram - Flamethrower - TM35
  (643, 64300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 33),
  -- Reshiram - Fire Blast - TM38
  (643, 64300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 34),
  -- Reshiram - Rock Tomb - TM39
  (643, 64300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Reshiram - Facade - TM42
  (643, 64300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Reshiram - Flame Charge - TM43
  (643, 64300, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 37),
  -- Reshiram - Rest - TM44
  (643, 64300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Reshiram - Round - TM48
  (643, 64300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Reshiram - Echoed Voice - TM49
  (643, 64300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 40),
  -- Reshiram - Overheat - TM50
  (643, 64300, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 41),
  -- Reshiram - Focus Blast - TM52
  (643, 64300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Reshiram - Fling - TM56
  (643, 64300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Reshiram - Incinerate - TM59
  (643, 64300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Reshiram - Will-O-Wisp - TM61
  (643, 64300, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 45),
  -- Reshiram - Shadow Claw - TM65
  (643, 64300, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 46),
  -- Reshiram - Payback - TM66
  (643, 64300, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Reshiram - Giga Impact - TM68
  (643, 64300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Reshiram - Stone Edge - TM71
  (643, 64300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 49),
  -- Reshiram - Rock Slide - TM80
  (643, 64300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Reshiram - Dragon Tail - TM82
  (643, 64300, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 51),
  -- Reshiram - Swagger - TM87
  (643, 64300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Reshiram - Substitute - TM90
  (643, 64300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Reshiram - Rock Smash - TM94
  (643, 64300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Reshiram - Cut - HM01
  (643, 64300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 55),
  -- Reshiram - Fly - HM02
  (643, 64300, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 56),
  -- Reshiram - Strength - HM04
  (643, 64300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 57),
  -- Reshiram - Draco Meteor - Move Tutor
  (643, 64300, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 58),
  -- Zekrom - Thunder Fang - Level 1
  (644, 64400, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zekrom - Dragon Rage - Level 1
  (644, 64400, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zekrom - Imprison - Level 8
  (644, 64400, 286, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Zekrom - Ancient Power - Level 15
  (644, 64400, 246, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Zekrom - Thunderbolt - Level 22
  (644, 64400, 85, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Zekrom - Dragon Breath - Level 29
  (644, 64400, 225, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Zekrom - Slash - Level 36
  (644, 64400, 163, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Zekrom - Zen Headbutt - Level 43
  (644, 64400, 428, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Zekrom - Fusion Bolt - Level 50
  (644, 64400, 559, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Zekrom - Dragon Claw - Level 54
  (644, 64400, 337, 11, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Zekrom - Imprison - Level 64
  (644, 64400, 286, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Zekrom - Crunch - Level 71
  (644, 64400, 242, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Zekrom - Thunder - Level 78
  (644, 64400, 87, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Zekrom - Outrage - Level 85
  (644, 64400, 200, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Zekrom - Hyper Voice - Level 92
  (644, 64400, 304, 11, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Zekrom - Bolt Strike - Level 100
  (644, 64400, 550, 11, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Zekrom - Hone Claws - TM01
  (644, 64400, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Zekrom - Dragon Claw - TM02
  (644, 64400, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 18),
  -- Zekrom - Toxic - TM06
  (644, 64400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Zekrom - Hidden Power - TM10
  (644, 64400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Zekrom - Hyper Beam - TM15
  (644, 64400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Zekrom - Light Screen - TM16
  (644, 64400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Zekrom - Protect - TM17
  (644, 64400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Zekrom - Rain Dance - TM18
  (644, 64400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Zekrom - Safeguard - TM20
  (644, 64400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Zekrom - Frustration - TM21
  (644, 64400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Zekrom - Thunderbolt - TM24
  (644, 64400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Zekrom - Thunder - TM25
  (644, 64400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Zekrom - Return - TM27
  (644, 64400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Zekrom - Psychic - TM29
  (644, 64400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Zekrom - Shadow Ball - TM30
  (644, 64400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Zekrom - Double Team - TM32
  (644, 64400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Zekrom - Reflect - TM33
  (644, 64400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 33),
  -- Zekrom - Rock Tomb - TM39
  (644, 64400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Zekrom - Facade - TM42
  (644, 64400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Zekrom - Rest - TM44
  (644, 64400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Zekrom - Round - TM48
  (644, 64400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Zekrom - Echoed Voice - TM49
  (644, 64400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 38),
  -- Zekrom - Focus Blast - TM52
  (644, 64400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 39),
  -- Zekrom - Fling - TM56
  (644, 64400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Zekrom - Charge Beam - TM57
  (644, 64400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 41),
  -- Zekrom - Shadow Claw - TM65
  (644, 64400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Zekrom - Payback - TM66
  (644, 64400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Zekrom - Giga Impact - TM68
  (644, 64400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Zekrom - Flash - TM70
  (644, 64400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 45),
  -- Zekrom - Stone Edge - TM71
  (644, 64400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 46),
  -- Zekrom - Volt Switch - TM72
  (644, 64400, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 47),
  -- Zekrom - Thunder Wave - TM73
  (644, 64400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 48),
  -- Zekrom - Rock Slide - TM80
  (644, 64400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Zekrom - Dragon Tail - TM82
  (644, 64400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 50),
  -- Zekrom - Swagger - TM87
  (644, 64400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Zekrom - Substitute - TM90
  (644, 64400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Zekrom - Flash Cannon - TM91
  (644, 64400, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 53),
  -- Zekrom - Wild Charge - TM93
  (644, 64400, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 54),
  -- Zekrom - Rock Smash - TM94
  (644, 64400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Zekrom - Cut - HM01
  (644, 64400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 56),
  -- Zekrom - Fly - HM02
  (644, 64400, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 57),
  -- Zekrom - Strength - HM04
  (644, 64400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 58),
  -- Zekrom - Draco Meteor - Move Tutor
  (644, 64400, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 59),
  -- Landorus - Block - Level 1
  (645, 64500, 335, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus - Mud Shot - Level 1
  (645, 64500, 341, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus - Rock Tomb - Level 1
  (645, 64500, 317, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Landorus - Imprison - Level 7
  (645, 64500, 286, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Landorus - Punishment - Level 13
  (645, 64500, 386, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Landorus - Bulldoze - Level 19
  (645, 64500, 523, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Landorus - Rock Throw - Level 25
  (645, 64500, 88, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Landorus - Extrasensory - Level 31
  (645, 64500, 326, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Landorus - Swords Dance - Level 37
  (645, 64500, 14, 11, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Landorus - Earth Power - Level 43
  (645, 64500, 414, 11, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Landorus - Rock Slide - Level 49
  (645, 64500, 157, 11, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Landorus - Earthquake - Level 55
  (645, 64500, 89, 11, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Landorus - Sandstorm - Level 61
  (645, 64500, 201, 11, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Landorus - Fissure - Level 67
  (645, 64500, 90, 11, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Landorus - Stone Edge - Level 73
  (645, 64500, 444, 11, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Landorus - Hammer Arm - Level 79
  (645, 64500, 359, 11, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Landorus - Outrage - Level 85
  (645, 64500, 200, 11, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Landorus - Calm Mind - TM04
  (645, 64500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Landorus - Toxic - TM06
  (645, 64500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Landorus - Bulk Up - TM08
  (645, 64500, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 20),
  -- Landorus - Hidden Power - TM10
  (645, 64500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Landorus - Hyper Beam - TM15
  (645, 64500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Landorus - Protect - TM17
  (645, 64500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Landorus - Frustration - TM21
  (645, 64500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Landorus - Smack Down - TM23
  (645, 64500, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 25),
  -- Landorus - Earthquake - TM26
  (645, 64500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 26),
  -- Landorus - Return - TM27
  (645, 64500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Landorus - Dig - TM28
  (645, 64500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Landorus - Psychic - TM29
  (645, 64500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Landorus - Brick Break - TM31
  (645, 64500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Landorus - Double Team - TM32
  (645, 64500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Landorus - Sludge Wave - TM34
  (645, 64500, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 32),
  -- Landorus - Sludge Bomb - TM36
  (645, 64500, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 33),
  -- Landorus - Sandstorm - TM37
  (645, 64500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 34),
  -- Landorus - Rock Tomb - TM39
  (645, 64500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Landorus - Facade - TM42
  (645, 64500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Landorus - Rest - TM44
  (645, 64500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Landorus - Attract - TM45
  (645, 64500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Landorus - Round - TM48
  (645, 64500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Landorus - Focus Blast - TM52
  (645, 64500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Landorus - Fling - TM56
  (645, 64500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Landorus - Explosion - TM64
  (645, 64500, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 42),
  -- Landorus - Payback - TM66
  (645, 64500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Landorus - Giga Impact - TM68
  (645, 64500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Landorus - Rock Polish - TM69
  (645, 64500, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 45),
  -- Landorus - Stone Edge - TM71
  (645, 64500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 46),
  -- Landorus - Swords Dance - TM75
  (645, 64500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 47),
  -- Landorus - Bulldoze - TM78
  (645, 64500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Landorus - Rock Slide - TM80
  (645, 64500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Landorus - Grass Knot - TM86
  (645, 64500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 50),
  -- Landorus - Swagger - TM87
  (645, 64500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Landorus - U-turn - TM89
  (645, 64500, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 52),
  -- Landorus - Substitute - TM90
  (645, 64500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Landorus - Rock Smash - TM94
  (645, 64500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Landorus - Fly - HM02
  (645, 64500, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 55),
  -- Landorus - Strength - HM04
  (645, 64500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Kyurem - Icy Wind - Level 1
  (646, 64600, 196, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem - Dragon Rage - Level 1
  (646, 64600, 82, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem - Imprison - Level 8
  (646, 64600, 286, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem - Ancient Power - Level 15
  (646, 64600, 246, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem - Ice Beam - Level 22
  (646, 64600, 58, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem - Dragon Breath - Level 29
  (646, 64600, 225, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem - Slash - Level 36
  (646, 64600, 163, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem - Scary Face - Level 43
  (646, 64600, 184, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem - Glaciate - Level 50
  (646, 64600, 549, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem - Dragon Pulse - Level 57
  (646, 64600, 406, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem - Imprison - Level 64
  (646, 64600, 286, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem - Endeavor - Level 71
  (646, 64600, 283, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem - Blizzard - Level 78
  (646, 64600, 59, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem - Outrage - Level 85
  (646, 64600, 200, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem - Hyper Voice - Level 92
  (646, 64600, 304, 11, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem - Hone Claws - TM01
  (646, 64600, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Kyurem - Dragon Claw - TM02
  (646, 64600, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 17),
  -- Kyurem - Toxic - TM06
  (646, 64600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Kyurem - Hail - TM07
  (646, 64600, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 19),
  -- Kyurem - Hidden Power - TM10
  (646, 64600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Kyurem - Sunny Day - TM11
  (646, 64600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Kyurem - Ice Beam - TM13
  (646, 64600, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Kyurem - Blizzard - TM14
  (646, 64600, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Kyurem - Hyper Beam - TM15
  (646, 64600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Kyurem - Light Screen - TM16
  (646, 64600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Kyurem - Protect - TM17
  (646, 64600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Kyurem - Rain Dance - TM18
  (646, 64600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Kyurem - Safeguard - TM20
  (646, 64600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 28),
  -- Kyurem - Frustration - TM21
  (646, 64600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Kyurem - Return - TM27
  (646, 64600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Kyurem - Psychic - TM29
  (646, 64600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Kyurem - Shadow Ball - TM30
  (646, 64600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Kyurem - Double Team - TM32
  (646, 64600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Kyurem - Reflect - TM33
  (646, 64600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Kyurem - Rock Tomb - TM39
  (646, 64600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Kyurem - Facade - TM42
  (646, 64600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Kyurem - Rest - TM44
  (646, 64600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Kyurem - Round - TM48
  (646, 64600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Kyurem - Echoed Voice - TM49
  (646, 64600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 39),
  -- Kyurem - Focus Blast - TM52
  (646, 64600, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Kyurem - Fling - TM56
  (646, 64600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Kyurem - Shadow Claw - TM65
  (646, 64600, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Kyurem - Payback - TM66
  (646, 64600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Kyurem - Giga Impact - TM68
  (646, 64600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Kyurem - Stone Edge - TM71
  (646, 64600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 45),
  -- Kyurem - Rock Slide - TM80
  (646, 64600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Kyurem - Dragon Tail - TM82
  (646, 64600, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 47),
  -- Kyurem - Swagger - TM87
  (646, 64600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Kyurem - Substitute - TM90
  (646, 64600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Kyurem - Flash Cannon - TM91
  (646, 64600, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 50),
  -- Kyurem - Rock Smash - TM94
  (646, 64600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 51),
  -- Kyurem - Cut - HM01
  (646, 64600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 52),
  -- Kyurem - Fly - HM02
  (646, 64600, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 53),
  -- Kyurem - Strength - HM04
  (646, 64600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Kyurem - Draco Meteor - Move Tutor
  (646, 64600, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 55),
  -- Keldeo - Aqua Jet - Level 1
  (647, 64700, 453, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Keldeo - Leer - Level 1
  (647, 64700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Keldeo - Double Kick - Level 7
  (647, 64700, 24, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Keldeo - Bubble Beam - Level 13
  (647, 64700, 61, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Keldeo - Take Down - Level 19
  (647, 64700, 36, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Keldeo - Helping Hand - Level 25
  (647, 64700, 270, 11, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Keldeo - Retaliate - Level 31
  (647, 64700, 514, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Keldeo - Aqua Tail - Level 37
  (647, 64700, 401, 11, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Keldeo - Sacred Sword - Level 43
  (647, 64700, 533, 11, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Keldeo - Swords Dance - Level 49
  (647, 64700, 14, 11, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Keldeo - Quick Guard - Level 55
  (647, 64700, 501, 11, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Keldeo - Work Up - Level 61
  (647, 64700, 526, 11, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Keldeo - Hydro Pump - Level 67
  (647, 64700, 56, 11, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Keldeo - Close Combat - Level 73
  (647, 64700, 370, 11, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Keldeo - Calm Mind - TM04
  (647, 64700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Keldeo - Roar - TM05
  (647, 64700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Keldeo - Toxic - TM06
  (647, 64700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Keldeo - Hail - TM07
  (647, 64700, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Keldeo - Hidden Power - TM10
  (647, 64700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Keldeo - Taunt - TM12
  (647, 64700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Keldeo - Hyper Beam - TM15
  (647, 64700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Keldeo - Protect - TM17
  (647, 64700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Keldeo - Rain Dance - TM18
  (647, 64700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Keldeo - Safeguard - TM20
  (647, 64700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Keldeo - Frustration - TM21
  (647, 64700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Keldeo - Return - TM27
  (647, 64700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Keldeo - Double Team - TM32
  (647, 64700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Keldeo - Reflect - TM33
  (647, 64700, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Keldeo - Aerial Ace - TM40
  (647, 64700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Keldeo - Facade - TM42
  (647, 64700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Keldeo - Rest - TM44
  (647, 64700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Keldeo - Round - TM48
  (647, 64700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Keldeo - Focus Blast - TM52
  (647, 64700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 33),
  -- Keldeo - False Swipe - TM54
  (647, 64700, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 34),
  -- Keldeo - Scald - TM55
  (647, 64700, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 35),
  -- Keldeo - Retaliate - TM67
  (647, 64700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 36),
  -- Keldeo - Giga Impact - TM68
  (647, 64700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 37),
  -- Keldeo - Stone Edge - TM71
  (647, 64700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 38),
  -- Keldeo - Swords Dance - TM75
  (647, 64700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 39),
  -- Keldeo - Psych Up - TM77
  (647, 64700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 40),
  -- Keldeo - X-Scissor - TM81
  (647, 64700, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 41),
  -- Keldeo - Work Up - TM83
  (647, 64700, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 42),
  -- Keldeo - Poison Jab - TM84
  (647, 64700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 43),
  -- Keldeo - Swagger - TM87
  (647, 64700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Keldeo - Substitute - TM90
  (647, 64700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Keldeo - Rock Smash - TM94
  (647, 64700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Keldeo - Cut - HM01
  (647, 64700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 47),
  -- Keldeo - Surf - HM03
  (647, 64700, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 48),
  -- Keldeo - Strength - HM04
  (647, 64700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 49),
  -- Keldeo - Secret Sword - Move Tutor
  (647, 64700, 548, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 50),
  -- Meloetta - Round - Level 1
  (648, 64800, 496, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meloetta - Quick Attack - Level 6
  (648, 64800, 98, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Meloetta - Confusion - Level 11
  (648, 64800, 93, 11, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Meloetta - Sing - Level 16
  (648, 64800, 47, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Meloetta - Teeter Dance - Level 21
  (648, 64800, 298, 11, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Meloetta - Acrobatics - Level 26
  (648, 64800, 512, 11, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Meloetta - Psybeam - Level 31
  (648, 64800, 60, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Meloetta - Echoed Voice - Level 36
  (648, 64800, 497, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Meloetta - U-turn - Level 43
  (648, 64800, 369, 11, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Meloetta - Wake-Up Slap - Level 50
  (648, 64800, 358, 11, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Meloetta - Psychic - Level 57
  (648, 64800, 94, 11, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Meloetta - Hyper Voice - Level 64
  (648, 64800, 304, 11, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Meloetta - Role Play - Level 71
  (648, 64800, 272, 11, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Meloetta - Close Combat - Level 78
  (648, 64800, 370, 11, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Meloetta - Perish Song - Level 85
  (648, 64800, 195, 11, NULL, 1, 85, NULL, NULL, NULL, 15),
  -- Meloetta - Hone Claws - TM01
  (648, 64800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Meloetta - Psyshock - TM03
  (648, 64800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Meloetta - Calm Mind - TM04
  (648, 64800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Meloetta - Toxic - TM06
  (648, 64800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Meloetta - Hidden Power - TM10
  (648, 64800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Meloetta - Sunny Day - TM11
  (648, 64800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Meloetta - Hyper Beam - TM15
  (648, 64800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Meloetta - Light Screen - TM16
  (648, 64800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Meloetta - Protect - TM17
  (648, 64800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Meloetta - Rain Dance - TM18
  (648, 64800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Meloetta - Telekinesis - TM19
  (648, 64800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Meloetta - Safeguard - TM20
  (648, 64800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Meloetta - Frustration - TM21
  (648, 64800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Meloetta - Thunderbolt - TM24
  (648, 64800, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Meloetta - Thunder - TM25
  (648, 64800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Meloetta - Return - TM27
  (648, 64800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Meloetta - Psychic - TM29
  (648, 64800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 32),
  -- Meloetta - Shadow Ball - TM30
  (648, 64800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Meloetta - Brick Break - TM31
  (648, 64800, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Meloetta - Double Team - TM32
  (648, 64800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Meloetta - Facade - TM42
  (648, 64800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Meloetta - Rest - TM44
  (648, 64800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Meloetta - Low Sweep - TM47
  (648, 64800, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 38),
  -- Meloetta - Round - TM48
  (648, 64800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Meloetta - Echoed Voice - TM49
  (648, 64800, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 40),
  -- Meloetta - Focus Blast - TM52
  (648, 64800, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 41),
  -- Meloetta - Energy Ball - TM53
  (648, 64800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 42),
  -- Meloetta - Fling - TM56
  (648, 64800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Meloetta - Charge Beam - TM57
  (648, 64800, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 44),
  -- Meloetta - Acrobatics - TM62
  (648, 64800, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 45),
  -- Meloetta - Embargo - TM63
  (648, 64800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Meloetta - Shadow Claw - TM65
  (648, 64800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 47),
  -- Meloetta - Payback - TM66
  (648, 64800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 48),
  -- Meloetta - Retaliate - TM67
  (648, 64800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 49),
  -- Meloetta - Giga Impact - TM68
  (648, 64800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Meloetta - Flash - TM70
  (648, 64800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 51),
  -- Meloetta - Stone Edge - TM71
  (648, 64800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 52),
  -- Meloetta - Thunder Wave - TM73
  (648, 64800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 53),
  -- Meloetta - Psych Up - TM77
  (648, 64800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 54),
  -- Meloetta - Work Up - TM83
  (648, 64800, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 55),
  -- Meloetta - Dream Eater - TM85
  (648, 64800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 56),
  -- Meloetta - Grass Knot - TM86
  (648, 64800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 57),
  -- Meloetta - Swagger - TM87
  (648, 64800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 58),
  -- Meloetta - U-turn - TM89
  (648, 64800, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 59),
  -- Meloetta - Substitute - TM90
  (648, 64800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Meloetta - Trick Room - TM92
  (648, 64800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 61),
  -- Meloetta - Rock Smash - TM94
  (648, 64800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Meloetta - Strength - HM04
  (648, 64800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 63),
  -- Meloetta - Relic Song - Move Tutor
  (648, 64800, 547, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 64),
  -- Genesect - Techno Blast - Level 1
  (649, 64900, 546, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect - Quick Attack - Level 1
  (649, 64900, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect - Magnet Rise - Level 1
  (649, 64900, 393, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Genesect - Metal Claw - Level 1
  (649, 64900, 232, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Genesect - Screech - Level 1
  (649, 64900, 103, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Genesect - Fury Cutter - Level 7
  (649, 64900, 210, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Genesect - Lock-On - Level 11
  (649, 64900, 199, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Genesect - Flame Charge - Level 18
  (649, 64900, 488, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Genesect - Magnet Bomb - Level 22
  (649, 64900, 443, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Genesect - Slash - Level 29
  (649, 64900, 163, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Genesect - Metal Sound - Level 33
  (649, 64900, 319, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Genesect - Signal Beam - Level 40
  (649, 64900, 324, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Genesect - Tri Attack - Level 44
  (649, 64900, 161, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Genesect - X-Scissor - Level 51
  (649, 64900, 404, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Genesect - Bug Buzz - Level 55
  (649, 64900, 405, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Genesect - Simple Beam - Level 62
  (649, 64900, 493, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Genesect - Zap Cannon - Level 66
  (649, 64900, 192, 11, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Genesect - Hyper Beam - Level 73
  (649, 64900, 63, 11, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Genesect - Self-Destruct - Level 77
  (649, 64900, 120, 11, NULL, 1, 77, NULL, NULL, NULL, 19),
  -- Genesect - Hone Claws - TM01
  (649, 64900, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Genesect - Toxic - TM06
  (649, 64900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Genesect - Hidden Power - TM10
  (649, 64900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Genesect - Ice Beam - TM13
  (649, 64900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Genesect - Blizzard - TM14
  (649, 64900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Genesect - Hyper Beam - TM15
  (649, 64900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Genesect - Light Screen - TM16
  (649, 64900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Genesect - Protect - TM17
  (649, 64900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Genesect - Frustration - TM21
  (649, 64900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Genesect - Solar Beam - TM22
  (649, 64900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Genesect - Thunderbolt - TM24
  (649, 64900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 30),
  -- Genesect - Thunder - TM25
  (649, 64900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 31),
  -- Genesect - Return - TM27
  (649, 64900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Genesect - Psychic - TM29
  (649, 64900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Genesect - Double Team - TM32
  (649, 64900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Genesect - Reflect - TM33
  (649, 64900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 35),
  -- Genesect - Flamethrower - TM35
  (649, 64900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 36),
  -- Genesect - Aerial Ace - TM40
  (649, 64900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 37),
  -- Genesect - Facade - TM42
  (649, 64900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Genesect - Flame Charge - TM43
  (649, 64900, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 39),
  -- Genesect - Rest - TM44
  (649, 64900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Genesect - Round - TM48
  (649, 64900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Genesect - Energy Ball - TM53
  (649, 64900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 42),
  -- Genesect - Charge Beam - TM57
  (649, 64900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Genesect - Explosion - TM64
  (649, 64900, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 44),
  -- Genesect - Shadow Claw - TM65
  (649, 64900, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 45),
  -- Genesect - Giga Impact - TM68
  (649, 64900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 46),
  -- Genesect - Rock Polish - TM69
  (649, 64900, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 47),
  -- Genesect - Flash - TM70
  (649, 64900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 48),
  -- Genesect - Thunder Wave - TM73
  (649, 64900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Genesect - Struggle Bug - TM76
  (649, 64900, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 50),
  -- Genesect - X-Scissor - TM81
  (649, 64900, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 51),
  -- Genesect - Swagger - TM87
  (649, 64900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Genesect - U-turn - TM89
  (649, 64900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 53),
  -- Genesect - Substitute - TM90
  (649, 64900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 54),
  -- Genesect - Flash Cannon - TM91
  (649, 64900, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 55),
  -- Genesect - Fly - HM02
  (649, 64900, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 56);
