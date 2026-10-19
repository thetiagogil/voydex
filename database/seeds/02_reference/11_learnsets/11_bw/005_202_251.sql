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
-- Pokémon: #202-#251
-- Rows: 2690
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Power Swap - Level 1
  (203, 20300, 384, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Guard Swap - Level 1
  (203, 20300, 385, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Astonish - Level 1
  (203, 20300, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Girafarig - Confusion - Level 1
  (203, 20300, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Girafarig - Odor Sleuth - Level 5
  (203, 20300, 316, 11, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Girafarig - Stomp - Level 10
  (203, 20300, 23, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Girafarig - Agility - Level 14
  (203, 20300, 97, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Girafarig - Psybeam - Level 19
  (203, 20300, 60, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Girafarig - Baton Pass - Level 23
  (203, 20300, 226, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Girafarig - Assurance - Level 28
  (203, 20300, 372, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Girafarig - Double Hit - Level 32
  (203, 20300, 458, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Girafarig - Psychic - Level 37
  (203, 20300, 94, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Girafarig - Zen Headbutt - Level 41
  (203, 20300, 428, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Girafarig - Crunch - Level 46
  (203, 20300, 242, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Girafarig - Psyshock - TM03
  (203, 20300, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Girafarig - Calm Mind - TM04
  (203, 20300, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Girafarig - Toxic - TM06
  (203, 20300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Girafarig - Hidden Power - TM10
  (203, 20300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Girafarig - Light Screen - TM16
  (203, 20300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Girafarig - Rain Dance - TM18
  (203, 20300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Girafarig - Telekinesis - TM19
  (203, 20300, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 25),
  -- Girafarig - Frustration - TM21
  (203, 20300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Girafarig - Thunderbolt - TM24
  (203, 20300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Girafarig - Return - TM27
  (203, 20300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Girafarig - Reflect - TM33
  (203, 20300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Girafarig - Facade - TM42
  (203, 20300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Girafarig - Round - TM48
  (203, 20300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Girafarig - Echoed Voice - TM49
  (203, 20300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 40),
  -- Girafarig - Energy Ball - TM53
  (203, 20300, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 41),
  -- Girafarig - Charge Beam - TM57
  (203, 20300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 42),
  -- Girafarig - Retaliate - TM67
  (203, 20300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 43),
  -- Girafarig - Flash - TM70
  (203, 20300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 44),
  -- Girafarig - Thunder Wave - TM73
  (203, 20300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Girafarig - Psych Up - TM77
  (203, 20300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 46),
  -- Girafarig - Bulldoze - TM78
  (203, 20300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Girafarig - Work Up - TM83
  (203, 20300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 48),
  -- Girafarig - Dream Eater - TM85
  (203, 20300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 49),
  -- Girafarig - Grass Knot - TM86
  (203, 20300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 50),
  -- Girafarig - Swagger - TM87
  (203, 20300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Girafarig - Substitute - TM90
  (203, 20300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Girafarig - Trick Room - TM92
  (203, 20300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 53),
  -- Girafarig - Rock Smash - TM94
  (203, 20300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Girafarig - Strength - HM04
  (203, 20300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Girafarig - Amnesia - Egg Move
  (203, 20300, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Girafarig - Beat Up - Egg Move
  (203, 20300, 251, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Girafarig - Double Kick - Egg Move
  (203, 20300, 24, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Girafarig - Foresight - Egg Move
  (203, 20300, 193, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Girafarig - Future Sight - Egg Move
  (203, 20300, 248, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Girafarig - Magic Coat - Egg Move
  (203, 20300, 277, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Girafarig - Mean Look - Egg Move
  (203, 20300, 212, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Girafarig - Mirror Coat - Egg Move
  (203, 20300, 243, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Girafarig - Razor Wind - Egg Move
  (203, 20300, 13, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Girafarig - Secret Power - Egg Move
  (203, 20300, 290, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Girafarig - Skill Swap - Egg Move
  (203, 20300, 285, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Girafarig - Take Down - Egg Move
  (203, 20300, 36, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Girafarig - Wish - Egg Move
  (203, 20300, 273, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 6
  (204, 20400, 120, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pineco - Bug Bite - Level 9
  (204, 20400, 450, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pineco - Take Down - Level 12
  (204, 20400, 36, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pineco - Rapid Spin - Level 17
  (204, 20400, 229, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pineco - Bide - Level 20
  (204, 20400, 117, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pineco - Natural Gift - Level 23
  (204, 20400, 363, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pineco - Spikes - Level 28
  (204, 20400, 191, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pineco - Payback - Level 31
  (204, 20400, 371, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pineco - Explosion - Level 34
  (204, 20400, 153, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pineco - Iron Defense - Level 39
  (204, 20400, 334, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pineco - Gyro Ball - Level 42
  (204, 20400, 360, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pineco - Double-Edge - Level 45
  (204, 20400, 38, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pineco - Toxic - TM06
  (204, 20400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Pineco - Venoshock - TM09
  (204, 20400, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 16),
  -- Pineco - Hidden Power - TM10
  (204, 20400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Pineco - Light Screen - TM16
  (204, 20400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Pineco - Frustration - TM21
  (204, 20400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 22),
  -- Pineco - Earthquake - TM26
  (204, 20400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Pineco - Return - TM27
  (204, 20400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Pineco - Dig - TM28
  (204, 20400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Pineco - Reflect - TM33
  (204, 20400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 27),
  -- Pineco - Sandstorm - TM37
  (204, 20400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 28),
  -- Pineco - Rock Tomb - TM39
  (204, 20400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 29),
  -- Pineco - Facade - TM42
  (204, 20400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Pineco - Round - TM48
  (204, 20400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Pineco - Explosion - TM64
  (204, 20400, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 34),
  -- Pineco - Payback - TM66
  (204, 20400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 35),
  -- Pineco - Gyro Ball - TM74
  (204, 20400, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 36),
  -- Pineco - Struggle Bug - TM76
  (204, 20400, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 37),
  -- Pineco - Bulldoze - TM78
  (204, 20400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 38),
  -- Pineco - Rock Slide - TM80
  (204, 20400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 39),
  -- Pineco - Swagger - TM87
  (204, 20400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Pineco - Substitute - TM90
  (204, 20400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Pineco - Rock Smash - TM94
  (204, 20400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Pineco - Strength - HM04
  (204, 20400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 43),
  -- Pineco - Counter - Egg Move
  (204, 20400, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pineco - Double-Edge - Egg Move
  (204, 20400, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pineco - Endure - Egg Move
  (204, 20400, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pineco - Flail - Egg Move
  (204, 20400, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pineco - Pin Missile - Egg Move
  (204, 20400, 42, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pineco - Power Trick - Egg Move
  (204, 20400, 379, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pineco - Revenge - Egg Move
  (204, 20400, 279, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pineco - Sand Tomb - Egg Move
  (204, 20400, 328, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pineco - Stealth Rock - Egg Move
  (204, 20400, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pineco - Swift - Egg Move
  (204, 20400, 129, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pineco - Toxic Spikes - Egg Move
  (204, 20400, 390, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Forretress - Toxic Spikes - Level 1
  (205, 20500, 390, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Forretress - Bug Bite - Level 1
  (205, 20500, 450, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Forretress - Self-Destruct - Level 6
  (205, 20500, 120, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Forretress - Bug Bite - Level 9
  (205, 20500, 450, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Forretress - Take Down - Level 12
  (205, 20500, 36, 11, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Forretress - Rapid Spin - Level 17
  (205, 20500, 229, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Forretress - Bide - Level 20
  (205, 20500, 117, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Forretress - Natural Gift - Level 23
  (205, 20500, 363, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Forretress - Spikes - Level 28
  (205, 20500, 191, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Forretress - Mirror Shot - Level 31
  (205, 20500, 429, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Forretress - Autotomize - Level 32
  (205, 20500, 475, 11, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Forretress - Payback - Level 36
  (205, 20500, 371, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Forretress - Explosion - Level 42
  (205, 20500, 153, 11, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Forretress - Iron Defense - Level 46
  (205, 20500, 334, 11, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Forretress - Gyro Ball - Level 50
  (205, 20500, 360, 11, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Forretress - Double-Edge - Level 56
  (205, 20500, 38, 11, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Forretress - Magnet Rise - Level 60
  (205, 20500, 393, 11, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Forretress - Zap Cannon - Level 64
  (205, 20500, 192, 11, NULL, 1, 64, NULL, NULL, NULL, 21),
  -- Forretress - Heavy Slam - Level 70
  (205, 20500, 484, 11, NULL, 1, 70, NULL, NULL, NULL, 22),
  -- Forretress - Toxic - TM06
  (205, 20500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Forretress - Venoshock - TM09
  (205, 20500, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 24),
  -- Forretress - Hidden Power - TM10
  (205, 20500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 26),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Forretress - Light Screen - TM16
  (205, 20500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 28),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Forretress - Frustration - TM21
  (205, 20500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 31),
  -- Forretress - Earthquake - TM26
  (205, 20500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 32),
  -- Forretress - Return - TM27
  (205, 20500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Forretress - Dig - TM28
  (205, 20500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 34),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Forretress - Reflect - TM33
  (205, 20500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 37),
  -- Forretress - Rock Tomb - TM39
  (205, 20500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Forretress - Facade - TM42
  (205, 20500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Forretress - Round - TM48
  (205, 20500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Forretress - Explosion - TM64
  (205, 20500, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 43),
  -- Forretress - Payback - TM66
  (205, 20500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 44),
  -- Forretress - Giga Impact - TM68
  (205, 20500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 45),
  -- Forretress - Rock Polish - TM69
  (205, 20500, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 46),
  -- Forretress - Volt Switch - TM72
  (205, 20500, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 47),
  -- Forretress - Gyro Ball - TM74
  (205, 20500, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 48),
  -- Forretress - Struggle Bug - TM76
  (205, 20500, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 49),
  -- Forretress - Bulldoze - TM78
  (205, 20500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Forretress - Rock Slide - TM80
  (205, 20500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Forretress - Swagger - TM87
  (205, 20500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Forretress - Substitute - TM90
  (205, 20500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Forretress - Flash Cannon - TM91
  (205, 20500, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 54),
  -- Forretress - Rock Smash - TM94
  (205, 20500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Forretress - Strength - HM04
  (205, 20500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Dunsparce - Rage - Level 1
  (206, 20600, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Level 4
  (206, 20600, 111, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Dunsparce - Rollout - Level 16
  (206, 20600, 205, 11, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Dunsparce - Spite - Level 20
  (206, 20600, 180, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Dunsparce - Pursuit - Level 24
  (206, 20600, 228, 11, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 28
  (206, 20600, 103, 11, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Dunsparce - Yawn - Level 8
  (206, 20600, 281, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Dunsparce - Ancient Power - Level 48
  (206, 20600, 246, 11, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Dunsparce - Take Down - Level 38
  (206, 20600, 36, 11, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dunsparce - Roost - Level 33
  (206, 20600, 355, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Dunsparce - Glare - Level 12
  (206, 20600, 137, 11, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Dunsparce - Dig - Level 53
  (206, 20600, 91, 11, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Dunsparce - Coil - Level 43
  (206, 20600, 489, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Dunsparce - Endeavor - Level 58
  (206, 20600, 283, 11, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Dunsparce - Flail - Level 63
  (206, 20600, 175, 11, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Dunsparce - Calm Mind - TM04
  (206, 20600, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Dunsparce - Toxic - TM06
  (206, 20600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Dunsparce - Hidden Power - TM10
  (206, 20600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Dunsparce - Ice Beam - TM13
  (206, 20600, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Dunsparce - Blizzard - TM14
  (206, 20600, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Dunsparce - Frustration - TM21
  (206, 20600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Dunsparce - Thunderbolt - TM24
  (206, 20600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Dunsparce - Earthquake - TM26
  (206, 20600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Dunsparce - Return - TM27
  (206, 20600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Dunsparce - Dig - TM28
  (206, 20600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Dunsparce - Shadow Ball - TM30
  (206, 20600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Dunsparce - Flamethrower - TM35
  (206, 20600, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 33),
  -- Dunsparce - Fire Blast - TM38
  (206, 20600, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 34),
  -- Dunsparce - Rock Tomb - TM39
  (206, 20600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Dunsparce - Facade - TM42
  (206, 20600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Dunsparce - Round - TM48
  (206, 20600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Dunsparce - Charge Beam - TM57
  (206, 20600, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 41),
  -- Dunsparce - Incinerate - TM59
  (206, 20600, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 42),
  -- Dunsparce - Retaliate - TM67
  (206, 20600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 43),
  -- Dunsparce - Thunder Wave - TM73
  (206, 20600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 44),
  -- Dunsparce - Gyro Ball - TM74
  (206, 20600, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 45),
  -- Dunsparce - Psych Up - TM77
  (206, 20600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 46),
  -- Dunsparce - Bulldoze - TM78
  (206, 20600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Dunsparce - Rock Slide - TM80
  (206, 20600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 48),
  -- Dunsparce - Poison Jab - TM84
  (206, 20600, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 49),
  -- Dunsparce - Dream Eater - TM85
  (206, 20600, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Dunsparce - Swagger - TM87
  (206, 20600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Dunsparce - Substitute - TM90
  (206, 20600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Dunsparce - Wild Charge - TM93
  (206, 20600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 53),
  -- Dunsparce - Rock Smash - TM94
  (206, 20600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Dunsparce - Strength - HM04
  (206, 20600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Dunsparce - Agility - Egg Move
  (206, 20600, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dunsparce - Ancient Power - Egg Move
  (206, 20600, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dunsparce - Astonish - Egg Move
  (206, 20600, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dunsparce - Bide - Egg Move
  (206, 20600, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dunsparce - Bite - Egg Move
  (206, 20600, 44, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dunsparce - Curse - Egg Move
  (206, 20600, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dunsparce - Headbutt - Egg Move
  (206, 20600, 29, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dunsparce - Hex - Egg Move
  (206, 20600, 506, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dunsparce - Magic Coat - Egg Move
  (206, 20600, 277, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dunsparce - Secret Power - Egg Move
  (206, 20600, 290, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Sleep Talk - Egg Move
  (206, 20600, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dunsparce - Snore - Egg Move
  (206, 20600, 173, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Dunsparce - Trump Card - Egg Move
  (206, 20600, 376, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 5
  (207, 20700, 28, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 9
  (207, 20700, 106, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gligar - Knock Off - Level 12
  (207, 20700, 282, 11, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Gligar - Quick Attack - Level 16
  (207, 20700, 98, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Gligar - Fury Cutter - Level 20
  (207, 20700, 210, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gligar - Feint Attack - Level 23
  (207, 20700, 185, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Gligar - Acrobatics - Level 27
  (207, 20700, 512, 11, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gligar - Slash - Level 34
  (207, 20700, 163, 11, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Gligar - U-turn - Level 42
  (207, 20700, 369, 11, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Gligar - Screech - Level 31
  (207, 20700, 103, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Gligar - X-Scissor - Level 45
  (207, 20700, 404, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Gligar - Swords Dance - Level 38
  (207, 20700, 14, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Gligar - Guillotine - Level 49
  (207, 20700, 12, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Gligar - Hone Claws - TM01
  (207, 20700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Gligar - Toxic - TM06
  (207, 20700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Gligar - Venoshock - TM09
  (207, 20700, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 17),
  -- Gligar - Hidden Power - TM10
  (207, 20700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Gligar - Taunt - TM12
  (207, 20700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Gligar - Rain Dance - TM18
  (207, 20700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Gligar - Frustration - TM21
  (207, 20700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Gligar - Earthquake - TM26
  (207, 20700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 24),
  -- Gligar - Return - TM27
  (207, 20700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Gligar - Dig - TM28
  (207, 20700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Gligar - Brick Break - TM31
  (207, 20700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 29),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 30),
  -- Gligar - Rock Tomb - TM39
  (207, 20700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Gligar - Aerial Ace - TM40
  (207, 20700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Gligar - Torment - TM41
  (207, 20700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 33),
  -- Gligar - Facade - TM42
  (207, 20700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Gligar - Round - TM48
  (207, 20700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Gligar - False Swipe - TM54
  (207, 20700, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 39),
  -- Gligar - Fling - TM56
  (207, 20700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Gligar - Acrobatics - TM62
  (207, 20700, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 41),
  -- Gligar - Payback - TM66
  (207, 20700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 42),
  -- Gligar - Rock Polish - TM69
  (207, 20700, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 43),
  -- Gligar - Stone Edge - TM71
  (207, 20700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 44),
  -- Gligar - Swords Dance - TM75
  (207, 20700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 45),
  -- Gligar - Struggle Bug - TM76
  (207, 20700, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 46),
  -- Gligar - Bulldoze - TM78
  (207, 20700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Gligar - Rock Slide - TM80
  (207, 20700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 48),
  -- Gligar - X-Scissor - TM81
  (207, 20700, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 49),
  -- Gligar - Poison Jab - TM84
  (207, 20700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 50),
  -- Gligar - Swagger - TM87
  (207, 20700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Gligar - U-turn - TM89
  (207, 20700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 52),
  -- Gligar - Substitute - TM90
  (207, 20700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Gligar - Rock Smash - TM94
  (207, 20700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Gligar - Cut - HM01
  (207, 20700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 55),
  -- Gligar - Strength - HM04
  (207, 20700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Gligar - Agility - Egg Move
  (207, 20700, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gligar - Baton Pass - Egg Move
  (207, 20700, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gligar - Counter - Egg Move
  (207, 20700, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gligar - Cross Poison - Egg Move
  (207, 20700, 440, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gligar - Double-Edge - Egg Move
  (207, 20700, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gligar - Feint - Egg Move
  (207, 20700, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gligar - Metal Claw - Egg Move
  (207, 20700, 232, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gligar - Night Slash - Egg Move
  (207, 20700, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gligar - Poison Tail - Egg Move
  (207, 20700, 342, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gligar - Power Trick - Egg Move
  (207, 20700, 379, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Razor Wind - Egg Move
  (207, 20700, 13, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gligar - Rock Climb - Egg Move
  (207, 20700, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gligar - Sand Tomb - Egg Move
  (207, 20700, 328, 11, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gligar - Wing Attack - Egg Move
  (207, 20700, 17, 11, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Steelix - Thunder Fang - Level 1
  (208, 20800, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Ice Fang - Level 1
  (208, 20800, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Fire Fang - Level 1
  (208, 20800, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steelix - Mud Sport - Level 1
  (208, 20800, 300, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steelix - Harden - Level 1
  (208, 20800, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Steelix - Bind - Level 1
  (208, 20800, 20, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Steelix - Curse - Level 46
  (208, 20800, 174, 11, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Steelix - Rock Throw - Level 9
  (208, 20800, 88, 11, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Steelix - Rage - Level 14
  (208, 20800, 99, 11, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Steelix - Rock Tomb - Level 17
  (208, 20800, 317, 11, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Steelix - Stealth Rock - Level 38
  (208, 20800, 446, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Steelix - Autotomize - Level 30
  (208, 20800, 475, 11, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Steelix - Smack Down - Level 22
  (208, 20800, 479, 11, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Steelix - Dragon Breath - Level 41
  (208, 20800, 225, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Steelix - Slam - Level 33
  (208, 20800, 21, 11, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Steelix - Screech - Level 6
  (208, 20800, 103, 11, NULL, 1, 6, NULL, NULL, NULL, 17),
  -- Steelix - Crunch - Level 54
  (208, 20800, 242, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Steelix - Iron Tail - Level 49
  (208, 20800, 231, 11, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Steelix - Stone Edge - Level 62
  (208, 20800, 444, 11, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Steelix - Double-Edge - Level 57
  (208, 20800, 38, 11, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Steelix - Sandstorm - Level 25
  (208, 20800, 201, 11, NULL, 1, 25, NULL, NULL, NULL, 22),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 23),
  -- Steelix - Toxic - TM06
  (208, 20800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 24),
  -- Steelix - Hidden Power - TM10
  (208, 20800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 26),
  -- Steelix - Taunt - TM12
  (208, 20800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 27),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 28),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Steelix - Frustration - TM21
  (208, 20800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Steelix - Smack Down - TM23
  (208, 20800, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 31),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 32),
  -- Steelix - Return - TM27
  (208, 20800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Steelix - Dig - TM28
  (208, 20800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 34),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 36),
  -- Steelix - Rock Tomb - TM39
  (208, 20800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 37),
  -- Steelix - Torment - TM41
  (208, 20800, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 38),
  -- Steelix - Facade - TM42
  (208, 20800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Steelix - Round - TM48
  (208, 20800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Steelix - Explosion - TM64
  (208, 20800, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 43),
  -- Steelix - Payback - TM66
  (208, 20800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 44),
  -- Steelix - Giga Impact - TM68
  (208, 20800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 45),
  -- Steelix - Rock Polish - TM69
  (208, 20800, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 46),
  -- Steelix - Stone Edge - TM71
  (208, 20800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 47),
  -- Steelix - Gyro Ball - TM74
  (208, 20800, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 48),
  -- Steelix - Psych Up - TM77
  (208, 20800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 49),
  -- Steelix - Bulldoze - TM78
  (208, 20800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Steelix - Rock Slide - TM80
  (208, 20800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Steelix - Dragon Tail - TM82
  (208, 20800, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 52),
  -- Steelix - Swagger - TM87
  (208, 20800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 53),
  -- Steelix - Substitute - TM90
  (208, 20800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 54),
  -- Steelix - Flash Cannon - TM91
  (208, 20800, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 55),
  -- Steelix - Rock Smash - TM94
  (208, 20800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 56),
  -- Steelix - Cut - HM01
  (208, 20800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 57),
  -- Steelix - Strength - HM04
  (208, 20800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 58),
  -- Snubbull - Ice Fang - Level 1
  (209, 20900, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Fire Fang - Level 1
  (209, 20900, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Thunder Fang - Level 1
  (209, 20900, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snubbull - Tail Whip - Level 1
  (209, 20900, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snubbull - Charm - Level 1
  (209, 20900, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snubbull - Bite - Level 7
  (209, 20900, 44, 11, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Snubbull - Lick - Level 13
  (209, 20900, 122, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Snubbull - Headbutt - Level 19
  (209, 20900, 29, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Snubbull - Roar - Level 25
  (209, 20900, 46, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Snubbull - Rage - Level 31
  (209, 20900, 99, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Snubbull - Take Down - Level 37
  (209, 20900, 36, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snubbull - Payback - Level 43
  (209, 20900, 371, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Snubbull - Crunch - Level 49
  (209, 20900, 242, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Snubbull - Toxic - TM06
  (209, 20900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Snubbull - Bulk Up - TM08
  (209, 20900, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 18),
  -- Snubbull - Hidden Power - TM10
  (209, 20900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Snubbull - Taunt - TM12
  (209, 20900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Snubbull - Frustration - TM21
  (209, 20900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Snubbull - Solar Beam - TM22
  (209, 20900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Snubbull - Thunderbolt - TM24
  (209, 20900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Snubbull - Earthquake - TM26
  (209, 20900, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Snubbull - Return - TM27
  (209, 20900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Snubbull - Dig - TM28
  (209, 20900, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Snubbull - Brick Break - TM31
  (209, 20900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 32),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Snubbull - Reflect - TM33
  (209, 20900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Snubbull - Flamethrower - TM35
  (209, 20900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 35),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 36),
  -- Snubbull - Fire Blast - TM38
  (209, 20900, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 37),
  -- Snubbull - Torment - TM41
  (209, 20900, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 38),
  -- Snubbull - Facade - TM42
  (209, 20900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 42),
  -- Snubbull - Round - TM48
  (209, 20900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Snubbull - Overheat - TM50
  (209, 20900, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 44),
  -- Snubbull - Fling - TM56
  (209, 20900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Snubbull - Incinerate - TM59
  (209, 20900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Snubbull - Payback - TM66
  (209, 20900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Snubbull - Retaliate - TM67
  (209, 20900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Snubbull - Thunder Wave - TM73
  (209, 20900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Snubbull - Bulldoze - TM78
  (209, 20900, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Snubbull - Work Up - TM83
  (209, 20900, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 51),
  -- Snubbull - Swagger - TM87
  (209, 20900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Snubbull - Substitute - TM90
  (209, 20900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Snubbull - Wild Charge - TM93
  (209, 20900, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 54),
  -- Snubbull - Rock Smash - TM94
  (209, 20900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Snubbull - Snarl - TM95
  (209, 20900, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 56),
  -- Snubbull - Strength - HM04
  (209, 20900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 57),
  -- Snubbull - Close Combat - Egg Move
  (209, 20900, 370, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snubbull - Crunch - Egg Move
  (209, 20900, 242, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Snubbull - Double-Edge - Egg Move
  (209, 20900, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snubbull - Feint Attack - Egg Move
  (209, 20900, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snubbull - Fire Fang - Egg Move
  (209, 20900, 424, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snubbull - Focus Punch - Egg Move
  (209, 20900, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snubbull - Heal Bell - Egg Move
  (209, 20900, 215, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snubbull - Ice Fang - Egg Move
  (209, 20900, 423, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snubbull - Metronome - Egg Move
  (209, 20900, 118, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snubbull - Mimic - Egg Move
  (209, 20900, 102, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snubbull - Present - Egg Move
  (209, 20900, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snubbull - Smelling Salts - Egg Move
  (209, 20900, 265, 11, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snubbull - Snore - Egg Move
  (209, 20900, 173, 11, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Snubbull - Thunder Fang - Egg Move
  (209, 20900, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Granbull - Ice Fang - Level 1
  (210, 21000, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Fire Fang - Level 1
  (210, 21000, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Thunder Fang - Level 1
  (210, 21000, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Granbull - Tail Whip - Level 1
  (210, 21000, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Granbull - Charm - Level 1
  (210, 21000, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Granbull - Bite - Level 7
  (210, 21000, 44, 11, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Granbull - Lick - Level 13
  (210, 21000, 122, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Granbull - Headbutt - Level 19
  (210, 21000, 29, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Granbull - Roar - Level 27
  (210, 21000, 46, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Granbull - Rage - Level 35
  (210, 21000, 99, 11, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Granbull - Take Down - Level 43
  (210, 21000, 36, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Granbull - Payback - Level 51
  (210, 21000, 371, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Granbull - Crunch - Level 59
  (210, 21000, 242, 11, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Granbull - Outrage - Level 67
  (210, 21000, 200, 11, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Granbull - Toxic - TM06
  (210, 21000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Granbull - Bulk Up - TM08
  (210, 21000, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Granbull - Hidden Power - TM10
  (210, 21000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Granbull - Taunt - TM12
  (210, 21000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Granbull - Frustration - TM21
  (210, 21000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Granbull - Solar Beam - TM22
  (210, 21000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Granbull - Thunderbolt - TM24
  (210, 21000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Granbull - Earthquake - TM26
  (210, 21000, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Granbull - Return - TM27
  (210, 21000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Granbull - Dig - TM28
  (210, 21000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Granbull - Brick Break - TM31
  (210, 21000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Granbull - Reflect - TM33
  (210, 21000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Granbull - Flamethrower - TM35
  (210, 21000, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 37),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 38),
  -- Granbull - Fire Blast - TM38
  (210, 21000, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 39),
  -- Granbull - Rock Tomb - TM39
  (210, 21000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 40),
  -- Granbull - Torment - TM41
  (210, 21000, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 41),
  -- Granbull - Facade - TM42
  (210, 21000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 42),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 43),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 44),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 45),
  -- Granbull - Round - TM48
  (210, 21000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Granbull - Overheat - TM50
  (210, 21000, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 47),
  -- Granbull - Focus Blast - TM52
  (210, 21000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 48),
  -- Granbull - Fling - TM56
  (210, 21000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 49),
  -- Granbull - Incinerate - TM59
  (210, 21000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 50),
  -- Granbull - Payback - TM66
  (210, 21000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 51),
  -- Granbull - Retaliate - TM67
  (210, 21000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 52),
  -- Granbull - Giga Impact - TM68
  (210, 21000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 53),
  -- Granbull - Stone Edge - TM71
  (210, 21000, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 54),
  -- Granbull - Thunder Wave - TM73
  (210, 21000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 55),
  -- Granbull - Bulldoze - TM78
  (210, 21000, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 56),
  -- Granbull - Rock Slide - TM80
  (210, 21000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 57),
  -- Granbull - Work Up - TM83
  (210, 21000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 58),
  -- Granbull - Swagger - TM87
  (210, 21000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Granbull - Substitute - TM90
  (210, 21000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Granbull - Wild Charge - TM93
  (210, 21000, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 61),
  -- Granbull - Rock Smash - TM94
  (210, 21000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Granbull - Snarl - TM95
  (210, 21000, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 63),
  -- Granbull - Strength - HM04
  (210, 21000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 64),
  -- Qwilfish - Spikes - Level 1
  (211, 21100, 191, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Qwilfish - Harden - Level 9
  (211, 21100, 106, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Qwilfish - Minimize - Level 9
  (211, 21100, 107, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Qwilfish - Water Gun - Level 13
  (211, 21100, 55, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Qwilfish - Rollout - Level 17
  (211, 21100, 205, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Qwilfish - Toxic Spikes - Level 21
  (211, 21100, 390, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Qwilfish - Stockpile - Level 25
  (211, 21100, 254, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Qwilfish - Spit Up - Level 25
  (211, 21100, 255, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Qwilfish - Revenge - Level 29
  (211, 21100, 279, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Qwilfish - Brine - Level 33
  (211, 21100, 362, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Qwilfish - Pin Missile - Level 37
  (211, 21100, 42, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Qwilfish - Take Down - Level 41
  (211, 21100, 36, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Qwilfish - Aqua Tail - Level 45
  (211, 21100, 401, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Qwilfish - Poison Jab - Level 49
  (211, 21100, 398, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Qwilfish - Destiny Bond - Level 53
  (211, 21100, 194, 11, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Qwilfish - Hydro Pump - Level 57
  (211, 21100, 56, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Qwilfish - Hail - TM07
  (211, 21100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Qwilfish - Venoshock - TM09
  (211, 21100, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 21),
  -- Qwilfish - Hidden Power - TM10
  (211, 21100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Qwilfish - Taunt - TM12
  (211, 21100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Qwilfish - Ice Beam - TM13
  (211, 21100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 24),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 25),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Qwilfish - Frustration - TM21
  (211, 21100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Qwilfish - Return - TM27
  (211, 21100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Qwilfish - Shadow Ball - TM30
  (211, 21100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Qwilfish - Sludge Wave - TM34
  (211, 21100, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 32),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 33),
  -- Qwilfish - Facade - TM42
  (211, 21100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Qwilfish - Round - TM48
  (211, 21100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Qwilfish - Scald - TM55
  (211, 21100, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 38),
  -- Qwilfish - Explosion - TM64
  (211, 21100, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 39),
  -- Qwilfish - Payback - TM66
  (211, 21100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Qwilfish - Thunder Wave - TM73
  (211, 21100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 41),
  -- Qwilfish - Gyro Ball - TM74
  (211, 21100, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 42),
  -- Qwilfish - Poison Jab - TM84
  (211, 21100, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 43),
  -- Qwilfish - Swagger - TM87
  (211, 21100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Qwilfish - Substitute - TM90
  (211, 21100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Qwilfish - Surf - HM03
  (211, 21100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 46),
  -- Qwilfish - Waterfall - HM05
  (211, 21100, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 47),
  -- Qwilfish - Dive - HM06
  (211, 21100, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 48),
  -- Qwilfish - Acid Spray - Egg Move
  (211, 21100, 491, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Qwilfish - Aqua Jet - Egg Move
  (211, 21100, 453, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Qwilfish - Astonish - Egg Move
  (211, 21100, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Qwilfish - Brine - Egg Move
  (211, 21100, 362, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Qwilfish - Bubble Beam - Egg Move
  (211, 21100, 61, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Qwilfish - Flail - Egg Move
  (211, 21100, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Qwilfish - Haze - Egg Move
  (211, 21100, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Qwilfish - Signal Beam - Egg Move
  (211, 21100, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Qwilfish - Supersonic - Egg Move
  (211, 21100, 48, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Qwilfish - Water Pulse - Egg Move
  (211, 21100, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Scizor - Bullet Punch - Level 1
  (212, 21200, 418, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scizor - Focus Energy - Level 5
  (212, 21200, 116, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Scizor - Pursuit - Level 9
  (212, 21200, 228, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Scizor - False Swipe - Level 13
  (212, 21200, 206, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scizor - Agility - Level 17
  (212, 21200, 97, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scizor - Metal Claw - Level 21
  (212, 21200, 232, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scizor - Fury Cutter - Level 25
  (212, 21200, 210, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Scizor - Slash - Level 29
  (212, 21200, 163, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Scizor - Razor Wind - Level 33
  (212, 21200, 13, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scizor - Iron Defense - Level 37
  (212, 21200, 334, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Scizor - X-Scissor - Level 41
  (212, 21200, 404, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Scizor - Night Slash - Level 45
  (212, 21200, 400, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scizor - Double Hit - Level 49
  (212, 21200, 458, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scizor - Iron Head - Level 53
  (212, 21200, 442, 11, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Scizor - Swords Dance - Level 57
  (212, 21200, 14, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Scizor - Feint - Level 61
  (212, 21200, 364, 11, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Scizor - Toxic - TM06
  (212, 21200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Scizor - Venoshock - TM09
  (212, 21200, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 20),
  -- Scizor - Hidden Power - TM10
  (212, 21200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Scizor - Light Screen - TM16
  (212, 21200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Scizor - Rain Dance - TM18
  (212, 21200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Scizor - Safeguard - TM20
  (212, 21200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Scizor - Frustration - TM21
  (212, 21200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Scizor - Return - TM27
  (212, 21200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Scizor - Brick Break - TM31
  (212, 21200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Scizor - Aerial Ace - TM40
  (212, 21200, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Scizor - Facade - TM42
  (212, 21200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Scizor - Round - TM48
  (212, 21200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Scizor - False Swipe - TM54
  (212, 21200, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 39),
  -- Scizor - Fling - TM56
  (212, 21200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Scizor - Acrobatics - TM62
  (212, 21200, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 41),
  -- Scizor - Giga Impact - TM68
  (212, 21200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Scizor - Swords Dance - TM75
  (212, 21200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 43),
  -- Scizor - Struggle Bug - TM76
  (212, 21200, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 44),
  -- Scizor - X-Scissor - TM81
  (212, 21200, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 45),
  -- Scizor - Swagger - TM87
  (212, 21200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Scizor - U-turn - TM89
  (212, 21200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 47),
  -- Scizor - Substitute - TM90
  (212, 21200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Scizor - Flash Cannon - TM91
  (212, 21200, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 49),
  -- Scizor - Rock Smash - TM94
  (212, 21200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Scizor - Cut - HM01
  (212, 21200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Scizor - Strength - HM04
  (212, 21200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Constrict - Level 1
  (213, 21300, 132, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Bide - Level 1
  (213, 21300, 117, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shuckle - Rollout - Level 37
  (213, 21300, 205, 11, NULL, 1, 37, NULL, NULL, NULL, 4),
  -- Shuckle - Encore - Level 7
  (213, 21300, 227, 11, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Shuckle - Wrap - Level 13
  (213, 21300, 35, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Shuckle - Struggle Bug - Level 1
  (213, 21300, 522, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Shuckle - Safeguard - Level 19
  (213, 21300, 219, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Shuckle - Rest - Level 25
  (213, 21300, 156, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shuckle - Gastro Acid - Level 31
  (213, 21300, 380, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Shuckle - Power Trick - Level 43
  (213, 21300, 379, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Shuckle - Bug Bite - Level 49
  (213, 21300, 450, 11, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Shuckle - Power Split - Level 55
  (213, 21300, 471, 11, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Shuckle - Guard Split - Level 55
  (213, 21300, 470, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Shuckle - Venoshock - TM09
  (213, 21300, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 16),
  -- Shuckle - Hidden Power - TM10
  (213, 21300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Shuckle - Safeguard - TM20
  (213, 21300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 20),
  -- Shuckle - Frustration - TM21
  (213, 21300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Shuckle - Smack Down - TM23
  (213, 21300, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 22),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Shuckle - Return - TM27
  (213, 21300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Shuckle - Dig - TM28
  (213, 21300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Shuckle - Sludge Wave - TM34
  (213, 21300, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 27),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 28),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Shuckle - Rock Tomb - TM39
  (213, 21300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Shuckle - Facade - TM42
  (213, 21300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Shuckle - Round - TM48
  (213, 21300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Shuckle - Rock Polish - TM69
  (213, 21300, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 35),
  -- Shuckle - Flash - TM70
  (213, 21300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 36),
  -- Shuckle - Stone Edge - TM71
  (213, 21300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 37),
  -- Shuckle - Gyro Ball - TM74
  (213, 21300, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 38),
  -- Shuckle - Struggle Bug - TM76
  (213, 21300, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 39),
  -- Shuckle - Bulldoze - TM78
  (213, 21300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Shuckle - Rock Slide - TM80
  (213, 21300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Shuckle - Swagger - TM87
  (213, 21300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Shuckle - Substitute - TM90
  (213, 21300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Shuckle - Rock Smash - TM94
  (213, 21300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Shuckle - Strength - HM04
  (213, 21300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 45),
  -- Shuckle - Acid - Egg Move
  (213, 21300, 51, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shuckle - Acupressure - Egg Move
  (213, 21300, 367, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shuckle - Final Gambit - Egg Move
  (213, 21300, 515, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shuckle - Helping Hand - Egg Move
  (213, 21300, 270, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shuckle - Knock Off - Egg Move
  (213, 21300, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shuckle - Mud-Slap - Egg Move
  (213, 21300, 189, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuckle - Rock Blast - Egg Move
  (213, 21300, 350, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuckle - Sand Tomb - Egg Move
  (213, 21300, 328, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuckle - Sweet Scent - Egg Move
  (213, 21300, 230, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heracross - Night Slash - Level 1
  (214, 21400, 400, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heracross - Horn Attack - Level 1
  (214, 21400, 30, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heracross - Endure - Level 1
  (214, 21400, 203, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heracross - Fury Attack - Level 7
  (214, 21400, 31, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Heracross - Aerial Ace - Level 13
  (214, 21400, 332, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Heracross - Counter - Level 25
  (214, 21400, 68, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Heracross - Brick Break - Level 19
  (214, 21400, 280, 11, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Heracross - Take Down - Level 31
  (214, 21400, 36, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Heracross - Close Combat - Level 37
  (214, 21400, 370, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Heracross - Feint - Level 49
  (214, 21400, 364, 11, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Heracross - Reversal - Level 43
  (214, 21400, 179, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Heracross - Megahorn - Level 55
  (214, 21400, 224, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Heracross - Toxic - TM06
  (214, 21400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Heracross - Bulk Up - TM08
  (214, 21400, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 16),
  -- Heracross - Venoshock - TM09
  (214, 21400, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 17),
  -- Heracross - Hidden Power - TM10
  (214, 21400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Heracross - Hyper Beam - TM15
  (214, 21400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Heracross - Rain Dance - TM18
  (214, 21400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Heracross - Frustration - TM21
  (214, 21400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Heracross - Smack Down - TM23
  (214, 21400, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 24),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Heracross - Return - TM27
  (214, 21400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Heracross - Dig - TM28
  (214, 21400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Heracross - Brick Break - TM31
  (214, 21400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Heracross - Rock Tomb - TM39
  (214, 21400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Heracross - Aerial Ace - TM40
  (214, 21400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Heracross - Facade - TM42
  (214, 21400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Heracross - Round - TM48
  (214, 21400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Heracross - Focus Blast - TM52
  (214, 21400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 37),
  -- Heracross - False Swipe - TM54
  (214, 21400, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 38),
  -- Heracross - Fling - TM56
  (214, 21400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Heracross - Shadow Claw - TM65
  (214, 21400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 40),
  -- Heracross - Retaliate - TM67
  (214, 21400, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 41),
  -- Heracross - Giga Impact - TM68
  (214, 21400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Heracross - Stone Edge - TM71
  (214, 21400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Heracross - Swords Dance - TM75
  (214, 21400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 44),
  -- Heracross - Struggle Bug - TM76
  (214, 21400, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 45),
  -- Heracross - Bulldoze - TM78
  (214, 21400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 46),
  -- Heracross - Rock Slide - TM80
  (214, 21400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 47),
  -- Heracross - Work Up - TM83
  (214, 21400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 48),
  -- Heracross - Swagger - TM87
  (214, 21400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Heracross - Substitute - TM90
  (214, 21400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 50),
  -- Heracross - Rock Smash - TM94
  (214, 21400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 51),
  -- Heracross - Cut - HM01
  (214, 21400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 52),
  -- Heracross - Strength - HM04
  (214, 21400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 53),
  -- Heracross - Bide - Egg Move
  (214, 21400, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heracross - Double-Edge - Egg Move
  (214, 21400, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heracross - Flail - Egg Move
  (214, 21400, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heracross - Focus Punch - Egg Move
  (214, 21400, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Harden - Egg Move
  (214, 21400, 106, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heracross - Megahorn - Egg Move
  (214, 21400, 224, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Heracross - Pursuit - Egg Move
  (214, 21400, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Heracross - Revenge - Egg Move
  (214, 21400, 279, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Heracross - Seismic Toss - Egg Move
  (214, 21400, 69, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 1
  (215, 21500, 269, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 8
  (215, 21500, 98, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sneasel - Feint Attack - Level 14
  (215, 21500, 185, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Sneasel - Icy Wind - Level 28
  (215, 21500, 196, 11, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 21
  (215, 21500, 154, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sneasel - Agility - Level 24
  (215, 21500, 97, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sneasel - Metal Claw - Level 49
  (215, 21500, 232, 11, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Sneasel - Hone Claws - Level 35
  (215, 21500, 468, 11, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sneasel - Beat Up - Level 42
  (215, 21500, 251, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Sneasel - Screech - Level 10
  (215, 21500, 103, 11, NULL, 1, 10, NULL, NULL, NULL, 12),
  -- Sneasel - Slash - Level 38
  (215, 21500, 163, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Sneasel - Ice Shard - Level 51
  (215, 21500, 420, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Sneasel - Hone Claws - TM01
  (215, 21500, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Sneasel - Calm Mind - TM04
  (215, 21500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Sneasel - Toxic - TM06
  (215, 21500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Sneasel - Hail - TM07
  (215, 21500, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Sneasel - Hidden Power - TM10
  (215, 21500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Sneasel - Sunny Day - TM11
  (215, 21500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Sneasel - Taunt - TM12
  (215, 21500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Sneasel - Ice Beam - TM13
  (215, 21500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Sneasel - Frustration - TM21
  (215, 21500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Sneasel - Return - TM27
  (215, 21500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Sneasel - Dig - TM28
  (215, 21500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Sneasel - Brick Break - TM31
  (215, 21500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Sneasel - Reflect - TM33
  (215, 21500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Sneasel - Aerial Ace - TM40
  (215, 21500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Sneasel - Torment - TM41
  (215, 21500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Sneasel - Facade - TM42
  (215, 21500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Sneasel - Low Sweep - TM47
  (215, 21500, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 39),
  -- Sneasel - Round - TM48
  (215, 21500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Sneasel - False Swipe - TM54
  (215, 21500, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 41),
  -- Sneasel - Fling - TM56
  (215, 21500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Sneasel - Embargo - TM63
  (215, 21500, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 43),
  -- Sneasel - Shadow Claw - TM65
  (215, 21500, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 44),
  -- Sneasel - Payback - TM66
  (215, 21500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 45),
  -- Sneasel - Retaliate - TM67
  (215, 21500, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 46),
  -- Sneasel - Swords Dance - TM75
  (215, 21500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 47),
  -- Sneasel - Psych Up - TM77
  (215, 21500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 48),
  -- Sneasel - X-Scissor - TM81
  (215, 21500, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 49),
  -- Sneasel - Poison Jab - TM84
  (215, 21500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 50),
  -- Sneasel - Dream Eater - TM85
  (215, 21500, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 51),
  -- Sneasel - Swagger - TM87
  (215, 21500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Sneasel - Substitute - TM90
  (215, 21500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Sneasel - Rock Smash - TM94
  (215, 21500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Sneasel - Snarl - TM95
  (215, 21500, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 55),
  -- Sneasel - Cut - HM01
  (215, 21500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 56),
  -- Sneasel - Surf - HM03
  (215, 21500, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 57),
  -- Sneasel - Strength - HM04
  (215, 21500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 58),
  -- Sneasel - Assist - Egg Move
  (215, 21500, 274, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sneasel - Avalanche - Egg Move
  (215, 21500, 419, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sneasel - Bite - Egg Move
  (215, 21500, 44, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sneasel - Counter - Egg Move
  (215, 21500, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Crush Claw - Egg Move
  (215, 21500, 306, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Double Hit - Egg Move
  (215, 21500, 458, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Fake Out - Egg Move
  (215, 21500, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasel - Feint - Egg Move
  (215, 21500, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasel - Foresight - Egg Move
  (215, 21500, 193, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sneasel - Ice Punch - Egg Move
  (215, 21500, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasel - Ice Shard - Egg Move
  (215, 21500, 420, 11, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sneasel - Punishment - Egg Move
  (215, 21500, 386, 11, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sneasel - Pursuit - Egg Move
  (215, 21500, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sneasel - Spite - Egg Move
  (215, 21500, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Teddiursa - Covet - Level 1
  (216, 21600, 343, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Leer - Level 1
  (216, 21600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Teddiursa - Lick - Level 1
  (216, 21600, 122, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Teddiursa - Fake Tears - Level 1
  (216, 21600, 313, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Teddiursa - Fury Swipes - Level 8
  (216, 21600, 154, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Teddiursa - Feint Attack - Level 15
  (216, 21600, 185, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Teddiursa - Sweet Scent - Level 22
  (216, 21600, 230, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Teddiursa - Slash - Level 29
  (216, 21600, 163, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Teddiursa - Charm - Level 36
  (216, 21600, 204, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Teddiursa - Rest - Level 43
  (216, 21600, 156, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Teddiursa - Thrash - Level 50
  (216, 21600, 37, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Teddiursa - Fling - Level 57
  (216, 21600, 374, 11, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Teddiursa - Hone Claws - TM01
  (216, 21600, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Teddiursa - Toxic - TM06
  (216, 21600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Teddiursa - Bulk Up - TM08
  (216, 21600, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 18),
  -- Teddiursa - Hidden Power - TM10
  (216, 21600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Teddiursa - Taunt - TM12
  (216, 21600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Teddiursa - Rain Dance - TM18
  (216, 21600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Teddiursa - Frustration - TM21
  (216, 21600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Teddiursa - Return - TM27
  (216, 21600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Teddiursa - Dig - TM28
  (216, 21600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Teddiursa - Brick Break - TM31
  (216, 21600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Teddiursa - Rock Tomb - TM39
  (216, 21600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Teddiursa - Aerial Ace - TM40
  (216, 21600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Teddiursa - Torment - TM41
  (216, 21600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 32),
  -- Teddiursa - Facade - TM42
  (216, 21600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Teddiursa - Round - TM48
  (216, 21600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Teddiursa - Fling - TM56
  (216, 21600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Teddiursa - Shadow Claw - TM65
  (216, 21600, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 39),
  -- Teddiursa - Payback - TM66
  (216, 21600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Teddiursa - Retaliate - TM67
  (216, 21600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 41),
  -- Teddiursa - Swords Dance - TM75
  (216, 21600, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 42),
  -- Teddiursa - Bulldoze - TM78
  (216, 21600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Teddiursa - Rock Slide - TM80
  (216, 21600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Teddiursa - Work Up - TM83
  (216, 21600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 45),
  -- Teddiursa - Swagger - TM87
  (216, 21600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Teddiursa - Substitute - TM90
  (216, 21600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Teddiursa - Rock Smash - TM94
  (216, 21600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Teddiursa - Cut - HM01
  (216, 21600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 49),
  -- Teddiursa - Strength - HM04
  (216, 21600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Teddiursa - Belly Drum - Egg Move
  (216, 21600, 187, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Teddiursa - Chip Away - Egg Move
  (216, 21600, 498, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Teddiursa - Close Combat - Egg Move
  (216, 21600, 370, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Teddiursa - Counter - Egg Move
  (216, 21600, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Teddiursa - Cross Chop - Egg Move
  (216, 21600, 238, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Teddiursa - Crunch - Egg Move
  (216, 21600, 242, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Teddiursa - Double-Edge - Egg Move
  (216, 21600, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Teddiursa - Fake Tears - Egg Move
  (216, 21600, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Teddiursa - Metal Claw - Egg Move
  (216, 21600, 232, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Teddiursa - Night Slash - Egg Move
  (216, 21600, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Teddiursa - Seismic Toss - Egg Move
  (216, 21600, 69, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Teddiursa - Sleep Talk - Egg Move
  (216, 21600, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Teddiursa - Take Down - Egg Move
  (216, 21600, 36, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Teddiursa - Yawn - Egg Move
  (216, 21600, 281, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ursaring - Covet - Level 1
  (217, 21700, 343, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Fake Tears - Level 1
  (217, 21700, 313, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaring - Fury Swipes - Level 8
  (217, 21700, 154, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ursaring - Feint Attack - Level 15
  (217, 21700, 185, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ursaring - Sweet Scent - Level 22
  (217, 21700, 230, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Ursaring - Slash - Level 29
  (217, 21700, 163, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ursaring - Scary Face - Level 38
  (217, 21700, 184, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Ursaring - Rest - Level 47
  (217, 21700, 156, 11, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Ursaring - Snore - Level 49
  (217, 21700, 173, 11, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Ursaring - Thrash - Level 58
  (217, 21700, 37, 11, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Ursaring - Hammer Arm - Level 67
  (217, 21700, 359, 11, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Ursaring - Hone Claws - TM01
  (217, 21700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Ursaring - Toxic - TM06
  (217, 21700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Ursaring - Bulk Up - TM08
  (217, 21700, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 18),
  -- Ursaring - Hidden Power - TM10
  (217, 21700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Ursaring - Taunt - TM12
  (217, 21700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Ursaring - Rain Dance - TM18
  (217, 21700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Ursaring - Frustration - TM21
  (217, 21700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Ursaring - Smack Down - TM23
  (217, 21700, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Ursaring - Return - TM27
  (217, 21700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Ursaring - Dig - TM28
  (217, 21700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Ursaring - Brick Break - TM31
  (217, 21700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Ursaring - Rock Tomb - TM39
  (217, 21700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Ursaring - Aerial Ace - TM40
  (217, 21700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Ursaring - Torment - TM41
  (217, 21700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Ursaring - Facade - TM42
  (217, 21700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Ursaring - Round - TM48
  (217, 21700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Ursaring - Focus Blast - TM52
  (217, 21700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Ursaring - Fling - TM56
  (217, 21700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Ursaring - Shadow Claw - TM65
  (217, 21700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Ursaring - Payback - TM66
  (217, 21700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Ursaring - Retaliate - TM67
  (217, 21700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 44),
  -- Ursaring - Giga Impact - TM68
  (217, 21700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 45),
  -- Ursaring - Stone Edge - TM71
  (217, 21700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 46),
  -- Ursaring - Swords Dance - TM75
  (217, 21700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 47),
  -- Ursaring - Bulldoze - TM78
  (217, 21700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Ursaring - Rock Slide - TM80
  (217, 21700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Ursaring - Work Up - TM83
  (217, 21700, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 50),
  -- Ursaring - Swagger - TM87
  (217, 21700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Ursaring - Substitute - TM90
  (217, 21700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Ursaring - Rock Smash - TM94
  (217, 21700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Ursaring - Cut - HM01
  (217, 21700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Ursaring - Strength - HM04
  (217, 21700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Slugma - Yawn - Level 1
  (218, 21800, 281, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Smog - Level 1
  (218, 21800, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 5
  (218, 21800, 52, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 10
  (218, 21800, 88, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 14
  (218, 21800, 106, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Slugma - Recover - Level 19
  (218, 21800, 105, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Slugma - Flame Burst - Level 23
  (218, 21800, 481, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Slugma - Ancient Power - Level 28
  (218, 21800, 246, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Slugma - Amnesia - Level 32
  (218, 21800, 133, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Slugma - Lava Plume - Level 37
  (218, 21800, 436, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Slugma - Rock Slide - Level 41
  (218, 21800, 157, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Slugma - Body Slam - Level 46
  (218, 21800, 34, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Slugma - Flamethrower - Level 50
  (218, 21800, 53, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Slugma - Earth Power - Level 55
  (218, 21800, 414, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Slugma - Toxic - TM06
  (218, 21800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Slugma - Hidden Power - TM10
  (218, 21800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Slugma - Light Screen - TM16
  (218, 21800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Slugma - Frustration - TM21
  (218, 21800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Slugma - Return - TM27
  (218, 21800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Slugma - Reflect - TM33
  (218, 21800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 23),
  -- Slugma - Flamethrower - TM35
  (218, 21800, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 24),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 25),
  -- Slugma - Rock Tomb - TM39
  (218, 21800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 26),
  -- Slugma - Facade - TM42
  (218, 21800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Slugma - Flame Charge - TM43
  (218, 21800, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 28),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Slugma - Round - TM48
  (218, 21800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Slugma - Overheat - TM50
  (218, 21800, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 32),
  -- Slugma - Incinerate - TM59
  (218, 21800, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 33),
  -- Slugma - Will-O-Wisp - TM61
  (218, 21800, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Slugma - Rock Slide - TM80
  (218, 21800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 35),
  -- Slugma - Swagger - TM87
  (218, 21800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Slugma - Substitute - TM90
  (218, 21800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Slugma - Rock Smash - TM94
  (218, 21800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 38),
  -- Slugma - Acid Armor - Egg Move
  (218, 21800, 151, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Slugma - Curse - Egg Move
  (218, 21800, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Slugma - Earth Power - Egg Move
  (218, 21800, 414, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slugma - Heat Wave - Egg Move
  (218, 21800, 257, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slugma - Inferno - Egg Move
  (218, 21800, 517, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slugma - Memento - Egg Move
  (218, 21800, 262, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slugma - Rollout - Egg Move
  (218, 21800, 205, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slugma - Smokescreen - Egg Move
  (218, 21800, 108, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slugma - Spit Up - Egg Move
  (218, 21800, 255, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slugma - Stockpile - Egg Move
  (218, 21800, 254, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Slugma - Swallow - Egg Move
  (218, 21800, 256, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magcargo - Yawn - Level 1
  (219, 21900, 281, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magcargo - Ember - Level 5
  (219, 21900, 52, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Magcargo - Rock Throw - Level 10
  (219, 21900, 88, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Magcargo - Harden - Level 14
  (219, 21900, 106, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Magcargo - Recover - Level 19
  (219, 21900, 105, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Magcargo - Flame Burst - Level 23
  (219, 21900, 481, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Magcargo - Ancient Power - Level 28
  (219, 21900, 246, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Magcargo - Amnesia - Level 32
  (219, 21900, 133, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Magcargo - Lava Plume - Level 37
  (219, 21900, 436, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Magcargo - Shell Smash - Level 38
  (219, 21900, 504, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Magcargo - Rock Slide - Level 44
  (219, 21900, 157, 11, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Magcargo - Body Slam - Level 52
  (219, 21900, 34, 11, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Magcargo - Flamethrower - Level 59
  (219, 21900, 53, 11, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Magcargo - Earth Power - Level 67
  (219, 21900, 414, 11, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Magcargo - Toxic - TM06
  (219, 21900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Magcargo - Hidden Power - TM10
  (219, 21900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Magcargo - Light Screen - TM16
  (219, 21900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Magcargo - Frustration - TM21
  (219, 21900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Magcargo - Solar Beam - TM22
  (219, 21900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Magcargo - Smack Down - TM23
  (219, 21900, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Magcargo - Return - TM27
  (219, 21900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Magcargo - Reflect - TM33
  (219, 21900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Magcargo - Flamethrower - TM35
  (219, 21900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 31),
  -- Magcargo - Sandstorm - TM37
  (219, 21900, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Magcargo - Rock Tomb - TM39
  (219, 21900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Magcargo - Facade - TM42
  (219, 21900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Magcargo - Flame Charge - TM43
  (219, 21900, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 36),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Magcargo - Round - TM48
  (219, 21900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Magcargo - Overheat - TM50
  (219, 21900, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 40),
  -- Magcargo - Incinerate - TM59
  (219, 21900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 41),
  -- Magcargo - Will-O-Wisp - TM61
  (219, 21900, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 42),
  -- Magcargo - Explosion - TM64
  (219, 21900, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 43),
  -- Magcargo - Giga Impact - TM68
  (219, 21900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Magcargo - Rock Polish - TM69
  (219, 21900, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 45),
  -- Magcargo - Stone Edge - TM71
  (219, 21900, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 46),
  -- Magcargo - Gyro Ball - TM74
  (219, 21900, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 47),
  -- Magcargo - Bulldoze - TM78
  (219, 21900, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Magcargo - Rock Slide - TM80
  (219, 21900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Magcargo - Swagger - TM87
  (219, 21900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Magcargo - Substitute - TM90
  (219, 21900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Magcargo - Rock Smash - TM94
  (219, 21900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 52),
  -- Magcargo - Strength - HM04
  (219, 21900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 53),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Odor Sleuth - Level 1
  (220, 22000, 316, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Mud Sport - Level 4
  (220, 22000, 300, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swinub - Powder Snow - Level 8
  (220, 22000, 181, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swinub - Mud-Slap - Level 13
  (220, 22000, 189, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Swinub - Endure - Level 16
  (220, 22000, 203, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Swinub - Mud Bomb - Level 20
  (220, 22000, 426, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 25
  (220, 22000, 196, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Swinub - Ice Shard - Level 28
  (220, 22000, 420, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 32
  (220, 22000, 36, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swinub - Mist - Level 40
  (220, 22000, 54, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Swinub - Earthquake - Level 37
  (220, 22000, 89, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Swinub - Blizzard - Level 44
  (220, 22000, 59, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Swinub - Amnesia - Level 49
  (220, 22000, 133, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 15),
  -- Swinub - Toxic - TM06
  (220, 22000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Swinub - Hail - TM07
  (220, 22000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Swinub - Hidden Power - TM10
  (220, 22000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Swinub - Ice Beam - TM13
  (220, 22000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 20),
  -- Swinub - Light Screen - TM16
  (220, 22000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Swinub - Frustration - TM21
  (220, 22000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Swinub - Return - TM27
  (220, 22000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Swinub - Dig - TM28
  (220, 22000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Swinub - Reflect - TM33
  (220, 22000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 29),
  -- Swinub - Sandstorm - TM37
  (220, 22000, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 30),
  -- Swinub - Rock Tomb - TM39
  (220, 22000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Swinub - Facade - TM42
  (220, 22000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Swinub - Round - TM48
  (220, 22000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Swinub - Bulldoze - TM78
  (220, 22000, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 36),
  -- Swinub - Rock Slide - TM80
  (220, 22000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 37),
  -- Swinub - Swagger - TM87
  (220, 22000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Swinub - Substitute - TM90
  (220, 22000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Swinub - Rock Smash - TM94
  (220, 22000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 40),
  -- Swinub - Strength - HM04
  (220, 22000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 41),
  -- Swinub - Ancient Power - Egg Move
  (220, 22000, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swinub - Avalanche - Egg Move
  (220, 22000, 419, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swinub - Bite - Egg Move
  (220, 22000, 44, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swinub - Body Slam - Egg Move
  (220, 22000, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swinub - Curse - Egg Move
  (220, 22000, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Double-Edge - Egg Move
  (220, 22000, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Fissure - Egg Move
  (220, 22000, 90, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Icicle Crash - Egg Move
  (220, 22000, 556, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swinub - Icicle Spear - Egg Move
  (220, 22000, 333, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swinub - Mud Shot - Egg Move
  (220, 22000, 341, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swinub - Stealth Rock - Egg Move
  (220, 22000, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swinub - Take Down - Egg Move
  (220, 22000, 36, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piloswine - Ancient Power - Level 1
  (221, 22100, 246, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Peck - Level 1
  (221, 22100, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Odor Sleuth - Level 1
  (221, 22100, 316, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Mud Sport - Level 1
  (221, 22100, 300, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Piloswine - Mud Sport - Level 4
  (221, 22100, 300, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Piloswine - Powder Snow - Level 8
  (221, 22100, 181, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Piloswine - Mud-Slap - Level 13
  (221, 22100, 189, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Piloswine - Endure - Level 16
  (221, 22100, 203, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Piloswine - Mud Bomb - Level 20
  (221, 22100, 426, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Piloswine - Icy Wind - Level 25
  (221, 22100, 196, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Piloswine - Ice Fang - Level 28
  (221, 22100, 423, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Piloswine - Take Down - Level 32
  (221, 22100, 36, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Piloswine - Fury Attack - Level 33
  (221, 22100, 31, 11, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Piloswine - Mist - Level 48
  (221, 22100, 54, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Piloswine - Earthquake - Level 40
  (221, 22100, 89, 11, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Piloswine - Blizzard - Level 56
  (221, 22100, 59, 11, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Piloswine - Amnesia - Level 65
  (221, 22100, 133, 11, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Piloswine - Toxic - TM06
  (221, 22100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Piloswine - Hail - TM07
  (221, 22100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Piloswine - Hidden Power - TM10
  (221, 22100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Piloswine - Ice Beam - TM13
  (221, 22100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Piloswine - Light Screen - TM16
  (221, 22100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Piloswine - Frustration - TM21
  (221, 22100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Piloswine - Return - TM27
  (221, 22100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Piloswine - Dig - TM28
  (221, 22100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Piloswine - Reflect - TM33
  (221, 22100, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Piloswine - Sandstorm - TM37
  (221, 22100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 35),
  -- Piloswine - Rock Tomb - TM39
  (221, 22100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Piloswine - Facade - TM42
  (221, 22100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Piloswine - Round - TM48
  (221, 22100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Piloswine - Giga Impact - TM68
  (221, 22100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Piloswine - Stone Edge - TM71
  (221, 22100, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 42),
  -- Piloswine - Bulldoze - TM78
  (221, 22100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Piloswine - Rock Slide - TM80
  (221, 22100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Piloswine - Swagger - TM87
  (221, 22100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Piloswine - Substitute - TM90
  (221, 22100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Piloswine - Rock Smash - TM94
  (221, 22100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 47),
  -- Piloswine - Strength - HM04
  (221, 22100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 48),
  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 4
  (222, 22200, 106, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Corsola - Bubble - Level 8
  (222, 22200, 145, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Corsola - Recover - Level 13
  (222, 22200, 105, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corsola - Refresh - Level 16
  (222, 22200, 287, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Corsola - Bubble Beam - Level 25
  (222, 22200, 61, 11, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Corsola - Ancient Power - Level 32
  (222, 22200, 246, 11, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Corsola - Lucky Chant - Level 28
  (222, 22200, 381, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Corsola - Spike Cannon - Level 40
  (222, 22200, 131, 11, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Corsola - Rock Blast - Level 20
  (222, 22200, 350, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Corsola - Aqua Ring - Level 37
  (222, 22200, 392, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Corsola - Power Gem - Level 44
  (222, 22200, 408, 11, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Corsola - Mirror Coat - Level 48
  (222, 22200, 243, 11, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Corsola - Earth Power - Level 53
  (222, 22200, 414, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Corsola - Calm Mind - TM04
  (222, 22200, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Corsola - Toxic - TM06
  (222, 22200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Corsola - Hail - TM07
  (222, 22200, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Corsola - Hidden Power - TM10
  (222, 22200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Corsola - Ice Beam - TM13
  (222, 22200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Corsola - Blizzard - TM14
  (222, 22200, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Corsola - Light Screen - TM16
  (222, 22200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Corsola - Safeguard - TM20
  (222, 22200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Corsola - Frustration - TM21
  (222, 22200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Corsola - Return - TM27
  (222, 22200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Corsola - Dig - TM28
  (222, 22200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Corsola - Shadow Ball - TM30
  (222, 22200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Corsola - Reflect - TM33
  (222, 22200, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 33),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 34),
  -- Corsola - Rock Tomb - TM39
  (222, 22200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Corsola - Facade - TM42
  (222, 22200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Corsola - Round - TM48
  (222, 22200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Corsola - Scald - TM55
  (222, 22200, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 40),
  -- Corsola - Explosion - TM64
  (222, 22200, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 41),
  -- Corsola - Rock Polish - TM69
  (222, 22200, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 42),
  -- Corsola - Stone Edge - TM71
  (222, 22200, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Corsola - Bulldoze - TM78
  (222, 22200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Corsola - Rock Slide - TM80
  (222, 22200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Corsola - Swagger - TM87
  (222, 22200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Corsola - Substitute - TM90
  (222, 22200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Corsola - Rock Smash - TM94
  (222, 22200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Corsola - Surf - HM03
  (222, 22200, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 49),
  -- Corsola - Strength - HM04
  (222, 22200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Corsola - Amnesia - Egg Move
  (222, 22200, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corsola - Aqua Ring - Egg Move
  (222, 22200, 392, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corsola - Barrier - Egg Move
  (222, 22200, 112, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corsola - Bide - Egg Move
  (222, 22200, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corsola - Confuse Ray - Egg Move
  (222, 22200, 109, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corsola - Curse - Egg Move
  (222, 22200, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corsola - Head Smash - Egg Move
  (222, 22200, 457, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corsola - Icicle Spear - Egg Move
  (222, 22200, 333, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corsola - Ingrain - Egg Move
  (222, 22200, 275, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corsola - Mist - Egg Move
  (222, 22200, 54, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corsola - Nature Power - Egg Move
  (222, 22200, 267, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corsola - Screech - Egg Move
  (222, 22200, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corsola - Water Pulse - Egg Move
  (222, 22200, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Lock-On - Level 6
  (223, 22300, 199, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Remoraid - Psybeam - Level 10
  (223, 22300, 60, 11, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Remoraid - Aurora Beam - Level 14
  (223, 22300, 62, 11, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Remoraid - Bubble Beam - Level 19
  (223, 22300, 61, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Remoraid - Focus Energy - Level 23
  (223, 22300, 116, 11, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Remoraid - Water Pulse - Level 32
  (223, 22300, 352, 11, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Remoraid - Signal Beam - Level 36
  (223, 22300, 324, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Remoraid - Ice Beam - Level 40
  (223, 22300, 58, 11, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Remoraid - Bullet Seed - Level 27
  (223, 22300, 331, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Remoraid - Hyper Beam - Level 45
  (223, 22300, 63, 11, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Remoraid - Soak - Level 49
  (223, 22300, 487, 11, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Remoraid - Toxic - TM06
  (223, 22300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 13),
  -- Remoraid - Hidden Power - TM10
  (223, 22300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 14),
  -- Remoraid - Sunny Day - TM11
  (223, 22300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 15),
  -- Remoraid - Ice Beam - TM13
  (223, 22300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 16),
  -- Remoraid - Blizzard - TM14
  (223, 22300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 17),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Remoraid - Frustration - TM21
  (223, 22300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Remoraid - Smack Down - TM23
  (223, 22300, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 22),
  -- Remoraid - Return - TM27
  (223, 22300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Remoraid - Psychic - TM29
  (223, 22300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 24),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Remoraid - Flamethrower - TM35
  (223, 22300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 26),
  -- Remoraid - Fire Blast - TM38
  (223, 22300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 27),
  -- Remoraid - Facade - TM42
  (223, 22300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Remoraid - Round - TM48
  (223, 22300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Remoraid - Scald - TM55
  (223, 22300, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 33),
  -- Remoraid - Charge Beam - TM57
  (223, 22300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 34),
  -- Remoraid - Incinerate - TM59
  (223, 22300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 35),
  -- Remoraid - Thunder Wave - TM73
  (223, 22300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Remoraid - Swagger - TM87
  (223, 22300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Remoraid - Substitute - TM90
  (223, 22300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Remoraid - Surf - HM03
  (223, 22300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 39),
  -- Remoraid - Waterfall - HM05
  (223, 22300, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 40),
  -- Remoraid - Dive - HM06
  (223, 22300, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 41),
  -- Remoraid - Acid Spray - Egg Move
  (223, 22300, 491, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Remoraid - Aurora Beam - Egg Move
  (223, 22300, 62, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Remoraid - Flail - Egg Move
  (223, 22300, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Remoraid - Haze - Egg Move
  (223, 22300, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Remoraid - Mud Shot - Egg Move
  (223, 22300, 341, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Remoraid - Octazooka - Egg Move
  (223, 22300, 190, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Remoraid - Rock Blast - Egg Move
  (223, 22300, 350, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Remoraid - Screech - Egg Move
  (223, 22300, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Remoraid - Snore - Egg Move
  (223, 22300, 173, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Remoraid - Supersonic - Egg Move
  (223, 22300, 48, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Remoraid - Swift - Egg Move
  (223, 22300, 129, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Remoraid - Water Pulse - Egg Move
  (223, 22300, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Remoraid - Water Spout - Egg Move
  (223, 22300, 323, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Octillery - Gunk Shot - Level 1
  (224, 22400, 441, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Rock Blast - Level 1
  (224, 22400, 350, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Octillery - Constrict - Level 1
  (224, 22400, 132, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Octillery - Psybeam - Level 1
  (224, 22400, 60, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Octillery - Aurora Beam - Level 1
  (224, 22400, 62, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Octillery - Constrict - Level 6
  (224, 22400, 132, 11, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Octillery - Psybeam - Level 10
  (224, 22400, 60, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Octillery - Aurora Beam - Level 14
  (224, 22400, 62, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Octillery - Bubble Beam - Level 19
  (224, 22400, 61, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Octillery - Focus Energy - Level 23
  (224, 22400, 116, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Octillery - Octazooka - Level 25
  (224, 22400, 190, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Octillery - Wring Out - Level 36
  (224, 22400, 378, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Octillery - Signal Beam - Level 42
  (224, 22400, 324, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Octillery - Ice Beam - Level 48
  (224, 22400, 58, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Octillery - Bullet Seed - Level 29
  (224, 22400, 331, 11, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Octillery - Hyper Beam - Level 55
  (224, 22400, 63, 11, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Octillery - Soak - Level 61
  (224, 22400, 487, 11, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Octillery - Toxic - TM06
  (224, 22400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Octillery - Hidden Power - TM10
  (224, 22400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Octillery - Sunny Day - TM11
  (224, 22400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Octillery - Ice Beam - TM13
  (224, 22400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Octillery - Blizzard - TM14
  (224, 22400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Octillery - Frustration - TM21
  (224, 22400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Octillery - Smack Down - TM23
  (224, 22400, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 28),
  -- Octillery - Return - TM27
  (224, 22400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Octillery - Psychic - TM29
  (224, 22400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Octillery - Sludge Wave - TM34
  (224, 22400, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 32),
  -- Octillery - Flamethrower - TM35
  (224, 22400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 33),
  -- Octillery - Sludge Bomb - TM36
  (224, 22400, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 34),
  -- Octillery - Fire Blast - TM38
  (224, 22400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 35),
  -- Octillery - Facade - TM42
  (224, 22400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Octillery - Round - TM48
  (224, 22400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Octillery - Energy Ball - TM53
  (224, 22400, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 41),
  -- Octillery - Scald - TM55
  (224, 22400, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 42),
  -- Octillery - Charge Beam - TM57
  (224, 22400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Octillery - Incinerate - TM59
  (224, 22400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Octillery - Payback - TM66
  (224, 22400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 45),
  -- Octillery - Giga Impact - TM68
  (224, 22400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 46),
  -- Octillery - Thunder Wave - TM73
  (224, 22400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 47),
  -- Octillery - Swagger - TM87
  (224, 22400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Octillery - Substitute - TM90
  (224, 22400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Octillery - Flash Cannon - TM91
  (224, 22400, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 50),
  -- Octillery - Surf - HM03
  (224, 22400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 51),
  -- Octillery - Waterfall - HM05
  (224, 22400, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 52),
  -- Octillery - Dive - HM06
  (224, 22400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 53),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Toxic - TM06
  (225, 22500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 2),
  -- Delibird - Hail - TM07
  (225, 22500, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 3),
  -- Delibird - Hidden Power - TM10
  (225, 22500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 4),
  -- Delibird - Ice Beam - TM13
  (225, 22500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 5),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 6),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 7),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 8),
  -- Delibird - Frustration - TM21
  (225, 22500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 9),
  -- Delibird - Return - TM27
  (225, 22500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 10),
  -- Delibird - Brick Break - TM31
  (225, 22500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 11),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 12),
  -- Delibird - Aerial Ace - TM40
  (225, 22500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 13),
  -- Delibird - Facade - TM42
  (225, 22500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 14),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 15),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 16),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 17),
  -- Delibird - Round - TM48
  (225, 22500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 18),
  -- Delibird - Fling - TM56
  (225, 22500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 19),
  -- Delibird - Frost Breath - TM79
  (225, 22500, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 20),
  -- Delibird - Swagger - TM87
  (225, 22500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 21),
  -- Delibird - Pluck - TM88
  (225, 22500, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 22),
  -- Delibird - Substitute - TM90
  (225, 22500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 23),
  -- Delibird - Fly - HM02
  (225, 22500, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 24),
  -- Delibird - Aurora Beam - Egg Move
  (225, 22500, 62, 11, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Delibird - Bestow - Egg Move
  (225, 22500, 516, 11, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Delibird - Fake Out - Egg Move
  (225, 22500, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Delibird - Future Sight - Egg Move
  (225, 22500, 248, 11, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Delibird - Ice Ball - Egg Move
  (225, 22500, 301, 11, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Delibird - Ice Punch - Egg Move
  (225, 22500, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Delibird - Ice Shard - Egg Move
  (225, 22500, 420, 11, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Delibird - Icy Wind - Egg Move
  (225, 22500, 196, 11, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Delibird - Quick Attack - Egg Move
  (225, 22500, 98, 11, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Delibird - Rapid Spin - Egg Move
  (225, 22500, 229, 11, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Delibird - Splash - Egg Move
  (225, 22500, 150, 11, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Mantine - Psybeam - Level 1
  (226, 22600, 60, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Bullet Seed - Level 1
  (226, 22600, 331, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Signal Beam - Level 1
  (226, 22600, 324, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mantine - Bubble - Level 1
  (226, 22600, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mantine - Supersonic - Level 1
  (226, 22600, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mantine - Bubble Beam - Level 1
  (226, 22600, 61, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mantine - Supersonic - Level 4
  (226, 22600, 48, 11, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Mantine - Bubble Beam - Level 10
  (226, 22600, 61, 11, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Mantine - Confuse Ray - Level 37
  (226, 22600, 109, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mantine - Wing Attack - Level 22
  (226, 22600, 17, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Mantine - Headbutt - Level 13
  (226, 22600, 29, 11, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Mantine - Water Pulse - Level 28
  (226, 22600, 352, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Mantine - Take Down - Level 31
  (226, 22600, 36, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Mantine - Agility - Level 19
  (226, 22600, 97, 11, NULL, 1, 19, NULL, NULL, NULL, 15),
  -- Mantine - Aqua Ring - Level 46
  (226, 22600, 392, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Mantine - Bounce - Level 40
  (226, 22600, 340, 11, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Mantine - Hydro Pump - Level 49
  (226, 22600, 56, 11, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Mantine - Toxic - TM06
  (226, 22600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Mantine - Hail - TM07
  (226, 22600, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Mantine - Hidden Power - TM10
  (226, 22600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Mantine - Ice Beam - TM13
  (226, 22600, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Mantine - Hyper Beam - TM15
  (226, 22600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Mantine - Frustration - TM21
  (226, 22600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Mantine - Earthquake - TM26
  (226, 22600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Mantine - Return - TM27
  (226, 22600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Mantine - Rock Tomb - TM39
  (226, 22600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Mantine - Aerial Ace - TM40
  (226, 22600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Mantine - Facade - TM42
  (226, 22600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Mantine - Round - TM48
  (226, 22600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Mantine - Scald - TM55
  (226, 22600, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 37),
  -- Mantine - Acrobatics - TM62
  (226, 22600, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 38),
  -- Mantine - Giga Impact - TM68
  (226, 22600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Mantine - Bulldoze - TM78
  (226, 22600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Mantine - Rock Slide - TM80
  (226, 22600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Mantine - Swagger - TM87
  (226, 22600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Mantine - Substitute - TM90
  (226, 22600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Mantine - Surf - HM03
  (226, 22600, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 44),
  -- Mantine - Waterfall - HM05
  (226, 22600, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 45),
  -- Mantine - Dive - HM06
  (226, 22600, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 46),
  -- Mantine - Amnesia - Egg Move
  (226, 22600, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantine - Haze - Egg Move
  (226, 22600, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantine - Hydro Pump - Egg Move
  (226, 22600, 56, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantine - Mirror Coat - Egg Move
  (226, 22600, 243, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantine - Mud Sport - Egg Move
  (226, 22600, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantine - Signal Beam - Egg Move
  (226, 22600, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantine - Slam - Egg Move
  (226, 22600, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mantine - Splash - Egg Move
  (226, 22600, 150, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mantine - Twister - Egg Move
  (226, 22600, 239, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mantine - Water Sport - Egg Move
  (226, 22600, 346, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mantine - Wide Guard - Egg Move
  (226, 22600, 469, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 6
  (227, 22700, 28, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Skarmory - Swift - Level 9
  (227, 22700, 129, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skarmory - Agility - Level 12
  (227, 22700, 97, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Fury Attack - Level 17
  (227, 22700, 31, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Skarmory - Feint - Level 20
  (227, 22700, 364, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Air Cutter - Level 23
  (227, 22700, 314, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Skarmory - Spikes - Level 28
  (227, 22700, 191, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Metal Sound - Level 31
  (227, 22700, 319, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Skarmory - Steel Wing - Level 34
  (227, 22700, 211, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Skarmory - Autotomize - Level 39
  (227, 22700, 475, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Skarmory - Air Slash - Level 42
  (227, 22700, 403, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skarmory - Slash - Level 45
  (227, 22700, 163, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Skarmory - Night Slash - Level 50
  (227, 22700, 400, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Skarmory - Roar - TM05
  (227, 22700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Skarmory - Toxic - TM06
  (227, 22700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Skarmory - Hidden Power - TM10
  (227, 22700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Skarmory - Taunt - TM12
  (227, 22700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Skarmory - Frustration - TM21
  (227, 22700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Skarmory - Return - TM27
  (227, 22700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 25),
  -- Skarmory - Rock Tomb - TM39
  (227, 22700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 26),
  -- Skarmory - Aerial Ace - TM40
  (227, 22700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 27),
  -- Skarmory - Torment - TM41
  (227, 22700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 28),
  -- Skarmory - Facade - TM42
  (227, 22700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 32),
  -- Skarmory - Round - TM48
  (227, 22700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Skarmory - Sky Drop - TM58
  (227, 22700, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 34),
  -- Skarmory - Payback - TM66
  (227, 22700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 35),
  -- Skarmory - Flash - TM70
  (227, 22700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 36),
  -- Skarmory - Swords Dance - TM75
  (227, 22700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 37),
  -- Skarmory - Rock Slide - TM80
  (227, 22700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 38),
  -- Skarmory - X-Scissor - TM81
  (227, 22700, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 39),
  -- Skarmory - Swagger - TM87
  (227, 22700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Skarmory - Pluck - TM88
  (227, 22700, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 41),
  -- Skarmory - Substitute - TM90
  (227, 22700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Skarmory - Flash Cannon - TM91
  (227, 22700, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 43),
  -- Skarmory - Rock Smash - TM94
  (227, 22700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Skarmory - Cut - HM01
  (227, 22700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 45),
  -- Skarmory - Fly - HM02
  (227, 22700, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 46),
  -- Skarmory - Assurance - Egg Move
  (227, 22700, 372, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Skarmory - Brave Bird - Egg Move
  (227, 22700, 413, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Skarmory - Curse - Egg Move
  (227, 22700, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skarmory - Drill Peck - Egg Move
  (227, 22700, 65, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skarmory - Endure - Egg Move
  (227, 22700, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skarmory - Guard Swap - Egg Move
  (227, 22700, 385, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skarmory - Pursuit - Egg Move
  (227, 22700, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skarmory - Sky Attack - Egg Move
  (227, 22700, 143, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skarmory - Stealth Rock - Egg Move
  (227, 22700, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Whirlwind - Egg Move
  (227, 22700, 18, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 4
  (228, 22800, 336, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 8
  (228, 22800, 123, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 13
  (228, 22800, 46, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 16
  (228, 22800, 44, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Houndour - Odor Sleuth - Level 20
  (228, 22800, 316, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Houndour - Beat Up - Level 25
  (228, 22800, 251, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Houndour - Fire Fang - Level 28
  (228, 22800, 424, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Houndour - Feint Attack - Level 32
  (228, 22800, 185, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Houndour - Embargo - Level 37
  (228, 22800, 373, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Houndour - Foul Play - Level 40
  (228, 22800, 492, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Houndour - Flamethrower - Level 44
  (228, 22800, 53, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Houndour - Nasty Plot - Level 52
  (228, 22800, 417, 11, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Houndour - Inferno - Level 56
  (228, 22800, 517, 11, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Houndour - Toxic - TM06
  (228, 22800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Houndour - Hidden Power - TM10
  (228, 22800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Houndour - Taunt - TM12
  (228, 22800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Houndour - Frustration - TM21
  (228, 22800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Houndour - Return - TM27
  (228, 22800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Houndour - Flamethrower - TM35
  (228, 22800, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 28),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 29),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 30),
  -- Houndour - Torment - TM41
  (228, 22800, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 31),
  -- Houndour - Facade - TM42
  (228, 22800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Houndour - Flame Charge - TM43
  (228, 22800, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 33),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Houndour - Round - TM48
  (228, 22800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Houndour - Overheat - TM50
  (228, 22800, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 38),
  -- Houndour - Incinerate - TM59
  (228, 22800, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 39),
  -- Houndour - Will-O-Wisp - TM61
  (228, 22800, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 40),
  -- Houndour - Embargo - TM63
  (228, 22800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 41),
  -- Houndour - Payback - TM66
  (228, 22800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 42),
  -- Houndour - Retaliate - TM67
  (228, 22800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 43),
  -- Houndour - Dream Eater - TM85
  (228, 22800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 44),
  -- Houndour - Swagger - TM87
  (228, 22800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Houndour - Substitute - TM90
  (228, 22800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Houndour - Rock Smash - TM94
  (228, 22800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 47),
  -- Houndour - Snarl - TM95
  (228, 22800, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 48),
  -- Houndour - Beat Up - Egg Move
  (228, 22800, 251, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Houndour - Counter - Egg Move
  (228, 22800, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Houndour - Feint - Egg Move
  (228, 22800, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Houndour - Fire Fang - Egg Move
  (228, 22800, 424, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Houndour - Fire Spin - Egg Move
  (228, 22800, 83, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndour - Nasty Plot - Egg Move
  (228, 22800, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndour - Punishment - Egg Move
  (228, 22800, 386, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndour - Pursuit - Egg Move
  (228, 22800, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndour - Rage - Egg Move
  (228, 22800, 99, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndour - Reversal - Egg Move
  (228, 22800, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndour - Spite - Egg Move
  (228, 22800, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndour - Sucker Punch - Egg Move
  (228, 22800, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Houndour - Thunder Fang - Egg Move
  (228, 22800, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndoom - Thunder Fang - Level 1
  (229, 22900, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Howl - Level 1
  (229, 22900, 336, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Houndoom - Smog - Level 1
  (229, 22900, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Houndoom - Howl - Level 4
  (229, 22900, 336, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Houndoom - Smog - Level 8
  (229, 22900, 123, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Houndoom - Roar - Level 13
  (229, 22900, 46, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Houndoom - Bite - Level 16
  (229, 22900, 44, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Houndoom - Odor Sleuth - Level 20
  (229, 22900, 316, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Houndoom - Beat Up - Level 26
  (229, 22900, 251, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Houndoom - Fire Fang - Level 30
  (229, 22900, 424, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Houndoom - Feint Attack - Level 35
  (229, 22900, 185, 11, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Houndoom - Embargo - Level 41
  (229, 22900, 373, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Houndoom - Foul Play - Level 45
  (229, 22900, 492, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Houndoom - Flamethrower - Level 50
  (229, 22900, 53, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Houndoom - Crunch - Level 56
  (229, 22900, 242, 11, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Houndoom - Nasty Plot - Level 60
  (229, 22900, 417, 11, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Houndoom - Inferno - Level 65
  (229, 22900, 517, 11, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 20),
  -- Houndoom - Toxic - TM06
  (229, 22900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Houndoom - Hidden Power - TM10
  (229, 22900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Houndoom - Taunt - TM12
  (229, 22900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Houndoom - Frustration - TM21
  (229, 22900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 28),
  -- Houndoom - Return - TM27
  (229, 22900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Houndoom - Flamethrower - TM35
  (229, 22900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 33),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 34),
  -- Houndoom - Torment - TM41
  (229, 22900, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Houndoom - Facade - TM42
  (229, 22900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Houndoom - Flame Charge - TM43
  (229, 22900, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 37),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 40),
  -- Houndoom - Round - TM48
  (229, 22900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Houndoom - Overheat - TM50
  (229, 22900, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 42),
  -- Houndoom - Incinerate - TM59
  (229, 22900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 43),
  -- Houndoom - Will-O-Wisp - TM61
  (229, 22900, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 44),
  -- Houndoom - Embargo - TM63
  (229, 22900, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 45),
  -- Houndoom - Payback - TM66
  (229, 22900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Houndoom - Retaliate - TM67
  (229, 22900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 47),
  -- Houndoom - Giga Impact - TM68
  (229, 22900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Houndoom - Dream Eater - TM85
  (229, 22900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 49),
  -- Houndoom - Swagger - TM87
  (229, 22900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Houndoom - Substitute - TM90
  (229, 22900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Houndoom - Rock Smash - TM94
  (229, 22900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 52),
  -- Houndoom - Snarl - TM95
  (229, 22900, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 53),
  -- Houndoom - Strength - HM04
  (229, 22900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Kingdra - Yawn - Level 1
  (230, 23000, 281, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Bubble - Level 1
  (230, 23000, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingdra - Smokescreen - Level 4
  (230, 23000, 108, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kingdra - Leer - Level 8
  (230, 23000, 43, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Kingdra - Water Gun - Level 11
  (230, 23000, 55, 11, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kingdra - Focus Energy - Level 14
  (230, 23000, 116, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Kingdra - Bubble Beam - Level 18
  (230, 23000, 61, 11, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Kingdra - Agility - Level 23
  (230, 23000, 97, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Kingdra - Twister - Level 26
  (230, 23000, 239, 11, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Kingdra - Brine - Level 30
  (230, 23000, 362, 11, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Kingdra - Hydro Pump - Level 40
  (230, 23000, 56, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Kingdra - Dragon Dance - Level 48
  (230, 23000, 349, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Kingdra - Dragon Pulse - Level 57
  (230, 23000, 406, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Kingdra - Toxic - TM06
  (230, 23000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Kingdra - Hail - TM07
  (230, 23000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Kingdra - Hidden Power - TM10
  (230, 23000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Kingdra - Ice Beam - TM13
  (230, 23000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Kingdra - Frustration - TM21
  (230, 23000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Kingdra - Return - TM27
  (230, 23000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Kingdra - Facade - TM42
  (230, 23000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Kingdra - Round - TM48
  (230, 23000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Kingdra - Scald - TM55
  (230, 23000, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 32),
  -- Kingdra - Quash - TM60
  (230, 23000, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 33),
  -- Kingdra - Giga Impact - TM68
  (230, 23000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 34),
  -- Kingdra - Swagger - TM87
  (230, 23000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Kingdra - Substitute - TM90
  (230, 23000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Kingdra - Flash Cannon - TM91
  (230, 23000, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 37),
  -- Kingdra - Surf - HM03
  (230, 23000, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 38),
  -- Kingdra - Waterfall - HM05
  (230, 23000, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 39),
  -- Kingdra - Dive - HM06
  (230, 23000, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 40),
  -- Kingdra - Draco Meteor - Move Tutor
  (230, 23000, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 41),
  -- Phanpy - Odor Sleuth - Level 1
  (231, 23100, 316, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Phanpy - Defense Curl - Level 1
  (231, 23100, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Phanpy - Flail - Level 6
  (231, 23100, 175, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Phanpy - Take Down - Level 10
  (231, 23100, 36, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Phanpy - Rollout - Level 15
  (231, 23100, 205, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Phanpy - Natural Gift - Level 19
  (231, 23100, 363, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Phanpy - Slam - Level 24
  (231, 23100, 21, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Phanpy - Endure - Level 28
  (231, 23100, 203, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Phanpy - Charm - Level 33
  (231, 23100, 204, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Phanpy - Last Resort - Level 37
  (231, 23100, 387, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Phanpy - Double-Edge - Level 42
  (231, 23100, 38, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 14),
  -- Phanpy - Toxic - TM06
  (231, 23100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Phanpy - Hidden Power - TM10
  (231, 23100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Phanpy - Frustration - TM21
  (231, 23100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 19),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 20),
  -- Phanpy - Return - TM27
  (231, 23100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 23),
  -- Phanpy - Rock Tomb - TM39
  (231, 23100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 24),
  -- Phanpy - Facade - TM42
  (231, 23100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Phanpy - Round - TM48
  (231, 23100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Phanpy - Echoed Voice - TM49
  (231, 23100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 29),
  -- Phanpy - Bulldoze - TM78
  (231, 23100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 30),
  -- Phanpy - Rock Slide - TM80
  (231, 23100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 31),
  -- Phanpy - Swagger - TM87
  (231, 23100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 32),
  -- Phanpy - Substitute - TM90
  (231, 23100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 33),
  -- Phanpy - Rock Smash - TM94
  (231, 23100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 34),
  -- Phanpy - Strength - HM04
  (231, 23100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 35),
  -- Phanpy - Ancient Power - Egg Move
  (231, 23100, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Phanpy - Body Slam - Egg Move
  (231, 23100, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Phanpy - Counter - Egg Move
  (231, 23100, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Phanpy - Endeavor - Egg Move
  (231, 23100, 283, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Phanpy - Fissure - Egg Move
  (231, 23100, 90, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Phanpy - Focus Energy - Egg Move
  (231, 23100, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Phanpy - Head Smash - Egg Move
  (231, 23100, 457, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Phanpy - Heavy Slam - Egg Move
  (231, 23100, 484, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Phanpy - Ice Shard - Egg Move
  (231, 23100, 420, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Phanpy - Mud-Slap - Egg Move
  (231, 23100, 189, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Phanpy - Snore - Egg Move
  (231, 23100, 173, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Donphan - Fire Fang - Level 1
  (232, 23200, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Thunder Fang - Level 1
  (232, 23200, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Donphan - Defense Curl - Level 1
  (232, 23200, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Donphan - Bulldoze - Level 1
  (232, 23200, 523, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Donphan - Rapid Spin - Level 6
  (232, 23200, 229, 11, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Donphan - Knock Off - Level 10
  (232, 23200, 282, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Donphan - Rollout - Level 15
  (232, 23200, 205, 11, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Donphan - Magnitude - Level 19
  (232, 23200, 222, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Donphan - Slam - Level 24
  (232, 23200, 21, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Donphan - Fury Attack - Level 25
  (232, 23200, 31, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Donphan - Assurance - Level 31
  (232, 23200, 372, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Donphan - Scary Face - Level 39
  (232, 23200, 184, 11, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Donphan - Earthquake - Level 46
  (232, 23200, 89, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Donphan - Giga Impact - Level 54
  (232, 23200, 416, 11, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Donphan - Toxic - TM06
  (232, 23200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Donphan - Hidden Power - TM10
  (232, 23200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Donphan - Frustration - TM21
  (232, 23200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 24),
  -- Donphan - Return - TM27
  (232, 23200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 27),
  -- Donphan - Rock Tomb - TM39
  (232, 23200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 28),
  -- Donphan - Facade - TM42
  (232, 23200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Donphan - Round - TM48
  (232, 23200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Donphan - Echoed Voice - TM49
  (232, 23200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 33),
  -- Donphan - Giga Impact - TM68
  (232, 23200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 34),
  -- Donphan - Rock Polish - TM69
  (232, 23200, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 35),
  -- Donphan - Stone Edge - TM71
  (232, 23200, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 36),
  -- Donphan - Gyro Ball - TM74
  (232, 23200, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 37),
  -- Donphan - Bulldoze - TM78
  (232, 23200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 38),
  -- Donphan - Rock Slide - TM80
  (232, 23200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 39),
  -- Donphan - Poison Jab - TM84
  (232, 23200, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 40),
  -- Donphan - Swagger - TM87
  (232, 23200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Donphan - Substitute - TM90
  (232, 23200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Donphan - Rock Smash - TM94
  (232, 23200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 43),
  -- Donphan - Strength - HM04
  (232, 23200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 44),
  -- Porygon2 - Conversion 2 - Level 1
  (233, 23300, 176, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Defense Curl - Level 1
  (233, 23300, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Psybeam - Level 7
  (233, 23300, 60, 11, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Porygon2 - Agility - Level 12
  (233, 23300, 97, 11, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Porygon2 - Recover - Level 18
  (233, 23300, 105, 11, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Porygon2 - Magnet Rise - Level 23
  (233, 23300, 393, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Porygon2 - Signal Beam - Level 29
  (233, 23300, 324, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Porygon2 - Recycle - Level 34
  (233, 23300, 278, 11, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Lock-On - Level 45
  (233, 23300, 199, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Tri Attack - Level 51
  (233, 23300, 161, 11, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Porygon2 - Magic Coat - Level 56
  (233, 23300, 277, 11, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Porygon2 - Zap Cannon - Level 62
  (233, 23300, 192, 11, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Porygon2 - Hyper Beam - Level 67
  (233, 23300, 63, 11, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Porygon2 - Psyshock - TM03
  (233, 23300, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Porygon2 - Toxic - TM06
  (233, 23300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Porygon2 - Hidden Power - TM10
  (233, 23300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Porygon2 - Ice Beam - TM13
  (233, 23300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Porygon2 - Frustration - TM21
  (233, 23300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Porygon2 - Solar Beam - TM22
  (233, 23300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Porygon2 - Thunderbolt - TM24
  (233, 23300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Porygon2 - Return - TM27
  (233, 23300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Porygon2 - Shadow Ball - TM30
  (233, 23300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Porygon2 - Aerial Ace - TM40
  (233, 23300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Porygon2 - Facade - TM42
  (233, 23300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Porygon2 - Round - TM48
  (233, 23300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Porygon2 - Charge Beam - TM57
  (233, 23300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 39),
  -- Porygon2 - Giga Impact - TM68
  (233, 23300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Porygon2 - Flash - TM70
  (233, 23300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Porygon2 - Thunder Wave - TM73
  (233, 23300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Porygon2 - Psych Up - TM77
  (233, 23300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 43),
  -- Porygon2 - Dream Eater - TM85
  (233, 23300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 44),
  -- Porygon2 - Swagger - TM87
  (233, 23300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Porygon2 - Substitute - TM90
  (233, 23300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Porygon2 - Trick Room - TM92
  (233, 23300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 47),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 3
  (234, 23400, 43, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Stantler - Astonish - Level 7
  (234, 23400, 310, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Stantler - Hypnosis - Level 10
  (234, 23400, 95, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stantler - Stomp - Level 13
  (234, 23400, 23, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Stantler - Sand Attack - Level 16
  (234, 23400, 28, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Stantler - Take Down - Level 21
  (234, 23400, 36, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Stantler - Confuse Ray - Level 23
  (234, 23400, 109, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Stantler - Calm Mind - Level 27
  (234, 23400, 347, 11, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stantler - Role Play - Level 33
  (234, 23400, 272, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Stantler - Zen Headbutt - Level 38
  (234, 23400, 428, 11, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Stantler - Jump Kick - Level 43
  (234, 23400, 26, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Stantler - Imprison - Level 49
  (234, 23400, 286, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Stantler - Captivate - Level 53
  (234, 23400, 445, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Stantler - Me First - Level 55
  (234, 23400, 382, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Stantler - Psyshock - TM03
  (234, 23400, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 16),
  -- Stantler - Calm Mind - TM04
  (234, 23400, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 17),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 18),
  -- Stantler - Toxic - TM06
  (234, 23400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Stantler - Hidden Power - TM10
  (234, 23400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Stantler - Light Screen - TM16
  (234, 23400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Stantler - Frustration - TM21
  (234, 23400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Stantler - Solar Beam - TM22
  (234, 23400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Stantler - Thunderbolt - TM24
  (234, 23400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Stantler - Thunder - TM25
  (234, 23400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Stantler - Return - TM27
  (234, 23400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Stantler - Shadow Ball - TM30
  (234, 23400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Stantler - Reflect - TM33
  (234, 23400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Stantler - Facade - TM42
  (234, 23400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Stantler - Round - TM48
  (234, 23400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Stantler - Energy Ball - TM53
  (234, 23400, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 40),
  -- Stantler - Charge Beam - TM57
  (234, 23400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 41),
  -- Stantler - Retaliate - TM67
  (234, 23400, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 42),
  -- Stantler - Giga Impact - TM68
  (234, 23400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 43),
  -- Stantler - Flash - TM70
  (234, 23400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 44),
  -- Stantler - Thunder Wave - TM73
  (234, 23400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Stantler - Psych Up - TM77
  (234, 23400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 46),
  -- Stantler - Bulldoze - TM78
  (234, 23400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Stantler - Work Up - TM83
  (234, 23400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 48),
  -- Stantler - Dream Eater - TM85
  (234, 23400, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 49),
  -- Stantler - Swagger - TM87
  (234, 23400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Stantler - Substitute - TM90
  (234, 23400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Stantler - Trick Room - TM92
  (234, 23400, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 52),
  -- Stantler - Wild Charge - TM93
  (234, 23400, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 53),
  -- Stantler - Bite - Egg Move
  (234, 23400, 44, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stantler - Disable - Egg Move
  (234, 23400, 50, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stantler - Double Kick - Egg Move
  (234, 23400, 24, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stantler - Extrasensory - Egg Move
  (234, 23400, 326, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stantler - Megahorn - Egg Move
  (234, 23400, 224, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stantler - Me First - Egg Move
  (234, 23400, 382, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stantler - Mud Sport - Egg Move
  (234, 23400, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stantler - Rage - Egg Move
  (234, 23400, 99, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stantler - Spite - Egg Move
  (234, 23400, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Stantler - Thrash - Egg Move
  (234, 23400, 37, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Stantler - Zen Headbutt - Egg Move
  (234, 23400, 428, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 11, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 11, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 11, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 11, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 11, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 11, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 11, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 11, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 11, NULL, 1, 91, NULL, NULL, NULL, 10),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Helping Hand - Level 1
  (236, 23600, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Level 1
  (236, 23600, 252, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrogue - Foresight - Level 1
  (236, 23600, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrogue - Toxic - TM06
  (236, 23600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 5),
  -- Tyrogue - Bulk Up - TM08
  (236, 23600, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 6),
  -- Tyrogue - Hidden Power - TM10
  (236, 23600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 7),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 8),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 9),
  -- Tyrogue - Rain Dance - TM18
  (236, 23600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 10),
  -- Tyrogue - Frustration - TM21
  (236, 23600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 11),
  -- Tyrogue - Earthquake - TM26
  (236, 23600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 12),
  -- Tyrogue - Return - TM27
  (236, 23600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 13),
  -- Tyrogue - Brick Break - TM31
  (236, 23600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 14),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 15),
  -- Tyrogue - Facade - TM42
  (236, 23600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 16),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 17),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 18),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 19),
  -- Tyrogue - Low Sweep - TM47
  (236, 23600, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 20),
  -- Tyrogue - Round - TM48
  (236, 23600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 21),
  -- Tyrogue - Retaliate - TM67
  (236, 23600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 22),
  -- Tyrogue - Bulldoze - TM78
  (236, 23600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 23),
  -- Tyrogue - Rock Slide - TM80
  (236, 23600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 24),
  -- Tyrogue - Work Up - TM83
  (236, 23600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 25),
  -- Tyrogue - Swagger - TM87
  (236, 23600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 26),
  -- Tyrogue - Substitute - TM90
  (236, 23600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 27),
  -- Tyrogue - Rock Smash - TM94
  (236, 23600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 28),
  -- Tyrogue - Strength - HM04
  (236, 23600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 29),
  -- Tyrogue - Bullet Punch - Egg Move
  (236, 23600, 418, 11, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Tyrogue - Counter - Egg Move
  (236, 23600, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tyrogue - Endure - Egg Move
  (236, 23600, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tyrogue - Feint - Egg Move
  (236, 23600, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tyrogue - Helping Hand - Egg Move
  (236, 23600, 270, 11, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tyrogue - High Jump Kick - Egg Move
  (236, 23600, 136, 11, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tyrogue - Mach Punch - Egg Move
  (236, 23600, 183, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tyrogue - Mind Reader - Egg Move
  (236, 23600, 170, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tyrogue - Pursuit - Egg Move
  (236, 23600, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tyrogue - Rapid Spin - Egg Move
  (236, 23600, 229, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tyrogue - Vacuum Wave - Egg Move
  (236, 23600, 410, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hitmontop - Revenge - Level 1
  (237, 23700, 279, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Rolling Kick - Level 1
  (237, 23700, 27, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Focus Energy - Level 6
  (237, 23700, 116, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hitmontop - Pursuit - Level 10
  (237, 23700, 228, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hitmontop - Quick Attack - Level 15
  (237, 23700, 98, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Hitmontop - Triple Kick - Level 19
  (237, 23700, 167, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Hitmontop - Rapid Spin - Level 24
  (237, 23700, 229, 11, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Hitmontop - Counter - Level 28
  (237, 23700, 68, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Hitmontop - Feint - Level 33
  (237, 23700, 364, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Hitmontop - Agility - Level 37
  (237, 23700, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Hitmontop - Gyro Ball - Level 42
  (237, 23700, 360, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Hitmontop - Wide Guard - Level 46
  (237, 23700, 469, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Hitmontop - Quick Guard - Level 46
  (237, 23700, 501, 11, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Hitmontop - Detect - Level 51
  (237, 23700, 197, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Hitmontop - Close Combat - Level 55
  (237, 23700, 370, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Hitmontop - Endeavor - Level 60
  (237, 23700, 283, 11, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Hitmontop - Toxic - TM06
  (237, 23700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Hitmontop - Bulk Up - TM08
  (237, 23700, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 18),
  -- Hitmontop - Hidden Power - TM10
  (237, 23700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Hitmontop - Rain Dance - TM18
  (237, 23700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Hitmontop - Frustration - TM21
  (237, 23700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Hitmontop - Earthquake - TM26
  (237, 23700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 24),
  -- Hitmontop - Return - TM27
  (237, 23700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Hitmontop - Dig - TM28
  (237, 23700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Hitmontop - Brick Break - TM31
  (237, 23700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Hitmontop - Sandstorm - TM37
  (237, 23700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Hitmontop - Aerial Ace - TM40
  (237, 23700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Hitmontop - Facade - TM42
  (237, 23700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 34),
  -- Hitmontop - Low Sweep - TM47
  (237, 23700, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 35),
  -- Hitmontop - Round - TM48
  (237, 23700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Hitmontop - Retaliate - TM67
  (237, 23700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Hitmontop - Stone Edge - TM71
  (237, 23700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 38),
  -- Hitmontop - Gyro Ball - TM74
  (237, 23700, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 39),
  -- Hitmontop - Bulldoze - TM78
  (237, 23700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Hitmontop - Rock Slide - TM80
  (237, 23700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Hitmontop - Work Up - TM83
  (237, 23700, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 42),
  -- Hitmontop - Swagger - TM87
  (237, 23700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Hitmontop - Substitute - TM90
  (237, 23700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Hitmontop - Rock Smash - TM94
  (237, 23700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 45),
  -- Hitmontop - Strength - HM04
  (237, 23700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 46),
  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 5
  (238, 23800, 122, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Smoochum - Sweet Kiss - Level 8
  (238, 23800, 186, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Smoochum - Powder Snow - Level 11
  (238, 23800, 181, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 15
  (238, 23800, 93, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Smoochum - Sing - Level 18
  (238, 23800, 47, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Smoochum - Heart Stamp - Level 21
  (238, 23800, 531, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Smoochum - Mean Look - Level 25
  (238, 23800, 212, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Smoochum - Fake Tears - Level 28
  (238, 23800, 313, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Smoochum - Lucky Chant - Level 31
  (238, 23800, 381, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Smoochum - Avalanche - Level 35
  (238, 23800, 419, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Smoochum - Psychic - Level 38
  (238, 23800, 94, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Smoochum - Copycat - Level 41
  (238, 23800, 383, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Smoochum - Perish Song - Level 45
  (238, 23800, 195, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Smoochum - Blizzard - Level 48
  (238, 23800, 59, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Smoochum - Psyshock - TM03
  (238, 23800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 16),
  -- Smoochum - Calm Mind - TM04
  (238, 23800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 17),
  -- Smoochum - Toxic - TM06
  (238, 23800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Smoochum - Hail - TM07
  (238, 23800, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 19),
  -- Smoochum - Hidden Power - TM10
  (238, 23800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Smoochum - Ice Beam - TM13
  (238, 23800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Smoochum - Light Screen - TM16
  (238, 23800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Smoochum - Frustration - TM21
  (238, 23800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Smoochum - Return - TM27
  (238, 23800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Smoochum - Reflect - TM33
  (238, 23800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Smoochum - Facade - TM42
  (238, 23800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Smoochum - Round - TM48
  (238, 23800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Smoochum - Echoed Voice - TM49
  (238, 23800, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 37),
  -- Smoochum - Fling - TM56
  (238, 23800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Smoochum - Payback - TM66
  (238, 23800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 39),
  -- Smoochum - Flash - TM70
  (238, 23800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Smoochum - Psych Up - TM77
  (238, 23800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 41),
  -- Smoochum - Frost Breath - TM79
  (238, 23800, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 42),
  -- Smoochum - Dream Eater - TM85
  (238, 23800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 43),
  -- Smoochum - Grass Knot - TM86
  (238, 23800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 44),
  -- Smoochum - Swagger - TM87
  (238, 23800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Smoochum - Substitute - TM90
  (238, 23800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Smoochum - Trick Room - TM92
  (238, 23800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 47),
  -- Smoochum - Captivate - Egg Move
  (238, 23800, 445, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Smoochum - Fake Out - Egg Move
  (238, 23800, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Smoochum - Ice Punch - Egg Move
  (238, 23800, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Smoochum - Meditate - Egg Move
  (238, 23800, 96, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Smoochum - Miracle Eye - Egg Move
  (238, 23800, 357, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Smoochum - Nasty Plot - Egg Move
  (238, 23800, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Smoochum - Wake-Up Slap - Egg Move
  (238, 23800, 358, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Smoochum - Wish - Egg Move
  (238, 23800, 273, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 6
  (239, 23900, 84, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Elekid - Low Kick - Level 11
  (239, 23900, 67, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 16
  (239, 23900, 129, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 21
  (239, 23900, 351, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Elekid - Electro Ball - Level 31
  (239, 23900, 486, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Elekid - Light Screen - Level 26
  (239, 23900, 113, 11, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Elekid - Thunder Punch - Level 36
  (239, 23900, 9, 11, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Elekid - Discharge - Level 41
  (239, 23900, 435, 11, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Elekid - Screech - Level 51
  (239, 23900, 103, 11, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Elekid - Thunderbolt - Level 46
  (239, 23900, 85, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Elekid - Thunder - Level 56
  (239, 23900, 87, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Elekid - Toxic - TM06
  (239, 23900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Elekid - Hidden Power - TM10
  (239, 23900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Elekid - Light Screen - TM16
  (239, 23900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 16),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 18),
  -- Elekid - Frustration - TM21
  (239, 23900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 19),
  -- Elekid - Thunderbolt - TM24
  (239, 23900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 20),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 21),
  -- Elekid - Return - TM27
  (239, 23900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 23),
  -- Elekid - Brick Break - TM31
  (239, 23900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 24),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Elekid - Facade - TM42
  (239, 23900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 29),
  -- Elekid - Round - TM48
  (239, 23900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Elekid - Fling - TM56
  (239, 23900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 31),
  -- Elekid - Charge Beam - TM57
  (239, 23900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 32),
  -- Elekid - Flash - TM70
  (239, 23900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Elekid - Volt Switch - TM72
  (239, 23900, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 34),
  -- Elekid - Thunder Wave - TM73
  (239, 23900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 35),
  -- Elekid - Swagger - TM87
  (239, 23900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Elekid - Substitute - TM90
  (239, 23900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Elekid - Wild Charge - TM93
  (239, 23900, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 38),
  -- Elekid - Rock Smash - TM94
  (239, 23900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 39),
  -- Elekid - Barrier - Egg Move
  (239, 23900, 112, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Elekid - Cross Chop - Egg Move
  (239, 23900, 238, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Elekid - Dynamic Punch - Egg Move
  (239, 23900, 223, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Elekid - Feint - Egg Move
  (239, 23900, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Elekid - Fire Punch - Egg Move
  (239, 23900, 7, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Elekid - Focus Punch - Egg Move
  (239, 23900, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Elekid - Hammer Arm - Egg Move
  (239, 23900, 359, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Elekid - Ice Punch - Egg Move
  (239, 23900, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Elekid - Karate Chop - Egg Move
  (239, 23900, 2, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Elekid - Meditate - Egg Move
  (239, 23900, 96, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Rolling Kick - Egg Move
  (239, 23900, 27, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magby - Smog - Level 1
  (240, 24000, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Leer - Level 1
  (240, 24000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 7
  (240, 24000, 52, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 10
  (240, 24000, 108, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Magby - Feint Attack - Level 16
  (240, 24000, 185, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Magby - Fire Spin - Level 19
  (240, 24000, 83, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Magby - Flame Burst - Level 28
  (240, 24000, 481, 11, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Magby - Confuse Ray - Level 25
  (240, 24000, 109, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magby - Fire Punch - Level 34
  (240, 24000, 7, 11, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Magby - Lava Plume - Level 37
  (240, 24000, 436, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Magby - Sunny Day - Level 46
  (240, 24000, 241, 11, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Magby - Flamethrower - Level 43
  (240, 24000, 53, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Magby - Fire Blast - Level 49
  (240, 24000, 126, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Magby - Toxic - TM06
  (240, 24000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Magby - Hidden Power - TM10
  (240, 24000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Magby - Protect - TM17
  (240, 24000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Magby - Frustration - TM21
  (240, 24000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 18),
  -- Magby - Return - TM27
  (240, 24000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 19),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 20),
  -- Magby - Brick Break - TM31
  (240, 24000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 21),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Magby - Flamethrower - TM35
  (240, 24000, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 23),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 24),
  -- Magby - Facade - TM42
  (240, 24000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Magby - Flame Charge - TM43
  (240, 24000, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 26),
  -- Magby - Rest - TM44
  (240, 24000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Magby - Attract - TM45
  (240, 24000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Magby - Thief - TM46
  (240, 24000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 29),
  -- Magby - Round - TM48
  (240, 24000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Magby - Overheat - TM50
  (240, 24000, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 31),
  -- Magby - Fling - TM56
  (240, 24000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 32),
  -- Magby - Incinerate - TM59
  (240, 24000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 33),
  -- Magby - Will-O-Wisp - TM61
  (240, 24000, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Magby - Swagger - TM87
  (240, 24000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Magby - Substitute - TM90
  (240, 24000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Magby - Rock Smash - TM94
  (240, 24000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 37),
  -- Magby - Barrier - Egg Move
  (240, 24000, 112, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Magby - Belly Drum - Egg Move
  (240, 24000, 187, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Magby - Cross Chop - Egg Move
  (240, 24000, 238, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Magby - Dynamic Punch - Egg Move
  (240, 24000, 223, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Magby - Flare Blitz - Egg Move
  (240, 24000, 394, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Magby - Focus Energy - Egg Move
  (240, 24000, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Magby - Iron Tail - Egg Move
  (240, 24000, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magby - Karate Chop - Egg Move
  (240, 24000, 2, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magby - Mach Punch - Egg Move
  (240, 24000, 183, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magby - Mega Punch - Egg Move
  (240, 24000, 5, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magby - Screech - Egg Move
  (240, 24000, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magby - Thunder Punch - Egg Move
  (240, 24000, 9, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 3
  (241, 24100, 45, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Miltank - Defense Curl - Level 5
  (241, 24100, 111, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Miltank - Stomp - Level 8
  (241, 24100, 23, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Miltank - Milk Drink - Level 11
  (241, 24100, 208, 11, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Miltank - Bide - Level 15
  (241, 24100, 117, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Miltank - Rollout - Level 19
  (241, 24100, 205, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Miltank - Body Slam - Level 24
  (241, 24100, 34, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Miltank - Zen Headbutt - Level 29
  (241, 24100, 428, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Miltank - Captivate - Level 35
  (241, 24100, 445, 11, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Miltank - Gyro Ball - Level 41
  (241, 24100, 360, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Miltank - Heal Bell - Level 48
  (241, 24100, 215, 11, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Miltank - Wake-Up Slap - Level 55
  (241, 24100, 358, 11, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Miltank - Toxic - TM06
  (241, 24100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Miltank - Hidden Power - TM10
  (241, 24100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Miltank - Ice Beam - TM13
  (241, 24100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 17),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 18),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Miltank - Frustration - TM21
  (241, 24100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Miltank - Solar Beam - TM22
  (241, 24100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Miltank - Thunderbolt - TM24
  (241, 24100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 26),
  -- Miltank - Return - TM27
  (241, 24100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Miltank - Brick Break - TM31
  (241, 24100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Miltank - Rock Tomb - TM39
  (241, 24100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Miltank - Facade - TM42
  (241, 24100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Miltank - Round - TM48
  (241, 24100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Miltank - Echoed Voice - TM49
  (241, 24100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 37),
  -- Miltank - Focus Blast - TM52
  (241, 24100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 38),
  -- Miltank - Fling - TM56
  (241, 24100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Miltank - Retaliate - TM67
  (241, 24100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 40),
  -- Miltank - Giga Impact - TM68
  (241, 24100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Miltank - Thunder Wave - TM73
  (241, 24100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Miltank - Gyro Ball - TM74
  (241, 24100, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 43),
  -- Miltank - Psych Up - TM77
  (241, 24100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Miltank - Bulldoze - TM78
  (241, 24100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 45),
  -- Miltank - Rock Slide - TM80
  (241, 24100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Miltank - Work Up - TM83
  (241, 24100, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 47),
  -- Miltank - Swagger - TM87
  (241, 24100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Miltank - Substitute - TM90
  (241, 24100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Miltank - Rock Smash - TM94
  (241, 24100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Miltank - Surf - HM03
  (241, 24100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 51),
  -- Miltank - Strength - HM04
  (241, 24100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Miltank - Curse - Egg Move
  (241, 24100, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Miltank - Dizzy Punch - Egg Move
  (241, 24100, 146, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Miltank - Double-Edge - Egg Move
  (241, 24100, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Miltank - Endure - Egg Move
  (241, 24100, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Miltank - Hammer Arm - Egg Move
  (241, 24100, 359, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Miltank - Heart Stamp - Egg Move
  (241, 24100, 531, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Miltank - Helping Hand - Egg Move
  (241, 24100, 270, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Miltank - Natural Gift - Egg Move
  (241, 24100, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Miltank - Present - Egg Move
  (241, 24100, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Miltank - Punishment - Egg Move
  (241, 24100, 386, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Miltank - Reversal - Egg Move
  (241, 24100, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Miltank - Seismic Toss - Egg Move
  (241, 24100, 69, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Miltank - Sleep Talk - Egg Move
  (241, 24100, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Blissey - Defense Curl - Level 1
  (242, 24200, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Growl - Level 1
  (242, 24200, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blissey - Tail Whip - Level 5
  (242, 24200, 39, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Blissey - Refresh - Level 9
  (242, 24200, 287, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Blissey - Double Slap - Level 12
  (242, 24200, 3, 11, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Blissey - Soft-Boiled - Level 16
  (242, 24200, 135, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Blissey - Bestow - Level 20
  (242, 24200, 516, 11, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Blissey - Minimize - Level 23
  (242, 24200, 107, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Blissey - Take Down - Level 27
  (242, 24200, 36, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Blissey - Sing - Level 31
  (242, 24200, 47, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Blissey - Fling - Level 34
  (242, 24200, 374, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Blissey - Heal Pulse - Level 38
  (242, 24200, 505, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Blissey - Egg Bomb - Level 42
  (242, 24200, 121, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Blissey - Light Screen - Level 46
  (242, 24200, 113, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Blissey - Healing Wish - Level 50
  (242, 24200, 361, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Blissey - Double-Edge - Level 54
  (242, 24200, 38, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Blissey - Calm Mind - TM04
  (242, 24200, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Blissey - Toxic - TM06
  (242, 24200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Blissey - Hail - TM07
  (242, 24200, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Blissey - Hidden Power - TM10
  (242, 24200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Blissey - Ice Beam - TM13
  (242, 24200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Blissey - Light Screen - TM16
  (242, 24200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Blissey - Safeguard - TM20
  (242, 24200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 29),
  -- Blissey - Frustration - TM21
  (242, 24200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 31),
  -- Blissey - Thunderbolt - TM24
  (242, 24200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 32),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 33),
  -- Blissey - Earthquake - TM26
  (242, 24200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 34),
  -- Blissey - Return - TM27
  (242, 24200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 35),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 36),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 37),
  -- Blissey - Brick Break - TM31
  (242, 24200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 38),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 39),
  -- Blissey - Flamethrower - TM35
  (242, 24200, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 40),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 41),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 42),
  -- Blissey - Rock Tomb - TM39
  (242, 24200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 43),
  -- Blissey - Facade - TM42
  (242, 24200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 44),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 45),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 46),
  -- Blissey - Round - TM48
  (242, 24200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 47),
  -- Blissey - Echoed Voice - TM49
  (242, 24200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 48),
  -- Blissey - Focus Blast - TM52
  (242, 24200, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 49),
  -- Blissey - Fling - TM56
  (242, 24200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 50),
  -- Blissey - Charge Beam - TM57
  (242, 24200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 51),
  -- Blissey - Incinerate - TM59
  (242, 24200, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 52),
  -- Blissey - Retaliate - TM67
  (242, 24200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 53),
  -- Blissey - Giga Impact - TM68
  (242, 24200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 54),
  -- Blissey - Flash - TM70
  (242, 24200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 55),
  -- Blissey - Thunder Wave - TM73
  (242, 24200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 56),
  -- Blissey - Psych Up - TM77
  (242, 24200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 57),
  -- Blissey - Bulldoze - TM78
  (242, 24200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 58),
  -- Blissey - Rock Slide - TM80
  (242, 24200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 59),
  -- Blissey - Work Up - TM83
  (242, 24200, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 60),
  -- Blissey - Dream Eater - TM85
  (242, 24200, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 61),
  -- Blissey - Grass Knot - TM86
  (242, 24200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 62),
  -- Blissey - Swagger - TM87
  (242, 24200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 63),
  -- Blissey - Substitute - TM90
  (242, 24200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 64),
  -- Blissey - Wild Charge - TM93
  (242, 24200, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 65),
  -- Blissey - Rock Smash - TM94
  (242, 24200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 66),
  -- Blissey - Strength - HM04
  (242, 24200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 67),
  -- Raikou - Bite - Level 1
  (243, 24300, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Thunder Shock - Level 8
  (243, 24300, 84, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Raikou - Roar - Level 15
  (243, 24300, 46, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Raikou - Quick Attack - Level 22
  (243, 24300, 98, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 29
  (243, 24300, 209, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Raikou - Reflect - Level 36
  (243, 24300, 115, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Raikou - Crunch - Level 43
  (243, 24300, 242, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Raikou - Thunder Fang - Level 50
  (243, 24300, 422, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Raikou - Discharge - Level 57
  (243, 24300, 435, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Raikou - Extrasensory - Level 64
  (243, 24300, 326, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Raikou - Rain Dance - Level 71
  (243, 24300, 240, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Raikou - Calm Mind - Level 78
  (243, 24300, 347, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Raikou - Thunder - Level 85
  (243, 24300, 87, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Raikou - Calm Mind - TM04
  (243, 24300, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Raikou - Toxic - TM06
  (243, 24300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Raikou - Hidden Power - TM10
  (243, 24300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Raikou - Light Screen - TM16
  (243, 24300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Raikou - Frustration - TM21
  (243, 24300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Raikou - Thunderbolt - TM24
  (243, 24300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 25),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 26),
  -- Raikou - Return - TM27
  (243, 24300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Raikou - Dig - TM28
  (243, 24300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Raikou - Shadow Ball - TM30
  (243, 24300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Raikou - Reflect - TM33
  (243, 24300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Raikou - Facade - TM42
  (243, 24300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Raikou - Round - TM48
  (243, 24300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Raikou - Charge Beam - TM57
  (243, 24300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 36),
  -- Raikou - Quash - TM60
  (243, 24300, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 37),
  -- Raikou - Giga Impact - TM68
  (243, 24300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Raikou - Flash - TM70
  (243, 24300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Raikou - Volt Switch - TM72
  (243, 24300, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 40),
  -- Raikou - Thunder Wave - TM73
  (243, 24300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 41),
  -- Raikou - Psych Up - TM77
  (243, 24300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Raikou - Bulldoze - TM78
  (243, 24300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Raikou - Swagger - TM87
  (243, 24300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Raikou - Substitute - TM90
  (243, 24300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Raikou - Wild Charge - TM93
  (243, 24300, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 46),
  -- Raikou - Rock Smash - TM94
  (243, 24300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 47),
  -- Raikou - Snarl - TM95
  (243, 24300, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 48),
  -- Raikou - Cut - HM01
  (243, 24300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 49),
  -- Raikou - Strength - HM04
  (243, 24300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Entei - Bite - Level 1
  (244, 24400, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 8
  (244, 24400, 52, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Entei - Roar - Level 15
  (244, 24400, 46, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Entei - Fire Spin - Level 22
  (244, 24400, 83, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Entei - Stomp - Level 29
  (244, 24400, 23, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Entei - Flamethrower - Level 36
  (244, 24400, 53, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Entei - Swagger - Level 43
  (244, 24400, 207, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Entei - Fire Fang - Level 50
  (244, 24400, 424, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Entei - Lava Plume - Level 57
  (244, 24400, 436, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Entei - Extrasensory - Level 64
  (244, 24400, 326, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Entei - Fire Blast - Level 71
  (244, 24400, 126, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Entei - Calm Mind - Level 78
  (244, 24400, 347, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Entei - Eruption - Level 85
  (244, 24400, 284, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Entei - Calm Mind - TM04
  (244, 24400, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Entei - Roar - TM05
  (244, 24400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Entei - Toxic - TM06
  (244, 24400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Entei - Hidden Power - TM10
  (244, 24400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Entei - Protect - TM17
  (244, 24400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Entei - Frustration - TM21
  (244, 24400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Entei - Return - TM27
  (244, 24400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Entei - Dig - TM28
  (244, 24400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Entei - Shadow Ball - TM30
  (244, 24400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Entei - Reflect - TM33
  (244, 24400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 29),
  -- Entei - Flamethrower - TM35
  (244, 24400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 30),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 32),
  -- Entei - Facade - TM42
  (244, 24400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Entei - Flame Charge - TM43
  (244, 24400, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 34),
  -- Entei - Rest - TM44
  (244, 24400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Entei - Round - TM48
  (244, 24400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Entei - Overheat - TM50
  (244, 24400, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 37),
  -- Entei - Incinerate - TM59
  (244, 24400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 38),
  -- Entei - Quash - TM60
  (244, 24400, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 39),
  -- Entei - Will-O-Wisp - TM61
  (244, 24400, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 40),
  -- Entei - Giga Impact - TM68
  (244, 24400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Entei - Flash - TM70
  (244, 24400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Entei - Stone Edge - TM71
  (244, 24400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Entei - Psych Up - TM77
  (244, 24400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Entei - Bulldoze - TM78
  (244, 24400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 45),
  -- Entei - Swagger - TM87
  (244, 24400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Entei - Substitute - TM90
  (244, 24400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Entei - Rock Smash - TM94
  (244, 24400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Entei - Snarl - TM95
  (244, 24400, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 49),
  -- Entei - Cut - HM01
  (244, 24400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 50),
  -- Entei - Strength - HM04
  (244, 24400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 51),
  -- Suicune - Bite - Level 1
  (245, 24500, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Bubble Beam - Level 8
  (245, 24500, 61, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Suicune - Rain Dance - Level 15
  (245, 24500, 240, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Suicune - Gust - Level 22
  (245, 24500, 16, 11, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Suicune - Aurora Beam - Level 29
  (245, 24500, 62, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Suicune - Mist - Level 36
  (245, 24500, 54, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Suicune - Mirror Coat - Level 43
  (245, 24500, 243, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Suicune - Ice Fang - Level 50
  (245, 24500, 423, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Suicune - Tailwind - Level 57
  (245, 24500, 366, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Suicune - Extrasensory - Level 64
  (245, 24500, 326, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Suicune - Hydro Pump - Level 71
  (245, 24500, 56, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Suicune - Calm Mind - Level 78
  (245, 24500, 347, 11, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Suicune - Blizzard - Level 85
  (245, 24500, 59, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Suicune - Calm Mind - TM04
  (245, 24500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Suicune - Toxic - TM06
  (245, 24500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Suicune - Hail - TM07
  (245, 24500, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Suicune - Hidden Power - TM10
  (245, 24500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Suicune - Ice Beam - TM13
  (245, 24500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Suicune - Frustration - TM21
  (245, 24500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Suicune - Return - TM27
  (245, 24500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Suicune - Dig - TM28
  (245, 24500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Suicune - Shadow Ball - TM30
  (245, 24500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Suicune - Reflect - TM33
  (245, 24500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Suicune - Facade - TM42
  (245, 24500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Suicune - Round - TM48
  (245, 24500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Suicune - Scald - TM55
  (245, 24500, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 36),
  -- Suicune - Quash - TM60
  (245, 24500, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 37),
  -- Suicune - Giga Impact - TM68
  (245, 24500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Suicune - Psych Up - TM77
  (245, 24500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 39),
  -- Suicune - Bulldoze - TM78
  (245, 24500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Suicune - Swagger - TM87
  (245, 24500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Suicune - Substitute - TM90
  (245, 24500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Suicune - Rock Smash - TM94
  (245, 24500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 43),
  -- Suicune - Snarl - TM95
  (245, 24500, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 44),
  -- Suicune - Cut - HM01
  (245, 24500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 45),
  -- Suicune - Surf - HM03
  (245, 24500, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 46),
  -- Suicune - Waterfall - HM05
  (245, 24500, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 47),
  -- Suicune - Dive - HM06
  (245, 24500, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 48),
  -- Larvitar - Bite - Level 1
  (246, 24600, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Sandstorm - Level 5
  (246, 24600, 201, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Larvitar - Screech - Level 10
  (246, 24600, 103, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Larvitar - Chip Away - Level 14
  (246, 24600, 498, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Larvitar - Rock Slide - Level 19
  (246, 24600, 157, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Larvitar - Scary Face - Level 23
  (246, 24600, 184, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Larvitar - Thrash - Level 28
  (246, 24600, 37, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Larvitar - Dark Pulse - Level 32
  (246, 24600, 399, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Larvitar - Payback - Level 37
  (246, 24600, 371, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Larvitar - Crunch - Level 41
  (246, 24600, 242, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Larvitar - Earthquake - Level 46
  (246, 24600, 89, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Larvitar - Stone Edge - Level 50
  (246, 24600, 444, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Larvitar - Hyper Beam - Level 55
  (246, 24600, 63, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Larvitar - Toxic - TM06
  (246, 24600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Larvitar - Hidden Power - TM10
  (246, 24600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Larvitar - Taunt - TM12
  (246, 24600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Larvitar - Frustration - TM21
  (246, 24600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Larvitar - Smack Down - TM23
  (246, 24600, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 23),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 24),
  -- Larvitar - Return - TM27
  (246, 24600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Larvitar - Dig - TM28
  (246, 24600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Larvitar - Brick Break - TM31
  (246, 24600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Larvitar - Rock Tomb - TM39
  (246, 24600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Larvitar - Torment - TM41
  (246, 24600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 31),
  -- Larvitar - Facade - TM42
  (246, 24600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Larvitar - Round - TM48
  (246, 24600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Larvitar - Payback - TM66
  (246, 24600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 36),
  -- Larvitar - Retaliate - TM67
  (246, 24600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Larvitar - Rock Polish - TM69
  (246, 24600, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 38),
  -- Larvitar - Stone Edge - TM71
  (246, 24600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 39),
  -- Larvitar - Bulldoze - TM78
  (246, 24600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Larvitar - Rock Slide - TM80
  (246, 24600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Larvitar - Swagger - TM87
  (246, 24600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Larvitar - Substitute - TM90
  (246, 24600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Larvitar - Rock Smash - TM94
  (246, 24600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Larvitar - Snarl - TM95
  (246, 24600, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 45),
  -- Larvitar - Ancient Power - Egg Move
  (246, 24600, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Larvitar - Assurance - Egg Move
  (246, 24600, 372, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvitar - Curse - Egg Move
  (246, 24600, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Larvitar - Dragon Dance - Egg Move
  (246, 24600, 349, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Larvitar - Focus Energy - Egg Move
  (246, 24600, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Larvitar - Iron Defense - Egg Move
  (246, 24600, 334, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Larvitar - Iron Head - Egg Move
  (246, 24600, 442, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Larvitar - Iron Tail - Egg Move
  (246, 24600, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Larvitar - Outrage - Egg Move
  (246, 24600, 200, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Larvitar - Pursuit - Egg Move
  (246, 24600, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Larvitar - Stealth Rock - Egg Move
  (246, 24600, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Larvitar - Stomp - Egg Move
  (246, 24600, 23, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pupitar - Bite - Level 1
  (247, 24700, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Sandstorm - Level 1
  (247, 24700, 201, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Screech - Level 1
  (247, 24700, 103, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Sandstorm - Level 5
  (247, 24700, 201, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pupitar - Screech - Level 10
  (247, 24700, 103, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pupitar - Chip Away - Level 14
  (247, 24700, 498, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Pupitar - Rock Slide - Level 19
  (247, 24700, 157, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pupitar - Scary Face - Level 23
  (247, 24700, 184, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pupitar - Thrash - Level 28
  (247, 24700, 37, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pupitar - Dark Pulse - Level 34
  (247, 24700, 399, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pupitar - Payback - Level 41
  (247, 24700, 371, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Pupitar - Crunch - Level 47
  (247, 24700, 242, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pupitar - Earthquake - Level 54
  (247, 24700, 89, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pupitar - Stone Edge - Level 60
  (247, 24700, 444, 11, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Pupitar - Hyper Beam - Level 67
  (247, 24700, 63, 11, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Pupitar - Toxic - TM06
  (247, 24700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Pupitar - Hidden Power - TM10
  (247, 24700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Pupitar - Taunt - TM12
  (247, 24700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Pupitar - Frustration - TM21
  (247, 24700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Pupitar - Smack Down - TM23
  (247, 24700, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 25),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 26),
  -- Pupitar - Return - TM27
  (247, 24700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Pupitar - Dig - TM28
  (247, 24700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Pupitar - Brick Break - TM31
  (247, 24700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Pupitar - Rock Tomb - TM39
  (247, 24700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Pupitar - Torment - TM41
  (247, 24700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 33),
  -- Pupitar - Facade - TM42
  (247, 24700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Pupitar - Round - TM48
  (247, 24700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Pupitar - Payback - TM66
  (247, 24700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 38),
  -- Pupitar - Retaliate - TM67
  (247, 24700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 39),
  -- Pupitar - Rock Polish - TM69
  (247, 24700, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 40),
  -- Pupitar - Stone Edge - TM71
  (247, 24700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 41),
  -- Pupitar - Bulldoze - TM78
  (247, 24700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 42),
  -- Pupitar - Rock Slide - TM80
  (247, 24700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 43),
  -- Pupitar - Swagger - TM87
  (247, 24700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Pupitar - Substitute - TM90
  (247, 24700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Pupitar - Rock Smash - TM94
  (247, 24700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Pupitar - Snarl - TM95
  (247, 24700, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 47),
  -- Tyranitar - Thunder Fang - Level 1
  (248, 24800, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Ice Fang - Level 1
  (248, 24800, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Fire Fang - Level 1
  (248, 24800, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Bite - Level 1
  (248, 24800, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tyranitar - Sandstorm - Level 1
  (248, 24800, 201, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tyranitar - Screech - Level 1
  (248, 24800, 103, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tyranitar - Sandstorm - Level 5
  (248, 24800, 201, 11, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Tyranitar - Screech - Level 10
  (248, 24800, 103, 11, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Tyranitar - Chip Away - Level 14
  (248, 24800, 498, 11, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tyranitar - Rock Slide - Level 19
  (248, 24800, 157, 11, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Tyranitar - Scary Face - Level 23
  (248, 24800, 184, 11, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Tyranitar - Thrash - Level 28
  (248, 24800, 37, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Tyranitar - Dark Pulse - Level 34
  (248, 24800, 399, 11, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Tyranitar - Payback - Level 41
  (248, 24800, 371, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tyranitar - Crunch - Level 47
  (248, 24800, 242, 11, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Tyranitar - Earthquake - Level 54
  (248, 24800, 89, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tyranitar - Stone Edge - Level 63
  (248, 24800, 444, 11, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Tyranitar - Hyper Beam - Level 73
  (248, 24800, 63, 11, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Tyranitar - Giga Impact - Level 82
  (248, 24800, 416, 11, NULL, 1, 82, NULL, NULL, NULL, 20),
  -- Tyranitar - Hone Claws - TM01
  (248, 24800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 21),
  -- Tyranitar - Dragon Claw - TM02
  (248, 24800, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 22),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 23),
  -- Tyranitar - Toxic - TM06
  (248, 24800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 24),
  -- Tyranitar - Hidden Power - TM10
  (248, 24800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 26),
  -- Tyranitar - Taunt - TM12
  (248, 24800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 27),
  -- Tyranitar - Ice Beam - TM13
  (248, 24800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 28),
  -- Tyranitar - Blizzard - TM14
  (248, 24800, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 29),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 30),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 31),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 32),
  -- Tyranitar - Frustration - TM21
  (248, 24800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 33),
  -- Tyranitar - Smack Down - TM23
  (248, 24800, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 34),
  -- Tyranitar - Thunderbolt - TM24
  (248, 24800, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 35),
  -- Tyranitar - Thunder - TM25
  (248, 24800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 36),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 37),
  -- Tyranitar - Return - TM27
  (248, 24800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 38),
  -- Tyranitar - Dig - TM28
  (248, 24800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 39),
  -- Tyranitar - Brick Break - TM31
  (248, 24800, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 40),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 41),
  -- Tyranitar - Flamethrower - TM35
  (248, 24800, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 42),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 43),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 44),
  -- Tyranitar - Rock Tomb - TM39
  (248, 24800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 45),
  -- Tyranitar - Aerial Ace - TM40
  (248, 24800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 46),
  -- Tyranitar - Torment - TM41
  (248, 24800, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 47),
  -- Tyranitar - Facade - TM42
  (248, 24800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 48),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 49),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 50),
  -- Tyranitar - Round - TM48
  (248, 24800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 51),
  -- Tyranitar - Focus Blast - TM52
  (248, 24800, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 52),
  -- Tyranitar - Fling - TM56
  (248, 24800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 53),
  -- Tyranitar - Incinerate - TM59
  (248, 24800, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 54),
  -- Tyranitar - Shadow Claw - TM65
  (248, 24800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 55),
  -- Tyranitar - Payback - TM66
  (248, 24800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 56),
  -- Tyranitar - Retaliate - TM67
  (248, 24800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 57),
  -- Tyranitar - Giga Impact - TM68
  (248, 24800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 58),
  -- Tyranitar - Rock Polish - TM69
  (248, 24800, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 59),
  -- Tyranitar - Stone Edge - TM71
  (248, 24800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 60),
  -- Tyranitar - Thunder Wave - TM73
  (248, 24800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 61),
  -- Tyranitar - Bulldoze - TM78
  (248, 24800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 62),
  -- Tyranitar - Rock Slide - TM80
  (248, 24800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 63),
  -- Tyranitar - Dragon Tail - TM82
  (248, 24800, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 64),
  -- Tyranitar - Swagger - TM87
  (248, 24800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 65),
  -- Tyranitar - Substitute - TM90
  (248, 24800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 66),
  -- Tyranitar - Rock Smash - TM94
  (248, 24800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 67),
  -- Tyranitar - Snarl - TM95
  (248, 24800, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 68),
  -- Tyranitar - Cut - HM01
  (248, 24800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 69),
  -- Tyranitar - Surf - HM03
  (248, 24800, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 70),
  -- Tyranitar - Strength - HM04
  (248, 24800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 71),
  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Weather Ball - Level 1
  (249, 24900, 311, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lugia - Gust - Level 9
  (249, 24900, 16, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lugia - Dragon Rush - Level 15
  (249, 24900, 407, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lugia - Extrasensory - Level 23
  (249, 24900, 326, 11, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Lugia - Rain Dance - Level 29
  (249, 24900, 240, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lugia - Hydro Pump - Level 37
  (249, 24900, 56, 11, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Lugia - Aeroblast - Level 43
  (249, 24900, 177, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lugia - Punishment - Level 50
  (249, 24900, 386, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lugia - Ancient Power - Level 57
  (249, 24900, 246, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Lugia - Safeguard - Level 65
  (249, 24900, 219, 11, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Lugia - Recover - Level 71
  (249, 24900, 105, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Lugia - Future Sight - Level 79
  (249, 24900, 248, 11, NULL, 1, 79, NULL, NULL, NULL, 13),
  -- Lugia - Natural Gift - Level 85
  (249, 24900, 363, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Lugia - Calm Mind - Level 93
  (249, 24900, 347, 11, NULL, 1, 93, NULL, NULL, NULL, 15),
  -- Lugia - Sky Attack - Level 99
  (249, 24900, 143, 11, NULL, 1, 99, NULL, NULL, NULL, 16),
  -- Lugia - Psyshock - TM03
  (249, 24900, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Lugia - Calm Mind - TM04
  (249, 24900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Lugia - Toxic - TM06
  (249, 24900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Lugia - Hail - TM07
  (249, 24900, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Lugia - Hidden Power - TM10
  (249, 24900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Lugia - Ice Beam - TM13
  (249, 24900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 24),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 25),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Lugia - Light Screen - TM16
  (249, 24900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 27),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Lugia - Telekinesis - TM19
  (249, 24900, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 30),
  -- Lugia - Safeguard - TM20
  (249, 24900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 31),
  -- Lugia - Frustration - TM21
  (249, 24900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 32),
  -- Lugia - Thunderbolt - TM24
  (249, 24900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 33),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 34),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 35),
  -- Lugia - Return - TM27
  (249, 24900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 36),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 37),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 38),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 39),
  -- Lugia - Reflect - TM33
  (249, 24900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 40),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 41),
  -- Lugia - Aerial Ace - TM40
  (249, 24900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 42),
  -- Lugia - Facade - TM42
  (249, 24900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 43),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 44),
  -- Lugia - Round - TM48
  (249, 24900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 45),
  -- Lugia - Echoed Voice - TM49
  (249, 24900, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 46),
  -- Lugia - Charge Beam - TM57
  (249, 24900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 47),
  -- Lugia - Sky Drop - TM58
  (249, 24900, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 48),
  -- Lugia - Giga Impact - TM68
  (249, 24900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Lugia - Flash - TM70
  (249, 24900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 50),
  -- Lugia - Thunder Wave - TM73
  (249, 24900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 51),
  -- Lugia - Psych Up - TM77
  (249, 24900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 52),
  -- Lugia - Bulldoze - TM78
  (249, 24900, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 53),
  -- Lugia - Dragon Tail - TM82
  (249, 24900, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 54),
  -- Lugia - Dream Eater - TM85
  (249, 24900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 55),
  -- Lugia - Swagger - TM87
  (249, 24900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Lugia - Substitute - TM90
  (249, 24900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Lugia - Rock Smash - TM94
  (249, 24900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Lugia - Fly - HM02
  (249, 24900, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 59),
  -- Lugia - Surf - HM03
  (249, 24900, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 60),
  -- Lugia - Strength - HM04
  (249, 24900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 61),
  -- Lugia - Waterfall - HM05
  (249, 24900, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 62),
  -- Lugia - Dive - HM06
  (249, 24900, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 63),
  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Weather Ball - Level 1
  (250, 25000, 311, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ho-Oh - Gust - Level 9
  (250, 25000, 16, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ho-Oh - Brave Bird - Level 15
  (250, 25000, 413, 11, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ho-Oh - Extrasensory - Level 23
  (250, 25000, 326, 11, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Ho-Oh - Sunny Day - Level 29
  (250, 25000, 241, 11, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Ho-Oh - Fire Blast - Level 37
  (250, 25000, 126, 11, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Ho-Oh - Sacred Fire - Level 43
  (250, 25000, 221, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Ho-Oh - Punishment - Level 50
  (250, 25000, 386, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Ho-Oh - Ancient Power - Level 57
  (250, 25000, 246, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Ho-Oh - Safeguard - Level 65
  (250, 25000, 219, 11, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Ho-Oh - Recover - Level 71
  (250, 25000, 105, 11, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Ho-Oh - Future Sight - Level 79
  (250, 25000, 248, 11, NULL, 1, 79, NULL, NULL, NULL, 13),
  -- Ho-Oh - Natural Gift - Level 85
  (250, 25000, 363, 11, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Ho-Oh - Calm Mind - Level 93
  (250, 25000, 347, 11, NULL, 1, 93, NULL, NULL, NULL, 15),
  -- Ho-Oh - Sky Attack - Level 99
  (250, 25000, 143, 11, NULL, 1, 99, NULL, NULL, NULL, 16),
  -- Ho-Oh - Calm Mind - TM04
  (250, 25000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 17),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 18),
  -- Ho-Oh - Toxic - TM06
  (250, 25000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Ho-Oh - Hidden Power - TM10
  (250, 25000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Ho-Oh - Light Screen - TM16
  (250, 25000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Ho-Oh - Safeguard - TM20
  (250, 25000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 26),
  -- Ho-Oh - Frustration - TM21
  (250, 25000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 28),
  -- Ho-Oh - Thunderbolt - TM24
  (250, 25000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 31),
  -- Ho-Oh - Return - TM27
  (250, 25000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Ho-Oh - Reflect - TM33
  (250, 25000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Ho-Oh - Flamethrower - TM35
  (250, 25000, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 37),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 38),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 39),
  -- Ho-Oh - Aerial Ace - TM40
  (250, 25000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 40),
  -- Ho-Oh - Facade - TM42
  (250, 25000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Ho-Oh - Flame Charge - TM43
  (250, 25000, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 42),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 43),
  -- Ho-Oh - Round - TM48
  (250, 25000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Ho-Oh - Echoed Voice - TM49
  (250, 25000, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 45),
  -- Ho-Oh - Overheat - TM50
  (250, 25000, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 46),
  -- Ho-Oh - Charge Beam - TM57
  (250, 25000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 47),
  -- Ho-Oh - Sky Drop - TM58
  (250, 25000, 507, 11, NULL, 2, NULL, NULL, 11002058, NULL, 48),
  -- Ho-Oh - Incinerate - TM59
  (250, 25000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 49),
  -- Ho-Oh - Will-O-Wisp - TM61
  (250, 25000, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 50),
  -- Ho-Oh - Giga Impact - TM68
  (250, 25000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 51),
  -- Ho-Oh - Flash - TM70
  (250, 25000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 52),
  -- Ho-Oh - Thunder Wave - TM73
  (250, 25000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 53),
  -- Ho-Oh - Psych Up - TM77
  (250, 25000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 54),
  -- Ho-Oh - Bulldoze - TM78
  (250, 25000, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 55),
  -- Ho-Oh - Dream Eater - TM85
  (250, 25000, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 56),
  -- Ho-Oh - Swagger - TM87
  (250, 25000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 57),
  -- Ho-Oh - Pluck - TM88
  (250, 25000, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 58),
  -- Ho-Oh - Substitute - TM90
  (250, 25000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 59),
  -- Ho-Oh - Rock Smash - TM94
  (250, 25000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 60),
  -- Ho-Oh - Fly - HM02
  (250, 25000, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 61),
  -- Ho-Oh - Strength - HM04
  (250, 25000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 62),
  -- Celebi - Leech Seed - Level 1
  (251, 25100, 73, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Recover - Level 1
  (251, 25100, 105, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celebi - Safeguard - Level 10
  (251, 25100, 219, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Celebi - Magical Leaf - Level 19
  (251, 25100, 345, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Celebi - Ancient Power - Level 28
  (251, 25100, 246, 11, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Celebi - Baton Pass - Level 37
  (251, 25100, 226, 11, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Celebi - Natural Gift - Level 46
  (251, 25100, 363, 11, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Celebi - Heal Block - Level 55
  (251, 25100, 377, 11, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Celebi - Future Sight - Level 64
  (251, 25100, 248, 11, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Celebi - Healing Wish - Level 73
  (251, 25100, 361, 11, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Celebi - Leaf Storm - Level 82
  (251, 25100, 437, 11, NULL, 1, 82, NULL, NULL, NULL, 13),
  -- Celebi - Perish Song - Level 91
  (251, 25100, 195, 11, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Celebi - Calm Mind - TM04
  (251, 25100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Celebi - Toxic - TM06
  (251, 25100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Celebi - Hidden Power - TM10
  (251, 25100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Celebi - Light Screen - TM16
  (251, 25100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Celebi - Safeguard - TM20
  (251, 25100, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Celebi - Frustration - TM21
  (251, 25100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Celebi - Return - TM27
  (251, 25100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 27),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Celebi - Reflect - TM33
  (251, 25100, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Celebi - Aerial Ace - TM40
  (251, 25100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Celebi - Facade - TM42
  (251, 25100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Celebi - Round - TM48
  (251, 25100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Celebi - Echoed Voice - TM49
  (251, 25100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 36),
  -- Celebi - Energy Ball - TM53
  (251, 25100, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 37),
  -- Celebi - Fling - TM56
  (251, 25100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Celebi - Charge Beam - TM57
  (251, 25100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 39),
  -- Celebi - Giga Impact - TM68
  (251, 25100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Celebi - Flash - TM70
  (251, 25100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Celebi - Thunder Wave - TM73
  (251, 25100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Celebi - Swords Dance - TM75
  (251, 25100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 43),
  -- Celebi - Psych Up - TM77
  (251, 25100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Celebi - Dream Eater - TM85
  (251, 25100, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 45),
  -- Celebi - Grass Knot - TM86
  (251, 25100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 46),
  -- Celebi - Swagger - TM87
  (251, 25100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Celebi - U-turn - TM89
  (251, 25100, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 48),
  -- Celebi - Substitute - TM90
  (251, 25100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Celebi - Trick Room - TM92
  (251, 25100, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 50),
  -- Celebi - Cut - HM01
  (251, 25100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51);
