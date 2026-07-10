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
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 202-251.
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
  -- Wobbuffet - Splash - Starting Move
  (202, 20200, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wobbuffet - Charm - Starting Move
  (202, 20200, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wobbuffet - Encore - Starting Move
  (202, 20200, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wobbuffet - Amnesia - Starting Move
  (202, 20200, 133, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wobbuffet - Counter - Starting Move
  (202, 20200, 68, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Wobbuffet - Mirror Coat - Starting Move
  (202, 20200, 243, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Wobbuffet - Safeguard - Starting Move
  (202, 20200, 219, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Wobbuffet - Destiny Bond - Starting Move
  (202, 20200, 194, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Wobbuffet - Counter - Evolution
  (202, 20200, 68, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Wobbuffet - Mirror Coat - Evolution
  (202, 20200, 243, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Wobbuffet - Safeguard - Evolution
  (202, 20200, 219, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Wobbuffet - Destiny Bond - Evolution
  (202, 20200, 194, 21, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Wobbuffet - Safeguard - TM20
  (202, 20200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 13),
  -- Girafarig - Power Swap - Starting Move
  (203, 20300, 384, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Girafarig - Guard Swap - Starting Move
  (203, 20300, 385, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Girafarig - Astonish - Starting Move
  (203, 20300, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Girafarig - Tackle - Starting Move
  (203, 20300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Girafarig - Growl - Starting Move
  (203, 20300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Girafarig - Confusion - Level 5
  (203, 20300, 93, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Girafarig - Assurance - Level 10
  (203, 20300, 372, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Girafarig - Stomp - Level 14
  (203, 20300, 23, 21, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Girafarig - Psybeam - Level 19
  (203, 20300, 60, 21, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Girafarig - Agility - Level 23
  (203, 20300, 97, 21, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Girafarig - Double Hit - Level 28
  (203, 20300, 458, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Girafarig - Zen Headbutt - Level 32
  (203, 20300, 428, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Girafarig - Crunch - Level 37
  (203, 20300, 242, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Girafarig - Baton Pass - Level 41
  (203, 20300, 226, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Girafarig - Nasty Plot - Level 46
  (203, 20300, 417, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Girafarig - Psychic - Level 50
  (203, 20300, 94, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Girafarig - Calm Mind - TM04
  (203, 20300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Girafarig - Work Up - TM10
  (203, 20300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Girafarig - Light Screen - TM16
  (203, 20300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Girafarig - Rain Dance - TM18
  (203, 20300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Girafarig - Dazzling Gleam - TM21
  (203, 20300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Girafarig - Iron Tail - TM23
  (203, 20300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Girafarig - Thunderbolt - TM24
  (203, 20300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Girafarig - Reflect - TM33
  (203, 20300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Girafarig - Shock Wave - TM34
  (203, 20300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Girafarig - Facade - TM42
  (203, 20300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Girafarig - Skill Swap - TM48
  (203, 20300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Girafarig - Energy Ball - TM53
  (203, 20300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Girafarig - Charge Beam - TM57
  (203, 20300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Girafarig - Endure - TM58
  (203, 20300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Girafarig - Nasty Plot - TM63
  (203, 20300, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 41),
  -- Girafarig - Recycle - TM67
  (203, 20300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 42),
  -- Girafarig - Flash - TM70
  (203, 20300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Girafarig - Thunder Wave - TM73
  (203, 20300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 44),
  -- Girafarig - Psych Up - TM77
  (203, 20300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Girafarig - Sleep Talk - TM82
  (203, 20300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Girafarig - Bulldoze - TM83
  (203, 20300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Girafarig - Dream Eater - TM85
  (203, 20300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Girafarig - Grass Knot - TM86
  (203, 20300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Girafarig - Swagger - TM87
  (203, 20300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Girafarig - Substitute - TM90
  (203, 20300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Girafarig - Trick Room - TM92
  (203, 20300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 52),
  -- Girafarig - Strength - TM96
  (203, 20300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Girafarig - Rock Smash - TM98
  (203, 20300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Girafarig - Amnesia - Egg
  (203, 20300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Girafarig - Beat Up - Egg
  (203, 20300, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Girafarig - Double Kick - Egg
  (203, 20300, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Girafarig - Future Sight - Egg
  (203, 20300, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Girafarig - Magic Coat - Egg
  (203, 20300, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Girafarig - Mean Look - Egg
  (203, 20300, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Girafarig - Mirror Coat - Egg
  (203, 20300, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Girafarig - Take Down - Egg
  (203, 20300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Girafarig - Wish - Egg
  (203, 20300, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pineco - Tackle - Starting Move
  (204, 20400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Starting Move
  (204, 20400, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 6
  (204, 20400, 120, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pineco - Bug Bite - Level 9
  (204, 20400, 450, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pineco - Take Down - Level 12
  (204, 20400, 36, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pineco - Rapid Spin - Level 17
  (204, 20400, 229, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pineco - Autotomize - Level 20
  (204, 20400, 475, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pineco - Rollout - Level 23
  (204, 20400, 205, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pineco - Spikes - Level 28
  (204, 20400, 191, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pineco - Payback - Level 31
  (204, 20400, 371, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pineco - Explosion - Level 34
  (204, 20400, 153, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pineco - Iron Defense - Level 39
  (204, 20400, 334, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pineco - Gyro Ball - Level 42
  (204, 20400, 360, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pineco - Double-Edge - Level 45
  (204, 20400, 38, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Pineco - Light Screen - TM16
  (204, 20400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Pineco - Giga Drain - TM19
  (204, 20400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 19),
  -- Pineco - Earthquake - TM26
  (204, 20400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 20),
  -- Pineco - Dig - TM28
  (204, 20400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Pineco - Reflect - TM33
  (204, 20400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 23),
  -- Pineco - Sandstorm - TM37
  (204, 20400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 24),
  -- Pineco - Rock Tomb - TM39
  (204, 20400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Pineco - Facade - TM42
  (204, 20400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Pineco - Endure - TM58
  (204, 20400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Pineco - Bug Buzz - TM62
  (204, 20400, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 30),
  -- Pineco - Explosion - TM64
  (204, 20400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 31),
  -- Pineco - Payback - TM66
  (204, 20400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 32),
  -- Pineco - Gyro Ball - TM74
  (204, 20400, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 33),
  -- Pineco - Rock Slide - TM80
  (204, 20400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 34),
  -- Pineco - Sleep Talk - TM82
  (204, 20400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Pineco - Bulldoze - TM83
  (204, 20400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 36),
  -- Pineco - Swagger - TM87
  (204, 20400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Pineco - Substitute - TM90
  (204, 20400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Pineco - Strength - TM96
  (204, 20400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Pineco - Rock Smash - TM98
  (204, 20400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 40),
  -- Pineco - Counter - Egg
  (204, 20400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pineco - Double-Edge - Egg
  (204, 20400, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pineco - Flail - Egg
  (204, 20400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pineco - Pin Missile - Egg
  (204, 20400, 42, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pineco - Power Trick - Egg
  (204, 20400, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pineco - Revenge - Egg
  (204, 20400, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pineco - Sand Tomb - Egg
  (204, 20400, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pineco - Swift - Egg
  (204, 20400, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pineco - Toxic Spikes - Egg
  (204, 20400, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Forretress - Autotomize - Starting Move
  (205, 20500, 475, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Forretress - Heavy Slam - Starting Move
  (205, 20500, 484, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Forretress - Zap Cannon - Starting Move
  (205, 20500, 192, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Forretress - Magnet Rise - Starting Move
  (205, 20500, 393, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Forretress - Toxic Spikes - Starting Move
  (205, 20500, 390, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Forretress - Tackle - Starting Move
  (205, 20500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Forretress - Protect - Starting Move
  (205, 20500, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Forretress - Self-Destruct - Starting Move
  (205, 20500, 120, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Forretress - Bug Bite - Starting Move
  (205, 20500, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Forretress - Autotomize - Evolution
  (205, 20500, 475, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Forretress - Self-Destruct - Level 6
  (205, 20500, 120, 21, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Forretress - Bug Bite - Level 9
  (205, 20500, 450, 21, NULL, 1, 9, NULL, NULL, NULL, 12),
  -- Forretress - Take Down - Level 12
  (205, 20500, 36, 21, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Forretress - Rapid Spin - Level 17
  (205, 20500, 229, 21, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Forretress - Reflect - Level 20
  (205, 20500, 115, 21, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Forretress - Rollout - Level 23
  (205, 20500, 205, 21, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Forretress - Spikes - Level 28
  (205, 20500, 191, 21, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Forretress - Payback - Level 32
  (205, 20500, 371, 21, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Forretress - Explosion - Level 36
  (205, 20500, 153, 21, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Forretress - Iron Defense - Level 42
  (205, 20500, 334, 21, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Forretress - Gyro Ball - Level 46
  (205, 20500, 360, 21, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Forretress - Double-Edge - Level 50
  (205, 20500, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Forretress - Magnet Rise - Level 56
  (205, 20500, 393, 21, NULL, 1, 56, NULL, NULL, NULL, 23),
  -- Forretress - Zap Cannon - Level 60
  (205, 20500, 192, 21, NULL, 1, 60, NULL, NULL, NULL, 24),
  -- Forretress - Heavy Slam - Level 64
  (205, 20500, 484, 21, NULL, 1, 64, NULL, NULL, NULL, 25),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Forretress - Light Screen - TM16
  (205, 20500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Forretress - Giga Drain - TM19
  (205, 20500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 30),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 31),
  -- Forretress - Earthquake - TM26
  (205, 20500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Forretress - Dig - TM28
  (205, 20500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Forretress - Reflect - TM33
  (205, 20500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 35),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 36),
  -- Forretress - Rock Tomb - TM39
  (205, 20500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 37),
  -- Forretress - Facade - TM42
  (205, 20500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Forretress - Volt Switch - TM43
  (205, 20500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 39),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Forretress - Endure - TM58
  (205, 20500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Forretress - Bug Buzz - TM62
  (205, 20500, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 43),
  -- Forretress - Explosion - TM64
  (205, 20500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 44),
  -- Forretress - Payback - TM66
  (205, 20500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Forretress - Giga Impact - TM68
  (205, 20500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Forretress - Rock Polish - TM69
  (205, 20500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 47),
  -- Forretress - Gyro Ball - TM74
  (205, 20500, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 48),
  -- Forretress - Rock Slide - TM80
  (205, 20500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 49),
  -- Forretress - Sleep Talk - TM82
  (205, 20500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Forretress - Bulldoze - TM83
  (205, 20500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Forretress - Swagger - TM87
  (205, 20500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Forretress - Substitute - TM90
  (205, 20500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Forretress - Flash Cannon - TM91
  (205, 20500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 54),
  -- Forretress - Strength - TM96
  (205, 20500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Forretress - Rock Smash - TM98
  (205, 20500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Forretress - Counter - Egg
  (205, 20500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Forretress - Double-Edge - Egg
  (205, 20500, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Forretress - Flail - Egg
  (205, 20500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Forretress - Pin Missile - Egg
  (205, 20500, 42, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Forretress - Power Trick - Egg
  (205, 20500, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Forretress - Revenge - Egg
  (205, 20500, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Forretress - Sand Tomb - Egg
  (205, 20500, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Forretress - Swift - Egg
  (205, 20500, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Forretress - Toxic Spikes - Egg
  (205, 20500, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Flail - Starting Move
  (206, 20600, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Starting Move
  (206, 20600, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dunsparce - Mud-Slap - Level 4
  (206, 20600, 189, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dunsparce - Rollout - Level 8
  (206, 20600, 205, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dunsparce - Glare - Level 12
  (206, 20600, 137, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 16
  (206, 20600, 103, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dunsparce - Ancient Power - Level 20
  (206, 20600, 246, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dunsparce - Drill Run - Level 24
  (206, 20600, 529, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dunsparce - Yawn - Level 28
  (206, 20600, 281, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dunsparce - Body Slam - Level 32
  (206, 20600, 34, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dunsparce - Take Down - Level 36
  (206, 20600, 36, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dunsparce - Roost - Level 40
  (206, 20600, 355, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dunsparce - Dragon Rush - Level 44
  (206, 20600, 407, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dunsparce - Coil - Level 48
  (206, 20600, 489, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dunsparce - Double-Edge - Level 52
  (206, 20600, 38, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dunsparce - Endeavor - Level 56
  (206, 20600, 283, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Dunsparce - Water Pulse - TM03
  (206, 20600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Dunsparce - Calm Mind - TM04
  (206, 20600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Dunsparce - Ice Beam - TM13
  (206, 20600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Dunsparce - Blizzard - TM14
  (206, 20600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Dunsparce - Iron Tail - TM23
  (206, 20600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Dunsparce - Thunderbolt - TM24
  (206, 20600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Dunsparce - Earthquake - TM26
  (206, 20600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Dunsparce - Dig - TM28
  (206, 20600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Dunsparce - Shadow Ball - TM30
  (206, 20600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Dunsparce - Shock Wave - TM34
  (206, 20600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Dunsparce - Flamethrower - TM35
  (206, 20600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Dunsparce - Fire Blast - TM38
  (206, 20600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Dunsparce - Rock Tomb - TM39
  (206, 20600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Dunsparce - Facade - TM42
  (206, 20600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Dunsparce - Roost - TM51
  (206, 20600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 40),
  -- Dunsparce - Charge Beam - TM57
  (206, 20600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Dunsparce - Endure - TM58
  (206, 20600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Dunsparce - Thunder Wave - TM73
  (206, 20600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Dunsparce - Gyro Ball - TM74
  (206, 20600, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 44),
  -- Dunsparce - Stealth Rock - TM76
  (206, 20600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 45),
  -- Dunsparce - Psych Up - TM77
  (206, 20600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Dunsparce - Rock Slide - TM80
  (206, 20600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Dunsparce - Sleep Talk - TM82
  (206, 20600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Dunsparce - Bulldoze - TM83
  (206, 20600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 49),
  -- Dunsparce - Poison Jab - TM84
  (206, 20600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 50),
  -- Dunsparce - Dream Eater - TM85
  (206, 20600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Dunsparce - Swagger - TM87
  (206, 20600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Dunsparce - Substitute - TM90
  (206, 20600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Dunsparce - Strength - TM96
  (206, 20600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Dunsparce - Rock Smash - TM98
  (206, 20600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Dunsparce - Agility - Egg
  (206, 20600, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dunsparce - Ancient Power - Egg
  (206, 20600, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dunsparce - Aqua Tail - Egg
  (206, 20600, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dunsparce - Astonish - Egg
  (206, 20600, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dunsparce - Bite - Egg
  (206, 20600, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dunsparce - Curse - Egg
  (206, 20600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dunsparce - Headbutt - Egg
  (206, 20600, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dunsparce - Hex - Egg
  (206, 20600, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dunsparce - Last Resort - Egg
  (206, 20600, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dunsparce - Magic Coat - Egg
  (206, 20600, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Snore - Egg
  (206, 20600, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Poison Sting - Starting Move
  (207, 20700, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 4
  (207, 20700, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 7
  (207, 20700, 106, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gligar - Knock Off - Level 10
  (207, 20700, 282, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gligar - Quick Attack - Level 13
  (207, 20700, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gligar - Fury Cutter - Level 16
  (207, 20700, 210, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gligar - Mud-Slap - Level 19
  (207, 20700, 189, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gligar - Acrobatics - Level 22
  (207, 20700, 512, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gligar - Slash - Level 27
  (207, 20700, 163, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Gligar - U-turn - Level 30
  (207, 20700, 369, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Gligar - Screech - Level 35
  (207, 20700, 103, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Gligar - X-Scissor - Level 40
  (207, 20700, 404, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gligar - Earthquake - Level 45
  (207, 20700, 89, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Gligar - Swords Dance - Level 50
  (207, 20700, 14, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gligar - Guillotine - Level 55
  (207, 20700, 12, 21, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Gligar - Taunt - TM12
  (207, 20700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Gligar - Rain Dance - TM18
  (207, 20700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Gligar - Iron Tail - TM23
  (207, 20700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Gligar - Earthquake - TM26
  (207, 20700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Gligar - Dig - TM28
  (207, 20700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Gligar - Brick Break - TM31
  (207, 20700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 23),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 25),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Gligar - Rock Tomb - TM39
  (207, 20700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Gligar - Aerial Ace - TM40
  (207, 20700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Gligar - Torment - TM41
  (207, 20700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Gligar - Facade - TM42
  (207, 20700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Gligar - Steel Wing - TM47
  (207, 20700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 34),
  -- Gligar - Roost - TM51
  (207, 20700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 35),
  -- Gligar - False Swipe - TM54
  (207, 20700, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 36),
  -- Gligar - Fling - TM56
  (207, 20700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Gligar - Endure - TM58
  (207, 20700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Gligar - Payback - TM66
  (207, 20700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Gligar - Rock Polish - TM69
  (207, 20700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 40),
  -- Gligar - Stone Edge - TM71
  (207, 20700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 41),
  -- Gligar - Swords Dance - TM75
  (207, 20700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Gligar - Stealth Rock - TM76
  (207, 20700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 43),
  -- Gligar - Dark Pulse - TM79
  (207, 20700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 44),
  -- Gligar - Rock Slide - TM80
  (207, 20700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Gligar - X-Scissor - TM81
  (207, 20700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 46),
  -- Gligar - Sleep Talk - TM82
  (207, 20700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Gligar - Bulldoze - TM83
  (207, 20700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Gligar - Poison Jab - TM84
  (207, 20700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 49),
  -- Gligar - Swagger - TM87
  (207, 20700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Gligar - U-turn - TM89
  (207, 20700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 51),
  -- Gligar - Substitute - TM90
  (207, 20700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Gligar - Cut - TM93
  (207, 20700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Gligar - Strength - TM96
  (207, 20700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Gligar - Defog - TM97
  (207, 20700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 55),
  -- Gligar - Rock Smash - TM98
  (207, 20700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Gligar - Agility - Egg
  (207, 20700, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gligar - Baton Pass - Egg
  (207, 20700, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gligar - Counter - Egg
  (207, 20700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gligar - Cross Poison - Egg
  (207, 20700, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gligar - Double-Edge - Egg
  (207, 20700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gligar - Feint - Egg
  (207, 20700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gligar - Metal Claw - Egg
  (207, 20700, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gligar - Night Slash - Egg
  (207, 20700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gligar - Poison Tail - Egg
  (207, 20700, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gligar - Power Trick - Egg
  (207, 20700, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Sand Tomb - Egg
  (207, 20700, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gligar - Wing Attack - Egg
  (207, 20700, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Steelix - Crunch - Starting Move
  (208, 20800, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Steelix - Thunder Fang - Starting Move
  (208, 20800, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Steelix - Ice Fang - Starting Move
  (208, 20800, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Steelix - Fire Fang - Starting Move
  (208, 20800, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Steelix - Rock Polish - Starting Move
  (208, 20800, 397, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Steelix - Tackle - Starting Move
  (208, 20800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Steelix - Harden - Starting Move
  (208, 20800, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Steelix - Bind - Starting Move
  (208, 20800, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Steelix - Rock Throw - Starting Move
  (208, 20800, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Steelix - Smack Down - Level 4
  (208, 20800, 479, 21, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Steelix - Autotomize - Level 8
  (208, 20800, 475, 21, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Steelix - Dragon Breath - Level 12
  (208, 20800, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Steelix - Curse - Level 16
  (208, 20800, 174, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Steelix - Rock Slide - Level 20
  (208, 20800, 157, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Steelix - Screech - Level 24
  (208, 20800, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Steelix - Sand Tomb - Level 28
  (208, 20800, 328, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Steelix - Stealth Rock - Level 32
  (208, 20800, 446, 21, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Steelix - Slam - Level 36
  (208, 20800, 21, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Steelix - Sandstorm - Level 40
  (208, 20800, 201, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Steelix - Dig - Level 44
  (208, 20800, 91, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Steelix - Iron Tail - Level 48
  (208, 20800, 231, 21, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Steelix - Stone Edge - Level 52
  (208, 20800, 444, 21, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Steelix - Double-Edge - Level 56
  (208, 20800, 38, 21, NULL, 1, 56, NULL, NULL, NULL, 23),
  -- Steelix - Magnet Rise - Level 60
  (208, 20800, 393, 21, NULL, 1, 60, NULL, NULL, NULL, 24),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 25),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Steelix - Taunt - TM12
  (208, 20800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 27),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Steelix - Iron Tail - TM23
  (208, 20800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Steelix - Dig - TM28
  (208, 20800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Steelix - Rock Tomb - TM39
  (208, 20800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Steelix - Torment - TM41
  (208, 20800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Steelix - Facade - TM42
  (208, 20800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Steelix - Endure - TM58
  (208, 20800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Steelix - Dragon Pulse - TM59
  (208, 20800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 41),
  -- Steelix - Explosion - TM64
  (208, 20800, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 42),
  -- Steelix - Payback - TM66
  (208, 20800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Steelix - Giga Impact - TM68
  (208, 20800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Steelix - Rock Polish - TM69
  (208, 20800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 45),
  -- Steelix - Stone Edge - TM71
  (208, 20800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 46),
  -- Steelix - Gyro Ball - TM74
  (208, 20800, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 47),
  -- Steelix - Stealth Rock - TM76
  (208, 20800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 48),
  -- Steelix - Psych Up - TM77
  (208, 20800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Steelix - Dark Pulse - TM79
  (208, 20800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 50),
  -- Steelix - Rock Slide - TM80
  (208, 20800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Steelix - Sleep Talk - TM82
  (208, 20800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Steelix - Bulldoze - TM83
  (208, 20800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Steelix - Swagger - TM87
  (208, 20800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Steelix - Substitute - TM90
  (208, 20800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Steelix - Flash Cannon - TM91
  (208, 20800, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 56),
  -- Steelix - Cut - TM93
  (208, 20800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 57),
  -- Steelix - Strength - TM96
  (208, 20800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Steelix - Rock Smash - TM98
  (208, 20800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Steelix - Rock Climb - TM100
  (208, 20800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 60),
  -- Steelix - Block - Egg
  (208, 20800, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Steelix - Defense Curl - Egg
  (208, 20800, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Steelix - Dragon Tail - Egg
  (208, 20800, 525, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Steelix - Flail - Egg
  (208, 20800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Steelix - Head Smash - Egg
  (208, 20800, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Steelix - Heavy Slam - Egg
  (208, 20800, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Steelix - Rock Blast - Egg
  (208, 20800, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Steelix - Rollout - Egg
  (208, 20800, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Steelix - Wide Guard - Egg
  (208, 20800, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snubbull - Ice Fang - Starting Move
  (209, 20900, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Snubbull - Fire Fang - Starting Move
  (209, 20900, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Snubbull - Thunder Fang - Starting Move
  (209, 20900, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Snubbull - Tackle - Starting Move
  (209, 20900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Snubbull - Scary Face - Starting Move
  (209, 20900, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Snubbull - Tail Whip - Starting Move
  (209, 20900, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Snubbull - Charm - Starting Move
  (209, 20900, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Snubbull - Bite - Level 7
  (209, 20900, 44, 21, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Snubbull - Lick - Level 13
  (209, 20900, 122, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Snubbull - Headbutt - Level 19
  (209, 20900, 29, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Snubbull - Roar - Level 25
  (209, 20900, 46, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Snubbull - Taunt - Level 31
  (209, 20900, 269, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Snubbull - Play Rough - Level 37
  (209, 20900, 583, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snubbull - Payback - Level 43
  (209, 20900, 371, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Snubbull - Crunch - Level 49
  (209, 20900, 242, 21, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Snubbull - Focus Punch - TM01
  (209, 20900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Snubbull - Water Pulse - TM03
  (209, 20900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Snubbull - Bulk Up - TM08
  (209, 20900, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Snubbull - Work Up - TM10
  (209, 20900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Snubbull - Taunt - TM12
  (209, 20900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Snubbull - Dazzling Gleam - TM21
  (209, 20900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Snubbull - Solar Beam - TM22
  (209, 20900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Snubbull - Thunderbolt - TM24
  (209, 20900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Snubbull - Earthquake - TM26
  (209, 20900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Snubbull - Dig - TM28
  (209, 20900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Snubbull - Brick Break - TM31
  (209, 20900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Snubbull - Reflect - TM33
  (209, 20900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Snubbull - Shock Wave - TM34
  (209, 20900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Snubbull - Flamethrower - TM35
  (209, 20900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 36),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 37),
  -- Snubbull - Fire Blast - TM38
  (209, 20900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 38),
  -- Snubbull - Torment - TM41
  (209, 20900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 39),
  -- Snubbull - Facade - TM42
  (209, 20900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 43),
  -- Snubbull - Overheat - TM50
  (209, 20900, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 44),
  -- Snubbull - Fling - TM56
  (209, 20900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 45),
  -- Snubbull - Endure - TM58
  (209, 20900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Snubbull - Payback - TM66
  (209, 20900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Snubbull - Thunder Wave - TM73
  (209, 20900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 48),
  -- Snubbull - Snarl - TM78
  (209, 20900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 49),
  -- Snubbull - Sleep Talk - TM82
  (209, 20900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Snubbull - Bulldoze - TM83
  (209, 20900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Snubbull - Swagger - TM87
  (209, 20900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Snubbull - Substitute - TM90
  (209, 20900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Snubbull - Strength - TM96
  (209, 20900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Snubbull - Rock Smash - TM98
  (209, 20900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Snubbull - Close Combat - Egg
  (209, 20900, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Snubbull - Crunch - Egg
  (209, 20900, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Snubbull - Double-Edge - Egg
  (209, 20900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snubbull - Fake Tears - Egg
  (209, 20900, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Snubbull - Fire Fang - Egg
  (209, 20900, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snubbull - Heal Bell - Egg
  (209, 20900, 215, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snubbull - Ice Fang - Egg
  (209, 20900, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snubbull - Metronome - Egg
  (209, 20900, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snubbull - Mimic - Egg
  (209, 20900, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snubbull - Present - Egg
  (209, 20900, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snubbull - Snore - Egg
  (209, 20900, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snubbull - Thunder Fang - Egg
  (209, 20900, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Granbull - Outrage - Starting Move
  (210, 21000, 200, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Granbull - Ice Fang - Starting Move
  (210, 21000, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Granbull - Fire Fang - Starting Move
  (210, 21000, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Granbull - Thunder Fang - Starting Move
  (210, 21000, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Granbull - Tackle - Starting Move
  (210, 21000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Granbull - Scary Face - Starting Move
  (210, 21000, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Granbull - Tail Whip - Starting Move
  (210, 21000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Granbull - Charm - Starting Move
  (210, 21000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Granbull - Bite - Level 7
  (210, 21000, 44, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Granbull - Lick - Level 13
  (210, 21000, 122, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Granbull - Headbutt - Level 19
  (210, 21000, 29, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Granbull - Roar - Level 27
  (210, 21000, 46, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Granbull - Taunt - Level 35
  (210, 21000, 269, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Granbull - Play Rough - Level 43
  (210, 21000, 583, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Granbull - Payback - Level 51
  (210, 21000, 371, 21, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Granbull - Crunch - Level 59
  (210, 21000, 242, 21, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Granbull - Outrage - Level 67
  (210, 21000, 200, 21, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Granbull - Focus Punch - TM01
  (210, 21000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Granbull - Water Pulse - TM03
  (210, 21000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Granbull - Bulk Up - TM08
  (210, 21000, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 21),
  -- Granbull - Work Up - TM10
  (210, 21000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Granbull - Taunt - TM12
  (210, 21000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Granbull - Dazzling Gleam - TM21
  (210, 21000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 28),
  -- Granbull - Solar Beam - TM22
  (210, 21000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Granbull - Iron Tail - TM23
  (210, 21000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Granbull - Thunderbolt - TM24
  (210, 21000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Granbull - Earthquake - TM26
  (210, 21000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Granbull - Dig - TM28
  (210, 21000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 34),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Granbull - Brick Break - TM31
  (210, 21000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Granbull - Reflect - TM33
  (210, 21000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Granbull - Shock Wave - TM34
  (210, 21000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 39),
  -- Granbull - Flamethrower - TM35
  (210, 21000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 40),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 41),
  -- Granbull - Fire Blast - TM38
  (210, 21000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 42),
  -- Granbull - Rock Tomb - TM39
  (210, 21000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 43),
  -- Granbull - Torment - TM41
  (210, 21000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 44),
  -- Granbull - Facade - TM42
  (210, 21000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 45),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 46),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 47),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 48),
  -- Granbull - Overheat - TM50
  (210, 21000, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 49),
  -- Granbull - Focus Blast - TM52
  (210, 21000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 50),
  -- Granbull - Fling - TM56
  (210, 21000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 51),
  -- Granbull - Endure - TM58
  (210, 21000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 52),
  -- Granbull - Payback - TM66
  (210, 21000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 53),
  -- Granbull - Giga Impact - TM68
  (210, 21000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 54),
  -- Granbull - Stone Edge - TM71
  (210, 21000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 55),
  -- Granbull - Thunder Wave - TM73
  (210, 21000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 56),
  -- Granbull - Snarl - TM78
  (210, 21000, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 57),
  -- Granbull - Rock Slide - TM80
  (210, 21000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 58),
  -- Granbull - Sleep Talk - TM82
  (210, 21000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 59),
  -- Granbull - Bulldoze - TM83
  (210, 21000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 60),
  -- Granbull - Swagger - TM87
  (210, 21000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 61),
  -- Granbull - Substitute - TM90
  (210, 21000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 62),
  -- Granbull - Strength - TM96
  (210, 21000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 63),
  -- Granbull - Rock Smash - TM98
  (210, 21000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 64),
  -- Granbull - Rock Climb - TM100
  (210, 21000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 65),
  -- Granbull - Close Combat - Egg
  (210, 21000, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Granbull - Crunch - Egg
  (210, 21000, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Granbull - Double-Edge - Egg
  (210, 21000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Granbull - Fake Tears - Egg
  (210, 21000, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Granbull - Fire Fang - Egg
  (210, 21000, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Granbull - Heal Bell - Egg
  (210, 21000, 215, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Granbull - Ice Fang - Egg
  (210, 21000, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Granbull - Metronome - Egg
  (210, 21000, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Granbull - Mimic - Egg
  (210, 21000, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Granbull - Present - Egg
  (210, 21000, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Granbull - Snore - Egg
  (210, 21000, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Granbull - Thunder Fang - Egg
  (210, 21000, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Qwilfish - Poison Sting - Starting Move
  (211, 21100, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Qwilfish - Tackle - Starting Move
  (211, 21100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Qwilfish - Harden - Level 4
  (211, 21100, 106, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Qwilfish - Water Gun - Level 8
  (211, 21100, 55, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Qwilfish - Fell Stinger - Level 12
  (211, 21100, 565, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Qwilfish - Minimize - Level 16
  (211, 21100, 107, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Qwilfish - Spikes - Level 20
  (211, 21100, 191, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Qwilfish - Brine - Level 24
  (211, 21100, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Qwilfish - Revenge - Level 28
  (211, 21100, 279, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Qwilfish - Pin Missile - Level 32
  (211, 21100, 42, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Qwilfish - Toxic Spikes - Level 36
  (211, 21100, 390, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Qwilfish - Poison Jab - Level 40
  (211, 21100, 398, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Qwilfish - Stockpile - Level 44
  (211, 21100, 254, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Qwilfish - Spit Up - Level 44
  (211, 21100, 255, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Qwilfish - Take Down - Level 48
  (211, 21100, 36, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Qwilfish - Toxic - Level 52
  (211, 21100, 92, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Qwilfish - Aqua Tail - Level 56
  (211, 21100, 401, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Qwilfish - Acupressure - Level 60
  (211, 21100, 367, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Qwilfish - Destiny Bond - Level 66
  (211, 21100, 194, 21, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Qwilfish - Water Pulse - TM03
  (211, 21100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 21),
  -- Qwilfish - Hail - TM07
  (211, 21100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Qwilfish - Taunt - TM12
  (211, 21100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Qwilfish - Ice Beam - TM13
  (211, 21100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Qwilfish - Shadow Ball - TM30
  (211, 21100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Qwilfish - Shock Wave - TM34
  (211, 21100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Qwilfish - Facade - TM42
  (211, 21100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Qwilfish - Scald - TM49
  (211, 21100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Qwilfish - Brine - TM55
  (211, 21100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 36),
  -- Qwilfish - Endure - TM58
  (211, 21100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Qwilfish - Explosion - TM64
  (211, 21100, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 38),
  -- Qwilfish - Payback - TM66
  (211, 21100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Qwilfish - Thunder Wave - TM73
  (211, 21100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Qwilfish - Gyro Ball - TM74
  (211, 21100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 41),
  -- Qwilfish - Swords Dance - TM75
  (211, 21100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Qwilfish - Sleep Talk - TM82
  (211, 21100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Qwilfish - Poison Jab - TM84
  (211, 21100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 44),
  -- Qwilfish - Swagger - TM87
  (211, 21100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Qwilfish - Substitute - TM90
  (211, 21100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Qwilfish - Surf - TM95
  (211, 21100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 47),
  -- Qwilfish - Waterfall - TM99
  (211, 21100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 48),
  -- Qwilfish - Acid Spray - Egg
  (211, 21100, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Qwilfish - Aqua Jet - Egg
  (211, 21100, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Qwilfish - Astonish - Egg
  (211, 21100, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Qwilfish - Bubble Beam - Egg
  (211, 21100, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Qwilfish - Flail - Egg
  (211, 21100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Qwilfish - Haze - Egg
  (211, 21100, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Qwilfish - Supersonic - Egg
  (211, 21100, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scizor - Bullet Punch - Starting Move
  (212, 21200, 418, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Scizor - Wing Attack - Starting Move
  (212, 21200, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Scizor - Agility - Starting Move
  (212, 21200, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Scizor - Air Slash - Starting Move
  (212, 21200, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Scizor - Quick Attack - Starting Move
  (212, 21200, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Scizor - Leer - Starting Move
  (212, 21200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Scizor - Fury Cutter - Starting Move
  (212, 21200, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Scizor - False Swipe - Starting Move
  (212, 21200, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Scizor - Bullet Punch - Evolution
  (212, 21200, 418, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Scizor - Metal Claw - Level 12
  (212, 21200, 232, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Scizor - Double Team - Level 16
  (212, 21200, 104, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Scizor - Double Hit - Level 20
  (212, 21200, 458, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Scizor - Slash - Level 24
  (212, 21200, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Scizor - Focus Energy - Level 28
  (212, 21200, 116, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Scizor - Iron Defense - Level 32
  (212, 21200, 334, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Scizor - Iron Head - Level 36
  (212, 21200, 442, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Scizor - X-Scissor - Level 40
  (212, 21200, 404, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Scizor - Laser Focus - Level 44
  (212, 21200, 673, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Scizor - Swords Dance - Level 48
  (212, 21200, 14, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Scizor - Light Screen - TM16
  (212, 21200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Scizor - Rain Dance - TM18
  (212, 21200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Scizor - Safeguard - TM20
  (212, 21200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Scizor - Brick Break - TM31
  (212, 21200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Scizor - Aerial Ace - TM40
  (212, 21200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Scizor - Facade - TM42
  (212, 21200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Scizor - Steel Wing - TM47
  (212, 21200, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 34),
  -- Scizor - Roost - TM51
  (212, 21200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 35),
  -- Scizor - False Swipe - TM54
  (212, 21200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 36),
  -- Scizor - Fling - TM56
  (212, 21200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Scizor - Endure - TM58
  (212, 21200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Scizor - Bug Buzz - TM62
  (212, 21200, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Scizor - Giga Impact - TM68
  (212, 21200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Scizor - Swords Dance - TM75
  (212, 21200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Scizor - X-Scissor - TM81
  (212, 21200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 42),
  -- Scizor - Sleep Talk - TM82
  (212, 21200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Scizor - Swagger - TM87
  (212, 21200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Scizor - U-turn - TM89
  (212, 21200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Scizor - Substitute - TM90
  (212, 21200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Scizor - Flash Cannon - TM91
  (212, 21200, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 47),
  -- Scizor - Cut - TM93
  (212, 21200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 48),
  -- Scizor - Strength - TM96
  (212, 21200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Scizor - Defog - TM97
  (212, 21200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 50),
  -- Scizor - Rock Smash - TM98
  (212, 21200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Scizor - Baton Pass - Egg
  (212, 21200, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scizor - Counter - Egg
  (212, 21200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Scizor - Feint - Egg
  (212, 21200, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Scizor - Night Slash - Egg
  (212, 21200, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Scizor - Quick Guard - Egg
  (212, 21200, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scizor - Reversal - Egg
  (212, 21200, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shuckle - Withdraw - Starting Move
  (213, 21300, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shuckle - Wrap - Starting Move
  (213, 21300, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shuckle - Rollout - Level 5
  (213, 21300, 205, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shuckle - Struggle Bug - Level 10
  (213, 21300, 522, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuckle - Rock Throw - Level 15
  (213, 21300, 88, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shuckle - Safeguard - Level 20
  (213, 21300, 219, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shuckle - Rest - Level 25
  (213, 21300, 156, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shuckle - Bug Bite - Level 30
  (213, 21300, 450, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Shuckle - Power Split - Level 35
  (213, 21300, 471, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Shuckle - Guard Split - Level 35
  (213, 21300, 470, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Shuckle - Rock Slide - Level 40
  (213, 21300, 157, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shuckle - Gastro Acid - Level 45
  (213, 21300, 380, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shuckle - Sticky Web - Level 50
  (213, 21300, 564, 21, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Shuckle - Power Trick - Level 55
  (213, 21300, 379, 21, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Shuckle - Stone Edge - Level 60
  (213, 21300, 444, 21, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Shuckle - Shell Smash - Level 65
  (213, 21300, 504, 21, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 17),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Shuckle - Safeguard - TM20
  (213, 21300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Shuckle - Dig - TM28
  (213, 21300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 24),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 25),
  -- Shuckle - Rock Tomb - TM39
  (213, 21300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Shuckle - Facade - TM42
  (213, 21300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Shuckle - Endure - TM58
  (213, 21300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Shuckle - Rock Polish - TM69
  (213, 21300, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 31),
  -- Shuckle - Flash - TM70
  (213, 21300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Shuckle - Stone Edge - TM71
  (213, 21300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 33),
  -- Shuckle - Gyro Ball - TM74
  (213, 21300, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 34),
  -- Shuckle - Stealth Rock - TM76
  (213, 21300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 35),
  -- Shuckle - Rock Slide - TM80
  (213, 21300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 36),
  -- Shuckle - Sleep Talk - TM82
  (213, 21300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Shuckle - Bulldoze - TM83
  (213, 21300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 38),
  -- Shuckle - Swagger - TM87
  (213, 21300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Shuckle - Substitute - TM90
  (213, 21300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Shuckle - Strength - TM96
  (213, 21300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 41),
  -- Shuckle - Rock Smash - TM98
  (213, 21300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Shuckle - Acid - Egg
  (213, 21300, 51, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shuckle - Acupressure - Egg
  (213, 21300, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shuckle - Covet - Egg
  (213, 21300, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shuckle - Defense Curl - Egg
  (213, 21300, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shuckle - Final Gambit - Egg
  (213, 21300, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shuckle - Helping Hand - Egg
  (213, 21300, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shuckle - Infestation - Egg
  (213, 21300, 611, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shuckle - Knock Off - Egg
  (213, 21300, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shuckle - Mud-Slap - Egg
  (213, 21300, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuckle - Rock Blast - Egg
  (213, 21300, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuckle - Sand Tomb - Egg
  (213, 21300, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuckle - Sweet Scent - Egg
  (213, 21300, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heracross - Tackle - Starting Move
  (214, 21400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Starting Move
  (214, 21400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Heracross - Fury Attack - Level 5
  (214, 21400, 31, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 10
  (214, 21400, 203, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Heracross - Aerial Ace - Level 15
  (214, 21400, 332, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Heracross - Horn Attack - Level 20
  (214, 21400, 30, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Heracross - Counter - Level 25
  (214, 21400, 68, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Heracross - Brick Break - Level 30
  (214, 21400, 280, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Heracross - Pin Missile - Level 35
  (214, 21400, 42, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Heracross - Throat Chop - Level 40
  (214, 21400, 675, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Heracross - Thrash - Level 45
  (214, 21400, 37, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Heracross - Swords Dance - Level 50
  (214, 21400, 14, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Heracross - Megahorn - Level 55
  (214, 21400, 224, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Heracross - Close Combat - Level 60
  (214, 21400, 370, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Heracross - Focus Punch - TM01
  (214, 21400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Heracross - Bulk Up - TM08
  (214, 21400, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 16),
  -- Heracross - Bullet Seed - TM09
  (214, 21400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Heracross - Work Up - TM10
  (214, 21400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Heracross - Hyper Beam - TM15
  (214, 21400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Heracross - Rain Dance - TM18
  (214, 21400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Heracross - Dig - TM28
  (214, 21400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Heracross - Brick Break - TM31
  (214, 21400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Heracross - Rock Tomb - TM39
  (214, 21400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Heracross - Aerial Ace - TM40
  (214, 21400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Heracross - Facade - TM42
  (214, 21400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Heracross - Focus Blast - TM52
  (214, 21400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 33),
  -- Heracross - False Swipe - TM54
  (214, 21400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 34),
  -- Heracross - Fling - TM56
  (214, 21400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Heracross - Endure - TM58
  (214, 21400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Heracross - Shadow Claw - TM65
  (214, 21400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 37),
  -- Heracross - Giga Impact - TM68
  (214, 21400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Heracross - Stone Edge - TM71
  (214, 21400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 39),
  -- Heracross - Swords Dance - TM75
  (214, 21400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 40),
  -- Heracross - Rock Slide - TM80
  (214, 21400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Heracross - Sleep Talk - TM82
  (214, 21400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Heracross - Bulldoze - TM83
  (214, 21400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Heracross - Swagger - TM87
  (214, 21400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Heracross - Substitute - TM90
  (214, 21400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Heracross - Cut - TM93
  (214, 21400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Heracross - Strength - TM96
  (214, 21400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Heracross - Rock Smash - TM98
  (214, 21400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Heracross - Double-Edge - Egg
  (214, 21400, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Heracross - Feint - Egg
  (214, 21400, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Heracross - Flail - Egg
  (214, 21400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Heracross - Harden - Egg
  (214, 21400, 106, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Heracross - Megahorn - Egg
  (214, 21400, 224, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Heracross - Night Slash - Egg
  (214, 21400, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heracross - Revenge - Egg
  (214, 21400, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heracross - Rock Blast - Egg
  (214, 21400, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heracross - Seismic Toss - Egg
  (214, 21400, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Take Down - Egg
  (214, 21400, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sneasel - Scratch - Starting Move
  (215, 21500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Starting Move
  (215, 21500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 6
  (215, 21500, 269, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 12
  (215, 21500, 98, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sneasel - Metal Claw - Level 18
  (215, 21500, 232, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sneasel - Icy Wind - Level 24
  (215, 21500, 196, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 30
  (215, 21500, 154, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sneasel - Hone Claws - Level 36
  (215, 21500, 468, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sneasel - Beat Up - Level 42
  (215, 21500, 251, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sneasel - Agility - Level 48
  (215, 21500, 97, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Sneasel - Screech - Level 54
  (215, 21500, 103, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Sneasel - Slash - Level 60
  (215, 21500, 163, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Sneasel - Focus Punch - TM01
  (215, 21500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Sneasel - Calm Mind - TM04
  (215, 21500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Sneasel - Hail - TM07
  (215, 21500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Sneasel - Sunny Day - TM11
  (215, 21500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Sneasel - Taunt - TM12
  (215, 21500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Sneasel - Ice Beam - TM13
  (215, 21500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Sneasel - Iron Tail - TM23
  (215, 21500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Sneasel - Low Sweep - TM27
  (215, 21500, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 23),
  -- Sneasel - Dig - TM28
  (215, 21500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Sneasel - Brick Break - TM31
  (215, 21500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Sneasel - Reflect - TM33
  (215, 21500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Sneasel - Aerial Ace - TM40
  (215, 21500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Sneasel - Torment - TM41
  (215, 21500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 30),
  -- Sneasel - Facade - TM42
  (215, 21500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Sneasel - False Swipe - TM54
  (215, 21500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 35),
  -- Sneasel - Fling - TM56
  (215, 21500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Sneasel - Endure - TM58
  (215, 21500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Sneasel - Shadow Claw - TM65
  (215, 21500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 38),
  -- Sneasel - Payback - TM66
  (215, 21500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Sneasel - Avalanche - TM72
  (215, 21500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Sneasel - Swords Dance - TM75
  (215, 21500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Sneasel - Psych Up - TM77
  (215, 21500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Sneasel - Snarl - TM78
  (215, 21500, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 43),
  -- Sneasel - Dark Pulse - TM79
  (215, 21500, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 44),
  -- Sneasel - X-Scissor - TM81
  (215, 21500, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 45),
  -- Sneasel - Sleep Talk - TM82
  (215, 21500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Sneasel - Poison Jab - TM84
  (215, 21500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 47),
  -- Sneasel - Dream Eater - TM85
  (215, 21500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Sneasel - Swagger - TM87
  (215, 21500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Sneasel - Substitute - TM90
  (215, 21500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Sneasel - Cut - TM93
  (215, 21500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Sneasel - Surf - TM95
  (215, 21500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 52),
  -- Sneasel - Strength - TM96
  (215, 21500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Sneasel - Rock Smash - TM98
  (215, 21500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Sneasel - Bite - Egg
  (215, 21500, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sneasel - Counter - Egg
  (215, 21500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sneasel - Crush Claw - Egg
  (215, 21500, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sneasel - Double Hit - Egg
  (215, 21500, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sneasel - Fake Out - Egg
  (215, 21500, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sneasel - Feint - Egg
  (215, 21500, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sneasel - Ice Punch - Egg
  (215, 21500, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sneasel - Ice Shard - Egg
  (215, 21500, 420, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Icicle Crash - Egg
  (215, 21500, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Spite - Egg
  (215, 21500, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Throat Chop - Egg
  (215, 21500, 675, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Teddiursa - Fling - Starting Move
  (216, 21600, 374, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Teddiursa - Covet - Starting Move
  (216, 21600, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Teddiursa - Scratch - Starting Move
  (216, 21600, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Teddiursa - Baby-Doll Eyes - Starting Move
  (216, 21600, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Teddiursa - Lick - Starting Move
  (216, 21600, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Teddiursa - Fake Tears - Starting Move
  (216, 21600, 313, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Teddiursa - Fury Swipes - Level 8
  (216, 21600, 154, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Teddiursa - Payback - Level 15
  (216, 21600, 371, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Teddiursa - Sweet Scent - Level 22
  (216, 21600, 230, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Teddiursa - Play Nice - Level 25
  (216, 21600, 589, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Teddiursa - Slash - Level 29
  (216, 21600, 163, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Teddiursa - Charm - Level 36
  (216, 21600, 204, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Teddiursa - Rest - Level 43
  (216, 21600, 156, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Teddiursa - Thrash - Level 50
  (216, 21600, 37, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Teddiursa - Fling - Level 57
  (216, 21600, 374, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Teddiursa - Focus Punch - TM01
  (216, 21600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Teddiursa - Bulk Up - TM08
  (216, 21600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Teddiursa - Work Up - TM10
  (216, 21600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Teddiursa - Taunt - TM12
  (216, 21600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Teddiursa - Rain Dance - TM18
  (216, 21600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Teddiursa - Dig - TM28
  (216, 21600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Teddiursa - Brick Break - TM31
  (216, 21600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Teddiursa - Rock Tomb - TM39
  (216, 21600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Teddiursa - Aerial Ace - TM40
  (216, 21600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Teddiursa - Torment - TM41
  (216, 21600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Teddiursa - Facade - TM42
  (216, 21600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Teddiursa - Fling - TM56
  (216, 21600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Teddiursa - Endure - TM58
  (216, 21600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Teddiursa - Shadow Claw - TM65
  (216, 21600, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 38),
  -- Teddiursa - Payback - TM66
  (216, 21600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Teddiursa - Swords Dance - TM75
  (216, 21600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 40),
  -- Teddiursa - Rock Slide - TM80
  (216, 21600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Teddiursa - Sleep Talk - TM82
  (216, 21600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Teddiursa - Bulldoze - TM83
  (216, 21600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Teddiursa - Swagger - TM87
  (216, 21600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Teddiursa - Substitute - TM90
  (216, 21600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Teddiursa - Cut - TM93
  (216, 21600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Teddiursa - Strength - TM96
  (216, 21600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Teddiursa - Rock Smash - TM98
  (216, 21600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Teddiursa - Belly Drum - Egg
  (216, 21600, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Teddiursa - Close Combat - Egg
  (216, 21600, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Teddiursa - Counter - Egg
  (216, 21600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Teddiursa - Cross Chop - Egg
  (216, 21600, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Teddiursa - Crunch - Egg
  (216, 21600, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Teddiursa - Double-Edge - Egg
  (216, 21600, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Teddiursa - Fake Tears - Egg
  (216, 21600, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Teddiursa - Metal Claw - Egg
  (216, 21600, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Teddiursa - Night Slash - Egg
  (216, 21600, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Teddiursa - Play Rough - Egg
  (216, 21600, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Teddiursa - Seismic Toss - Egg
  (216, 21600, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Teddiursa - Take Down - Egg
  (216, 21600, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Teddiursa - Yawn - Egg
  (216, 21600, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ursaring - Hammer Arm - Starting Move
  (217, 21700, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ursaring - Fling - Starting Move
  (217, 21700, 374, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ursaring - Baby-Doll Eyes - Starting Move
  (217, 21700, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ursaring - Charm - Starting Move
  (217, 21700, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ursaring - Covet - Starting Move
  (217, 21700, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ursaring - Scratch - Starting Move
  (217, 21700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ursaring - Leer - Starting Move
  (217, 21700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ursaring - Lick - Starting Move
  (217, 21700, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ursaring - Fake Tears - Starting Move
  (217, 21700, 313, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Ursaring - Fury Swipes - Level 8
  (217, 21700, 154, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Ursaring - Payback - Level 15
  (217, 21700, 371, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Ursaring - Sweet Scent - Level 22
  (217, 21700, 230, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Ursaring - Play Nice - Level 25
  (217, 21700, 589, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Ursaring - Slash - Level 29
  (217, 21700, 163, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Ursaring - Scary Face - Level 38
  (217, 21700, 184, 21, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Ursaring - Rest - Level 47
  (217, 21700, 156, 21, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Ursaring - Snore - Level 49
  (217, 21700, 173, 21, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Ursaring - Thrash - Level 58
  (217, 21700, 37, 21, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Ursaring - Hammer Arm - Level 67
  (217, 21700, 359, 21, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Ursaring - Focus Punch - TM01
  (217, 21700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Ursaring - Bulk Up - TM08
  (217, 21700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 22),
  -- Ursaring - Work Up - TM10
  (217, 21700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Ursaring - Taunt - TM12
  (217, 21700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Ursaring - Rain Dance - TM18
  (217, 21700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Ursaring - Dig - TM28
  (217, 21700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Ursaring - Brick Break - TM31
  (217, 21700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Ursaring - Rock Tomb - TM39
  (217, 21700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Ursaring - Aerial Ace - TM40
  (217, 21700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Ursaring - Torment - TM41
  (217, 21700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Ursaring - Facade - TM42
  (217, 21700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Ursaring - Focus Blast - TM52
  (217, 21700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Ursaring - Fling - TM56
  (217, 21700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Ursaring - Endure - TM58
  (217, 21700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Ursaring - Shadow Claw - TM65
  (217, 21700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 43),
  -- Ursaring - Payback - TM66
  (217, 21700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Ursaring - Giga Impact - TM68
  (217, 21700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Ursaring - Stone Edge - TM71
  (217, 21700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 46),
  -- Ursaring - Avalanche - TM72
  (217, 21700, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 47),
  -- Ursaring - Swords Dance - TM75
  (217, 21700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 48),
  -- Ursaring - Rock Slide - TM80
  (217, 21700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 49),
  -- Ursaring - Sleep Talk - TM82
  (217, 21700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Ursaring - Bulldoze - TM83
  (217, 21700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Ursaring - Swagger - TM87
  (217, 21700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Ursaring - Substitute - TM90
  (217, 21700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Ursaring - Cut - TM93
  (217, 21700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Ursaring - Strength - TM96
  (217, 21700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Ursaring - Rock Smash - TM98
  (217, 21700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Ursaring - Rock Climb - TM100
  (217, 21700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Ursaring - Belly Drum - Egg
  (217, 21700, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ursaring - Close Combat - Egg
  (217, 21700, 370, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ursaring - Counter - Egg
  (217, 21700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ursaring - Cross Chop - Egg
  (217, 21700, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ursaring - Crunch - Egg
  (217, 21700, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ursaring - Double-Edge - Egg
  (217, 21700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ursaring - Fake Tears - Egg
  (217, 21700, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ursaring - Metal Claw - Egg
  (217, 21700, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ursaring - Night Slash - Egg
  (217, 21700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ursaring - Play Rough - Egg
  (217, 21700, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ursaring - Seismic Toss - Egg
  (217, 21700, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ursaring - Take Down - Egg
  (217, 21700, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ursaring - Yawn - Egg
  (217, 21700, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slugma - Yawn - Starting Move
  (218, 21800, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slugma - Smog - Starting Move
  (218, 21800, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 6
  (218, 21800, 52, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 8
  (218, 21800, 88, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 13
  (218, 21800, 106, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Slugma - Incinerate - Level 15
  (218, 21800, 510, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Slugma - Clear Smog - Level 20
  (218, 21800, 499, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Slugma - Ancient Power - Level 22
  (218, 21800, 246, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Slugma - Rock Slide - Level 29
  (218, 21800, 157, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Slugma - Lava Plume - Level 34
  (218, 21800, 436, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Slugma - Amnesia - Level 36
  (218, 21800, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slugma - Body Slam - Level 41
  (218, 21800, 34, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slugma - Recover - Level 43
  (218, 21800, 105, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Slugma - Flamethrower - Level 48
  (218, 21800, 53, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Slugma - Earth Power - Level 50
  (218, 21800, 414, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Slugma - Light Screen - TM16
  (218, 21800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Slugma - Reflect - TM33
  (218, 21800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 20),
  -- Slugma - Flamethrower - TM35
  (218, 21800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 21),
  -- Slugma - Sandstorm - TM37
  (218, 21800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 22),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Slugma - Rock Tomb - TM39
  (218, 21800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Slugma - Facade - TM42
  (218, 21800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Slugma - Overheat - TM50
  (218, 21800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 28),
  -- Slugma - Endure - TM58
  (218, 21800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Slugma - Will-O-Wisp - TM61
  (218, 21800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 30),
  -- Slugma - Rock Slide - TM80
  (218, 21800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Slugma - Sleep Talk - TM82
  (218, 21800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Slugma - Swagger - TM87
  (218, 21800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Slugma - Substitute - TM90
  (218, 21800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Slugma - Rock Smash - TM98
  (218, 21800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 35),
  -- Slugma - Acid Armor - Egg
  (218, 21800, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Slugma - Curse - Egg
  (218, 21800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Slugma - Earth Power - Egg
  (218, 21800, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Slugma - Guard Swap - Egg
  (218, 21800, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Slugma - Heat Wave - Egg
  (218, 21800, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Slugma - Inferno - Egg
  (218, 21800, 517, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slugma - Memento - Egg
  (218, 21800, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slugma - Rollout - Egg
  (218, 21800, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slugma - Smokescreen - Egg
  (218, 21800, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slugma - Spit Up - Egg
  (218, 21800, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slugma - Stockpile - Egg
  (218, 21800, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slugma - Swallow - Egg
  (218, 21800, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magcargo - Shell Smash - Starting Move
  (219, 21900, 504, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magcargo - Earth Power - Starting Move
  (219, 21900, 414, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magcargo - Yawn - Starting Move
  (219, 21900, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Magcargo - Smog - Starting Move
  (219, 21900, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Magcargo - Ember - Starting Move
  (219, 21900, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Magcargo - Rock Throw - Starting Move
  (219, 21900, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Magcargo - Shell Smash - Evolution
  (219, 21900, 504, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Magcargo - Ember - Level 6
  (219, 21900, 52, 21, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Magcargo - Rock Throw - Level 8
  (219, 21900, 88, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Magcargo - Harden - Level 13
  (219, 21900, 106, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Magcargo - Incinerate - Level 15
  (219, 21900, 510, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Magcargo - Clear Smog - Level 20
  (219, 21900, 499, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Magcargo - Ancient Power - Level 22
  (219, 21900, 246, 21, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Magcargo - Rock Slide - Level 29
  (219, 21900, 157, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Magcargo - Lava Plume - Level 34
  (219, 21900, 436, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Magcargo - Amnesia - Level 36
  (219, 21900, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Magcargo - Body Slam - Level 43
  (219, 21900, 34, 21, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Magcargo - Recover - Level 47
  (219, 21900, 105, 21, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Magcargo - Flamethrower - Level 54
  (219, 21900, 53, 21, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Magcargo - Earth Power - Level 58
  (219, 21900, 414, 21, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Magcargo - Light Screen - TM16
  (219, 21900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Magcargo - Solar Beam - TM22
  (219, 21900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Magcargo - Reflect - TM33
  (219, 21900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Magcargo - Flamethrower - TM35
  (219, 21900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Magcargo - Sandstorm - TM37
  (219, 21900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Magcargo - Rock Tomb - TM39
  (219, 21900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Magcargo - Facade - TM42
  (219, 21900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Magcargo - Overheat - TM50
  (219, 21900, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 36),
  -- Magcargo - Endure - TM58
  (219, 21900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Magcargo - Will-O-Wisp - TM61
  (219, 21900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 38),
  -- Magcargo - Explosion - TM64
  (219, 21900, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Magcargo - Giga Impact - TM68
  (219, 21900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Magcargo - Rock Polish - TM69
  (219, 21900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 41),
  -- Magcargo - Stone Edge - TM71
  (219, 21900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Magcargo - Gyro Ball - TM74
  (219, 21900, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 43),
  -- Magcargo - Stealth Rock - TM76
  (219, 21900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 44),
  -- Magcargo - Rock Slide - TM80
  (219, 21900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Magcargo - Sleep Talk - TM82
  (219, 21900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Magcargo - Bulldoze - TM83
  (219, 21900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Magcargo - Swagger - TM87
  (219, 21900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Magcargo - Substitute - TM90
  (219, 21900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Magcargo - Strength - TM96
  (219, 21900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Magcargo - Rock Smash - TM98
  (219, 21900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Magcargo - Acid Armor - Egg
  (219, 21900, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magcargo - Curse - Egg
  (219, 21900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magcargo - Earth Power - Egg
  (219, 21900, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magcargo - Guard Swap - Egg
  (219, 21900, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magcargo - Heat Wave - Egg
  (219, 21900, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magcargo - Inferno - Egg
  (219, 21900, 517, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Magcargo - Memento - Egg
  (219, 21900, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Magcargo - Rollout - Egg
  (219, 21900, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Magcargo - Smokescreen - Egg
  (219, 21900, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Magcargo - Spit Up - Egg
  (219, 21900, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Magcargo - Stockpile - Egg
  (219, 21900, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Magcargo - Swallow - Egg
  (219, 21900, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Swinub - Tackle - Starting Move
  (220, 22000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Swinub - Mud-Slap - Starting Move
  (220, 22000, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Swinub - Powder Snow - Level 5
  (220, 22000, 181, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swinub - Flail - Level 10
  (220, 22000, 175, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Swinub - Ice Shard - Level 15
  (220, 22000, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swinub - Mist - Level 20
  (220, 22000, 54, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Swinub - Endure - Level 25
  (220, 22000, 203, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 30
  (220, 22000, 196, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Swinub - Amnesia - Level 35
  (220, 22000, 133, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 40
  (220, 22000, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Swinub - Earthquake - Level 45
  (220, 22000, 89, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Swinub - Blizzard - Level 50
  (220, 22000, 59, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 13),
  -- Swinub - Hail - TM07
  (220, 22000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 14),
  -- Swinub - Ice Beam - TM13
  (220, 22000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 16),
  -- Swinub - Light Screen - TM16
  (220, 22000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 20),
  -- Swinub - Dig - TM28
  (220, 22000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Swinub - Reflect - TM33
  (220, 22000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 23),
  -- Swinub - Sandstorm - TM37
  (220, 22000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 24),
  -- Swinub - Rock Tomb - TM39
  (220, 22000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Swinub - Facade - TM42
  (220, 22000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Swinub - Endure - TM58
  (220, 22000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Swinub - Avalanche - TM72
  (220, 22000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 30),
  -- Swinub - Stealth Rock - TM76
  (220, 22000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 31),
  -- Swinub - Rock Slide - TM80
  (220, 22000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 32),
  -- Swinub - Sleep Talk - TM82
  (220, 22000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Swinub - Bulldoze - TM83
  (220, 22000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 34),
  -- Swinub - Swagger - TM87
  (220, 22000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Swinub - Substitute - TM90
  (220, 22000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Swinub - Strength - TM96
  (220, 22000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Swinub - Rock Smash - TM98
  (220, 22000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Swinub - Ancient Power - Egg
  (220, 22000, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Swinub - Bite - Egg
  (220, 22000, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Swinub - Body Slam - Egg
  (220, 22000, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Swinub - Curse - Egg
  (220, 22000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swinub - Double-Edge - Egg
  (220, 22000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swinub - Fissure - Egg
  (220, 22000, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swinub - Freeze-Dry - Egg
  (220, 22000, 573, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swinub - Icicle Crash - Egg
  (220, 22000, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Icicle Spear - Egg
  (220, 22000, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Mud Shot - Egg
  (220, 22000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Take Down - Egg
  (220, 22000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piloswine - Ice Fang - Starting Move
  (221, 22100, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Piloswine - Ancient Power - Starting Move
  (221, 22100, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Piloswine - Tackle - Starting Move
  (221, 22100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Piloswine - Mud-Slap - Starting Move
  (221, 22100, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Piloswine - Powder Snow - Starting Move
  (221, 22100, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Piloswine - Flail - Starting Move
  (221, 22100, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Piloswine - Ice Fang - Evolution
  (221, 22100, 423, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Piloswine - Ice Shard - Level 15
  (221, 22100, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Piloswine - Mist - Level 20
  (221, 22100, 54, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Piloswine - Endure - Level 25
  (221, 22100, 203, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Piloswine - Icy Wind - Level 30
  (221, 22100, 196, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Piloswine - Amnesia - Level 37
  (221, 22100, 133, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Piloswine - Take Down - Level 44
  (221, 22100, 36, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Piloswine - Earthquake - Level 51
  (221, 22100, 89, 21, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Piloswine - Blizzard - Level 58
  (221, 22100, 59, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Piloswine - Thrash - Level 65
  (221, 22100, 37, 21, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Piloswine - Hail - TM07
  (221, 22100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Piloswine - Ice Beam - TM13
  (221, 22100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Piloswine - Light Screen - TM16
  (221, 22100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Piloswine - Dig - TM28
  (221, 22100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Piloswine - Reflect - TM33
  (221, 22100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Piloswine - Sandstorm - TM37
  (221, 22100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Piloswine - Rock Tomb - TM39
  (221, 22100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Piloswine - Facade - TM42
  (221, 22100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Piloswine - Endure - TM58
  (221, 22100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Piloswine - Giga Impact - TM68
  (221, 22100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Piloswine - Stone Edge - TM71
  (221, 22100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Piloswine - Avalanche - TM72
  (221, 22100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 37),
  -- Piloswine - Stealth Rock - TM76
  (221, 22100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Piloswine - Rock Slide - TM80
  (221, 22100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Piloswine - Sleep Talk - TM82
  (221, 22100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Piloswine - Bulldoze - TM83
  (221, 22100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Piloswine - Swagger - TM87
  (221, 22100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Piloswine - Substitute - TM90
  (221, 22100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Piloswine - Strength - TM96
  (221, 22100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Piloswine - Rock Smash - TM98
  (221, 22100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Piloswine - Ancient Power - Egg
  (221, 22100, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Piloswine - Bite - Egg
  (221, 22100, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Piloswine - Body Slam - Egg
  (221, 22100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piloswine - Curse - Egg
  (221, 22100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piloswine - Double-Edge - Egg
  (221, 22100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piloswine - Fissure - Egg
  (221, 22100, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piloswine - Freeze-Dry - Egg
  (221, 22100, 573, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piloswine - Icicle Crash - Egg
  (221, 22100, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piloswine - Icicle Spear - Egg
  (221, 22100, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Piloswine - Mud Shot - Egg
  (221, 22100, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piloswine - Take Down - Egg
  (221, 22100, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corsola - Tackle - Starting Move
  (222, 22200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Starting Move
  (222, 22200, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Corsola - Water Gun - Level 5
  (222, 22200, 55, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Corsola - Aqua Ring - Level 10
  (222, 22200, 392, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Corsola - Endure - Level 15
  (222, 22200, 203, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Corsola - Ancient Power - Level 20
  (222, 22200, 246, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Corsola - Bubble Beam - Level 25
  (222, 22200, 61, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Corsola - Flail - Level 30
  (222, 22200, 175, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Corsola - Life Dew - Level 35
  (222, 22200, 791, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corsola - Power Gem - Level 40
  (222, 22200, 408, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Corsola - Earth Power - Level 45
  (222, 22200, 414, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Corsola - Recover - Level 50
  (222, 22200, 105, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Corsola - Mirror Coat - Level 55
  (222, 22200, 243, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Corsola - Water Pulse - TM03
  (222, 22200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Corsola - Calm Mind - TM04
  (222, 22200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Corsola - Hail - TM07
  (222, 22200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Corsola - Ice Beam - TM13
  (222, 22200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Corsola - Blizzard - TM14
  (222, 22200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Corsola - Light Screen - TM16
  (222, 22200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Corsola - Safeguard - TM20
  (222, 22200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Corsola - Dig - TM28
  (222, 22200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Corsola - Shadow Ball - TM30
  (222, 22200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Corsola - Reflect - TM33
  (222, 22200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Corsola - Rock Tomb - TM39
  (222, 22200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Corsola - Facade - TM42
  (222, 22200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Corsola - Scald - TM49
  (222, 22200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Corsola - Brine - TM55
  (222, 22200, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 36),
  -- Corsola - Endure - TM58
  (222, 22200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Corsola - Explosion - TM64
  (222, 22200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 38),
  -- Corsola - Rock Polish - TM69
  (222, 22200, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Corsola - Stone Edge - TM71
  (222, 22200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Corsola - Stealth Rock - TM76
  (222, 22200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 41),
  -- Corsola - Rock Slide - TM80
  (222, 22200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Corsola - Sleep Talk - TM82
  (222, 22200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Corsola - Bulldoze - TM83
  (222, 22200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Corsola - Swagger - TM87
  (222, 22200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Corsola - Substitute - TM90
  (222, 22200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Corsola - Surf - TM95
  (222, 22200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 47),
  -- Corsola - Strength - TM96
  (222, 22200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Corsola - Rock Smash - TM98
  (222, 22200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Corsola - Amnesia - Egg
  (222, 22200, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Corsola - Aqua Ring - Egg
  (222, 22200, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corsola - Confuse Ray - Egg
  (222, 22200, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corsola - Curse - Egg
  (222, 22200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corsola - Head Smash - Egg
  (222, 22200, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corsola - Icicle Spear - Egg
  (222, 22200, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corsola - Ingrain - Egg
  (222, 22200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corsola - Liquidation - Egg
  (222, 22200, 710, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corsola - Mist - Egg
  (222, 22200, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corsola - Nature Power - Egg
  (222, 22200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corsola - Screech - Egg
  (222, 22200, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Remoraid - Water Gun - Starting Move
  (223, 22300, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Remoraid - Helping Hand - Starting Move
  (223, 22300, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Remoraid - Water Pulse - Level 4
  (223, 22300, 352, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Remoraid - Focus Energy - Level 8
  (223, 22300, 116, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Remoraid - Psybeam - Level 12
  (223, 22300, 60, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Remoraid - Aurora Beam - Level 16
  (223, 22300, 62, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Remoraid - Bubble Beam - Level 20
  (223, 22300, 61, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Remoraid - Lock-On - Level 24
  (223, 22300, 199, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Remoraid - Bullet Seed - Level 28
  (223, 22300, 331, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Remoraid - Ice Beam - Level 32
  (223, 22300, 58, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Remoraid - Hydro Pump - Level 36
  (223, 22300, 56, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Remoraid - Soak - Level 40
  (223, 22300, 487, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Remoraid - Hyper Beam - Level 44
  (223, 22300, 63, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Remoraid - Water Pulse - TM03
  (223, 22300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Remoraid - Bullet Seed - TM09
  (223, 22300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 15),
  -- Remoraid - Sunny Day - TM11
  (223, 22300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Remoraid - Ice Beam - TM13
  (223, 22300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Remoraid - Blizzard - TM14
  (223, 22300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Remoraid - Psychic - TM29
  (223, 22300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 22),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Remoraid - Flamethrower - TM35
  (223, 22300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Remoraid - Fire Blast - TM38
  (223, 22300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Remoraid - Facade - TM42
  (223, 22300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Remoraid - Scald - TM49
  (223, 22300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 30),
  -- Remoraid - Brine - TM55
  (223, 22300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Remoraid - Charge Beam - TM57
  (223, 22300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 32),
  -- Remoraid - Endure - TM58
  (223, 22300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Remoraid - Thunder Wave - TM73
  (223, 22300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 34),
  -- Remoraid - Sleep Talk - TM82
  (223, 22300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Remoraid - Swagger - TM87
  (223, 22300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Remoraid - Substitute - TM90
  (223, 22300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Remoraid - Surf - TM95
  (223, 22300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Remoraid - Waterfall - TM99
  (223, 22300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 39),
  -- Remoraid - Acid Spray - Egg
  (223, 22300, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Remoraid - Aurora Beam - Egg
  (223, 22300, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Remoraid - Entrainment - Egg
  (223, 22300, 494, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Remoraid - Flail - Egg
  (223, 22300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Remoraid - Haze - Egg
  (223, 22300, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Remoraid - Mud Shot - Egg
  (223, 22300, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Remoraid - Octazooka - Egg
  (223, 22300, 190, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Remoraid - Rock Blast - Egg
  (223, 22300, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Remoraid - Screech - Egg
  (223, 22300, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Remoraid - Snore - Egg
  (223, 22300, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Remoraid - Supersonic - Egg
  (223, 22300, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Remoraid - Swift - Egg
  (223, 22300, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Remoraid - Water Spout - Egg
  (223, 22300, 323, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Octillery - Octazooka - Starting Move
  (224, 22400, 190, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Octillery - Gunk Shot - Starting Move
  (224, 22400, 441, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Octillery - Rock Blast - Starting Move
  (224, 22400, 350, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Octillery - Helping Hand - Starting Move
  (224, 22400, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Octillery - Water Gun - Starting Move
  (224, 22400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Octillery - Wrap - Starting Move
  (224, 22400, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Octillery - Water Pulse - Starting Move
  (224, 22400, 352, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Octillery - Focus Energy - Starting Move
  (224, 22400, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Octillery - Octazooka - Evolution
  (224, 22400, 190, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Octillery - Psybeam - Level 12
  (224, 22400, 60, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Octillery - Aurora Beam - Level 16
  (224, 22400, 62, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Octillery - Bubble Beam - Level 20
  (224, 22400, 61, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Octillery - Lock-On - Level 24
  (224, 22400, 199, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Octillery - Bullet Seed - Level 30
  (224, 22400, 331, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Octillery - Ice Beam - Level 36
  (224, 22400, 58, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Octillery - Hydro Pump - Level 42
  (224, 22400, 56, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Octillery - Soak - Level 48
  (224, 22400, 487, 21, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Octillery - Hyper Beam - Level 54
  (224, 22400, 63, 21, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Octillery - Water Pulse - TM03
  (224, 22400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Octillery - Bullet Seed - TM09
  (224, 22400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 20),
  -- Octillery - Sunny Day - TM11
  (224, 22400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Octillery - Ice Beam - TM13
  (224, 22400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Octillery - Blizzard - TM14
  (224, 22400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Octillery - Psychic - TM29
  (224, 22400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Octillery - Flamethrower - TM35
  (224, 22400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Octillery - Sludge Bomb - TM36
  (224, 22400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 30),
  -- Octillery - Fire Blast - TM38
  (224, 22400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Octillery - Facade - TM42
  (224, 22400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Octillery - Scald - TM49
  (224, 22400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 36),
  -- Octillery - Energy Ball - TM53
  (224, 22400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Octillery - Brine - TM55
  (224, 22400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 38),
  -- Octillery - Charge Beam - TM57
  (224, 22400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Octillery - Endure - TM58
  (224, 22400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Octillery - Payback - TM66
  (224, 22400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Octillery - Giga Impact - TM68
  (224, 22400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Octillery - Thunder Wave - TM73
  (224, 22400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Octillery - Sleep Talk - TM82
  (224, 22400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Octillery - Swagger - TM87
  (224, 22400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Octillery - Substitute - TM90
  (224, 22400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Octillery - Flash Cannon - TM91
  (224, 22400, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 47),
  -- Octillery - Surf - TM95
  (224, 22400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 48),
  -- Octillery - Waterfall - TM99
  (224, 22400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Octillery - Acid Spray - Egg
  (224, 22400, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Octillery - Aurora Beam - Egg
  (224, 22400, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Octillery - Entrainment - Egg
  (224, 22400, 494, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Octillery - Flail - Egg
  (224, 22400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Octillery - Haze - Egg
  (224, 22400, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Octillery - Mud Shot - Egg
  (224, 22400, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Octillery - Octazooka - Egg
  (224, 22400, 190, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Octillery - Rock Blast - Egg
  (224, 22400, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Octillery - Screech - Egg
  (224, 22400, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Octillery - Snore - Egg
  (224, 22400, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Octillery - Supersonic - Egg
  (224, 22400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Octillery - Swift - Egg
  (224, 22400, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Octillery - Water Spout - Egg
  (224, 22400, 323, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Delibird - Present - Starting Move
  (225, 22500, 217, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Delibird - Drill Peck - Level 25
  (225, 22500, 65, 21, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Delibird - Focus Punch - TM01
  (225, 22500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 3),
  -- Delibird - Water Pulse - TM03
  (225, 22500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 4),
  -- Delibird - Hail - TM07
  (225, 22500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 5),
  -- Delibird - Ice Beam - TM13
  (225, 22500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 6),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 7),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 8),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 9),
  -- Delibird - Brick Break - TM31
  (225, 22500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 10),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 11),
  -- Delibird - Aerial Ace - TM40
  (225, 22500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 12),
  -- Delibird - Facade - TM42
  (225, 22500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 13),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 14),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 15),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 16),
  -- Delibird - Steel Wing - TM47
  (225, 22500, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 17),
  -- Delibird - Fling - TM56
  (225, 22500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 18),
  -- Delibird - Endure - TM58
  (225, 22500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 19),
  -- Delibird - Recycle - TM67
  (225, 22500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 20),
  -- Delibird - Avalanche - TM72
  (225, 22500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 21),
  -- Delibird - Sleep Talk - TM82
  (225, 22500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 22),
  -- Delibird - Swagger - TM87
  (225, 22500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 23),
  -- Delibird - Pluck - TM88
  (225, 22500, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 24),
  -- Delibird - Substitute - TM90
  (225, 22500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 25),
  -- Delibird - Fly - TM94
  (225, 22500, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 26),
  -- Delibird - Defog - TM97
  (225, 22500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 27),
  -- Delibird - Aurora Beam - Egg
  (225, 22500, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Delibird - Aurora Veil - Egg
  (225, 22500, 694, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Delibird - Counter - Egg
  (225, 22500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Delibird - Destiny Bond - Egg
  (225, 22500, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Delibird - Fake Out - Egg
  (225, 22500, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Delibird - Freeze-Dry - Egg
  (225, 22500, 573, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Delibird - Future Sight - Egg
  (225, 22500, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Delibird - Ice Punch - Egg
  (225, 22500, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Delibird - Ice Shard - Egg
  (225, 22500, 420, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Delibird - Icy Wind - Egg
  (225, 22500, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Delibird - Memento - Egg
  (225, 22500, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Delibird - Quick Attack - Egg
  (225, 22500, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Delibird - Rapid Spin - Egg
  (225, 22500, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Delibird - Spikes - Egg
  (225, 22500, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Delibird - Splash - Egg
  (225, 22500, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantine - Psybeam - Starting Move
  (226, 22600, 60, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mantine - Bullet Seed - Starting Move
  (226, 22600, 331, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mantine - Roost - Starting Move
  (226, 22600, 355, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mantine - Tackle - Starting Move
  (226, 22600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mantine - Water Gun - Starting Move
  (226, 22600, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mantine - Supersonic - Starting Move
  (226, 22600, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Mantine - Wing Attack - Starting Move
  (226, 22600, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Mantine - Water Pulse - Level 12
  (226, 22600, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Mantine - Wide Guard - Level 16
  (226, 22600, 469, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Mantine - Agility - Level 20
  (226, 22600, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Mantine - Bubble Beam - Level 24
  (226, 22600, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Mantine - Headbutt - Level 28
  (226, 22600, 29, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Mantine - Air Slash - Level 32
  (226, 22600, 403, 21, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mantine - Aqua Ring - Level 36
  (226, 22600, 392, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mantine - Bounce - Level 40
  (226, 22600, 340, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Mantine - Take Down - Level 44
  (226, 22600, 36, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Mantine - Hydro Pump - Level 48
  (226, 22600, 56, 21, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Mantine - Water Pulse - TM03
  (226, 22600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Mantine - Hail - TM07
  (226, 22600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Mantine - Bullet Seed - TM09
  (226, 22600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 20),
  -- Mantine - Ice Beam - TM13
  (226, 22600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Mantine - Hyper Beam - TM15
  (226, 22600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Mantine - Earthquake - TM26
  (226, 22600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Mantine - Rock Tomb - TM39
  (226, 22600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Mantine - Aerial Ace - TM40
  (226, 22600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Mantine - Facade - TM42
  (226, 22600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Mantine - Scald - TM49
  (226, 22600, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 33),
  -- Mantine - Roost - TM51
  (226, 22600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 34),
  -- Mantine - Brine - TM55
  (226, 22600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 35),
  -- Mantine - Endure - TM58
  (226, 22600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Mantine - Giga Impact - TM68
  (226, 22600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Mantine - Rock Slide - TM80
  (226, 22600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Mantine - Sleep Talk - TM82
  (226, 22600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Mantine - Bulldoze - TM83
  (226, 22600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Mantine - Swagger - TM87
  (226, 22600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Mantine - Substitute - TM90
  (226, 22600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Mantine - Surf - TM95
  (226, 22600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 43),
  -- Mantine - Defog - TM97
  (226, 22600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 44),
  -- Mantine - Waterfall - TM99
  (226, 22600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Mantine - Amnesia - Egg
  (226, 22600, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantine - Confuse Ray - Egg
  (226, 22600, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantine - Haze - Egg
  (226, 22600, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantine - Hydro Pump - Egg
  (226, 22600, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantine - Mirror Coat - Egg
  (226, 22600, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantine - Slam - Egg
  (226, 22600, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantine - Splash - Egg
  (226, 22600, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantine - Tailwind - Egg
  (226, 22600, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mantine - Twister - Egg
  (226, 22600, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mantine - Wide Guard - Egg
  (226, 22600, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Peck - Starting Move
  (227, 22700, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Skarmory - Leer - Starting Move
  (227, 22700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 4
  (227, 22700, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Skarmory - Fury Attack - Level 8
  (227, 22700, 31, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Skarmory - Metal Claw - Level 12
  (227, 22700, 232, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Agility - Level 16
  (227, 22700, 97, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Skarmory - Wing Attack - Level 20
  (227, 22700, 17, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Slash - Level 24
  (227, 22700, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Skarmory - Steel Wing - Level 28
  (227, 22700, 211, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Autotomize - Level 32
  (227, 22700, 475, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Skarmory - Drill Peck - Level 36
  (227, 22700, 65, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Skarmory - Metal Sound - Level 40
  (227, 22700, 319, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skarmory - Spikes - Level 44
  (227, 22700, 191, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Skarmory - Iron Defense - Level 48
  (227, 22700, 334, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Skarmory - Brave Bird - Level 52
  (227, 22700, 413, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Skarmory - Roar - TM05
  (227, 22700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Skarmory - Taunt - TM12
  (227, 22700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 21),
  -- Skarmory - Rock Tomb - TM39
  (227, 22700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 22),
  -- Skarmory - Aerial Ace - TM40
  (227, 22700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Skarmory - Torment - TM41
  (227, 22700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 24),
  -- Skarmory - Facade - TM42
  (227, 22700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Skarmory - Steel Wing - TM47
  (227, 22700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 29),
  -- Skarmory - Roost - TM51
  (227, 22700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 30),
  -- Skarmory - Endure - TM58
  (227, 22700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Skarmory - Payback - TM66
  (227, 22700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 32),
  -- Skarmory - Flash - TM70
  (227, 22700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Skarmory - Swords Dance - TM75
  (227, 22700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Skarmory - Stealth Rock - TM76
  (227, 22700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 35),
  -- Skarmory - Dark Pulse - TM79
  (227, 22700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 36),
  -- Skarmory - Rock Slide - TM80
  (227, 22700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 37),
  -- Skarmory - X-Scissor - TM81
  (227, 22700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 38),
  -- Skarmory - Sleep Talk - TM82
  (227, 22700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Skarmory - Swagger - TM87
  (227, 22700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Skarmory - Pluck - TM88
  (227, 22700, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 41),
  -- Skarmory - Substitute - TM90
  (227, 22700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Skarmory - Flash Cannon - TM91
  (227, 22700, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 43),
  -- Skarmory - Cut - TM93
  (227, 22700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Skarmory - Fly - TM94
  (227, 22700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 45),
  -- Skarmory - Defog - TM97
  (227, 22700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 46),
  -- Skarmory - Rock Smash - TM98
  (227, 22700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Skarmory - Air Cutter - Egg
  (227, 22700, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Skarmory - Assurance - Egg
  (227, 22700, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skarmory - Brave Bird - Egg
  (227, 22700, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skarmory - Curse - Egg
  (227, 22700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skarmory - Drill Peck - Egg
  (227, 22700, 65, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skarmory - Feint - Egg
  (227, 22700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skarmory - Guard Swap - Egg
  (227, 22700, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skarmory - Night Slash - Egg
  (227, 22700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Sky Attack - Egg
  (227, 22700, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skarmory - Whirlwind - Egg
  (227, 22700, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndour - Leer - Starting Move
  (228, 22800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Starting Move
  (228, 22800, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 4
  (228, 22800, 336, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 8
  (228, 22800, 123, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 13
  (228, 22800, 46, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 16
  (228, 22800, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Houndour - Taunt - Level 20
  (228, 22800, 269, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Houndour - Beat Up - Level 25
  (228, 22800, 251, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Houndour - Fire Fang - Level 28
  (228, 22800, 424, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Houndour - Payback - Level 32
  (228, 22800, 371, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Houndour - Flame Charge - Level 37
  (228, 22800, 488, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Houndour - Foul Play - Level 40
  (228, 22800, 492, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Houndour - Flamethrower - Level 44
  (228, 22800, 53, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 21, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Houndour - Nasty Plot - Level 52
  (228, 22800, 417, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Houndour - Inferno - Level 56
  (228, 22800, 517, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Houndour - Taunt - TM12
  (228, 22800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Houndour - Iron Tail - TM23
  (228, 22800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Houndour - Flamethrower - TM35
  (228, 22800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Houndour - Torment - TM41
  (228, 22800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Houndour - Facade - TM42
  (228, 22800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Houndour - Overheat - TM50
  (228, 22800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 33),
  -- Houndour - Endure - TM58
  (228, 22800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Houndour - Will-O-Wisp - TM61
  (228, 22800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Houndour - Nasty Plot - TM63
  (228, 22800, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 36),
  -- Houndour - Payback - TM66
  (228, 22800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Houndour - Snarl - TM78
  (228, 22800, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 38),
  -- Houndour - Dark Pulse - TM79
  (228, 22800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 39),
  -- Houndour - Sleep Talk - TM82
  (228, 22800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Houndour - Dream Eater - TM85
  (228, 22800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Houndour - Swagger - TM87
  (228, 22800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Houndour - Substitute - TM90
  (228, 22800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Houndour - Rock Smash - TM98
  (228, 22800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Houndour - Beat Up - Egg
  (228, 22800, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Houndour - Counter - Egg
  (228, 22800, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Houndour - Destiny Bond - Egg
  (228, 22800, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Houndour - Feint - Egg
  (228, 22800, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Houndour - Fire Fang - Egg
  (228, 22800, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Houndour - Fire Spin - Egg
  (228, 22800, 83, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Houndour - Reversal - Egg
  (228, 22800, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Houndour - Spite - Egg
  (228, 22800, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Houndour - Sucker Punch - Egg
  (228, 22800, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndour - Thunder Fang - Egg
  (228, 22800, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndoom - Inferno - Starting Move
  (229, 22900, 517, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Houndoom - Nasty Plot - Starting Move
  (229, 22900, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Houndoom - Thunder Fang - Starting Move
  (229, 22900, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Houndoom - Leer - Starting Move
  (229, 22900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Houndoom - Ember - Starting Move
  (229, 22900, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Houndoom - Howl - Level 4
  (229, 22900, 336, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Houndoom - Smog - Level 8
  (229, 22900, 123, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Houndoom - Roar - Level 13
  (229, 22900, 46, 21, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Houndoom - Bite - Level 16
  (229, 22900, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Houndoom - Taunt - Level 20
  (229, 22900, 269, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Houndoom - Beat Up - Level 26
  (229, 22900, 251, 21, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Houndoom - Fire Fang - Level 30
  (229, 22900, 424, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Houndoom - Payback - Level 35
  (229, 22900, 371, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Houndoom - Flame Charge - Level 41
  (229, 22900, 488, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Houndoom - Foul Play - Level 45
  (229, 22900, 492, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Houndoom - Flamethrower - Level 50
  (229, 22900, 53, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Houndoom - Crunch - Level 56
  (229, 22900, 242, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Houndoom - Nasty Plot - Level 60
  (229, 22900, 417, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Houndoom - Inferno - Level 65
  (229, 22900, 517, 21, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Houndoom - Taunt - TM12
  (229, 22900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Houndoom - Iron Tail - TM23
  (229, 22900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Houndoom - Flamethrower - TM35
  (229, 22900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 30),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Houndoom - Torment - TM41
  (229, 22900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Houndoom - Facade - TM42
  (229, 22900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Houndoom - Overheat - TM50
  (229, 22900, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 37),
  -- Houndoom - Endure - TM58
  (229, 22900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Houndoom - Will-O-Wisp - TM61
  (229, 22900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Houndoom - Nasty Plot - TM63
  (229, 22900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 40),
  -- Houndoom - Payback - TM66
  (229, 22900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Houndoom - Giga Impact - TM68
  (229, 22900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Houndoom - Snarl - TM78
  (229, 22900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 43),
  -- Houndoom - Dark Pulse - TM79
  (229, 22900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 44),
  -- Houndoom - Sleep Talk - TM82
  (229, 22900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Houndoom - Dream Eater - TM85
  (229, 22900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Houndoom - Swagger - TM87
  (229, 22900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Houndoom - Substitute - TM90
  (229, 22900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Houndoom - Strength - TM96
  (229, 22900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Houndoom - Rock Smash - TM98
  (229, 22900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Houndoom - Beat Up - Egg
  (229, 22900, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Houndoom - Counter - Egg
  (229, 22900, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Houndoom - Destiny Bond - Egg
  (229, 22900, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndoom - Feint - Egg
  (229, 22900, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndoom - Fire Fang - Egg
  (229, 22900, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndoom - Fire Spin - Egg
  (229, 22900, 83, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndoom - Reversal - Egg
  (229, 22900, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndoom - Spite - Egg
  (229, 22900, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndoom - Sucker Punch - Egg
  (229, 22900, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndoom - Thunder Fang - Egg
  (229, 22900, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kingdra - Whirlpool - Starting Move
  (230, 23000, 250, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kingdra - Yawn - Starting Move
  (230, 23000, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kingdra - Water Gun - Starting Move
  (230, 23000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kingdra - Leer - Starting Move
  (230, 23000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kingdra - Smokescreen - Starting Move
  (230, 23000, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Kingdra - Twister - Starting Move
  (230, 23000, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Kingdra - Focus Energy - Level 15
  (230, 23000, 116, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kingdra - Dragon Breath - Level 20
  (230, 23000, 225, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Kingdra - Bubble Beam - Level 25
  (230, 23000, 61, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Kingdra - Agility - Level 30
  (230, 23000, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Kingdra - Laser Focus - Level 37
  (230, 23000, 673, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kingdra - Dragon Pulse - Level 44
  (230, 23000, 406, 21, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Kingdra - Hydro Pump - Level 51
  (230, 23000, 56, 21, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Kingdra - Dragon Dance - Level 58
  (230, 23000, 349, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Kingdra - Rain Dance - Level 65
  (230, 23000, 240, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Kingdra - Water Pulse - TM03
  (230, 23000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Kingdra - Hail - TM07
  (230, 23000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Kingdra - Ice Beam - TM13
  (230, 23000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Kingdra - Facade - TM42
  (230, 23000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Kingdra - Scald - TM49
  (230, 23000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 27),
  -- Kingdra - Brine - TM55
  (230, 23000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 28),
  -- Kingdra - Endure - TM58
  (230, 23000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Kingdra - Dragon Pulse - TM59
  (230, 23000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 30),
  -- Kingdra - Giga Impact - TM68
  (230, 23000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 31),
  -- Kingdra - Sleep Talk - TM82
  (230, 23000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Kingdra - Swagger - TM87
  (230, 23000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Kingdra - Substitute - TM90
  (230, 23000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Kingdra - Flash Cannon - TM91
  (230, 23000, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 35),
  -- Kingdra - Surf - TM95
  (230, 23000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 36),
  -- Kingdra - Waterfall - TM99
  (230, 23000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 37),
  -- Kingdra - Aurora Beam - Egg
  (230, 23000, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Kingdra - Clear Smog - Egg
  (230, 23000, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Kingdra - Disable - Egg
  (230, 23000, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Kingdra - Dragon Breath - Egg
  (230, 23000, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Kingdra - Flail - Egg
  (230, 23000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Kingdra - Muddy Water - Egg
  (230, 23000, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Kingdra - Octazooka - Egg
  (230, 23000, 190, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Kingdra - Outrage - Egg
  (230, 23000, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Kingdra - Splash - Egg
  (230, 23000, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Phanpy - Tackle - Starting Move
  (231, 23100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Phanpy - Growl - Starting Move
  (231, 23100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Phanpy - Defense Curl - Starting Move
  (231, 23100, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Phanpy - Flail - Level 6
  (231, 23100, 175, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Phanpy - Rollout - Level 10
  (231, 23100, 205, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Phanpy - Bulldoze - Level 15
  (231, 23100, 523, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Phanpy - Endure - Level 19
  (231, 23100, 203, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Phanpy - Slam - Level 24
  (231, 23100, 21, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Phanpy - Take Down - Level 28
  (231, 23100, 36, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Phanpy - Charm - Level 33
  (231, 23100, 204, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Phanpy - Last Resort - Level 37
  (231, 23100, 387, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Phanpy - Double-Edge - Level 42
  (231, 23100, 38, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 13),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Phanpy - Iron Tail - TM23
  (231, 23100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 16),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 17),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 19),
  -- Phanpy - Rock Tomb - TM39
  (231, 23100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 20),
  -- Phanpy - Facade - TM42
  (231, 23100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Phanpy - Endure - TM58
  (231, 23100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 24),
  -- Phanpy - Stealth Rock - TM76
  (231, 23100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 25),
  -- Phanpy - Rock Slide - TM80
  (231, 23100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 26),
  -- Phanpy - Sleep Talk - TM82
  (231, 23100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Phanpy - Bulldoze - TM83
  (231, 23100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 28),
  -- Phanpy - Swagger - TM87
  (231, 23100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Phanpy - Substitute - TM90
  (231, 23100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Phanpy - Strength - TM96
  (231, 23100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 31),
  -- Phanpy - Rock Smash - TM98
  (231, 23100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 32),
  -- Phanpy - Ancient Power - Egg
  (231, 23100, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Phanpy - Body Slam - Egg
  (231, 23100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Phanpy - Counter - Egg
  (231, 23100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Phanpy - Endeavor - Egg
  (231, 23100, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Phanpy - Fissure - Egg
  (231, 23100, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Phanpy - Focus Energy - Egg
  (231, 23100, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Phanpy - Head Smash - Egg
  (231, 23100, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Phanpy - Heavy Slam - Egg
  (231, 23100, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Phanpy - High Horsepower - Egg
  (231, 23100, 667, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Phanpy - Ice Shard - Egg
  (231, 23100, 420, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Phanpy - Mud-Slap - Egg
  (231, 23100, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Phanpy - Play Rough - Egg
  (231, 23100, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Phanpy - Snore - Egg
  (231, 23100, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Donphan - Fury Attack - Starting Move
  (232, 23200, 31, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Donphan - Fire Fang - Starting Move
  (232, 23200, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Donphan - Thunder Fang - Starting Move
  (232, 23200, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Donphan - Tackle - Starting Move
  (232, 23200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Donphan - Flail - Starting Move
  (232, 23200, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Donphan - Endure - Starting Move
  (232, 23200, 203, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Donphan - Take Down - Starting Move
  (232, 23200, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Donphan - Charm - Starting Move
  (232, 23200, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Donphan - Last Resort - Starting Move
  (232, 23200, 387, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Donphan - Double-Edge - Starting Move
  (232, 23200, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Donphan - Horn Attack - Starting Move
  (232, 23200, 30, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Donphan - Bulldoze - Starting Move
  (232, 23200, 523, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Donphan - Growl - Starting Move
  (232, 23200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Donphan - Defense Curl - Starting Move
  (232, 23200, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Donphan - Fury Attack - Evolution
  (232, 23200, 31, 21, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Donphan - Rapid Spin - Level 6
  (232, 23200, 229, 21, NULL, 1, 6, NULL, NULL, NULL, 16),
  -- Donphan - Rollout - Level 10
  (232, 23200, 205, 21, NULL, 1, 10, NULL, NULL, NULL, 17),
  -- Donphan - Assurance - Level 15
  (232, 23200, 372, 21, NULL, 1, 15, NULL, NULL, NULL, 18),
  -- Donphan - Knock Off - Level 19
  (232, 23200, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 19),
  -- Donphan - Slam - Level 24
  (232, 23200, 21, 21, NULL, 1, 24, NULL, NULL, NULL, 20),
  -- Donphan - Rock Tomb - Level 30
  (232, 23200, 317, 21, NULL, 1, 30, NULL, NULL, NULL, 21),
  -- Donphan - Scary Face - Level 37
  (232, 23200, 184, 21, NULL, 1, 37, NULL, NULL, NULL, 22),
  -- Donphan - Earthquake - Level 43
  (232, 23200, 89, 21, NULL, 1, 43, NULL, NULL, NULL, 23),
  -- Donphan - Giga Impact - Level 50
  (232, 23200, 416, 21, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 25),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Donphan - Iron Tail - TM23
  (232, 23200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Donphan - Rock Tomb - TM39
  (232, 23200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Donphan - Facade - TM42
  (232, 23200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Donphan - Endure - TM58
  (232, 23200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Donphan - Giga Impact - TM68
  (232, 23200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Donphan - Rock Polish - TM69
  (232, 23200, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Donphan - Stone Edge - TM71
  (232, 23200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Donphan - Gyro Ball - TM74
  (232, 23200, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 41),
  -- Donphan - Stealth Rock - TM76
  (232, 23200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 42),
  -- Donphan - Rock Slide - TM80
  (232, 23200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Donphan - Sleep Talk - TM82
  (232, 23200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Donphan - Bulldoze - TM83
  (232, 23200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Donphan - Poison Jab - TM84
  (232, 23200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 46),
  -- Donphan - Swagger - TM87
  (232, 23200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Donphan - Substitute - TM90
  (232, 23200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Donphan - Strength - TM96
  (232, 23200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Donphan - Rock Smash - TM98
  (232, 23200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Donphan - Ancient Power - Egg
  (232, 23200, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Donphan - Body Slam - Egg
  (232, 23200, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Donphan - Counter - Egg
  (232, 23200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Donphan - Endeavor - Egg
  (232, 23200, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Donphan - Fissure - Egg
  (232, 23200, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Donphan - Focus Energy - Egg
  (232, 23200, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Donphan - Head Smash - Egg
  (232, 23200, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Donphan - Heavy Slam - Egg
  (232, 23200, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Donphan - High Horsepower - Egg
  (232, 23200, 667, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Donphan - Ice Shard - Egg
  (232, 23200, 420, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Donphan - Mud-Slap - Egg
  (232, 23200, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Donphan - Play Rough - Egg
  (232, 23200, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Donphan - Snore - Egg
  (232, 23200, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Porygon2 - Defense Curl - Starting Move
  (233, 23300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Porygon2 - Tackle - Starting Move
  (233, 23300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Starting Move
  (233, 23300, 160, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Porygon2 - Recycle - Starting Move
  (233, 23300, 278, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Porygon2 - Magnet Rise - Starting Move
  (233, 23300, 393, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Porygon2 - Thunder Shock - Level 15
  (233, 23300, 84, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon2 - Psybeam - Level 20
  (233, 23300, 60, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon2 - Conversion 2 - Level 25
  (233, 23300, 176, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon2 - Agility - Level 30
  (233, 23300, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon2 - Recover - Level 35
  (233, 23300, 105, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Tri Attack - Level 45
  (233, 23300, 161, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Magic Coat - Level 50
  (233, 23300, 277, 21, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon2 - Lock-On - Level 55
  (233, 23300, 199, 21, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon2 - Zap Cannon - Level 60
  (233, 23300, 192, 21, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Porygon2 - Hyper Beam - Level 65
  (233, 23300, 63, 21, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Porygon2 - Ice Beam - TM13
  (233, 23300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Porygon2 - Solar Beam - TM22
  (233, 23300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Porygon2 - Iron Tail - TM23
  (233, 23300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Porygon2 - Thunderbolt - TM24
  (233, 23300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Porygon2 - Shadow Ball - TM30
  (233, 23300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Porygon2 - Shock Wave - TM34
  (233, 23300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Porygon2 - Aerial Ace - TM40
  (233, 23300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Porygon2 - Facade - TM42
  (233, 23300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Porygon2 - Charge Beam - TM57
  (233, 23300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Porygon2 - Endure - TM58
  (233, 23300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Porygon2 - Recycle - TM67
  (233, 23300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 37),
  -- Porygon2 - Giga Impact - TM68
  (233, 23300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Porygon2 - Flash - TM70
  (233, 23300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Porygon2 - Thunder Wave - TM73
  (233, 23300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Porygon2 - Psych Up - TM77
  (233, 23300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Porygon2 - Sleep Talk - TM82
  (233, 23300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Porygon2 - Dream Eater - TM85
  (233, 23300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 43),
  -- Porygon2 - Swagger - TM87
  (233, 23300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Porygon2 - Substitute - TM90
  (233, 23300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Porygon2 - Trick Room - TM92
  (233, 23300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 46),
  -- Stantler - Tackle - Starting Move
  (234, 23400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 3
  (234, 23400, 43, 21, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Stantler - Astonish - Level 7
  (234, 23400, 310, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Stantler - Hypnosis - Level 10
  (234, 23400, 95, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stantler - Stomp - Level 13
  (234, 23400, 23, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Stantler - Sand Attack - Level 16
  (234, 23400, 28, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Stantler - Take Down - Level 21
  (234, 23400, 36, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Stantler - Confuse Ray - Level 23
  (234, 23400, 109, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Stantler - Calm Mind - Level 27
  (234, 23400, 347, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stantler - Role Play - Level 33
  (234, 23400, 272, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Stantler - Zen Headbutt - Level 38
  (234, 23400, 428, 21, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Stantler - Lunge - Level 43
  (234, 23400, 679, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Stantler - Imprison - Level 49
  (234, 23400, 286, 21, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Stantler - Entrainment - Level 50
  (234, 23400, 494, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Stantler - Double-Edge - Level 55
  (234, 23400, 38, 21, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Stantler - Calm Mind - TM04
  (234, 23400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Stantler - Work Up - TM10
  (234, 23400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Stantler - Light Screen - TM16
  (234, 23400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Stantler - Solar Beam - TM22
  (234, 23400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Stantler - Iron Tail - TM23
  (234, 23400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Stantler - Thunderbolt - TM24
  (234, 23400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Stantler - Thunder - TM25
  (234, 23400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Stantler - Shadow Ball - TM30
  (234, 23400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Stantler - Reflect - TM33
  (234, 23400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Stantler - Shock Wave - TM34
  (234, 23400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Stantler - Facade - TM42
  (234, 23400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Stantler - Skill Swap - TM48
  (234, 23400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Stantler - Energy Ball - TM53
  (234, 23400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Stantler - Charge Beam - TM57
  (234, 23400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Stantler - Endure - TM58
  (234, 23400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Stantler - Giga Impact - TM68
  (234, 23400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Stantler - Flash - TM70
  (234, 23400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Stantler - Thunder Wave - TM73
  (234, 23400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Stantler - Psych Up - TM77
  (234, 23400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Stantler - Sleep Talk - TM82
  (234, 23400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Stantler - Bulldoze - TM83
  (234, 23400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Stantler - Dream Eater - TM85
  (234, 23400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Stantler - Swagger - TM87
  (234, 23400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Stantler - Substitute - TM90
  (234, 23400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Stantler - Trick Room - TM92
  (234, 23400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 50),
  -- Stantler - Bite - Egg
  (234, 23400, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stantler - Disable - Egg
  (234, 23400, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stantler - Double Kick - Egg
  (234, 23400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stantler - Extrasensory - Egg
  (234, 23400, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stantler - Megahorn - Egg
  (234, 23400, 224, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stantler - Spite - Egg
  (234, 23400, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stantler - Thrash - Egg
  (234, 23400, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stantler - Zen Headbutt - Egg
  (234, 23400, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Smeargle - Sketch - Starting Move
  (235, 23500, 166, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 21, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 21, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 21, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 21, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 21, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 21, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 21, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 21, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 21, NULL, 1, 91, NULL, NULL, NULL, 10),
  -- Tyrogue - Tackle - Starting Move
  (236, 23600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tyrogue - Helping Hand - Starting Move
  (236, 23600, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Starting Move
  (236, 23600, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Tyrogue - Focus Energy - Starting Move
  (236, 23600, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Tyrogue - Bulk Up - TM08
  (236, 23600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 5),
  -- Tyrogue - Work Up - TM10
  (236, 23600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 6),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 7),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 8),
  -- Tyrogue - Rain Dance - TM18
  (236, 23600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 9),
  -- Tyrogue - Earthquake - TM26
  (236, 23600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 10),
  -- Tyrogue - Low Sweep - TM27
  (236, 23600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 11),
  -- Tyrogue - Brick Break - TM31
  (236, 23600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 12),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 13),
  -- Tyrogue - Facade - TM42
  (236, 23600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 14),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 15),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 16),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 17),
  -- Tyrogue - Endure - TM58
  (236, 23600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 18),
  -- Tyrogue - Rock Slide - TM80
  (236, 23600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 19),
  -- Tyrogue - Sleep Talk - TM82
  (236, 23600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 20),
  -- Tyrogue - Bulldoze - TM83
  (236, 23600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 21),
  -- Tyrogue - Swagger - TM87
  (236, 23600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 22),
  -- Tyrogue - Substitute - TM90
  (236, 23600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 23),
  -- Tyrogue - Strength - TM96
  (236, 23600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 24),
  -- Tyrogue - Rock Smash - TM98
  (236, 23600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 25),
  -- Tyrogue - Bullet Punch - Egg
  (236, 23600, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Tyrogue - Counter - Egg
  (236, 23600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Tyrogue - Feint - Egg
  (236, 23600, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Tyrogue - Helping Hand - Egg
  (236, 23600, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Tyrogue - High Jump Kick - Egg
  (236, 23600, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Tyrogue - Mach Punch - Egg
  (236, 23600, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tyrogue - Mind Reader - Egg
  (236, 23600, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tyrogue - Rapid Spin - Egg
  (236, 23600, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tyrogue - Vacuum Wave - Egg
  (236, 23600, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hitmontop - Triple Kick - Starting Move
  (237, 23700, 167, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hitmontop - Feint - Starting Move
  (237, 23700, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hitmontop - Rapid Spin - Starting Move
  (237, 23700, 229, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hitmontop - Tackle - Starting Move
  (237, 23700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hitmontop - Helping Hand - Starting Move
  (237, 23700, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hitmontop - Fake Out - Starting Move
  (237, 23700, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Hitmontop - Focus Energy - Starting Move
  (237, 23700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Hitmontop - Triple Kick - Evolution
  (237, 23700, 167, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Hitmontop - Quick Attack - Level 4
  (237, 23700, 98, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Hitmontop - Gyro Ball - Level 8
  (237, 23700, 360, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Hitmontop - Detect - Level 12
  (237, 23700, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Hitmontop - Revenge - Level 16
  (237, 23700, 279, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Hitmontop - Wide Guard - Level 21
  (237, 23700, 469, 21, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hitmontop - Quick Guard - Level 21
  (237, 23700, 501, 21, NULL, 1, 21, NULL, NULL, NULL, 14),
  -- Hitmontop - Sucker Punch - Level 24
  (237, 23700, 389, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Hitmontop - Agility - Level 28
  (237, 23700, 97, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Hitmontop - Dig - Level 32
  (237, 23700, 91, 21, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Hitmontop - Close Combat - Level 36
  (237, 23700, 370, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Hitmontop - Counter - Level 40
  (237, 23700, 68, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Hitmontop - Endeavor - Level 44
  (237, 23700, 283, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Hitmontop - Bulk Up - TM08
  (237, 23700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 21),
  -- Hitmontop - Work Up - TM10
  (237, 23700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Hitmontop - Rain Dance - TM18
  (237, 23700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Hitmontop - Earthquake - TM26
  (237, 23700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Hitmontop - Low Sweep - TM27
  (237, 23700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 27),
  -- Hitmontop - Dig - TM28
  (237, 23700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Hitmontop - Brick Break - TM31
  (237, 23700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Hitmontop - Sandstorm - TM37
  (237, 23700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Hitmontop - Aerial Ace - TM40
  (237, 23700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Hitmontop - Facade - TM42
  (237, 23700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Hitmontop - Focus Blast - TM52
  (237, 23700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Hitmontop - Endure - TM58
  (237, 23700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Hitmontop - Stone Edge - TM71
  (237, 23700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 39),
  -- Hitmontop - Gyro Ball - TM74
  (237, 23700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 40),
  -- Hitmontop - Rock Slide - TM80
  (237, 23700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Hitmontop - Sleep Talk - TM82
  (237, 23700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Hitmontop - Bulldoze - TM83
  (237, 23700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Hitmontop - Swagger - TM87
  (237, 23700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Hitmontop - Substitute - TM90
  (237, 23700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Hitmontop - Strength - TM96
  (237, 23700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Hitmontop - Rock Smash - TM98
  (237, 23700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Hitmontop - Bullet Punch - Egg
  (237, 23700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hitmontop - Counter - Egg
  (237, 23700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hitmontop - Feint - Egg
  (237, 23700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hitmontop - Helping Hand - Egg
  (237, 23700, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hitmontop - High Jump Kick - Egg
  (237, 23700, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hitmontop - Mach Punch - Egg
  (237, 23700, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hitmontop - Mind Reader - Egg
  (237, 23700, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmontop - Rapid Spin - Egg
  (237, 23700, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmontop - Vacuum Wave - Egg
  (237, 23700, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Smoochum - Lick - Starting Move
  (238, 23800, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Smoochum - Pound - Starting Move
  (238, 23800, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Smoochum - Powder Snow - Level 4
  (238, 23800, 181, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Smoochum - Copycat - Level 8
  (238, 23800, 383, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 12
  (238, 23800, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Smoochum - Covet - Level 16
  (238, 23800, 343, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Smoochum - Sing - Level 20
  (238, 23800, 47, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Smoochum - Fake Tears - Level 24
  (238, 23800, 313, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Smoochum - Ice Punch - Level 28
  (238, 23800, 8, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Smoochum - Psychic - Level 32
  (238, 23800, 94, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Smoochum - Sweet Kiss - Level 36
  (238, 23800, 186, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Smoochum - Mean Look - Level 40
  (238, 23800, 212, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Smoochum - Perish Song - Level 44
  (238, 23800, 195, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Smoochum - Blizzard - Level 48
  (238, 23800, 59, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Smoochum - Water Pulse - TM03
  (238, 23800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Smoochum - Calm Mind - TM04
  (238, 23800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Smoochum - Hail - TM07
  (238, 23800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Smoochum - Ice Beam - TM13
  (238, 23800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Smoochum - Light Screen - TM16
  (238, 23800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Smoochum - Reflect - TM33
  (238, 23800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 26),
  -- Smoochum - Facade - TM42
  (238, 23800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Smoochum - Skill Swap - TM48
  (238, 23800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 31),
  -- Smoochum - Fling - TM56
  (238, 23800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 32),
  -- Smoochum - Endure - TM58
  (238, 23800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Smoochum - Nasty Plot - TM63
  (238, 23800, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 34),
  -- Smoochum - Payback - TM66
  (238, 23800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Smoochum - Recycle - TM67
  (238, 23800, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 36),
  -- Smoochum - Flash - TM70
  (238, 23800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Smoochum - Avalanche - TM72
  (238, 23800, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 38),
  -- Smoochum - Psych Up - TM77
  (238, 23800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Smoochum - Sleep Talk - TM82
  (238, 23800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Smoochum - Dream Eater - TM85
  (238, 23800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Smoochum - Grass Knot - TM86
  (238, 23800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 42),
  -- Smoochum - Swagger - TM87
  (238, 23800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Smoochum - Substitute - TM90
  (238, 23800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Smoochum - Trick Room - TM92
  (238, 23800, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 45),
  -- Smoochum - Fake Out - Egg
  (238, 23800, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Smoochum - Ice Punch - Egg
  (238, 23800, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Smoochum - Role Play - Egg
  (238, 23800, 272, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Smoochum - Wish - Egg
  (238, 23800, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Quick Attack - Starting Move
  (239, 23900, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Elekid - Leer - Starting Move
  (239, 23900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 4
  (239, 23900, 84, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Elekid - Charge - Level 8
  (239, 23900, 268, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 12
  (239, 23900, 129, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 16
  (239, 23900, 351, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Elekid - Thunder Wave - Level 20
  (239, 23900, 86, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Elekid - Screech - Level 24
  (239, 23900, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Elekid - Thunder Punch - Level 28
  (239, 23900, 9, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Elekid - Discharge - Level 32
  (239, 23900, 435, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Elekid - Low Kick - Level 36
  (239, 23900, 67, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Elekid - Thunderbolt - Level 40
  (239, 23900, 85, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Elekid - Light Screen - Level 44
  (239, 23900, 113, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Elekid - Thunder - Level 48
  (239, 23900, 87, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Elekid - Focus Punch - TM01
  (239, 23900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Elekid - Light Screen - TM16
  (239, 23900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Elekid - Thunderbolt - TM24
  (239, 23900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 19),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 20),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Elekid - Brick Break - TM31
  (239, 23900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 22),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Elekid - Shock Wave - TM34
  (239, 23900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 24),
  -- Elekid - Facade - TM42
  (239, 23900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Elekid - Volt Switch - TM43
  (239, 23900, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 26),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Elekid - Fling - TM56
  (239, 23900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 30),
  -- Elekid - Charge Beam - TM57
  (239, 23900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Elekid - Endure - TM58
  (239, 23900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Elekid - Flash - TM70
  (239, 23900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Elekid - Thunder Wave - TM73
  (239, 23900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 34),
  -- Elekid - Sleep Talk - TM82
  (239, 23900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Elekid - Swagger - TM87
  (239, 23900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Elekid - Substitute - TM90
  (239, 23900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Elekid - Rock Smash - TM98
  (239, 23900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Elekid - Cross Chop - Egg
  (239, 23900, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Elekid - Dynamic Punch - Egg
  (239, 23900, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Elekid - Feint - Egg
  (239, 23900, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Elekid - Fire Punch - Egg
  (239, 23900, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Elekid - Hammer Arm - Egg
  (239, 23900, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Elekid - Ice Punch - Egg
  (239, 23900, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magby - Smog - Starting Move
  (240, 24000, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magby - Leer - Starting Move
  (240, 24000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 4
  (240, 24000, 52, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 8
  (240, 24000, 108, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magby - Clear Smog - Level 12
  (240, 24000, 499, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magby - Flame Wheel - Level 16
  (240, 24000, 172, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magby - Confuse Ray - Level 20
  (240, 24000, 109, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magby - Scary Face - Level 24
  (240, 24000, 184, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magby - Fire Punch - Level 28
  (240, 24000, 7, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magby - Lava Plume - Level 32
  (240, 24000, 436, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magby - Low Kick - Level 36
  (240, 24000, 67, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magby - Flamethrower - Level 40
  (240, 24000, 53, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magby - Sunny Day - Level 44
  (240, 24000, 241, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magby - Fire Blast - Level 48
  (240, 24000, 126, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magby - Focus Punch - TM01
  (240, 24000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Magby - Protect - TM17
  (240, 24000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Magby - Iron Tail - TM23
  (240, 24000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 19),
  -- Magby - Brick Break - TM31
  (240, 24000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 20),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Magby - Flamethrower - TM35
  (240, 24000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Magby - Facade - TM42
  (240, 24000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Magby - Rest - TM44
  (240, 24000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Magby - Attract - TM45
  (240, 24000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Magby - Thief - TM46
  (240, 24000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Magby - Overheat - TM50
  (240, 24000, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 28),
  -- Magby - Fling - TM56
  (240, 24000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 29),
  -- Magby - Endure - TM58
  (240, 24000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Magby - Will-O-Wisp - TM61
  (240, 24000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 31),
  -- Magby - Sleep Talk - TM82
  (240, 24000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Magby - Swagger - TM87
  (240, 24000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Magby - Substitute - TM90
  (240, 24000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Magby - Rock Smash - TM98
  (240, 24000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 35),
  -- Magby - Belch - Egg
  (240, 24000, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Magby - Belly Drum - Egg
  (240, 24000, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Magby - Cross Chop - Egg
  (240, 24000, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Magby - Dynamic Punch - Egg
  (240, 24000, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Magby - Flare Blitz - Egg
  (240, 24000, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Magby - Focus Energy - Egg
  (240, 24000, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Magby - Mach Punch - Egg
  (240, 24000, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Magby - Mega Punch - Egg
  (240, 24000, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Magby - Power Swap - Egg
  (240, 24000, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magby - Screech - Egg
  (240, 24000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magby - Thunder Punch - Egg
  (240, 24000, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Miltank - Tackle - Starting Move
  (241, 24100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Starting Move
  (241, 24100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Miltank - Rollout - Level 5
  (241, 24100, 205, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Miltank - Defense Curl - Level 10
  (241, 24100, 111, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Miltank - Stomp - Level 15
  (241, 24100, 23, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Miltank - Heal Bell - Level 20
  (241, 24100, 215, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Miltank - Headbutt - Level 25
  (241, 24100, 29, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Miltank - Zen Headbutt - Level 30
  (241, 24100, 428, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Miltank - Milk Drink - Level 35
  (241, 24100, 208, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Miltank - Body Slam - Level 40
  (241, 24100, 34, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Miltank - Play Rough - Level 45
  (241, 24100, 583, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Miltank - Charm - Level 50
  (241, 24100, 204, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Miltank - High Horsepower - Level 55
  (241, 24100, 667, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Miltank - Focus Punch - TM01
  (241, 24100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 14),
  -- Miltank - Water Pulse - TM03
  (241, 24100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Miltank - Work Up - TM10
  (241, 24100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Miltank - Ice Beam - TM13
  (241, 24100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Miltank - Solar Beam - TM22
  (241, 24100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Miltank - Iron Tail - TM23
  (241, 24100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Miltank - Thunderbolt - TM24
  (241, 24100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Miltank - Brick Break - TM31
  (241, 24100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Miltank - Shock Wave - TM34
  (241, 24100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Miltank - Rock Tomb - TM39
  (241, 24100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Miltank - Facade - TM42
  (241, 24100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Miltank - Focus Blast - TM52
  (241, 24100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Miltank - Fling - TM56
  (241, 24100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Miltank - Endure - TM58
  (241, 24100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Miltank - Giga Impact - TM68
  (241, 24100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Miltank - Thunder Wave - TM73
  (241, 24100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Miltank - Gyro Ball - TM74
  (241, 24100, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 42),
  -- Miltank - Stealth Rock - TM76
  (241, 24100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 43),
  -- Miltank - Psych Up - TM77
  (241, 24100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Miltank - Rock Slide - TM80
  (241, 24100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Miltank - Sleep Talk - TM82
  (241, 24100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Miltank - Bulldoze - TM83
  (241, 24100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Miltank - Swagger - TM87
  (241, 24100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Miltank - Substitute - TM90
  (241, 24100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Miltank - Surf - TM95
  (241, 24100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 50),
  -- Miltank - Strength - TM96
  (241, 24100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Miltank - Rock Smash - TM98
  (241, 24100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Miltank - Belch - Egg
  (241, 24100, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Miltank - Curse - Egg
  (241, 24100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Miltank - Double-Edge - Egg
  (241, 24100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Miltank - Hammer Arm - Egg
  (241, 24100, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Miltank - Helping Hand - Egg
  (241, 24100, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Miltank - Present - Egg
  (241, 24100, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Miltank - Reversal - Egg
  (241, 24100, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Miltank - Seismic Toss - Egg
  (241, 24100, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Blissey - Sweet Kiss - Starting Move
  (242, 24200, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Blissey - Disarming Voice - Starting Move
  (242, 24200, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Blissey - Covet - Starting Move
  (242, 24200, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Blissey - Charm - Starting Move
  (242, 24200, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Blissey - Minimize - Starting Move
  (242, 24200, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Blissey - Pound - Starting Move
  (242, 24200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Blissey - Copycat - Starting Move
  (242, 24200, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Blissey - Defense Curl - Starting Move
  (242, 24200, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Blissey - Tail Whip - Level 4
  (242, 24200, 39, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Blissey - Echoed Voice - Level 8
  (242, 24200, 497, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Blissey - Life Dew - Level 12
  (242, 24200, 791, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Blissey - Sing - Level 16
  (242, 24200, 47, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Blissey - Fling - Level 20
  (242, 24200, 374, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Blissey - Take Down - Level 24
  (242, 24200, 36, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Blissey - Heal Pulse - Level 28
  (242, 24200, 505, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Blissey - Helping Hand - Level 32
  (242, 24200, 270, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Blissey - Light Screen - Level 36
  (242, 24200, 113, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Blissey - Double-Edge - Level 40
  (242, 24200, 38, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Blissey - Soft-Boiled - Level 44
  (242, 24200, 135, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Blissey - Last Resort - Level 48
  (242, 24200, 387, 21, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Blissey - Healing Wish - Level 52
  (242, 24200, 361, 21, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Blissey - Focus Punch - TM01
  (242, 24200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Blissey - Water Pulse - TM03
  (242, 24200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Blissey - Calm Mind - TM04
  (242, 24200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 24),
  -- Blissey - Hail - TM07
  (242, 24200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 25),
  -- Blissey - Work Up - TM10
  (242, 24200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Blissey - Ice Beam - TM13
  (242, 24200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Blissey - Light Screen - TM16
  (242, 24200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 31),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 32),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 33),
  -- Blissey - Safeguard - TM20
  (242, 24200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 34),
  -- Blissey - Dazzling Gleam - TM21
  (242, 24200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 35),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 36),
  -- Blissey - Iron Tail - TM23
  (242, 24200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 37),
  -- Blissey - Thunderbolt - TM24
  (242, 24200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 38),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 39),
  -- Blissey - Earthquake - TM26
  (242, 24200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 40),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 41),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 42),
  -- Blissey - Brick Break - TM31
  (242, 24200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 43),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 44),
  -- Blissey - Shock Wave - TM34
  (242, 24200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 45),
  -- Blissey - Flamethrower - TM35
  (242, 24200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 46),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 47),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 48),
  -- Blissey - Rock Tomb - TM39
  (242, 24200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 49),
  -- Blissey - Facade - TM42
  (242, 24200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 50),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 51),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 52),
  -- Blissey - Skill Swap - TM48
  (242, 24200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 53),
  -- Blissey - Focus Blast - TM52
  (242, 24200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 54),
  -- Blissey - Fling - TM56
  (242, 24200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 55),
  -- Blissey - Charge Beam - TM57
  (242, 24200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 56),
  -- Blissey - Endure - TM58
  (242, 24200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 57),
  -- Blissey - Drain Punch - TM60
  (242, 24200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 58),
  -- Blissey - Recycle - TM67
  (242, 24200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 59),
  -- Blissey - Giga Impact - TM68
  (242, 24200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 60),
  -- Blissey - Flash - TM70
  (242, 24200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 61),
  -- Blissey - Avalanche - TM72
  (242, 24200, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 62),
  -- Blissey - Thunder Wave - TM73
  (242, 24200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 63),
  -- Blissey - Stealth Rock - TM76
  (242, 24200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 64),
  -- Blissey - Psych Up - TM77
  (242, 24200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 65),
  -- Blissey - Rock Slide - TM80
  (242, 24200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 66),
  -- Blissey - Sleep Talk - TM82
  (242, 24200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 67),
  -- Blissey - Bulldoze - TM83
  (242, 24200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 68),
  -- Blissey - Dream Eater - TM85
  (242, 24200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 69),
  -- Blissey - Grass Knot - TM86
  (242, 24200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 70),
  -- Blissey - Swagger - TM87
  (242, 24200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 71),
  -- Blissey - Substitute - TM90
  (242, 24200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 72),
  -- Blissey - Strength - TM96
  (242, 24200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 73),
  -- Blissey - Rock Smash - TM98
  (242, 24200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 74),
  -- Blissey - Rock Climb - TM100
  (242, 24200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 75),
  -- Blissey - Aromatherapy - Egg
  (242, 24200, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Blissey - Counter - Egg
  (242, 24200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Blissey - Gravity - Egg
  (242, 24200, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Blissey - Heal Bell - Egg
  (242, 24200, 215, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Blissey - Helping Hand - Egg
  (242, 24200, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Blissey - Last Resort - Egg
  (242, 24200, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Blissey - Metronome - Egg
  (242, 24200, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Blissey - Present - Egg
  (242, 24200, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Blissey - Seismic Toss - Egg
  (242, 24200, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Raikou - Extreme Speed - Starting Move
  (243, 24300, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Raikou - Thunder Shock - Starting Move
  (243, 24300, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Raikou - Leer - Starting Move
  (243, 24300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Raikou - Charge - Starting Move
  (243, 24300, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Raikou - Quick Attack - Starting Move
  (243, 24300, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 6
  (243, 24300, 209, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Raikou - Bite - Level 12
  (243, 24300, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Raikou - Calm Mind - Level 18
  (243, 24300, 347, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Raikou - Roar - Level 24
  (243, 24300, 46, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Raikou - Thunder Fang - Level 30
  (243, 24300, 422, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Raikou - Howl - Level 36
  (243, 24300, 336, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Raikou - Crunch - Level 42
  (243, 24300, 242, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Raikou - Extrasensory - Level 48
  (243, 24300, 326, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Raikou - Discharge - Level 54
  (243, 24300, 435, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Raikou - Reflect - Level 60
  (243, 24300, 115, 21, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Raikou - Rain Dance - Level 66
  (243, 24300, 240, 21, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Raikou - Thunder - Level 72
  (243, 24300, 87, 21, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Raikou - Zap Cannon - Level 78
  (243, 24300, 192, 21, NULL, 1, 78, NULL, NULL, NULL, 18),
  -- Raikou - Calm Mind - TM04
  (243, 24300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Raikou - Light Screen - TM16
  (243, 24300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Raikou - Iron Tail - TM23
  (243, 24300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Raikou - Thunderbolt - TM24
  (243, 24300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Raikou - Dig - TM28
  (243, 24300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Raikou - Shadow Ball - TM30
  (243, 24300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Raikou - Reflect - TM33
  (243, 24300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 32),
  -- Raikou - Shock Wave - TM34
  (243, 24300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Raikou - Facade - TM42
  (243, 24300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Raikou - Volt Switch - TM43
  (243, 24300, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 36),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Raikou - Scald - TM49
  (243, 24300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 38),
  -- Raikou - Charge Beam - TM57
  (243, 24300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Raikou - Endure - TM58
  (243, 24300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Raikou - Giga Impact - TM68
  (243, 24300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Raikou - Flash - TM70
  (243, 24300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Raikou - Thunder Wave - TM73
  (243, 24300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Raikou - Psych Up - TM77
  (243, 24300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Raikou - Snarl - TM78
  (243, 24300, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 45),
  -- Raikou - Sleep Talk - TM82
  (243, 24300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Raikou - Bulldoze - TM83
  (243, 24300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Raikou - Swagger - TM87
  (243, 24300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Raikou - Substitute - TM90
  (243, 24300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Raikou - Cut - TM93
  (243, 24300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Raikou - Strength - TM96
  (243, 24300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Raikou - Rock Smash - TM98
  (243, 24300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Raikou - Rock Climb - TM100
  (243, 24300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 53),
  -- Entei - Sacred Fire - Starting Move
  (244, 24400, 221, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Entei - Extreme Speed - Starting Move
  (244, 24400, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Entei - Ember - Starting Move
  (244, 24400, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Entei - Leer - Starting Move
  (244, 24400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Entei - Stomp - Starting Move
  (244, 24400, 23, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Entei - Smokescreen - Starting Move
  (244, 24400, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Entei - Flame Wheel - Level 6
  (244, 24400, 172, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Entei - Bite - Level 12
  (244, 24400, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Entei - Calm Mind - Level 18
  (244, 24400, 347, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Entei - Roar - Level 24
  (244, 24400, 46, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Entei - Fire Fang - Level 30
  (244, 24400, 424, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Entei - Scary Face - Level 36
  (244, 24400, 184, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Entei - Crunch - Level 42
  (244, 24400, 242, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Entei - Extrasensory - Level 48
  (244, 24400, 326, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Entei - Lava Plume - Level 54
  (244, 24400, 436, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Entei - Swagger - Level 60
  (244, 24400, 207, 21, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Entei - Sunny Day - Level 66
  (244, 24400, 241, 21, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Entei - Fire Blast - Level 72
  (244, 24400, 126, 21, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Entei - Eruption - Level 78
  (244, 24400, 284, 21, NULL, 1, 78, NULL, NULL, NULL, 19),
  -- Entei - Calm Mind - TM04
  (244, 24400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Entei - Roar - TM05
  (244, 24400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Entei - Protect - TM17
  (244, 24400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Entei - Iron Tail - TM23
  (244, 24400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Entei - Dig - TM28
  (244, 24400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Entei - Shadow Ball - TM30
  (244, 24400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Entei - Reflect - TM33
  (244, 24400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Entei - Flamethrower - TM35
  (244, 24400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Entei - Facade - TM42
  (244, 24400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Entei - Rest - TM44
  (244, 24400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Entei - Overheat - TM50
  (244, 24400, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 37),
  -- Entei - Endure - TM58
  (244, 24400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Entei - Will-O-Wisp - TM61
  (244, 24400, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Entei - Giga Impact - TM68
  (244, 24400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Entei - Flash - TM70
  (244, 24400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Entei - Stone Edge - TM71
  (244, 24400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Entei - Psych Up - TM77
  (244, 24400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Entei - Snarl - TM78
  (244, 24400, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 44),
  -- Entei - Sleep Talk - TM82
  (244, 24400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Entei - Bulldoze - TM83
  (244, 24400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Entei - Swagger - TM87
  (244, 24400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Entei - Substitute - TM90
  (244, 24400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Entei - Cut - TM93
  (244, 24400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 49),
  -- Entei - Strength - TM96
  (244, 24400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Entei - Rock Smash - TM98
  (244, 24400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Entei - Rock Climb - TM100
  (244, 24400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 52),
  -- Suicune - Sheer Cold - Starting Move
  (245, 24500, 329, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Suicune - Extreme Speed - Starting Move
  (245, 24500, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Suicune - Water Gun - Starting Move
  (245, 24500, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Suicune - Leer - Starting Move
  (245, 24500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Suicune - Gust - Starting Move
  (245, 24500, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Suicune - Mist - Starting Move
  (245, 24500, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Suicune - Water Pulse - Level 6
  (245, 24500, 352, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Suicune - Bite - Level 12
  (245, 24500, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Suicune - Calm Mind - Level 18
  (245, 24500, 347, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Suicune - Roar - Level 24
  (245, 24500, 46, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Suicune - Ice Fang - Level 30
  (245, 24500, 423, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Suicune - Tailwind - Level 36
  (245, 24500, 366, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Suicune - Crunch - Level 42
  (245, 24500, 242, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Suicune - Extrasensory - Level 48
  (245, 24500, 326, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Suicune - Surf - Level 54
  (245, 24500, 57, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Suicune - Mirror Coat - Level 60
  (245, 24500, 243, 21, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Suicune - Rain Dance - Level 66
  (245, 24500, 240, 21, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Suicune - Hydro Pump - Level 72
  (245, 24500, 56, 21, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Suicune - Blizzard - Level 78
  (245, 24500, 59, 21, NULL, 1, 78, NULL, NULL, NULL, 19),
  -- Suicune - Water Pulse - TM03
  (245, 24500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Suicune - Calm Mind - TM04
  (245, 24500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 22),
  -- Suicune - Hail - TM07
  (245, 24500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 23),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Suicune - Ice Beam - TM13
  (245, 24500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Suicune - Iron Tail - TM23
  (245, 24500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Suicune - Dig - TM28
  (245, 24500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Suicune - Shadow Ball - TM30
  (245, 24500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Suicune - Reflect - TM33
  (245, 24500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 35),
  -- Suicune - Facade - TM42
  (245, 24500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Suicune - Scald - TM49
  (245, 24500, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 38),
  -- Suicune - Brine - TM55
  (245, 24500, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 39),
  -- Suicune - Endure - TM58
  (245, 24500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Suicune - Giga Impact - TM68
  (245, 24500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Suicune - Avalanche - TM72
  (245, 24500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 42),
  -- Suicune - Psych Up - TM77
  (245, 24500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Suicune - Snarl - TM78
  (245, 24500, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 44),
  -- Suicune - Sleep Talk - TM82
  (245, 24500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Suicune - Bulldoze - TM83
  (245, 24500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Suicune - Swagger - TM87
  (245, 24500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Suicune - Substitute - TM90
  (245, 24500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Suicune - Cut - TM93
  (245, 24500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 49),
  -- Suicune - Surf - TM95
  (245, 24500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 50),
  -- Suicune - Rock Smash - TM98
  (245, 24500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Suicune - Waterfall - TM99
  (245, 24500, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 52),
  -- Suicune - Rock Climb - TM100
  (245, 24500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 53),
  -- Larvitar - Tackle - Starting Move
  (246, 24600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Starting Move
  (246, 24600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Larvitar - Rock Throw - Level 3
  (246, 24600, 88, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Larvitar - Payback - Level 6
  (246, 24600, 371, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Larvitar - Bite - Level 9
  (246, 24600, 44, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Larvitar - Scary Face - Level 12
  (246, 24600, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Larvitar - Rock Slide - Level 15
  (246, 24600, 157, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Larvitar - Stomping Tantrum - Level 18
  (246, 24600, 707, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Larvitar - Screech - Level 21
  (246, 24600, 103, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Larvitar - Dark Pulse - Level 24
  (246, 24600, 399, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Larvitar - Crunch - Level 27
  (246, 24600, 242, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Larvitar - Earthquake - Level 31
  (246, 24600, 89, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Larvitar - Stone Edge - Level 33
  (246, 24600, 444, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Larvitar - Thrash - Level 36
  (246, 24600, 37, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Larvitar - Sandstorm - Level 39
  (246, 24600, 201, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Larvitar - Hyper Beam - Level 42
  (246, 24600, 63, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Larvitar - Taunt - TM12
  (246, 24600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Larvitar - Iron Tail - TM23
  (246, 24600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Larvitar - Dig - TM28
  (246, 24600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Larvitar - Brick Break - TM31
  (246, 24600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Larvitar - Rock Tomb - TM39
  (246, 24600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Larvitar - Torment - TM41
  (246, 24600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Larvitar - Facade - TM42
  (246, 24600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Larvitar - Endure - TM58
  (246, 24600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Larvitar - Payback - TM66
  (246, 24600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 34),
  -- Larvitar - Rock Polish - TM69
  (246, 24600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 35),
  -- Larvitar - Stone Edge - TM71
  (246, 24600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Larvitar - Stealth Rock - TM76
  (246, 24600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Larvitar - Snarl - TM78
  (246, 24600, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 38),
  -- Larvitar - Dark Pulse - TM79
  (246, 24600, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 39),
  -- Larvitar - Rock Slide - TM80
  (246, 24600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Larvitar - Sleep Talk - TM82
  (246, 24600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Larvitar - Bulldoze - TM83
  (246, 24600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Larvitar - Swagger - TM87
  (246, 24600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Larvitar - Substitute - TM90
  (246, 24600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Larvitar - Rock Smash - TM98
  (246, 24600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Larvitar - Ancient Power - Egg
  (246, 24600, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Larvitar - Assurance - Egg
  (246, 24600, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvitar - Curse - Egg
  (246, 24600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Larvitar - Dragon Dance - Egg
  (246, 24600, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Larvitar - Focus Energy - Egg
  (246, 24600, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Larvitar - Iron Defense - Egg
  (246, 24600, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Larvitar - Iron Head - Egg
  (246, 24600, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Larvitar - Outrage - Egg
  (246, 24600, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Larvitar - Stomp - Egg
  (246, 24600, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pupitar - Iron Defense - Starting Move
  (247, 24700, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pupitar - Tackle - Starting Move
  (247, 24700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pupitar - Leer - Starting Move
  (247, 24700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Pupitar - Rock Throw - Starting Move
  (247, 24700, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Pupitar - Payback - Starting Move
  (247, 24700, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Pupitar - Iron Defense - Evolution
  (247, 24700, 334, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Pupitar - Bite - Level 9
  (247, 24700, 44, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pupitar - Scary Face - Level 12
  (247, 24700, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Pupitar - Rock Slide - Level 15
  (247, 24700, 157, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Pupitar - Stomping Tantrum - Level 18
  (247, 24700, 707, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Pupitar - Screech - Level 21
  (247, 24700, 103, 21, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Pupitar - Dark Pulse - Level 24
  (247, 24700, 399, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Pupitar - Crunch - Level 27
  (247, 24700, 242, 21, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Pupitar - Earthquake - Level 33
  (247, 24700, 89, 21, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Pupitar - Stone Edge - Level 37
  (247, 24700, 444, 21, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Pupitar - Thrash - Level 42
  (247, 24700, 37, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Pupitar - Sandstorm - Level 47
  (247, 24700, 201, 21, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Pupitar - Hyper Beam - Level 52
  (247, 24700, 63, 21, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Pupitar - Taunt - TM12
  (247, 24700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Pupitar - Iron Tail - TM23
  (247, 24700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Pupitar - Dig - TM28
  (247, 24700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Pupitar - Brick Break - TM31
  (247, 24700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Pupitar - Rock Tomb - TM39
  (247, 24700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Pupitar - Torment - TM41
  (247, 24700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Pupitar - Facade - TM42
  (247, 24700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Pupitar - Endure - TM58
  (247, 24700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Pupitar - Payback - TM66
  (247, 24700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Pupitar - Rock Polish - TM69
  (247, 24700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 37),
  -- Pupitar - Stone Edge - TM71
  (247, 24700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Pupitar - Stealth Rock - TM76
  (247, 24700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 39),
  -- Pupitar - Snarl - TM78
  (247, 24700, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 40),
  -- Pupitar - Dark Pulse - TM79
  (247, 24700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 41),
  -- Pupitar - Rock Slide - TM80
  (247, 24700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Pupitar - Sleep Talk - TM82
  (247, 24700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Pupitar - Bulldoze - TM83
  (247, 24700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Pupitar - Swagger - TM87
  (247, 24700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Pupitar - Substitute - TM90
  (247, 24700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Pupitar - Rock Smash - TM98
  (247, 24700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Pupitar - Ancient Power - Egg
  (247, 24700, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pupitar - Assurance - Egg
  (247, 24700, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pupitar - Curse - Egg
  (247, 24700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pupitar - Dragon Dance - Egg
  (247, 24700, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pupitar - Focus Energy - Egg
  (247, 24700, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pupitar - Iron Defense - Egg
  (247, 24700, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pupitar - Iron Head - Egg
  (247, 24700, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pupitar - Outrage - Egg
  (247, 24700, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pupitar - Stomp - Egg
  (247, 24700, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tyranitar - Iron Defense - Starting Move
  (248, 24800, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tyranitar - Thunder Fang - Starting Move
  (248, 24800, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tyranitar - Ice Fang - Starting Move
  (248, 24800, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Tyranitar - Fire Fang - Starting Move
  (248, 24800, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Tyranitar - Tackle - Starting Move
  (248, 24800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Tyranitar - Leer - Starting Move
  (248, 24800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Tyranitar - Rock Throw - Starting Move
  (248, 24800, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Tyranitar - Payback - Starting Move
  (248, 24800, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Tyranitar - Bite - Level 9
  (248, 24800, 44, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Tyranitar - Scary Face - Level 12
  (248, 24800, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Tyranitar - Rock Slide - Level 15
  (248, 24800, 157, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Tyranitar - Stomping Tantrum - Level 18
  (248, 24800, 707, 21, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Tyranitar - Screech - Level 21
  (248, 24800, 103, 21, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Tyranitar - Dark Pulse - Level 24
  (248, 24800, 399, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Tyranitar - Crunch - Level 27
  (248, 24800, 242, 21, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Tyranitar - Earthquake - Level 33
  (248, 24800, 89, 21, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Tyranitar - Stone Edge - Level 37
  (248, 24800, 444, 21, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Tyranitar - Thrash - Level 42
  (248, 24800, 37, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Tyranitar - Sandstorm - Level 47
  (248, 24800, 201, 21, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Tyranitar - Hyper Beam - Level 52
  (248, 24800, 63, 21, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Tyranitar - Giga Impact - Level 59
  (248, 24800, 416, 21, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Tyranitar - Focus Punch - TM01
  (248, 24800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Tyranitar - Dragon Claw - TM02
  (248, 24800, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 23),
  -- Tyranitar - Water Pulse - TM03
  (248, 24800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 25),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Tyranitar - Taunt - TM12
  (248, 24800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 27),
  -- Tyranitar - Ice Beam - TM13
  (248, 24800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Tyranitar - Blizzard - TM14
  (248, 24800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Tyranitar - Iron Tail - TM23
  (248, 24800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Tyranitar - Thunderbolt - TM24
  (248, 24800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 34),
  -- Tyranitar - Thunder - TM25
  (248, 24800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 35),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 36),
  -- Tyranitar - Dig - TM28
  (248, 24800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 37),
  -- Tyranitar - Brick Break - TM31
  (248, 24800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 38),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 39),
  -- Tyranitar - Shock Wave - TM34
  (248, 24800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 40),
  -- Tyranitar - Flamethrower - TM35
  (248, 24800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 41),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 42),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 43),
  -- Tyranitar - Rock Tomb - TM39
  (248, 24800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 44),
  -- Tyranitar - Aerial Ace - TM40
  (248, 24800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 45),
  -- Tyranitar - Torment - TM41
  (248, 24800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 46),
  -- Tyranitar - Facade - TM42
  (248, 24800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 47),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 48),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 49),
  -- Tyranitar - Focus Blast - TM52
  (248, 24800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 50),
  -- Tyranitar - Fling - TM56
  (248, 24800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 51),
  -- Tyranitar - Endure - TM58
  (248, 24800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 52),
  -- Tyranitar - Dragon Pulse - TM59
  (248, 24800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 53),
  -- Tyranitar - Shadow Claw - TM65
  (248, 24800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 54),
  -- Tyranitar - Payback - TM66
  (248, 24800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 55),
  -- Tyranitar - Giga Impact - TM68
  (248, 24800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 56),
  -- Tyranitar - Rock Polish - TM69
  (248, 24800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 57),
  -- Tyranitar - Stone Edge - TM71
  (248, 24800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 58),
  -- Tyranitar - Avalanche - TM72
  (248, 24800, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 59),
  -- Tyranitar - Thunder Wave - TM73
  (248, 24800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 60),
  -- Tyranitar - Stealth Rock - TM76
  (248, 24800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 61),
  -- Tyranitar - Snarl - TM78
  (248, 24800, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 62),
  -- Tyranitar - Dark Pulse - TM79
  (248, 24800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 63),
  -- Tyranitar - Rock Slide - TM80
  (248, 24800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 64),
  -- Tyranitar - Sleep Talk - TM82
  (248, 24800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 65),
  -- Tyranitar - Bulldoze - TM83
  (248, 24800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 66),
  -- Tyranitar - Swagger - TM87
  (248, 24800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 67),
  -- Tyranitar - Substitute - TM90
  (248, 24800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 68),
  -- Tyranitar - Cut - TM93
  (248, 24800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 69),
  -- Tyranitar - Surf - TM95
  (248, 24800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 70),
  -- Tyranitar - Strength - TM96
  (248, 24800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 71),
  -- Tyranitar - Rock Smash - TM98
  (248, 24800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 72),
  -- Tyranitar - Rock Climb - TM100
  (248, 24800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 73),
  -- Tyranitar - Ancient Power - Egg
  (248, 24800, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Tyranitar - Assurance - Egg
  (248, 24800, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Tyranitar - Curse - Egg
  (248, 24800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Tyranitar - Dragon Dance - Egg
  (248, 24800, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Tyranitar - Focus Energy - Egg
  (248, 24800, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Tyranitar - Iron Defense - Egg
  (248, 24800, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Tyranitar - Iron Head - Egg
  (248, 24800, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Tyranitar - Outrage - Egg
  (248, 24800, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Tyranitar - Stomp - Egg
  (248, 24800, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Lugia - Dragon Rush - Starting Move
  (249, 24900, 407, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lugia - Gust - Starting Move
  (249, 24900, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lugia - Whirlwind - Starting Move
  (249, 24900, 18, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lugia - Weather Ball - Starting Move
  (249, 24900, 311, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lugia - Ancient Power - Starting Move
  (249, 24900, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lugia - Mist - Level 9
  (249, 24900, 54, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Lugia - Safeguard - Level 18
  (249, 24900, 219, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Lugia - Calm Mind - Level 27
  (249, 24900, 347, 21, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Lugia - Extrasensory - Level 36
  (249, 24900, 326, 21, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Lugia - Recover - Level 45
  (249, 24900, 105, 21, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Lugia - Aeroblast - Level 54
  (249, 24900, 177, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lugia - Rain Dance - Level 63
  (249, 24900, 240, 21, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Lugia - Hydro Pump - Level 72
  (249, 24900, 56, 21, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Lugia - Future Sight - Level 81
  (249, 24900, 248, 21, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Lugia - Sky Attack - Level 90
  (249, 24900, 143, 21, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Lugia - Water Pulse - TM03
  (249, 24900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Lugia - Calm Mind - TM04
  (249, 24900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Lugia - Hail - TM07
  (249, 24900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Lugia - Ice Beam - TM13
  (249, 24900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Lugia - Light Screen - TM16
  (249, 24900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Lugia - Giga Drain - TM19
  (249, 24900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Lugia - Safeguard - TM20
  (249, 24900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Lugia - Iron Tail - TM23
  (249, 24900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Lugia - Thunderbolt - TM24
  (249, 24900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 33),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Lugia - Reflect - TM33
  (249, 24900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Lugia - Shock Wave - TM34
  (249, 24900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 38),
  -- Lugia - Aerial Ace - TM40
  (249, 24900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Lugia - Facade - TM42
  (249, 24900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Lugia - Steel Wing - TM47
  (249, 24900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 42),
  -- Lugia - Skill Swap - TM48
  (249, 24900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 43),
  -- Lugia - Roost - TM51
  (249, 24900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 44),
  -- Lugia - Brine - TM55
  (249, 24900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 45),
  -- Lugia - Charge Beam - TM57
  (249, 24900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 46),
  -- Lugia - Endure - TM58
  (249, 24900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Lugia - Dragon Pulse - TM59
  (249, 24900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 48),
  -- Lugia - Giga Impact - TM68
  (249, 24900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Lugia - Flash - TM70
  (249, 24900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 50),
  -- Lugia - Avalanche - TM72
  (249, 24900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 51),
  -- Lugia - Thunder Wave - TM73
  (249, 24900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 52),
  -- Lugia - Psych Up - TM77
  (249, 24900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Lugia - Sleep Talk - TM82
  (249, 24900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Lugia - Bulldoze - TM83
  (249, 24900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Lugia - Dream Eater - TM85
  (249, 24900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 56),
  -- Lugia - Swagger - TM87
  (249, 24900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Lugia - Substitute - TM90
  (249, 24900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Lugia - Fly - TM94
  (249, 24900, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 59),
  -- Lugia - Surf - TM95
  (249, 24900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 60),
  -- Lugia - Strength - TM96
  (249, 24900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 61),
  -- Lugia - Defog - TM97
  (249, 24900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 62),
  -- Lugia - Rock Smash - TM98
  (249, 24900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 63),
  -- Lugia - Waterfall - TM99
  (249, 24900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 64),
  -- Ho-Oh - Gust - Starting Move
  (250, 25000, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ho-Oh - Whirlwind - Starting Move
  (250, 25000, 18, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ho-Oh - Weather Ball - Starting Move
  (250, 25000, 311, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ho-Oh - Ancient Power - Starting Move
  (250, 25000, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ho-Oh - Life Dew - Level 9
  (250, 25000, 791, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ho-Oh - Safeguard - Level 18
  (250, 25000, 219, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ho-Oh - Calm Mind - Level 27
  (250, 25000, 347, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Ho-Oh - Extrasensory - Level 36
  (250, 25000, 326, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ho-Oh - Recover - Level 45
  (250, 25000, 105, 21, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Ho-Oh - Sacred Fire - Level 54
  (250, 25000, 221, 21, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Ho-Oh - Sunny Day - Level 63
  (250, 25000, 241, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Ho-Oh - Fire Blast - Level 72
  (250, 25000, 126, 21, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Ho-Oh - Future Sight - Level 81
  (250, 25000, 248, 21, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Ho-Oh - Sky Attack - Level 90
  (250, 25000, 143, 21, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Ho-Oh - Burn Up - Level 99
  (250, 25000, 682, 21, NULL, 1, 99, NULL, NULL, NULL, 15),
  -- Ho-Oh - Calm Mind - TM04
  (250, 25000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Ho-Oh - Light Screen - TM16
  (250, 25000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Ho-Oh - Giga Drain - TM19
  (250, 25000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Ho-Oh - Safeguard - TM20
  (250, 25000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Ho-Oh - Thunderbolt - TM24
  (250, 25000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Ho-Oh - Reflect - TM33
  (250, 25000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 32),
  -- Ho-Oh - Shock Wave - TM34
  (250, 25000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Ho-Oh - Flamethrower - TM35
  (250, 25000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 34),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 35),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Ho-Oh - Aerial Ace - TM40
  (250, 25000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Ho-Oh - Facade - TM42
  (250, 25000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Ho-Oh - Steel Wing - TM47
  (250, 25000, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 40),
  -- Ho-Oh - Overheat - TM50
  (250, 25000, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 41),
  -- Ho-Oh - Roost - TM51
  (250, 25000, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 42),
  -- Ho-Oh - Charge Beam - TM57
  (250, 25000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 43),
  -- Ho-Oh - Endure - TM58
  (250, 25000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Ho-Oh - Will-O-Wisp - TM61
  (250, 25000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 45),
  -- Ho-Oh - Giga Impact - TM68
  (250, 25000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Ho-Oh - Flash - TM70
  (250, 25000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 47),
  -- Ho-Oh - Thunder Wave - TM73
  (250, 25000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 48),
  -- Ho-Oh - Psych Up - TM77
  (250, 25000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Ho-Oh - Sleep Talk - TM82
  (250, 25000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Ho-Oh - Bulldoze - TM83
  (250, 25000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Ho-Oh - Dream Eater - TM85
  (250, 25000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 52),
  -- Ho-Oh - Swagger - TM87
  (250, 25000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Ho-Oh - Pluck - TM88
  (250, 25000, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 54),
  -- Ho-Oh - Substitute - TM90
  (250, 25000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Ho-Oh - Fly - TM94
  (250, 25000, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 56),
  -- Ho-Oh - Strength - TM96
  (250, 25000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Ho-Oh - Defog - TM97
  (250, 25000, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 58),
  -- Ho-Oh - Rock Smash - TM98
  (250, 25000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Celebi - Confusion - Starting Move
  (251, 25100, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Celebi - Heal Bell - Starting Move
  (251, 25100, 215, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Celebi - Magical Leaf - Level 10
  (251, 25100, 345, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Celebi - Baton Pass - Level 20
  (251, 25100, 226, 21, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Celebi - Ancient Power - Level 30
  (251, 25100, 246, 21, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Celebi - Life Dew - Level 40
  (251, 25100, 791, 21, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Celebi - Leech Seed - Level 50
  (251, 25100, 73, 21, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Celebi - Recover - Level 60
  (251, 25100, 105, 21, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Celebi - Future Sight - Level 70
  (251, 25100, 248, 21, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Celebi - Healing Wish - Level 80
  (251, 25100, 361, 21, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Celebi - Leaf Storm - Level 90
  (251, 25100, 437, 21, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Celebi - Perish Song - Level 100
  (251, 25100, 195, 21, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Celebi - Water Pulse - TM03
  (251, 25100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Celebi - Calm Mind - TM04
  (251, 25100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 16),
  -- Celebi - Light Screen - TM16
  (251, 25100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Celebi - Giga Drain - TM19
  (251, 25100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Celebi - Safeguard - TM20
  (251, 25100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Celebi - Dazzling Gleam - TM21
  (251, 25100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 22),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 24),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Celebi - Reflect - TM33
  (251, 25100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Celebi - Shock Wave - TM34
  (251, 25100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Celebi - Aerial Ace - TM40
  (251, 25100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Celebi - Facade - TM42
  (251, 25100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Celebi - Skill Swap - TM48
  (251, 25100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 33),
  -- Celebi - Energy Ball - TM53
  (251, 25100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 34),
  -- Celebi - Fling - TM56
  (251, 25100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Celebi - Charge Beam - TM57
  (251, 25100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 36),
  -- Celebi - Endure - TM58
  (251, 25100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Celebi - Nasty Plot - TM63
  (251, 25100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Celebi - Giga Impact - TM68
  (251, 25100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Celebi - Flash - TM70
  (251, 25100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 40),
  -- Celebi - Thunder Wave - TM73
  (251, 25100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Celebi - Swords Dance - TM75
  (251, 25100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Celebi - Stealth Rock - TM76
  (251, 25100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 43),
  -- Celebi - Psych Up - TM77
  (251, 25100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Celebi - Sleep Talk - TM82
  (251, 25100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Celebi - Dream Eater - TM85
  (251, 25100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Celebi - Grass Knot - TM86
  (251, 25100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Celebi - Swagger - TM87
  (251, 25100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Celebi - U-turn - TM89
  (251, 25100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 49),
  -- Celebi - Substitute - TM90
  (251, 25100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Celebi - Trick Room - TM92
  (251, 25100, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 51),
  -- Celebi - Cut - TM93
  (251, 25100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 52);
